# 本地 Terminology Server

IG 建置時，`Validating Conformance Resources` 階段會對每個 code、binding、ValueSet
向 terminology server 逐一發出請求。連 `tx.fhir.org` 時單次往返約 0.5 秒，累積下來
這個階段可能耗時十分鐘以上。改用本地 server 後往返降到毫秒等級。

本目錄以 [FHIRsmith](https://github.com/HealthIntersections/FHIRsmith) 架設一套本地
terminology server — 與 `tx.fhir.org` 同一套軟體。

## 啟動

```bash
docker compose -f tx-server/docker-compose.yml up -d
```

首次啟動會從 `https://storage.googleapis.com/tx-fhir-org` 下載約 1.6 GB 的預建
terminology 資料庫（SNOMED CT、LOINC），存放於 `~/fhirsmith/data/terminology-cache/`。
之後啟動直接讀本機檔案。

載入 SNOMED CT 需要數分鐘，期間 server 尚未接受請求。確認就緒：

```bash
curl -s http://localhost:3000/tx/r4/metadata | head -c 200
docker compose -f tx-server/docker-compose.yml logs -f
```

## 與建置流程的整合

`_genonce.sh` 會自動偵測 `http://localhost:3000/tx/r4`：

| 情況 | 行為 |
|------|------|
| 本地 server 可達 | 使用本地 server |
| 本地不可達、有網路 | 退回 `tx.fhir.org` |
| 本地不可達、無網路 | `-tx n/a`（跳過 terminology 驗證） |

不必改變既有習慣，照常執行 `./_genonce.sh` 即可。要指向別的位址，設定
`LTC_TX_SERVER` 環境變數覆寫。

## 設定檔

| 檔案 | 用途 |
|------|------|
| `config.json` | 伺服器設定。只啟用 `tx` 模組，掛載單一 R4 endpoint 於 `/tx/r4` |
| `library.yml` | 載入哪些 terminology。`!` 標記該 code system 的預設版本 |

兩者以唯讀方式掛入容器，資料目錄則由 `LTC_TX_DATA_DIR` 指定（預設 `~/fhirsmith/data`）。

`library.yml` 目前只涵蓋本 IG 實際引用的 terminology：SNOMED CT、LOINC、UCUM、
HL7 標準 code system，以及 IG 的依賴 **TW Core**。刻意排除 RxNorm、NDC、UNII、CPT、
OMOP 與各國 SNOMED edition，以節省約 3 GB 下載與記憶體。日後若 IG 引用到，在
`sources` 加一行即可（可用的檔名見
`https://storage.googleapis.com/storage/v1/b/tx-fhir-org/o`）。

> **IG 的每個依賴 package 都必須列進 `sources`。**
> 少了 TW Core 時，server 會對 `serviceRequest-category` 這類 ValueSet 回
> not-found，而 IG Publisher 每遇一次就空轉約 3 分鐘（okhttp 反覆重建連線、
> 每次等滿 60 秒 timeout），整體建置時間反而比連 tx.fhir.org 還久。
> 症狀是 IG Publisher 印出 `Operation took too long - longer than 60000ms`
> 並在 `codeInValueSet` 上記到十幾萬毫秒。
> 日後若 `sushi-config.yaml` 的 `dependencies` 有增減，記得同步更新這裡。

## SNOMED CT 版本

目前使用預建的 **International Edition 20250201**，直接取自上游 bucket。

`../gfix-txserver/backend/imports/` 下另有一份較新的
`SnomedCT_InternationalRF2_PRODUCTION_20260101T120000Z.zip`。若要改用該版本，需自行
匯入（耗時 2–6 小時），完成後把產出的 `.cache` 檔名填回 `library.yml`：

```bash
mkdir -p ~/fhirsmith/rf2 && \
  unzip ../gfix-txserver/backend/imports/SnomedCT_InternationalRF2_PRODUCTION_20260101T120000Z.zip \
  -d ~/fhirsmith/rf2

docker run --rm \
  -v ~/fhirsmith/rf2:/rf2 \
  -v ~/fhirsmith/data:/app/data \
  -e NODE_OPTIONS=--max-old-space-size=8192 \
  --entrypoint node \
  ghcr.io/healthintersections/fhirsmith:latest \
  /app/tx/importers/tx-import.js snomed import \
  --source /rf2/<Snapshot 目錄> \
  --dest /app/data/terminology-cache/sct_intl_20260101.cache \
  --yes
```

換版前先確認 IG 中引用的 SNOMED code 在新版仍為 active — 版本越新，被停用的
code 越可能觸發新的建置警告。

## Keep-alive patch

`keepalive-patch.js` 以 `node --require` 預載，把 server 的 idle timeout 從 Node.js
預設的 5 秒拉到 10 分鐘。**這不是效能微調，缺了它建置會嚴重卡頓。**

FHIRsmith 以 `app.listen()` 啟動，沿用 Node.js 預設的 `keepAliveTimeout = 5` 秒；
而 IG Publisher 的 HTTP client（okhttp）連線池預設保留閒置連線 5 分鐘。在
`Validating Resources` 階段，IG Publisher 多數時間在做本地驗證運算，兩次 terminology
請求的間隔經常超過 5 秒 —— 此時 okhttp 會重用一條 server 早已關閉的連線，請求送進
黑洞，直到 socket read timeout 才重試，單次可空等數十秒。

症狀是：tx server 幾乎沒有請求進來、CPU 閒置，但 IG Publisher 卡住不動，
`jstack` 顯示 main thread 停在 `Net.poll` / `readResponseHeaders`，且
`ss -tnp` 可看到累積的 `CLOSE-WAIT` 連線。

驗證 patch 是否生效：

```bash
docker compose -f tx-server/docker-compose.yml logs | grep keepalive-patch
curl -s -D - -o /dev/null http://localhost:3000/tx/r4/metadata | grep -i keep-alive
# 應顯示 Keep-Alive: timeout=600
```

## 疑難排解

**server 起不來或記憶體不足** — SNOMED CT 與 LOINC 會全載入記憶體，`NODE_OPTIONS`
的 heap 上限設為 8 GB。若機器記憶體較小，可在 `library.yml` 中移除 LOINC 或改用
較小的版本。

**驗證結果與 tx.fhir.org 不一致** — 本地 `library.yml` 的載入清單比 tx.fhir.org 精簡，
若 IG 新增了對其他 code system 的引用，本地會回報「找不到 code system」而線上不會。
正式發版前建議停掉本地 server 跑一次完整線上建置交叉確認。

**切換 server 後首次建置仍慢** — `input-cache/txcache/` 的快取是按 server 分開存放的，
換 server 等於快取全部重來。第二次建置才會看到完整效益。
