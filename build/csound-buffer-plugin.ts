import { createHash } from 'node:crypto';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { runInNewContext } from 'node:vm';
import type { Plugin } from 'vite';

const workletHash = '1ccb491fffb9ab972a3be453b6734d2aed0e07dfa805a543448b4876d58dc7e5';
const workerHash = '3c714662d23e288ca1df630e91a049e742fd058ac5425bc174d147a00f32e54e';
const hash = (source: string) => createHash('sha256').update(source).digest('hex');

function replaceOnce(source: string, from: string, to: string) {
  if (source.split(from).length !== 2) throw new Error('Csound buffering patch no longer matches the pinned package.');
  return source.replace(from, to);
}

// Transform the pinned package in memory for both dev and production. Keep its
// embedded WASM, synthesis worker, RPCs and audio routing. No node_modules edits.
export function csoundBufferPlugin(): Plugin {
  return {
    name: 'csound-player-buffers', enforce: 'pre',
    transform(source, id) {
      if (!id.split('?')[0].replaceAll('\\', '/').endsWith('/@csound/browser/dist/csound.js')) return;
      this.addWatchFile(resolve('src/csound-buffer-worklet.js'));
      const extension = readFileSync(resolve('src/csound-buffer-worklet.js'), 'utf8').replaceAll('export function ', 'function ');
      let worklets = 0;
      let workers = 0;
      let code = source.replace(/data:application\/javascript;base64,([A-Za-z0-9+/=]+)/g, (url, encoded: string) => {
        let worklet = Buffer.from(encoded, 'base64').toString('utf8');
        if (!worklet.includes('registerProcessor("csound-worklet-processor",V)')) return url;
        if (hash(worklet) !== workletHash) throw new Error('Review the AudioWorklet buffering adapter before updating @csound/browser.');
        worklet = replaceOnce(worklet, 'ma:c.data.readIndex}', 'ma:c.data.readIndex,playerEnd:c.data.playerEnd}');
        worklet = replaceOnce(worklet, 'registerProcessor("csound-worklet-processor",V);', `${extension}\nregisterProcessor("csound-worklet-processor",bufferedProcessor(V));`);
        worklets++;
        return `data:application/javascript;base64,${Buffer.from(worklet).toString('base64')}`;
      });
      code = code.replace(/new Blob\(\[('(?:\\.|[^'\\])*')\]/g, (expression, literal: string) => {
        // The regex matches a single string literal from the trusted npm bundle.
        let worker = runInNewContext(literal) as string;
        if (hash(worker) !== workerHash) return expression;
        // Deliver the final partial packet and EOF through the existing audio
        // port. The player calls upstream stop() only after the worklet drains.
        worker = replaceOnce(worker,
          'if(v===0&&u===0&&(u=a.csoundPerformKsmps(g),u!==0))return c.o("realtimePerformanceEnded"),vd=()=>{},Mc(wd),d.port=void 0,{R:D};',
          'if(v===0&&u===0&&(u=a.csoundPerformKsmps(g),u!==0))return vd=({ga:requested})=>({qa:[],R:requested,playerEnd:true}),Mc(wd),d.port=void 0,{qa:C.map(channel=>channel.subarray(0,D)),R:z-D,playerEnd:true};');
        worker = replaceOnce(worker,
          'd.numFrames=c.data.ga-e;d.audioPacket=f;a.postMessage({...d,...c.data})',
          'd.numFrames=f?c.data.numFrames-e:0;d.audioPacket=f;d.playerEnd=!!result.playerEnd;a.postMessage({...c.data,...d})');
        worker = replaceOnce(worker, 'var {R:e=0,qa:f}=d||{};d={};', 'var result=d||{};var {R:e=0,qa:f}=result;d={};');
        workers++;
        return `new Blob([${JSON.stringify(worker)}]`;
      });
      if (worklets !== 1 || workers !== 1) throw new Error('Could not locate the pinned Csound worker/worklet for configurable buffers.');
      return { code, map: null };
    },
  };
}
