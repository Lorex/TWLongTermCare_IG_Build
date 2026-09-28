# 2026 專案聯測 賽道 4：在宅急症照護資料交換臨床流程規劃書

## 1. 概述與規劃背景

本文件為 2026 年長期照顧與醫療資訊標準專案聯測松（Connectathon）賽道 4「在宅急症照護資料交換」之臨床流程規劃書。本版由 agy（Gemini 3.8 Flash High）撰寫，再依現有 Profile 核對交易內容。

### 1.1 業務依據與臨床核心本質

本賽道之臨床流程依據衛生福利部中央健康保險署公布之「全民健康保險在宅急症照護試辦計畫」（參考健保署公告與115 年 5 月 12 日修訂計畫）。

在宅急症照護之核心本質為「住院替代服務」（Hospital-at-Home, HAH），適用於肺炎、尿路感染、軟組織感染等特定急症個案。臨床運作流程包含三大階段：
1. 初次評估與收案：醫療團隊接獲通報或轉介後到宅評估，確認符合急症收案條件，取得同意後正式收案，並建立整段住院替代照護。
2. 持續訪視與急症治療：急性期照護期間，醫師與護理人員依病情分次到宅訪視，執行臨床評估、生命徵象監測、藥品開立、靜脈抗生素注射或點滴輸注、床側檢驗採檢與各類在宅醫療處置，並確實記錄每次到訪與離開案家的時間。
3. 後續照護安排與交班：每次訪視完成後，醫護人員擬定或滾動調整後續照護計畫，指派未來到宅任務與時間，並於團隊間交換即時病況及照護交班摘要。

### 1.2 賽道情境規劃原則

本規劃嚴格依循在宅急症住院替代服務的臨床流程劃分三個情境（Scenarios, SC）。為了貼合真實醫療作業，各情境以「臨床業務操作」為單元，同一情境內可包含多個相依之 FHIR 資源。

聯測模式規範如下：
- 參測時程：參測環境設定、帳號授權、基礎代碼映射及必要參照資源之建立可於事前進行，現場實體聯測集中於一天半內完成業務對接與驗收。
- 業務操作導向：每個交易代表一項完整的臨床業務操作，允許建立端（Creator）依作業相依性逐筆 POST 多種 Resource，接收端或查詢端（Consumer）逐筆進行條件查詢（Search）與單筆讀取（Read）。
- 真實資源識別碼連結：本輪建立資源以伺服器回傳的實際 ID 互相參照。事前備妥的病人、人員及機構則使用大會提供的預載 ID。
- 情境結構：依初訪收案、持續治療及後續交班三階段安排測試。

---

## 2. 系統角色定義

本賽道參與系統依其在在宅急症臨床照護流中所擔任之功能，劃分為三種角色：

| 角色代碼 | 角色名稱 | 職責與功能說明 |
|---|---|---|
| LTC_MANAGEMENT | LTC Creator（在宅照護資料建立端） | 負責在各項在宅急症業務流程中，發起單筆或連動之 FHIR 資源建立請求（POST），產出符合 HAH Profile 規範之收案、就診、診斷、評估、量測、處方、給藥、處置、計畫、任務與交班資源。 |
| LTC_CONSUMER | LTC Consumer（接續與協同照護端） | 負責向儲存端發起條件查詢（Search）與單筆讀取（Read）請求，檢索並核對指定個案之各階段臨床資料、訪視歷程與跨資源引用關聯。 |
| LTC_REPOSITORY | LTC Repository（在宅急症資料儲存端） | 負責接收來自 Creator 之 POST 請求，執行結構與條件驗證，回傳 HTTP 201 Created 與 Location 標頭，並支援 Consumer 進行條件查詢（HTTP 200 OK 與 searchset Bundle）及單筆讀取。 |

---

## 3. 情境（Scenarios）摘要

### 情境 1（SC1）：初次訪視與收案

本情境模擬個案出現急症狀況後，在宅醫療團隊前往個案家中進行初次訪視與評估。經醫師臨床判斷個案符合在宅急症收案標準並取得同意後，系統正式建立收案療程與在宅住院整段照護就診脈絡，接續上傳記載實際到離時間之初訪紀錄，以及醫師之初訪臨床評估與急症診斷。

### 情境 2（SC2）：持續訪視與治療

本情境模擬收案後之急性期照護進程。醫師與護理人員依排程或病情需要分次到宅訪視，每次到宅均視為獨立之單次訪視，統一掛載於同一整段照護之下。本情境涵蓋本次訪視與生命徵象量測、抗生素或輸液之處方開立與給藥執行、床側檢驗採檢與報告回傳，以及在宅醫療處置（如抽痰或管路照護）。

### 情境 3（SC3）：後續照護安排與交班

本情境模擬當次訪視完成時，醫護人員為個案安排後續照護作為。系統建立接續照護計畫並記錄下次回訪時程與行動項目，指派下一位醫護人員之到宅訪視工作任務，並建立照護交班紀錄，傳遞目前病況、已完成治療項目以及下次訪視之臨床注意事項。

---

## 4. 臨床流程與 FHIR Profile 對照架構

本賽道將在宅急症臨床流程對應至臺灣長期照顧實作指引之 HAH 專用 Profiles，各項臨床概念對照如下表：

| 臨床業務概念 | 對應 FHIR Resource | 使用 Profile 名稱 | 關鍵欄位與核心意涵 |
|---|---|---|---|
| 在宅急症正式收案療程 | EpisodeOfCare | HAHEpisodeOfCare | status active，type 指定急性在宅照護，串聯整個收案生命週期。 |
| 住院替代整段照護脈絡 | Encounter | HAHAdmissionEncounter | status in-progress，class 為 IMP（住院照護分類），代表整段替代住院期間。 |
| 醫師或護理師單次到宅訪視 | Encounter | HAHVisitEncounter | class 為 HH（到宅訪視）或 VR，mode 標註訪視方式，記錄實際到離時間。 |
| 初訪臨床問題與疾病診斷 | Condition | HAHCondition | 記錄主診斷或共病，關聯至初訪 Encounter。 |
| 醫師初訪整體病情評估 | ClinicalImpression | HAHClinicalImpression | 記載評估者、評估時間、病況摘要，並連結至 HAHCondition。 |
| 訪視生理量測（體溫等） | Observation | LTCObservationVitalSigns | 記錄到宅量測之體溫數值、計量單位（Cel），關聯至當次訪視。 |
| 醫師開立之給藥處方 | MedicationRequest | HAHMedicationRequest | 記錄藥品代碼、用法途徑、劑量與頻率，關聯至開立時之訪視。 |
| 護理人員執行之給藥或輸注 | MedicationAdministration | HAHMedicationAdministration | status completed，記錄執行時間或輸注期間、執行者，關聯至處方與護理訪視。 |
| 床側檢驗項目結果 | Observation | HAHObservationLab | 記錄檢驗代碼、數值、計量單位或判定結果，關聯至當次訪視。 |
| 檢驗報告總結 | DiagnosticReport | HAHDiagnosticReport | 統合檢驗結果（result 參照 HAHObservationLab），記錄報告時間與出具人員或機構。 |
| 在宅醫療處置技術 | Procedure | HAHProcedure | status completed，記錄抽痰等處置項目、執行時間與人員，關聯至當次訪視。 |
| 後續接續照護計畫 | CarePlan | HAHCarePlan | status active，記錄後續照護方針與活動明細（預定下次訪視時間與工作）。 |
| 待執行訪視工作指派 | Task | HAHVisitTask | status requested，指派負責人員、限制執行期限，focus 參照 CarePlan。 |
| 醫護跨班跨職類交班紀錄 | Communication | HAHCommunication | status completed，category 為 handover，記錄交班摘要文字與關聯計畫。 |

---

## 5. 初訪與收案資料的交換順序

臨床先完成初訪評估，再決定收案。現有 `HAHVisitEncounter` 的 `episodeOfCare` 與 `partOf` 均為必填，分別參照收案療程及整段照護。`HAHClinicalImpression` 與 `HAHCondition` 也須參照 HAH 就診資料。

本次聯測從完成初訪並決定收案後的資料交換開始。建立端先上傳療程及整段照護，取得 ID 後，再上傳初訪紀錄、診斷與評估。初訪的 `period`、評估時間及收案時間依實際事件分別填寫。

---

## 6. 共通執行方式與測試準備

### 6.1 測試時程與環境準備

- 事前準備：各參測單位得於聯測前完成系統端點連線、OAuth2 認證對接、大會共通主檔代碼對應及預載資源檢視。
- 現場聯測：實體測試為期一天半，由配對系統依情境交易逐筆執行業務操作驗證。

### 6.2 RESTful 交互原則

- 資料建立（LTC_MANAGEMENT）：
  - 使用 HTTP POST 方法將資源送至伺服器對應端點，如 `[base]/EpisodeOfCare`、`[base]/Encounter`。
  - 伺服器驗證通過後回傳 HTTP 201 Created，並於回應之 `Location` 標頭中提供伺服器配發之實際資源 ID。
  - 建立端必須擷取此實際 ID，作為後續連動資源之參照值（Reference）。
- 資料查詢與讀取（LTC_CONSUMER）：
  - 第一步條件查詢：使用 HTTP GET 帶入指定參數（如 `?subject=Patient/{id}` 或 `?encounter=Encounter/{id}`），伺服器回傳 HTTP 200 OK 與符合條件之 searchset Bundle。
  - 第二步單筆讀取：自查詢結果中選取建立端當次產出之目標資源 ID，使用 `GET [base]/[ResourceType]/{id}` 取得單筆資源實體，核對欄位內容與參照關係。
- 參照值一致性：Reference 使用 `ResourceType/id`。本輪新增的資料使用實際建立 ID，預載資料使用大會提供的 ID。

### 6.3 測試案例與預載資料架構

- 病人與機構資源：沿用賽道 1 之病人與機構管理機制。賽道 4 統一使用符合 `HAHPatient` 與 `LTCOrganization` 規範之單一固定合成案例個案，確保全賽道案例一致。
- 人員與角色預載：到宅醫師、護理師等人員（`LTCPractitioner`）與其執業身分（`LTCPractitionerRole`）由大會於聯測環境中事前預載，參測端於建立交易時直接引用預載人員 ID。
- 其他輔助資源預載：照護目標（`HAHGoal`）與服務請求（`HAHServiceRequest`）若案例引用需要，由大會事前建置完備，不納入本次必測上傳交易清單。
- 測試深度原則：聯測專注於流程驗證，案例涵蓋初訪、一次後續到宅訪視及下一次訪視計畫。

---

## 7. 每情境交易規範與 20 筆交易總表

### 7.1 情境 1：初次訪視與收案（交易 411 至 416）

#### LTC-411：建立收案與整段照護
- 業務意涵：在宅急症評估確認收案，建立整段照護之行政基礎架構。
- 執行方式：
  1. POST `[base]/EpisodeOfCare`，遵循 `HAHEpisodeOfCare` Profile。`status` 填入 `active`，`type` 填入 `HAHActivityCS#acute-home`，`patient` 指向預載之 HAHPatient，`managingOrganization` 指向預載之 LTCOrganization。填寫療程識別碼的 `identifier.system`、`identifier.value` 與 `period.start`。取得實際 EpisodeOfCare ID。
  2. POST `[base]/Encounter`，遵循 `HAHAdmissionEncounter` Profile。`status` 填入 `in-progress`，`class` 填入 `http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP`，`type` 填入 `HAHActivityCS#acute-home`，`subject` 指向相同 HAHPatient，`episodeOfCare` 指向上一步取得之 EpisodeOfCare ID。填寫 `serviceProvider`、`participant.individual` 與實際照護開始時間 `period.start`。取得實際 AdmissionEncounter ID。

#### LTC-412：查詢與讀取收案與整段照護
- 業務意涵：接續團隊檢索確認個案收案身分與在宅急症整段住院脈絡。
- 執行方式：
  1. 發送 `GET [base]/EpisodeOfCare?patient=Patient/{id}` 檢索並讀取目標 EpisodeOfCare，核對個案、管理機構與 active 狀態。
  2. 發送 `GET [base]/Encounter?subject=Patient/{id}&class=IMP` 檢索並讀取目標 AdmissionEncounter，核對 in-progress 狀態、IMP 分類以及其 `episodeOfCare` 參照識別碼是否與當次 EpisodeOfCare 一致。

#### LTC-413：建立初次訪視紀錄
- 業務意涵：上傳醫師實地到宅初訪之就診歷程。
- 執行方式：
  - POST `[base]/Encounter`，遵循 `HAHVisitEncounter` Profile。
  - `status` 填入 `finished`。
  - `class` 填入 `http://terminology.hl7.org/CodeSystem/v3-ActCode#HH`。
  - `type` 填入 `HAHActivityCS#visit`。
  - `extension[mode]` 填入 `in-person`。
  - `subject` 指向個案 HAHPatient。
  - `episodeOfCare` 指向 411 建立之 EpisodeOfCare ID。
  - `partOf` 指向 411 建立之 AdmissionEncounter ID。
  - `participant.individual` 指向預載之主責醫師，`serviceProvider` 指向服務機構。
  - `period.start` 與 `period.end` 忠實填入初次到宅之實際起訖時間（滿足已結束就診之檢核規則）。
  - 伺服器回傳 HTTP 201 Created 並取得初訪 Encounter ID。

#### LTC-414：查詢與讀取初次訪視紀錄
- 業務意涵：核對初次到宅就診細節與人員時間。
- 執行方式：
  - 發送 `GET [base]/Encounter?subject=Patient/{id}&part-of=Encounter/{admission_id}` 檢索訪視清單。
  - 單筆讀取 413 建立之 Visit Encounter，核對實際訪視時間、到宅醫師、機構、訪視方式（HH / in-person）以及 `episodeOfCare` 與 `partOf` 關聯。

#### LTC-415：上傳初訪評估與診斷
- 業務意涵：上傳到宅醫師判斷之急症診斷與初次病情整體評估。
- 執行方式：
  1. POST `[base]/Condition`，遵循 `HAHCondition` Profile。填入 `subject`、`clinicalStatus`、`verificationStatus`、`category`、診斷代碼（如肺炎代碼）、`recordedDate`，且 `encounter` 指向 413 建立之初訪 Encounter ID。取得實際 Condition ID。
  2. POST `[base]/ClinicalImpression`，遵循 `HAHClinicalImpression` Profile。填入 `subject`、`status`（completed）、`assessor`（指向醫師）、`effectiveDateTime` 或 `effectivePeriod`、`date`、`summary`（評估文字摘要），且 `encounter` 指向 413 初訪 Encounter ID，`problem` 指向上一步建立之 Condition ID。取得實際 ClinicalImpression ID。

#### LTC-416：查詢與讀取初訪評估與診斷
- 業務意涵：查讀初次評估與急症問題。
- 執行方式：
  - 檢索並讀取 415 建立之 Condition 與 ClinicalImpression 資源。
  - 核對診斷代碼、評估摘要、評估人員、記錄時間，並確認兩資源之 `encounter` 均指向初訪紀錄，且評估之 `problem` 正確指向該筆診斷。

---

### 7.2 情境 2：持續訪視與治療（交易 421 至 428）

#### LTC-421：建立本次訪視與生理量測
- 業務意涵：醫護人員再次到宅訪視，建立獨立就診並記錄現場量測之生命徵象。
- 執行方式：
  1. POST `[base]/Encounter`，遵循 `HAHVisitEncounter` Profile。建立一筆新的訪視紀錄，`partOf` 仍指向同一 AdmissionEncounter ID，`episodeOfCare` 指向同一 EpisodeOfCare ID，`status` 填入 `finished`，`class` 為 `HH`，`type` 為 `HAHActivityCS#visit`，`extension[mode]` 為 `in-person`，填寫 `subject`、`serviceProvider`、`participant.individual` 及 `period.start`、`period.end`。取得本次訪視 Encounter ID。
  2. POST `[base]/Observation`，遵循 `LTCObservationVitalSigns` Profile。`status` 填入 `final`，`category` 為 `vital-signs`，代碼填入 LOINC 體溫代碼 `8310-5`，填入 `effectiveDateTime`、量測數值與 UCUM 計量單位（system 為 `http://unitsofmeasure.org`，code 為 `Cel`），`subject` 指向個案，且 `encounter` 指向本筆新建立之訪視 Encounter ID。

#### LTC-422：查詢與讀取本次訪視與生理量測
- 業務意涵：查讀本次訪視內容與體溫等生命徵象數據。
- 執行方式：
  - 檢索並單筆讀取當次訪視 Encounter 與 Observation 資源。
  - 核對本次到訪時間、量測時間、體溫數值、計量單位與本次訪視參照關聯。

#### LTC-423：上傳處方與給藥紀錄
- 業務意涵：記錄醫師到宅開立之處方，以及護理人員執行之在宅給藥或靜脈輸注。
- 執行方式：
  1. POST `[base]/MedicationRequest`，遵循 `HAHMedicationRequest` Profile。填入處方狀態（active）、意圖（order）、藥品項目、劑量用法、途徑、`subject`、`authoredOn`、`requester` 及 `dosageInstruction.text`，`encounter` 指向開立時之訪視（可為先前醫師訪視或本次訪視）。取得實際 MedicationRequest ID。
  2. POST `[base]/MedicationAdministration`，遵循 `HAHMedicationAdministration` Profile。`status` 填入 `completed`，`request` 指向上一步建立之 MedicationRequest ID，`context` 指向執行給藥之實際護理訪視 Encounter ID，`performer.actor` 指向執行護理人員，填寫 `subject`、藥品及 `dosage.route`。依測資擇一填寫：單次給藥（填寫 `effectiveDateTime` 與 `dosage.dose`）或點滴持續輸注（填寫 `effectivePeriod` 與 `dosage.rateQuantity`）。取得實際 MedicationAdministration ID。
  - 附註：本交易跨越醫護職責，可由不同醫事資訊系統配對協同完成，大會分別記錄各系統在處方與給藥端之實作能力。

#### LTC-424：查詢與讀取處方與給藥紀錄
- 業務意涵：查讀急症藥品醫囑與實際給藥執行明細。
- 執行方式：
  - 檢索並讀取 423 建立之 MedicationRequest 與 MedicationAdministration 資源。
  - 核對藥品品項、用法用量、執行時間或輸注期間、執行護理師，並確認 `request` 指向該處方，且各自關聯至對應之訪視就診。

#### LTC-425：上傳檢驗結果與報告
- 業務意涵：上傳到宅採檢或床側檢驗之數值與整合檢驗報告。
- 執行方式：
  1. POST `[base]/Observation`，遵循 `HAHObservationLab` Profile。記錄單項檢驗代碼、數值、計量單位或判定，`encounter` 指向當次訪視。取得實際 Observation ID。
  2. POST `[base]/DiagnosticReport`，遵循 `HAHDiagnosticReport` Profile。填入報告狀態（final）、報告項目代碼、`effectiveDateTime`、`issued`、報告人員，`encounter` 指向當次訪視，且 `result` 參照上一步建立之 HAHObservationLab ID。取得實際 DiagnosticReport ID。
  - 附註：依現行 Profile 約束，HAHDiagnosticReport.result 僅容納 HAHObservationLab，本次維持此規範，以檢驗報告為固定測試範疇。

#### LTC-426：查詢與讀取檢驗結果與報告
- 業務意涵：查讀床側或送檢之檢驗數據與報告結論。
- 執行方式：
  - 檢索並讀取 425 建立之 DiagnosticReport 與 HAHObservationLab 資源。
  - 核對檢驗項目名稱、數值、單位、報告簽發時間，並確認 DiagnosticReport.result 準確連結至該筆 Observation。

#### LTC-427：上傳在宅處置紀錄
- 業務意涵：記錄到宅執行之醫療處置技術（如呼吸道抽痰處置）。
- 執行方式：
  - POST `[base]/Procedure`，遵循 `HAHProcedure` Profile。
  - `status` 填入 `completed`。
  - 處置代碼採用固定案例（如抽痰處置）。
  - `subject` 指向個案。
  - `encounter` 指向當次訪視 Encounter ID。
  - `performedDateTime` 或 `performedPeriod` 填入處置時間。
  - `performer.actor` 指向執行處置之醫事人員。
  - 伺服器回傳 HTTP 201 Created 並取得 Procedure ID。

#### LTC-428：查詢與讀取在宅處置紀錄
- 業務意涵：查讀在宅醫療處置項目與執行歷程。
- 執行方式：
  - 檢索並單筆讀取 427 建立之 Procedure 資源。
  - 核對處置項目名稱、執行時間、執行人員以及所屬訪視 Encounter 參照。

---

### 7.3 情境 3：後續照護安排與交班（交易 431 至 436）

#### LTC-431：建立後續照護計畫
- 業務意涵：醫護人員擬定下一階段在宅照護方針與活動安排。
- 執行方式：
  - POST `[base]/CarePlan`，遵循 `HAHCarePlan` Profile。
  - `status` 填入 `active`，`intent` 填入 `plan`，填入個案 `subject`、計畫類別與期間。
  - `extension[episode]` 參照本次 HAHEpisodeOfCare ID。
  - `encounter` 指向擬定計畫之當次訪視 Encounter ID。
  - `activity.detail` 至少包含一筆活動明細，填寫 `status`、`description`（描述下次來訪事項）、`scheduledPeriod`（預定下次到訪時間）以及 `performer`（預定執行人員）。
  - 若案例需關聯照護目標，可直接參照大會預載之 HAHGoal。取得實際 CarePlan ID。

#### LTC-432：查詢與讀取照護計畫
- 業務意涵：查讀後續照護目標方針與下次訪視排程。
- 執行方式：
  - 發送 `GET [base]/CarePlan?subject=Patient/{id}` 檢索照護計畫。
  - 單筆讀取 431 建立之 CarePlan 資源，核對計畫期間、療程關聯、訪視關聯，以及 activity.detail 內記錄之下次到訪時間、預定事項與負責人員。

#### LTC-433：指派下一次訪視工作
- 業務意涵：建立具體任務指派，明確派案何時由何人到宅服務。
- 執行方式：
  - POST `[base]/Task`，遵循 `HAHVisitTask` Profile。
  - `status` 填入 `requested`，`intent` 填入 `order`。
  - `code` 使用 `HAHServiceVS`（例如到宅訪視代碼）。
  - `for` 指向個案 HAHPatient。
  - `authoredOn` 填入開立時間。
  - `requester` 指向派工者（當次訪視人員）。
  - `owner` 指向預定到宅之執行人員或照護團隊。
  - `encounter` 指向安排此工作之當次訪視 Encounter ID。
  - `focus` 指向 431 建立之 CarePlan ID。
  - `restriction.period` 填入預定執行之時間區間。取得實際 Task ID。

#### LTC-434：查詢與讀取待執行訪視工作
- 業務意涵：接案醫護人員檢索屬於自己或所屬團隊待執行之訪視任務。
- 執行方式：
  - 發送 `GET [base]/Task?patient=Patient/{id}&status=requested` 檢索工作清單。
  - 單筆讀取 433 建立之 Task 資源，核對指派對象、預定到宅執行時間，並確認 `focus` 正確參照至前述照護計畫。

#### LTC-435：建立照護交班紀錄
- 業務意涵：本次訪視人員向下一班或協同醫護人員傳達結構化交班資訊。
- 執行方式：
  - POST `[base]/Communication`，遵循 `HAHCommunication` Profile。
  - `status` 填入 `completed`。
  - `category` 填入 `HAHCommunicationVS` 中之交班代碼（code `handover`，system `http://ltc-ig.fhir.tw/CodeSystem/hah-activity`）。
  - `subject` 指向個案 HAHPatient。
  - `sender` 指向本次到訪交班人員。
  - `recipient` 指向接收交班人員或團隊。
  - `sent` 填入交班發送時間。
  - `encounter` 指向當次訪視 Encounter ID。
  - `basedOn` 指向 431 建立之 CarePlan ID。
  - `payload.contentString` 填入交班摘要文字（包含目前病況摘要、本次已完成治療、下次訪視注意事項）。取得實際 Communication ID。

#### LTC-436：查詢與讀取照護交班紀錄
- 業務意涵：接班或協同醫護人員讀取個案之最新交班事項。
- 執行方式：
  - 發送 `GET [base]/Communication?subject=Patient/{id}&category=handover` 檢索交班紀錄。
  - 單筆讀取 435 建立之 Communication 資源，核對發送者、接收者、交班時間、文字內容、當次訪視關聯與計畫關聯。

---

### 7.4 每情境交易總表（20 筆完整清單）

以下為賽道 4 全數 20 筆交易之清單，各列均包含交易代碼、業務主題、使用 Profile 與主要說明：

| 交易代碼 | 業務主題 | 使用 Profile | 主要說明 |
|---|---|---|---|
| LTC-411 | 建立收案與整段照護 | HAHEpisodeOfCare, HAHAdmissionEncounter | 分別建立 active 療程與 in-progress 之 IMP 整段就診，後者關聯前者，確立在宅急症住院脈絡。 |
| LTC-412 | 查詢與讀取收案與整段照護 | HAHEpisodeOfCare, HAHAdmissionEncounter | 檢索並讀取收案療程與整段照護，核對個案、管理機構、收案期間與療程參照。 |
| LTC-413 | 建立初次訪視紀錄 | HAHVisitEncounter | 建立 finished 初訪紀錄，class 設 HH，填入實際到離起訖時間，關聯療程與整段照護。 |
| LTC-414 | 查詢與讀取初次訪視紀錄 | HAHVisitEncounter | 檢索並讀取初次訪視，核對實際訪視時間、醫師、機構、就診方式與整段照護關聯。 |
| LTC-415 | 上傳初訪評估與診斷 | HAHCondition, HAHClinicalImpression | 分別建立急症診斷與整體臨床評估，兩者均關聯初訪，評估 problem 參照該診斷。 |
| LTC-416 | 查詢與讀取初訪評估與診斷 | HAHCondition, HAHClinicalImpression | 檢索並讀取診斷與初次評估，核對疾病代碼、評估摘要、評估人員與初訪關聯。 |
| LTC-421 | 建立本次訪視與生理量測 | HAHVisitEncounter, LTCObservationVitalSigns | 建立新一次訪視並掛載於整段照護，建立一筆現場量測之體溫 Observation 並關聯新訪視。 |
| LTC-422 | 查詢與讀取本次訪視與生理量測 | HAHVisitEncounter, LTCObservationVitalSigns | 檢索並讀取本次訪視與量測紀錄，核對到訪時間、體溫數值、計量單位與本次訪視關聯。 |
| LTC-423 | 上傳處方與給藥紀錄 | HAHMedicationRequest, HAHMedicationAdministration | 建立給藥處方並記錄護理給藥或輸注，給藥 request 參照處方，context 關聯護理訪視。 |
| LTC-424 | 查詢與讀取處方與給藥紀錄 | HAHMedicationRequest, HAHMedicationAdministration | 檢索並讀取處方與給藥紀錄，核對藥品、用法、劑量、給藥人員、處方參照及訪視關聯。 |
| LTC-425 | 上傳檢驗結果與報告 | HAHObservationLab, HAHDiagnosticReport | 建立一筆實驗室檢驗 Observation，再建立一份報告 DiagnosticReport，其 result 參照該檢驗。 |
| LTC-426 | 查詢與讀取檢驗結果與報告 | HAHObservationLab, HAHDiagnosticReport | 檢索並讀取檢驗與報告，核對檢驗項目、結果數值、單位、簽發時間與 result 參照關聯。 |
| LTC-427 | 上傳在宅處置紀錄 | HAHProcedure | 建立一筆 completed 在宅處置（如抽痰），記錄執行時間與人員，關聯當次訪視。 |
| LTC-428 | 查詢與讀取在宅處置紀錄 | HAHProcedure | 檢索並讀取處置紀錄，核對處置項目名稱、執行時間、執行醫事人員與訪視關聯。 |
| LTC-431 | 建立後續照護計畫 | HAHCarePlan | 建立 active 計畫，記錄下次來訪時間與事項於 activity.detail，關聯當次訪視與療程。 |
| LTC-432 | 查詢與讀取照護計畫 | HAHCarePlan | 檢索並讀取照護計畫，核對下次預定時間、行動項目、負責人員、個案與療程關聯。 |
| LTC-433 | 指派下一次訪視工作 | HAHVisitTask | 建立 requested 任務，記錄負責人員、預定執行期限，focus 參照照護計畫，關聯當次訪視。 |
| LTC-434 | 查詢與讀取待執行訪視工作 | HAHVisitTask | 檢索指定個案待執行任務，核對負責人、預定到宅時間，以及 focus 照護計畫參照。 |
| LTC-435 | 建立照護交班紀錄 | HAHCommunication | 建立 completed 交班紀錄，category 為 handover，記錄病況與注意事項，關聯訪視與計畫。 |
| LTC-436 | 查詢與讀取照護交班紀錄 | HAHCommunication | 檢索並讀取交班紀錄，核對交班人員、接收對象、交班內容、當次訪視與計畫關聯。 |

---

## 8. 最小通過條件與評測機制

### 8.1 建議最小通過範圍

考量在宅急症照護各系統之專業分工與現場聯測節奏，建議大會訂定之最小通過核心範圍（Core Passing Scope）如下：

1. 情境 1（SC1）：必須完整完成 411 至 414。確立在宅急症正式收案療程、整段照護脈絡與初次實地到宅訪視紀錄之基礎互通能力。
2. 情境 2（SC2）：必須完成 421 與 422（新訪視與生理量測），並自「423/424（處方與給藥紀錄）」或「427/428（在宅處置紀錄）」中至少擇一組完成。
3. 情境 3（SC3）：必須完成 431 與 432（後續照護計畫），以及 435 與 436（照護交班紀錄）。

加測與進階項目（Optional / Advanced Scope）：
- 415/416（初訪評估與急症診斷）：適用具備結構化醫師評估與診斷紀錄之臨床系統。
- 425/426（床側檢驗結果與報告）：適用配備即時檢驗儀器介接或檢驗資訊模組之系統。
- 433/434（指派與查讀下一次訪視工作）：適用具備跨專業行動派案與工作排程管理功能之系統。

### 8.2 團隊配對與成果記錄

聯測依角色及臨床職責配對，由團隊共同完成上述最小流程。各單位的結果記錄實際完成的交易與資源：

- 跨職類系統配對完成全流程：
  例如醫師巡迴診療系統可負責建立 EpisodeOfCare、AdmissionEncounter、初訪 VisitEncounter、Condition、ClinicalImpression 與 MedicationRequest；護理行動系統負責建立後續護理 VisitEncounter、VitalSigns Observation、Procedure 以及執行給藥之 MedicationAdministration。雙方配對協同完成 SC1 至 SC3 之業務交易鏈。
- 逐資源與逐交易記錄能力：
  大會評測系統將詳實記錄各參測廠商於每筆交易所負責之角色與 Resource 建立/查讀能力，作為參測結果。

---

## 9. 資料來源

1. 衛生福利部中央健康保險署 全民健康保險在宅急症照護試辦計畫（115 年 5 月 12 日修訂版）：
   - 公告網址：https://www.nhi.gov.tw/ch/cp-15112-18d97-3660-1.html
   - 計畫文件：https://www.nhi.gov.tw/ch/dl-81898-dcd5ce75288d42d1a033576bd13b4001-1.pdf
2. 臺灣長期照顧實作指引（本工作目錄之 FHIR Profile）：
   - 在宅急症照護（Hospital-at-Home, HAH）相關結構定義、邏輯模型與值集規範。

3. 本地 Profile：
   - [在宅行政資料](../input/fsh/profiles/hah/profile_hah_administration.fsh)
   - [在宅臨床資料](../input/fsh/profiles/hah/profile_hah_clinical.fsh)
   - [生理量測](../input/fsh/profiles/profile_observation_vitalsigns.fsh)
4. FHIR R4 查詢參數：[Encounter](https://hl7.org/fhir/R4/encounter.html#search)、[Task](https://hl7.org/fhir/R4/task.html#search)。
