// Extension of @csound/browser 7.0.0-beta36's existing non-SAB processor.
// build/csound-buffer-plugin.ts verifies the upstream code hashes before using
// its compiled hooks: da=process callback, W=packet receiver, D.fa=request port.
// Csound WASM, synthesis worker, Web Audio routing and RPCs stay upstream.

export function createQueue(channels, settings = { targetFrames: 2048, prefillFrames: 8192, capacity: 16384 }) {
  return { ...settings, buffers: Array.from({ length: channels }, () => new Float64Array(settings.capacity)),
    read: 0, available: 0, pending: 0, ready: false, ended: false, drained: false, underruns: 0,
    stopping: false, fadeRemaining: 0 };
}

export function nextRequest(queue) {
  if (queue.pending || queue.ended || queue.stopping) return;
  const missing = (queue.ready ? queue.targetFrames : queue.prefillFrames) - queue.available;
  if (missing <= 0) return;
  // Larger queues also batch refills, instead of doing IPC for each 128-frame
  // Web Audio quantum. Keep the original default queue's refill granularity.
  if (queue.ready && queue.targetFrames > 2048 && missing < 2048) return;
  const numFrames = Math.min(8192, missing);
  queue.pending = numFrames;
  return { numFrames, readIndex: (queue.read + queue.available) % queue.capacity };
}

export function receivePacket(queue, { audioPacket, numFrames, readIndex, playerEnd }) {
  if (queue.stopping) return;
  if (!Number.isInteger(numFrames) || numFrames < 0 || numFrames > queue.pending || queue.available + numFrames > queue.capacity) {
    throw new Error('Invalid Csound audio packet or buffer overflow.');
  }
  queue.pending = 0;
  if (numFrames) {
    for (let channel = 0; channel < queue.buffers.length; channel++) {
      const samples = audioPacket[channel];
      const first = Math.min(numFrames, queue.capacity - readIndex);
      queue.buffers[channel].set(samples.subarray(0, first), readIndex);
      if (first < numFrames) queue.buffers[channel].set(samples.subarray(first, numFrames), 0);
    }
    queue.available += numFrames;
  }
  queue.ended ||= Boolean(playerEnd);
}

export function stopQueue(queue) {
  queue.stopping = true;
  // Explicit Stop discards queued seconds after a short click-suppressing fade.
  queue.fadeRemaining = Math.min(queue.available, 128);
  return queue.fadeRemaining;
}

export function renderQueue(queue, outputs) {
  outputs.forEach((channel) => channel.fill(0));
  const length = outputs[0]?.length || 0;
  let becameReady = false;
  if (!queue.ready && (queue.available >= queue.prefillFrames || queue.ended)) {
    queue.ready = true;
    becameReady = true;
  }
  if (queue.ready || queue.stopping) {
    const frames = Math.min(length, queue.available, queue.stopping ? queue.fadeRemaining : length);
    for (let frame = 0; frame < frames; frame++) {
      const gain = queue.stopping ? Math.max(0, (queue.fadeRemaining - 1) / 128) : 1;
      for (let channel = 0; channel < outputs.length; channel++) {
        outputs[channel][frame] = queue.buffers[channel]?.[(queue.read + frame) % queue.capacity] * gain || 0;
      }
      if (queue.stopping) queue.fadeRemaining--;
    }
    queue.read = (queue.read + frames) % queue.capacity;
    queue.available -= frames;
    if (!queue.stopping && !queue.ended && frames < length) queue.underruns++;
  }
  const drained = queue.ended && queue.ready && queue.available === 0 && !queue.drained && !queue.stopping;
  if (drained) queue.drained = true;
  return { becameReady, drained, request: nextRequest(queue) };
}

export function bufferedProcessor(Base) {
  return class extends Base {
    constructor(options) {
      super(options);
      if (options.processorOptions.maybeSharedArrayBuffer) throw new Error('Player audio buffers require non-SAB mode.');
      this.playerQueue = createQueue(options.processorOptions.outputsCount);
      this.playerReportFrames = 0;
      this.W = ({ ja: audioPacket, la: numFrames, ma: readIndex, playerEnd }) => {
        receivePacket(this.playerQueue, { audioPacket, numFrames, readIndex, playerEnd });
      };
      this.da = (inputs, outputs) => {
        const channels = outputs[0] || [];
        const result = renderQueue(this.playerQueue, channels);
        // Preserve the package's microphone input transport (16384-frame ring).
        const input = inputs[0] || [];
        if (input.length && this.playerQueue.ready && !this.playerQueue.stopping) {
          const size = input[0].length;
          input.forEach((channel, index) => this.R[index].set(channel, this.Y));
          this.Y = (this.Y + size) % 16384;
          if (this.Y % 2048 === 0) this.G.oa(this.R.map((channel) => channel.subarray((this.Y || 16384) - 2048, this.Y || 16384)));
        }
        if (result.request) this.D.fa(result.request);
        if (result.becameReady) this.port.postMessage({ playerBuffer: 'ready' });
        if (result.drained) this.port.postMessage({ playerBuffer: 'drained' });
        this.playerReportFrames += channels[0]?.length || 0;
        if (this.playerReportFrames >= sampleRate) {
          this.playerReportFrames = 0;
          this.port.postMessage({ playerBuffer: 'underruns', count: this.playerQueue.underruns });
        }
        // The upstream initialize RPC resolves once the first request is sent.
        if (result.request && this.u) { this.u(); delete this.u; }
        return true;
      };
      this.port.addEventListener('message', ({ data }) => {
        if (data.playerBuffer !== 'configure' || this.playerQueue.pending || this.playerQueue.ready) return;
        const { targetFrames, prefillFrames, capacity } = data;
        if (!Number.isInteger(targetFrames) || !Number.isInteger(prefillFrames) || !Number.isInteger(capacity) ||
          targetFrames < 2048 || prefillFrames < targetFrames || capacity < prefillFrames * 2 || capacity > 524288) {
          throw new Error('Invalid player audio buffer configuration.');
        }
        this.playerQueue = createQueue(options.processorOptions.outputsCount, { targetFrames, prefillFrames, capacity });
        this.port.postMessage({ playerBuffer: 'configured', targetFrames, prefillFrames, capacity });
      });
    }

    beginFadeOut() { return stopQueue(this.playerQueue); }
    terminate() { this.playerQueue.buffers = []; super.terminate(); }
  };
}
