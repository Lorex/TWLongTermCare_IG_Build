// 拉長 HTTP keep-alive idle timeout，並可選擇性記錄進站請求。
//
// 為什麼需要 keep-alive 設定：
// FHIRsmith 以 app.listen() 啟動，沿用 Node.js 預設的 server.keepAliveTimeout = 5 秒，
// 亦即閒置 5 秒後主動關閉連線。但 IG Publisher 的 HTTP client（okhttp）連線池預設
// 保留閒置連線 5 分鐘。在 Validating Resources 階段，IG Publisher 大多時間在做本地
// 驗證運算，兩次 terminology 請求間隔經常超過 5 秒 —— 此時 okhttp 會重用一條 server
// 早已關閉的連線，請求送進黑洞，直到 socket read timeout 才重試，單次可空等數十秒。
//
// 把 server 端的 idle timeout 拉到遠大於 client 連線池的存活時間即可消除競態。
// headersTimeout 必須大於 keepAliveTimeout，否則 Node.js 會提前中斷請求。
//
// 以 node --require 預載，不需修改 FHIRsmith image。

const http = require('http');

const KEEP_ALIVE_MS = 10 * 60 * 1000; // 10 分鐘，遠大於 okhttp 的 5 分鐘連線池
const HEADERS_MS = KEEP_ALIVE_MS + 20 * 1000;

// 設 TX_TRACE_REQUESTS=1 可記錄每個進站請求，並在回應完成時回報耗時。
// FHIRsmith 內建的 log 是在回應後才寫入，因此無法呈現「已收到但尚未回應」的請求；
// 排查 server 疑似 hang 在特定請求時，開啟此項才看得到卡住的是哪一個。
const TRACE = process.env.TX_TRACE_REQUESTS === '1';

const originalListen = http.Server.prototype.listen;

http.Server.prototype.listen = function patchedListen(...args) {
  this.keepAliveTimeout = KEEP_ALIVE_MS;
  this.headersTimeout = HEADERS_MS;
  console.log(
    `[keepalive-patch] keepAliveTimeout=${KEEP_ALIVE_MS}ms headersTimeout=${HEADERS_MS}ms trace=${TRACE}`
  );

  if (TRACE) {
    let seq = 0;
    this.on('request', (req, res) => {
      const id = ++seq;
      const started = process.hrtime.bigint();
      const chunks = [];

      req.on('data', (c) => {
        // 只留前 2 KB 供辨識，避免大 payload 塞爆 log
        if (chunks.reduce((n, b) => n + b.length, 0) < 2048) chunks.push(c);
      });
      req.on('end', () => {
        const body = Buffer.concat(chunks).toString('utf8').slice(0, 2000);
        console.log(`[trace #${id}] IN  ${req.method} ${req.url}\n[trace #${id}] BODY ${body}`);
      });
      res.on('finish', () => {
        const ms = Number(process.hrtime.bigint() - started) / 1e6;
        console.log(`[trace #${id}] OUT ${res.statusCode} ${ms.toFixed(1)}ms`);
      });
    });
  }

  return originalListen.apply(this, args);
};
