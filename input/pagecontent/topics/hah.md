本主題說明在宅急症照護（Hospital at Home，簡稱 HaH）的資料交換架構。內容涵蓋收案評估、正式收案、訪視、生理量測、檢驗、給藥處置與結案轉銜。本主題採用 FHIR R4 與 TW Core 標準規範。

## 資料集與照護流程

[在宅急症 Logical Model](StructureDefinition-HAHCareDataset.html) 定義 150 個核心資料元素。[欄位對照表](hah-mapping.html) 說明來源系統、FHIR 欄位與結構定義。

| 照護流程 | 資料內容 | 主要 FHIR 資源 |
| --- | --- | --- |
| 收案評估 | 適用計畫、居家環境、照顧者支援與評估結論。 | Questionnaire、QuestionnaireResponse |
| 正式收案 | 個案身分、聯絡人、收案期間、主責機構、主次診斷與照護團隊。 | Patient、RelatedPerson、EpisodeOfCare、Condition、CareTeam |
| 整段照護 | 在宅住院期間之整體就診範圍與責任期間。 | Encounter（住院分類 IMP） |
| 排程與訪視 | 執行人員、執行期限、實地訪視或遠距評估、實際訪視時段。 | Task、Encounter（訪視分類 HH 或 VR）、Location |
| 評估與監測 | 臨床診斷、生理徵象、檢驗項目、設備資訊與整體臨床評估。 | Condition、Observation、DiagnosticReport、Specimen、Device、ClinicalImpression |
| 擬定與執行照護 | 照護問題、預期目標、照護計畫、醫囑請求與已執行處置。 | Goal、CarePlan、ServiceRequest、Procedure |
| 用藥處方與同意 | 藥品處方、實際給藥紀錄、輸注速率、過敏史與同意書文件。 | MedicationRequest、MedicationAdministration、AllergyIntolerance、Consent、DocumentReference |
| 會診與交班 | 照會申請、諮詢回覆與交班內容。 | ServiceRequest、Communication、DocumentReference |
| 結案與轉銜 | 結案原因、轉銜機構、轉銜摘要與後續追蹤。 | EpisodeOfCare、Encounter、Composition、Bundle |
{: .grid .rwd-table}

個案可擁有多筆收案歷程。每次收案皆建立對應的 EpisodeOfCare 與代表整段住院的 Encounter。後續各次實地或遠距訪視各建立一筆訪視 Encounter，透過 `partOf` 關聯整段照護。

實地訪視使用代碼 `HH`。視訊與電話評估使用代碼 `VR`。訪視型態透過 ExtHAHVisitMode 擴充標記。整段照護使用住院代碼 `IMP`，照護地點記錄個案自宅。

## 繼承關係

在宅急症資源設計優先沿用長照與 TW Core 現有結構，延伸急症照護所需之關聯。

| 資料類型 | 採用方式 | 應用說明 |
| --- | --- | --- |
| 人員、機構、關係人、自宅地點 | 直接沿用長照共用資源 | 採用 LTCPractitioner、LTCOrganization、LTCRelatedPerson、LTCLocation。 |
| 體溫、脈搏、呼吸、血壓、血氧 | 直接沿用基礎生理量測 | 採用 PASportObservation 體溫、心率、呼吸、血壓與血氧規格，以 Encounter 關聯本次訪視。 |
| 檢體、藥品項目 | 直接沿用 TW Core 資源 | 採用 TW Core Specimen、Medication 與 MedicationStatement。 |
| 個案、療程、診斷、計畫、目標、處置 | 繼承長照共用 Profile | 保留長照識別機制，延伸在宅急症收案關聯。 |
| 就診、檢驗、檢驗報告、處方、過敏、附件 | 繼承 TW Core Profile | 沿用國內共用欄位與標準臨床術語。 |
| 照護團隊 | 繼承 TW Core CareTeam | 支援醫事人員與共照機構共同擔任團隊成員。 |
| 照護工作任務 | 繼承 FHIR R4 Task | 支援將訪視與送藥任務指派至指定照護團隊。 |
| 給藥與輸注 | 繼承 FHIR R4 MedicationAdministration | 記錄單次給藥、持續輸注與給藥進度狀態。 |
| 臨床評估、量測設備、同意書、文件封裝 | 繼承 FHIR R4 標準資源 | 整合急症療程關聯與相關臨床資料需求。 |
{: .grid .rwd-table}

## Profiles

本主題共定義 25 個專屬 Profile，支援在宅急症全流程資料交換。

| Profile | 繼承來源 | 功能與特點說明 |
| --- | --- | --- |
| [在宅急症－個案](StructureDefinition-HAHPatient.html) | `LTCPatient` | 正式收案個案身分。記錄個案姓名、識別證號、戶籍與通訊地址、主要聯絡人。 |
| [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.html) | `LTCEpisodeOfCareBase` | 單次收案歷程。記錄負責機構、收案起訖日期、主責診斷與團隊。再次收案建立新歷程。 |
| [在宅急症－就診基礎](StructureDefinition-HAHEncounter.html) | `$TWCoreEncounter` | 就診共同基底。包含個案參照、療程關聯、主責機構與照護期間。 |
| [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.html) | `HAHEncounter` | 在宅急症整段住院照護。分類標記為 IMP，記錄照護地點並供各次訪視關聯。 |
| [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.html) | `HAHEncounter` | 單次訪視紀錄。包含實地、視訊或電話評估，透過 partOf 關聯整段照護。 |
| [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.html) | `$TWCoreCareTeam` | 跨專業團隊組織。記錄主責醫師、護理師、合作機構與參與期間。 |
| [在宅急症－照護工作](StructureDefinition-HAHVisitTask.html) | `Task` | 派案與執行工作。記錄訪視派案、藥品配送，執行對象可指向照護團隊。 |
| [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.html) | `LTCQuestionnaireResponse` | 收案評估問卷。記錄收案標準、環境狀況、照顧者能力與收案建議。 |
| [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.html) | `LTCCondition` | 臨床診斷與照護問題。記錄主要急症、伴隨共病與健康問題。 |
| [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.html) | `LTCCarePlan` | 在宅照護計畫。整合急症問題、照護目標、服務醫囑與處方內容。 |
| [在宅急症－照護目標](StructureDefinition-HAHGoal.html) | `LTCGoal` | 個案照護目標。記錄預期達成成果、目標期限與評值成果。 |
| [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.html) | `LTCServiceRequest` | 醫療與照護醫囑。包含照會、檢驗、處置與轉介項目。優先使用標準代碼。 |
| [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.html) | `ClinicalImpression` | 醫師或專業人員綜合判斷。記錄訪視發現、病情摘要與後續處置計畫。 |
| [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.html) | `LTCProcedureCareActivity` | 實際護理與臨床處置。記錄抽痰、傷口換藥、管路置換等處置項目。 |
| [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.html) | `Observation-laboratoryResult-twcore` | 單項檢驗報告數值。記錄檢體種類、量測方法、單位數值與參考區間。 |
| [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.html) | `DiagnosticReport-twcore` | 完整檢驗診斷報告。串聯開立醫囑、檢體來源與各項量測結果。 |
| [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.html) | `$TWCoreMedicationRequest` | 藥品處方內容。記錄藥品代碼、給藥劑量、途徑、頻次與處方狀態。 |
| [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.html) | `MedicationAdministration` | 實際給藥執行紀錄。記錄單次給藥時間點或持續靜脈輸注期間與速率。 |
| [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.html) | `AllergyIntolerance-twcore` | 藥物與環境過敏紀錄。記錄過敏原、臨床確認狀態與過敏反應表現。 |
| [在宅急症－量測設備](StructureDefinition-HAHDevice.html) | `Device` | 居家醫療監測設備。記錄設備識別碼、型號與唯一識別碼 UDI。 |
| [在宅急症－照會與交班](StructureDefinition-HAHCommunication.html) | `LTCCommunicationServiceA` | 團隊溝通紀錄。交換專科照會回覆、班次交班紀錄與個案衛教內容。 |
| [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.html) | `DocumentReference-twcore` | 臨床文件與多媒體附件。記錄傷口照片、同意書掃描檔與外部報告索引。 |
| [在宅急症－照護同意](StructureDefinition-HAHConsent.html) | `Consent` | 在宅急症照護同意書。記錄同意狀態、簽署範圍、生效時間與簽署人員。 |
| [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.html) | `LTCCompositionBase` | 結案與轉銜臨床文件架構。提供結構化章節與易讀文字摘要。 |
| [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.html) | `Bundle` | 結案與轉銜文件包裹。首筆為 Composition，封裝完整病歷文件資源。 |
{: .grid .rwd-table}

## 術語與 Extension

本主題使用之標準代碼包含 LOINC、SNOMED CT、ICD-10-CM 與 UCUM。為滿足在宅急症流程，另定義本地代碼系統與擴充元件。

| CodeSystem | 功能說明 |
| --- | --- |
| [在宅急症－照護活動代碼](CodeSystem-hah-activity.html) | 定義在宅急症特有照護活動、遠距服務與排程工作類型代碼。 |
| [在宅急症－療程結束原因代碼](CodeSystem-hah-outcome.html) | 定義療程結束之具體原因與轉歸代碼。 |
| [在宅急症－訪視方式代碼](CodeSystem-hah-visit-mode.html) | 定義實地到府、視訊通話與電話諮詢之訪視形式代碼。 |
| [在宅急症－摘要種類與章節代碼](CodeSystem-hah-document.html) | 定義結案報告與轉銜摘要之文件類型與臨床章節代碼。 |
| [在宅急症－收案評估結果代碼](CodeSystem-hah-eligibility.html) | 定義初審建議收案、待補件或條件符合狀態代碼。 |
{: .grid .rwd-table}

| ValueSet | 功能說明 |
| --- | --- |
| [在宅急症－服務項目值集](ValueSet-hah-service.html) | 規範照會、訪視與派工醫囑可使用之服務項目代碼。 |
| [在宅急症－溝通類型值集](ValueSet-hah-communication.html) | 規範專科照會、團隊交班與個案衛教等溝通分類代碼。 |
| [在宅急症－療程結束原因值集](ValueSet-hah-outcome.html) | 規範個案結案或轉院時所填寫之原因代碼。 |
| [在宅急症－訪視方式值集](ValueSet-hah-visit-mode.html) | 規範單次訪視所採用之實地、視訊或電話形式代碼。 |
| [在宅急症－摘要種類值集](ValueSet-hah-summary-type.html) | 規範結案摘要文件與轉銜摘要文件之種類代碼。 |
| [在宅急症－摘要章節值集](ValueSet-hah-section.html) | 規範轉銜文件各臨床章節之代碼。 |
| [在宅急症－收案評估結果值集](ValueSet-hah-eligibility.html) | 規範收案評估之審查結果代碼。 |
{: .grid .rwd-table}

| Extension | 功能說明 |
| --- | --- |
| [在宅急症－療程關聯](StructureDefinition-ExtHAHEpisode.html) | 延伸關聯至在宅急症收案歷程 EpisodeOfCare，適用於各類臨床資源。 |
| [在宅急症－療程結束原因](StructureDefinition-ExtHAHOutcome.html) | 擴充記錄療程結束之特定原因與補充說明。 |
| [在宅急症－訪視方式](StructureDefinition-ExtHAHVisitMode.html) | 擴充記錄 Encounter 之訪視實施型態。 |
{: .grid .rwd-table}

## 文件與範例

結案與轉銜文件透過 HAHCompositionSummary 彙整療程歷程、臨床問題、過敏記錄、用藥處方、檢驗結果、照護措施與後續追蹤等七大章節。每個章節皆包含易讀之臨床文字摘要。

| 交換情境 | 範例資源 | 驗證重點 |
| --- | --- | --- |
| 就診基底資料 | [共同就診範例](Encounter-hah-encounter.html) | 驗證個案、收案歷程、主責機構、醫事人員與照護期間。 |
| 結案摘要文件 | [結案文件 Bundle](Bundle-hah-document.html)、[結案摘要](Composition-hah-summary.html) | 驗證收案歷程、訪視紀錄、醫囑處方、檢驗報告與附件整合。 |
| 再次收案與轉院 | [轉院文件 Bundle](Bundle-hah-transfer-document.html)、[轉院摘要](Composition-hah-transfer-summary.html) | 驗證同一個案新收案歷程建立、接續醫療機構與轉銜資訊。 |
| 持續輸注處置 | [持續輸注給藥紀錄](MedicationAdministration-hah-infusion.html) | 驗證 effectivePeriod 輸注時間區間與輸注速率設定。 |
| 給藥例外紀錄 | [給藥狀態範例](MedicationAdministration-hah-medication-not-done.html) | 驗證 not-done 狀態碼與具體原因紀錄。 |
| 評估量表回覆 | [收案評估問卷回覆](QuestionnaireResponse-hah-assessment.html) | 驗證問卷版本連結、審查結論與題目回覆內容。 |
{: .grid .rwd-table}