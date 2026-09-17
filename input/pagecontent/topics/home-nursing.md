### 居家護理照護管理系統

本主題依《居家護理－測試區系統介接規範 V5.0.16》（2025 年 12 月 8 日）建立。

本 IG 提供 12 支 API 的請求 Logical Model、 24 種結構化表單、臨床資源 Profile、術語與範例。

[欄位對應表](home-nursing-mapping.html) 列出來源欄位、評估題目、Logical Model 與 QuestionnaireResponse 路徑。表單定義及原生臨床資源均可由 [規範文件](artifacts.html) 下載。

#### API 盤點

測試區基底網址為 `http://114.34.167.172:49154/HomeNursing/API/hncApi/`。12 支 API 均為 `POST`，標頭包含 `SecretKey` 及 `AGENCY_ID`。`SecretKey` 屬傳輸憑證，不放入 FHIR Resource、範例或稽核紀錄。

| API | 用途與相依資料 | 請求 Logical Model | 印刷頁 |
| --- | --- | --- | --- |
| `BaseData` | 收案、個案背景、主要照顧者、共照團隊 | [基本資料](StructureDefinition-HNBaseDataAPIModel.html) | 1–13 |
| `Evaluation` | 同一個案及收案日期下的十三類評估，可各自上傳多個日期 | [全人評估](StructureDefinition-HNEvaluationAPIModel.html) | 14–70 |
| `CaseSummary` | 評估後的需求項目與摘要備註 | [需求摘要](StructureDefinition-HNCaseSummaryAPIModel.html) | 71–74 |
| `CarePlan` | 需求摘要下的目標、措施及評值紀錄 | [照護計畫](StructureDefinition-HNCarePlanAPIModel.html) | 75–80 |
| `CareRecord` | 照護紀錄、資源、服務、事件、生命徵象、多筆傷口與足部護理 | [照護紀錄](StructureDefinition-HNCareRecordAPIModel.html) | 81–121 |
| `CaseDesc` | 共照成員的照護時段與文字紀錄 | [共照紀錄](StructureDefinition-HNCaseDescAPIModel.html) | 122–125 |
| `StaffEgy` | 工作人員緊急事件，不要求個案識別或收案日期 | [人員緊急事件](StructureDefinition-HNStaffEgyAPIModel.html) | 126–129 |
| `CaseClose` | 個案結案日期、人員與原因 | [個案結案](StructureDefinition-HNCaseCloseAPIModel.html) | 130–132 |
| `CarePlanClose` | 指定目標的結案日期及結案人員 | [計畫結案](StructureDefinition-HNCarePlanCloseAPIModel.html) | 133–135 |
| `VitalSign` | 獨立上傳生命徵象 | [生命徵象](StructureDefinition-HNVitalSignAPIModel.html) | 136–138 |
| `GetLog` | 以 `start_date` 及選填的 `end_date` 查詢處理結果 | [日期查詢](StructureDefinition-HNGetLogAPIModel.html) | 139 |
| `GetLogByTicket` | 以八位數字 `ticket` 查詢處理結果 | [追蹤碼查詢](StructureDefinition-HNGetLogByTicketAPIModel.html) | 139 |
{: .grid .rwd-table}

#### 資料流程與識別

先上傳基本資料，再上傳評估、需求摘要及照護計畫。照護紀錄與共照紀錄持續累積，個案結案與照護計畫結案分別更新其狀態。

| 識別層次 | 來源比對條件 | FHIR 表達 |
| --- | --- | --- |
| 個案 | `CaseID` | `Patient.identifier[idCardNumber]` |
| 一次收案 | `AGENCY_ID`、`CaseID`、`EndDate` | `EpisodeOfCare.managingOrganization`、`patient`、`period.start` |
| 需求摘要 | 收案識別、摘要日期、項目及摘要備註 | `HNCaseSummaryResponse` 的固定 Slice |
| 照護目標 | 需求摘要比對條件、目標敘述及適用的建立日期 | `Goal` 及 `HNTargetsResponse` |
| 照護措施、評值 | 來源表格列出的摘要與目標比對條件 | `CarePlan.activity` 及對應的措施／評值表單 |
| 原 API 處理工作 | API 名稱及來源提供的追蹤碼 | `HNAPITask.code`、`identifier`，查詢碼置於 `input[ticket]` |
{: .grid .rwd-table}

#### 繼承關係

| 居護定義 | 繼承自 | 用途與差異 |
| --- | --- | --- |
| [HNPatient](StructureDefinition-HNPatient.html) | LTCPatient | 沿用識別、中文姓名、地址及緊急聯絡人，新增來源表單關聯 |
| [HNEpisodeOfCare](StructureDefinition-HNEpisodeOfCare.html) | LTCEpisodeOfCareBase | 區分多次收案及結案，新增識別與來源表單 |
| 二十三種個案表單 Response | LTCQuestionnaireResponse | 繼承問卷、個案及填寫時間，新增固定問卷、Slice、型態與選項繫結 |
| [HNStaffEgyResponse](StructureDefinition-HNStaffEgyResponse.html) | FHIR QuestionnaireResponse | 既有表單主體限 LTCPatient，工作人員改以 Practitioner 為主體，建立者為 Organization |
| 二十四張 Questionnaire | LTCQuestionnaire | 定義所有表單欄位、題目、重複結構及可選答案 |
| [HNCarePlan](StructureDefinition-HNCarePlan.html) | LTCCarePlan | 串聯目標、措施、評值及停止資訊 |
| [HNGoal](StructureDefinition-HNGoal.html) | LTCGoal | 保留文字敘述，新增主要目標旗標及來源表單 |
| [HNCommunication](StructureDefinition-HNCommunication.html) | LTCCommunicationServiceA | 共照紀錄、提供者及完整來源表單 |
| [HNVitalSigns](StructureDefinition-HNVitalSigns.html) | FHIR R4 vitalspanel | 以 hasMember 沿用既有體溫、心率、呼吸、血壓及血氧 Profile，血糖與量測組使用共同來源表單 |
| 血糖 | 直接沿用 PASportObservationGlucose | 沿用 LOINC 2339-0 及 UCUM mg/dL |
| [HNWound](StructureDefinition-HNWound.html) | TW Core Observation-simple | 既有壓傷 Condition 的語意無法涵蓋其他傷口，每個傷口建立一筆 Observation |
| [HNAPITask](StructureDefinition-HNAPITask.html) | LTCTask | 十二種作業、查詢輸入、接收訊息及共照名單更新指示 |
| [HNOperationOutcome](StructureDefinition-HNOperationOutcome.html) | FHIR OperationOutcome | 既有 Outcome 為其他來源系統專用，因此另定義居護訊息 |
{: .grid .rwd-table}


#### 全人評估表單

| 原 API 陣列 | 問卷及 Profile | 主要內容 |
| --- | --- | --- |
| `HealthyHabits` | [健康紀錄](StructureDefinition-HNHealthyHabitsResponse.html) | 菸酒檳榔狀態及年數、過敏、疫苗 |
| `MedicalHistories` | [疾病史](StructureDefinition-HNMedicalHistoriesResponse.html) | 主次診斷、十四類疾病史 |
| `DrugSafeties` | [藥物安全性](StructureDefinition-HNDrugSafetiesResponse.html) | 長期用藥、多沿用藥、自行購藥及使用中藥物 |
| `BodyEvaluations` | [身體評估](StructureDefinition-HNBodyEvaluationsResponse.html) | 意識、視聽力、溝通、進食、排泄、皮膚、肌力、行動及呼吸輔助 |
| `PressureInjuries` | [壓力性損傷危險](StructureDefinition-HNPressureInjuriesResponse.html) | 六項危險評估 |
| `FallRisks` | [跌倒危險性](StructureDefinition-HNFallRisksResponse.html) | 八項危險因素及多選說明 |
| `ADLs` | [日常生活功能](StructureDefinition-HNADLsResponse.html) | 十項日常生活活動 |
| `IADLs` | [工具性日常生活活動](StructureDefinition-HNIADLsResponse.html) | 八項工具性活動 |
| `Dementias` | [認知功能](StructureDefinition-HNDementiasResponse.html) | 日期、地點、個人資訊等題目；電話及住址依來源續答規則處理 |
| `GeriatricDepressionScales` | [情緒問題](StructureDefinition-HNGeriatricDepressionScalesResponse.html) | 五項情緒問題 |
| `MNASFs` | [簡易營養](StructureDefinition-HNMNASFsResponse.html) | 營養評估；BMI 無法取得時使用圍度替代題 |
| `PainEvaluations` | [疼痛](StructureDefinition-HNPainEvaluationsResponse.html) | 可言語、無法言語及其他情形，分別保留 Questions 與 QuestionsNot |
| `SOFs` | [衰弱](StructureDefinition-HNSOFsResponse.html) | 體重減輕、下肢功能及活力降低 |
{: .grid .rwd-table}