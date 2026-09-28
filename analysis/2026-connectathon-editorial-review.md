# 2026 聯測頁面文字與格式審查

日期：2026-09-29。
審查人：agy。

本輪依據已確認之在宅急症三段臨床流程規劃書（`analysis/2026-track4-clinical-proposal.md`），全面將 Track 4 更新為初次訪視與收案（SC1）、持續訪視與治療（SC2）、後續照護安排與交班（SC3）三段臨床流程，每情境皆具備 Creator（LTC_MANAGEMENT）與 Consumer（LTC_CONSUMER），共 20 筆交易；全年度總數更新為 50 筆交易與 18 組情境（Track 0 共 2 筆、Track 1 共 18 筆、Track 2 共 8 筆、Track 3 共 2 筆、Track 4 共 20 筆；1+9+4+1+3 組情境），並同步所有指定文件：

## 一、改寫與同步範圍

1. **Track 4 全面更新為三段臨床流程與 20 筆交易（`input/pagecontent/2026-track4.md`）**：
   - 沿用 `2026-track2.md` 之公開頁面結構，僅保留參測者需要的說明、檢核項目、角色、通過條件、Scenarios、各交易操作核對項目及交易列表。
   - SC1 初次訪視與收案（LTC-411 至 LTC-416，411–414 必測，415/416 選測）：確立 HAHEpisodeOfCare、HAHAdmissionEncounter、HAHVisitEncounter，以及急症 HAHCondition 與 HAHClinicalImpression。
   - SC2 持續訪視與治療（LTC-421 至 LTC-428，421/422 必測，423/424 與 427/428 擇一組必測，425/426 選測）：建立本次訪視 HAHVisitEncounter 與體溫 LTCObservationVitalSigns，開立處方 HAHMedicationRequest 與在宅給藥 HAHMedicationAdministration，床側檢驗 HAHObservationLab 與報告 HAHDiagnosticReport，以及醫療處置 HAHProcedure。
   - SC3 後續照護安排與交班（LTC-431 至 LTC-436，431/432 及 435/436 必測，433/434 選測）：擬定接續照護計畫 HAHCarePlan，指派訪視任務 HAHVisitTask，以及建立結構化照護交班紀錄 HAHCommunication。
   - 通過條件：各廠商依報名角色與臨床職責配對完成流程，大會逐交易與逐 Resource 記錄實作能力。收案前約束以一句操作說明呈現：初訪完成並決定收案後，先上傳療程與整段照護，再上傳記載實際初訪時間的訪視紀錄。
   - RESTful 交互：建立端單筆 Resource POST，由 Location 取得實際 ID；消費端以指定參數 Search 取得 searchset Bundle，再以實際 ID Read 單筆資源。HTTP 查詢參數明確校正（如 Encounter 之 `part-of`、Task 之 `patient` 與 `status=requested` 等）。
   - 保留 `sc1`–`sc3` 與 `ltc-411`–`ltc-436` 錨點，Profile 均使用本地 `StructureDefinition-{Id}.html` 連結，表格使用 `grid rwd-table` 樣式。

2. **賽道情境、角色與交易總表同步（`input/pagecontent/2026-connectathon-table.md`）**：
   - 列表上方補充 Track 4 通過條件簡要說明。
   - Track 4 表格更新為 `rowspan="20"`，三個情境分別為 `rowspan="6"`、`rowspan="8"`、`rowspan="6"`。
   - 全部 20 筆交易超連結錨點各出現一次，角色奇數為 LTC_MANAGEMENT、偶數為 LTC_CONSUMER，接收端均為 LTC_REPOSITORY。

3. **活動說明與首頁同步（`input/pagecontent/2026-connectathon.md`、`index.md`）**：
   - 活動簡介與賽道核心摘要將在宅急症更新為三段臨床流程（初次訪視與收案、持續訪視與急症治療、後續照護安排與交班），標記共 3 個情境、20 筆交易。
   - 首頁 2026 專案聯測說明更新在宅急症描述為三段臨床流程。

4. **分析規劃文件同步（`analysis/`）**：
   - `2026-connectathon-resource-replan.md`：更新全年度為 50 筆交易與 18 組情境，重寫第七節 Track 4 詳細規格為 20 筆交易，更新第八節複用對照（生理量測舊 423/424 改為 421/422，給藥舊 425/426 改為 423/424），更新第九節交易總數收斂，全面替換舊 Track 4 三組擇一、任一 SC 通過、10 筆、40 總數等過時描述。
   - `2026-connectathon-recommendations.md`：同步全年度 50 筆交易與 18 組情境，更新 Track 4 規劃重點、20 筆業務交易、配對分工與通過條件。
   - `2026-connectathon-reuse.md`：更新生理量測對應至 2026 LTC-421/422、給藥對應至 2026 LTC-423/424，保留 2025 歷史交易原號（2025 LTC-411/412/421/422）。

## 二、文字與格式核對

- 採用標準繁體中文，文句簡短、專業、人性化。
- 清除內部設計理由、不提 Gemini、不講編碼規則、不使用防禦免責或否定舉例，避免大量分號與箭頭。
- 完整保留 `grid rwd-table` 表格樣式。
- 嚴格核對各資源 Profile 連結、情境錨點與 20 個交易錨點。

## 三、驗證作業說明

- 檔案編修與文件交叉參照已親自執行完畢。
- agy 完成內容編修後，由主代理核對技術細節、編譯並檢查網頁。
- 驗證狀態：已完成完整編譯與 IG 驗證（`./_genonce.sh`，術語服務 `https://tx.fhir.org`）。

## 最終驗證結果

- 完整 IG 編譯成功，Publisher QA 為 0 errors、0 warnings、0 hints，0 broken links。
- 已核對 2026 頁面的 494 個本地連結、50 個唯一交易錨點與總表對應。
- Track 4 的 20 個交易名稱及角色與總表一致，3 個情境及表格跨列完整。
- 瀏覽器確認 Track 4 呈現、桌面版水平寬度及總表跳轉至 LTC-435 正常。
- FSH、2025 頁面及 Track 0–3 來源與本輪編修前一致。
