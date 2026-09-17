本主題說明[居家護理照護管理系統](home-nursing.html)的在宅急症資料交換，涵蓋收案、訪視、檢驗、給藥及結案轉銜。資料集依 HaH 系統的照護流程建立，採用 FHIR R4 與 TW Core 1.0.0。

## 資料集與照護流程

[在宅急症 Logical Model](StructureDefinition-HAHCareDataset.html)定義 150 個資料元素；[欄位對照表](hah-mapping.html)說明來源系統、FHIR 欄位及新增需求。Logical Model 整理業務資料，Profiles 定義交換時使用的 FHIR 資源結構。

| 流程 | 交換資料 | 主要 FHIR Resources |
| --- | --- | --- |
| 收案評估 | 適用計畫與版本、居家環境、照顧者支援、評估結論及原因 | Questionnaire、QuestionnaireResponse |
| 正式收案 | 個案與聯絡人、收案期間、負責機構、診斷、團隊 | Patient、RelatedPerson、EpisodeOfCare、Condition、CareTeam |
| 建立整段照護 | 本次在宅住院照護範圍 | Encounter（IMP） |
| 排程與訪視 | 執行人員、工作期限、實地或遠距訪視、實際執行時間 | Task、Encounter（HH／VR）、Location |
| 評估與監測 | 診斷、生命徵象、檢驗、設備及整體臨床評估 | Condition、Observation、DiagnosticReport、Specimen、Device、ClinicalImpression |
| 擬定與執行照護 | 問題、預期目標、計畫、醫囑、已執行措施 | Goal、CarePlan、ServiceRequest、Procedure |
| 用藥與同意 | 處方、實際給藥與未給原因、過敏、同意文件 | MedicationRequest、MedicationAdministration、AllergyIntolerance、Consent、DocumentReference |
| 會診與交班 | 申請、回覆、相關附件 | ServiceRequest、Communication、DocumentReference |
| 結案與轉銜 | 結束原因、轉出機構、摘要、後續追蹤 | EpisodeOfCare、Encounter、Composition、Bundle |
{: .grid .rwd-table}

一位個案可有多次收案；每次收案建立新的 EpisodeOfCare 及整段 Encounter，每次訪視再建立 Encounter，透過 `partOf` 連到整段照護。療程與各次訪視分別記錄狀態及起訖時間。`Patient.active` 表示個案主檔是否使用。[FHIR EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html)與 Encounter 分別表達服務責任期間和實際就診。

實地訪視使用 `HH`，視訊與電話評估使用 `VR`，訪視方式由 ExtHAHVisitMode 區分。整段照護沿用來源系統 `IMP` 分類，照護地點記錄個案自宅。

## 繼承關係

| 資料 | 採用方式 | 原因 |
| --- | --- | --- |
| 人員、角色、機構、關係人、自宅位置 | 直接使用 LTCPractitioner、LTCPractitionerRole、LTCOrganization、LTCRelatedPerson、LTCLocation | 現有資料結構已可支援 |
| 體溫、心率、呼吸、血壓、血氧 | 直接使用 PASportObservationBodyTemperature、PASportObservationHeartRate、PASportObservationRespiratoryRate、PASportObservationBloodPressure、PASportObservationPeripheralOxygenSaturation | 既有基礎生理量測 Profile 已有標準代碼及單位，交換時另帶本次 Encounter |
| 檢體、藥品及既有用藥清單 | 直接使用 TW Core Specimen、Medication、MedicationStatement | 本次沒有額外必填需求 |
| 個案、療程、診斷、計畫、目標、醫囑、處置、問卷、通訊及摘要 | 繼承相應 LTC Profile | 保留本 IG 共用識別與填寫規則，補充在宅急症關聯 |
| 就診、檢驗、檢驗報告、處方、過敏及附件 | 繼承相應 TW Core Profile | 沿用國內共用欄位與標準術語 |
| 照護團隊 | 繼承 TW Core CareTeam | 支援人員與共照機構作為團隊成員 |
| 工作任務 | 繼承 R4 Task | 支援將工作指派給 CareTeam |
| 給藥 | 繼承 R4 MedicationAdministration | 支援單次給藥、持續輸注及未給藥情境 |
| 臨床評估、設備、同意、文件 Bundle | 繼承相應 R4 Resource | 以 R4 資源結構加入本次療程及臨床資料要求 |
{: .grid .rwd-table}


## Profiles

| Profile | 繼承自 | 用途 |
| --- | --- | --- |
| [在宅急症－個案](StructureDefinition-HAHPatient.html) | `LTCPatient` | 正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人。 |
| [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.html) | `LTCEpisodeOfCareBase` | 每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。 |
| [在宅急症－就診基礎](StructureDefinition-HAHEncounter.html) | `$TWCoreEncounter` | 在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。 |
| [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.html) | `HAHEncounter` | 表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示在宅住院照護分類，location 記錄照護地點。 |
| [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.html) | `HAHEncounter` | 每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。 |
| [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.html) | `$TWCoreCareTeam` | 記錄主責及共照人員、機構、角色與參與期間。團隊成員包含人員與共照機構。 |
| [在宅急症－照護工作](StructureDefinition-HAHVisitTask.html) | `Task` | 記錄訪視、送藥等執行工作。owner 可指向負責執行的照護團隊。 |
| [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.html) | `LTCQuestionnaireResponse` | 記錄評估依據、居家環境、照顧者支援與收案建議。 |
| [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.html) | `LTCCondition` | 記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。 |
| [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.html) | `LTCCarePlan` | 沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。 |
| [在宅急症－照護目標](StructureDefinition-HAHGoal.html) | `LTCGoal` | 記錄個案預期達到的結果、期限及評值。照護問題記錄於 Condition。 |
| [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.html) | `LTCServiceRequest` | 沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。 |
| [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.html) | `ClinicalImpression` | 記錄評估人員對病情的判斷、發現與摘要。 |
| [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.html) | `LTCProcedureCareActivity` | 沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。 |
| [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.html) | `Observation-laboratoryResult-twcore` | 一筆檢驗項目一筆結果。保留檢體、方法、單位與參考區間，缺少結果時以 dataAbsentReason 記錄原因。 |
| [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.html) | `DiagnosticReport-twcore` | 以一份報告串聯醫囑、檢體與檢驗結果，可附原始報告檔案。 |
| [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.html) | `$TWCoreMedicationRequest` | 記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。 |
| [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.html) | `MedicationAdministration` | 記錄實際給藥時間點或輸注期間。effectiveDateTime 記錄單次給藥時間，effectivePeriod 記錄持續輸注期間。 |
| [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.html) | `AllergyIntolerance-twcore` | 記錄過敏物質、確認狀態及反應。 |
| [在宅急症－量測設備](StructureDefinition-HAHDevice.html) | `Device` | 記錄居家量測設備的識別與類型。identifier 記錄設備編號，udiCarrier 記錄 UDI。 |
| [在宅急症－照會與交班](StructureDefinition-HAHCommunication.html) | `LTCCommunicationServiceA` | 沿用服務活動紀錄，交換照會回覆、交班與衛教內容。 |
| [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.html) | `DocumentReference-twcore` | 記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。 |
| [在宅急症－照護同意](StructureDefinition-HAHConsent.html) | `Consent` | 記錄照護同意的狀態、範圍、時間及來源文件。 |
| [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.html) | `LTCCompositionBase` | 彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，未提供或未評估的資訊可在章節文字中說明。 |
| [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.html) | `Bundle` | 以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。 |
{: .grid .rwd-table}

## 術語與 Extension

FHIR 的狀態、就診分類、臨床代碼及 UCUM 單位沿用標準系統。新增代碼表達本資料集的工作分類、訪視方式、結束原因、文件章節及評估結論。

| CodeSystem | 用途 |
| --- | --- |
| [在宅急症－照護活動代碼](CodeSystem-hah-activity.html) | 本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。 |
| [在宅急症－療程結束原因代碼](CodeSystem-hah-outcome.html) | 區分療程結束的結果。暫停照護使用 EpisodeOfCare.status=onhold。 |
| [在宅急症－訪視方式代碼](CodeSystem-hah-visit-mode.html) | 記錄實際提供診療或評估的方式。 |
| [在宅急症－摘要種類與章節代碼](CodeSystem-hah-document.html) | 本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。 |
| [在宅急症－收案評估結果代碼](CodeSystem-hah-eligibility.html) | 記錄評估人員建議收案、待確認或不收案的結論。 |
{: .grid .rwd-table}

| ValueSet | 用途 |
| --- | --- |
| [在宅急症－服務項目值集](ValueSet-hah-service.html) | 服務請求與工作可用的本地分類；詳細檢驗或處置仍應使用適切標準代碼。 |
| [在宅急症－溝通類型值集](ValueSet-hah-communication.html) | 區分照會、交班與衛教內容。 |
| [在宅急症－療程結束原因值集](ValueSet-hah-outcome.html) | 本次療程已結束時填寫的原因。 |
| [在宅急症－訪視方式值集](ValueSet-hah-visit-mode.html) | 實地、視訊或電話評估。 |
| [在宅急症－摘要種類值集](ValueSet-hah-summary-type.html) | 結案或轉銜摘要。 |
| [在宅急症－摘要章節值集](ValueSet-hah-section.html) | 摘要文件中的臨床章節。 |
| [在宅急症－收案評估結果值集](ValueSet-hah-eligibility.html) | 本次收案評估的建議結果。 |
{: .grid .rwd-table}

| Extension | 用途 |
| --- | --- |
| [在宅急症－療程關聯](StructureDefinition-ExtHAHEpisode.html) | 參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源，不同次收案應參照不同資源。 |
| [在宅急症－療程結束原因](StructureDefinition-ExtHAHOutcome.html) | 療程結束時填入原因。其他原因應另填文字說明。 |
| [在宅急症－訪視方式](StructureDefinition-ExtHAHVisitMode.html) | 填入此次訪視為實地、視訊或電話評估。 |
{: .grid .rwd-table}


## 文件與範例

結案／轉銜文件由 HAHCompositionSummary 提供療程、問題、過敏、藥物、結果、照護及後續追蹤七個章節，每章必有可閱讀文字。章節文字可記錄「未提供」、「未評估」或其他資料取得情形。


| 情境 | 範例 | 驗證重點 |
| --- | --- | --- |
| 共同就診資料 | [共同就診範例](Encounter-hah-encounter.html) | 個案、療程、服務機構、參與人員與實際期間 |
| 完成療程 | [結案文件](Bundle-hah-document.html)／[摘要](Composition-hah-summary.html) | 收案、實地與視訊訪視、醫囑、檢驗、照護與附件相互參照 |
| 再次收案及轉院 | [轉院文件](Bundle-hah-transfer-document.html)／[摘要](Composition-hah-transfer-summary.html) | 同一 Patient 使用新的 EpisodeOfCare 與 Encounter；標示未知資訊與接收機構 |
| 持續輸注 | [給藥紀錄](MedicationAdministration-hah-infusion.html) | effectivePeriod 與速率 |
| 未執行給藥 | [未給藥紀錄](MedicationAdministration-hah-medication-not-done.html) | not-done 狀態與未給藥原因 |
| 收案評估 | [問卷回覆](QuestionnaireResponse-hah-assessment.html) | 指向固定問卷版本、填寫結論與評估內容 |
{: .grid .rwd-table}