# 2026 Connectathon Table - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* **2026 Connectathon Table**

## 2026 Connectathon Table

## 賽道情境、角色與交易列表 (Track, Scenario, Actor, Transaction)

### 賽道列表 (Track List)

| | | |
| :--- | :--- | :--- |
| 核心 | Track #0 | OAuth2 存取認證 |
| 應用 | Track #1 | 長照共通資料交換 |
| Track #2 | 居家照護資料交換 | |
| Track #3 | 長照服務費用支付審核 | |
| Track #4 | 在宅急症照護資料交換 | |

### 賽道情境、角色與交易列表 (Scenario, Actor, Transaction List)

賽道 2 須依報名角色完成 SC1，並自 SC2、SC3、SC4 中至少選測一項。賽道 4 須依報名角色與臨床職責配對完成 SC1（LTC-411 至 414）、SC2（LTC-421/422 加 LTC-423/424 或 LTC-427/428）與 SC3（LTC-431/432 及 LTC-435/436），其餘為選測。

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Track #0OAuth2 存取認證 | Scenario #1授權與存取驗證 | OAuth2 Client | [LTC-011 取得 OAuth2 Token](2026-track0.md#ltc-011) | 負責向大會授權主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。 |
| OAuth2 Client | [LTC-012 驗證 Token 與資料存取](2026-track0.md#ltc-012) | 負責以 Access Token 向 LTC Repository 存取受保護資源並驗證權限。 | | |
| Track #1長照共通資料交換 | [Scenario #1病人基本資料](2026-track1.md#sc1) | LTC_MANAGEMENT | [LTC-111 建立病人基本資料](2026-track1.md#ltc-111) | 負責向 LTC Repository 建立病人基本資料（必測）。 |
| LTC_CONSUMER | [LTC-112 病人基本資料查詢與讀取](2026-track1.md#ltc-112) | 負責向 LTC Repository 查詢與讀取病人基本資料（必測）。 | | |
| [Scenario #2機構基本資料](2026-track1.md#sc2) | LTC_MANAGEMENT | [LTC-121 建立機構基本資料](2026-track1.md#ltc-121) | 負責向 LTC Repository 建立機構基本資料（必測）。 | |
| LTC_CONSUMER | [LTC-122 機構基本資料查詢與讀取](2026-track1.md#ltc-122) | 負責向 LTC Repository 查詢與讀取機構基本資料（必測）。 | | |
| [Scenario #3生理量測](2026-track1.md#sc3) | LTC_MANAGEMENT | [LTC-131 上傳生理量測](2026-track1.md#ltc-131) | 負責向 LTC Repository 上傳個案生理量測資料（必測）。 | |
| LTC_CONSUMER | [LTC-132 生理量測查詢與讀取](2026-track1.md#ltc-132) | 負責向 LTC Repository 查詢與讀取個案生理量測資料（必測）。 | | |
| [Scenario #4用藥紀錄](2026-track1.md#sc4) | LTC_MANAGEMENT | [LTC-141 上傳用藥紀錄](2026-track1.md#ltc-141) | 負責向 LTC Repository 上傳個案用藥紀錄（必測）。 | |
| LTC_CONSUMER | [LTC-142 用藥紀錄查詢與讀取](2026-track1.md#ltc-142) | 負責向 LTC Repository 查詢與讀取個案用藥紀錄（必測）。 | | |
| [Scenario #5健康問題](2026-track1.md#sc5) | LTC_MANAGEMENT | [LTC-151 建立健康問題](2026-track1.md#ltc-151) | 負責向 LTC Repository 建立個案健康問題紀錄（選測）。 | |
| LTC_CONSUMER | [LTC-152 健康問題查詢與讀取](2026-track1.md#ltc-152) | 負責向 LTC Repository 查詢與讀取個案健康問題紀錄（選測）。 | | |
| [Scenario #6照護目標](2026-track1.md#sc6) | LTC_MANAGEMENT | [LTC-161 建立照護目標](2026-track1.md#ltc-161) | 負責向 LTC Repository 建立個案照護目標（選測）。 | |
| LTC_CONSUMER | [LTC-162 照護目標查詢與讀取](2026-track1.md#ltc-162) | 負責向 LTC Repository 查詢與讀取個案照護目標（選測）。 | | |
| [Scenario #7照護計畫](2026-track1.md#sc7) | LTC_MANAGEMENT | [LTC-171 建立照護計畫](2026-track1.md#ltc-171) | 負責向 LTC Repository 建立個案照護計畫（選測）。 | |
| LTC_CONSUMER | [LTC-172 照護計畫查詢與讀取](2026-track1.md#ltc-172) | 負責向 LTC Repository 查詢與讀取個案照護計畫（選測）。 | | |
| [Scenario #8服務請求](2026-track1.md#sc8) | LTC_MANAGEMENT | [LTC-181 建立服務請求](2026-track1.md#ltc-181) | 負責向 LTC Repository 建立個案照護服務請求（選測）。 | |
| LTC_CONSUMER | [LTC-182 服務請求查詢與讀取](2026-track1.md#ltc-182) | 負責向 LTC Repository 查詢與讀取個案照護服務請求（選測）。 | | |
| [Scenario #9照護執行紀錄](2026-track1.md#sc9) | LTC_MANAGEMENT | [LTC-191 上傳照護執行紀錄](2026-track1.md#ltc-191) | 負責向 LTC Repository 上傳個案照護活動處置紀錄（選測）。 | |
| LTC_CONSUMER | [LTC-192 照護執行紀錄查詢與讀取](2026-track1.md#ltc-192) | 負責向 LTC Repository 查詢與讀取個案照護活動處置紀錄（選測）。 | | |
| Track #2居家照護資料交換 | [Scenario #1居護個案基本資料管理](2026-track2.md#sc1) | LTC_MANAGEMENT | [LTC-211 上傳居護個案基本資料](2026-track2.md#ltc-211) | 負責向 LTC Repository 上傳居護個案基本資料表單（必測）。 |
| LTC_CONSUMER | [LTC-212 查詢與取得居護個案基本資料](2026-track2.md#ltc-212) | 負責向 LTC Repository 查詢與讀取居護個案基本資料表單（必測）。 | | |
| [Scenario #2居護全人評估管理](2026-track2.md#sc2) | LTC_MANAGEMENT | [LTC-221 上傳居護全人評估](2026-track2.md#ltc-221) | 負責向 LTC Repository 上傳居護健康紀錄評估表單（選測）。 | |
| LTC_CONSUMER | [LTC-222 查詢與取得居護全人評估](2026-track2.md#ltc-222) | 負責向 LTC Repository 查詢與讀取居護健康紀錄評估表單（選測）。 | | |
| [Scenario #3居護照護計畫管理](2026-track2.md#sc3) | LTC_MANAGEMENT | [LTC-231 建立居護照護計畫](2026-track2.md#ltc-231) | 負責向 LTC Repository 建立居護照護計畫（選測）。 | |
| LTC_CONSUMER | [LTC-232 查詢與取得居護照護計畫](2026-track2.md#ltc-232) | 負責向 LTC Repository 查詢與讀取居護照護計畫（選測）。 | | |
| [Scenario #4居護共照記錄管理](2026-track2.md#sc4) | LTC_MANAGEMENT | [LTC-241 上傳居護共照記錄](2026-track2.md#ltc-241) | 負責向 LTC Repository 上傳居護共照記錄表單（選測）。 | |
| LTC_CONSUMER | [LTC-242 查詢與取得居護共照記錄](2026-track2.md#ltc-242) | 負責向 LTC Repository 查詢與讀取居護共照記錄表單（選測）。 | | |
| Track #3長照服務費用支付審核 | [Scenario #1單筆服務申報與審核結果查詢](2026-track3.md#sc1) | LTC_MANAGEMENT | [LTC-311 送出服務費用申報](2026-track3.md#ltc-311) | 負責送出長照服務費用申報資料至 LTC Repository。 |
| LTC_CONSUMER | [LTC-312 查詢與取得審核結果](2026-track3.md#ltc-312) | 負責向 LTC Repository 查詢與取得長照服務費用審核結果。 | | |
| Track #4在宅急症照護資料交換 | [Scenario #1初次訪視與收案](2026-track4.md#sc1) | LTC_MANAGEMENT | [LTC-411 建立收案與整段照護](2026-track4.md#ltc-411) | 負責建立在宅急症收案療程與整段照護脈絡（必測）。 |
| LTC_CONSUMER | [LTC-412 查詢與讀取收案與整段照護](2026-track4.md#ltc-412) | 負責向 LTC Repository 查詢與讀取收案療程與整段照護（必測）。 | | |
| LTC_MANAGEMENT | [LTC-413 建立初次訪視紀錄](2026-track4.md#ltc-413) | 負責建立醫師初次到宅訪視紀錄（必測）。 | | |
| LTC_CONSUMER | [LTC-414 查詢與讀取初次訪視紀錄](2026-track4.md#ltc-414) | 負責向 LTC Repository 查詢與讀取初次訪視紀錄（必測）。 | | |
| LTC_MANAGEMENT | [LTC-415 上傳初訪評估與診斷](2026-track4.md#ltc-415) | 負責上傳初訪急症診斷與整體臨床評估（選測）。 | | |
| LTC_CONSUMER | [LTC-416 查詢與讀取初訪評估與診斷](2026-track4.md#ltc-416) | 負責向 LTC Repository 查詢與讀取初訪評估與診斷（選測）。 | | |
| [Scenario #2持續訪視與治療](2026-track4.md#sc2) | LTC_MANAGEMENT | [LTC-421 建立本次訪視與生理量測](2026-track4.md#ltc-421) | 負責建立本次訪視紀錄與生理量測體溫數據（必測）。 | |
| LTC_CONSUMER | [LTC-422 查詢與讀取本次訪視與生理量測](2026-track4.md#ltc-422) | 負責向 LTC Repository 查詢與讀取本次訪視與生理量測數據（必測）。 | | |
| LTC_MANAGEMENT | [LTC-423 上傳處方與給藥紀錄](2026-track4.md#ltc-423) | 負責建立給藥處方與記錄在宅給藥執行（處方給藥或處置擇一必測）。 | | |
| LTC_CONSUMER | [LTC-424 查詢與讀取處方與給藥紀錄](2026-track4.md#ltc-424) | 負責向 LTC Repository 查詢與讀取處方與給藥紀錄（處方給藥或處置擇一必測）。 | | |
| LTC_MANAGEMENT | [LTC-425 上傳檢驗結果與報告](2026-track4.md#ltc-425) | 負責上傳床側或送檢之檢驗數據與整合報告（選測）。 | | |
| LTC_CONSUMER | [LTC-426 查詢與讀取檢驗結果與報告](2026-track4.md#ltc-426) | 負責向 LTC Repository 查詢與讀取檢驗結果與整合報告（選測）。 | | |
| LTC_MANAGEMENT | [LTC-427 上傳在宅處置紀錄](2026-track4.md#ltc-427) | 負責上傳在宅醫療處置技術紀錄（處方給藥或處置擇一必測）。 | | |
| LTC_CONSUMER | [LTC-428 查詢與讀取在宅處置紀錄](2026-track4.md#ltc-428) | 負責向 LTC Repository 查詢與讀取在宅處置紀錄（處方給藥或處置擇一必測）。 | | |
| [Scenario #3後續照護安排與交班](2026-track4.md#sc3) | LTC_MANAGEMENT | [LTC-431 建立後續照護計畫](2026-track4.md#ltc-431) | 負責建立後續在宅照護計畫與下次訪視排程（必測）。 | |
| LTC_CONSUMER | [LTC-432 查詢與讀取照護計畫](2026-track4.md#ltc-432) | 負責向 LTC Repository 查詢與讀取後續照護計畫資料（必測）。 | | |
| LTC_MANAGEMENT | [LTC-433 指派下一次訪視工作](2026-track4.md#ltc-433) | 負責指派下一次到宅訪視工作任務（選測）。 | | |
| LTC_CONSUMER | [LTC-434 查詢與讀取待執行訪視工作](2026-track4.md#ltc-434) | 負責向 LTC Repository 查詢與讀取待執行訪視任務（選測）。 | | |
| LTC_MANAGEMENT | [LTC-435 建立照護交班紀錄](2026-track4.md#ltc-435) | 負責建立跨班與跨職類照護交班紀錄（必測）。 | | |
| LTC_CONSUMER | [LTC-436 查詢與讀取照護交班紀錄](2026-track4.md#ltc-436) | 負責向 LTC Repository 查詢與讀取照護交班紀錄（必測）。 | | |

