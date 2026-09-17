本主題是[居家護理照護管理系統](home-nursing.html)的在宅急症照護資料交換規範草案，採 FHIR R4 與本 IG 所依賴的 TW Core 1.0.0。內容依 HaH 系統盤點建立，供資料提供者與接收者確認交換範圍，尚不是主管機關核定的在宅急症申報規格。

## 資料集與照護流程

[在宅急症 Logical Model](StructureDefinition-HAHCareDataset.html)定義 150 個資料元素；[逐欄對照表](hah-mapping.html)說明來源系統、FHIR 欄位及新增需求。正式交換應符合下列 Profiles，不直接交換 Logical Model 實例。

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

一位個案可有多次收案；每次收案建立新的 EpisodeOfCare 及整段 Encounter，每次訪視再建立 Encounter，透過 `partOf` 連到整段照護。單次訪視結束不表示整個療程結束。`Patient.active` 只表示主檔是否使用，不表示本次結案。[FHIR EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html)與 Encounter 分別表達服務責任期間和實際就診。

實地訪視使用 `HH`，視訊與電話評估使用 `VR`；訪視方式由 ExtHAHVisitMode 區分。整段照護沿用來源系統 `IMP` 分類，照護地點仍記錄個案自宅，不能據此推論個案已入住醫院。

## 重用與繼承

既有定義可直接使用時不新增 Profile。需要收案連結或在宅急症特定限制時才建立子 Profile。FHIR 衍生限制不能放寬父層；若父層排除所需型別，改由共同的 TW Core 或 R4 父層衍生。

| 資料 | 採用方式 | 原因 |
| --- | --- | --- |
| 人員、角色、機構、關係人、自宅位置 | 直接使用 LTCPractitioner、LTCPractitionerRole、LTCOrganization、LTCRelatedPerson、LTCLocation | 現有資料結構已可支援 |
| 體溫、心率、呼吸、血壓、血氧 | 直接使用 PASportObservationBodyTemperature、PASportObservationHeartRate、PASportObservationRespiratoryRate、PASportObservationBloodPressure、PASportObservationPeripheralOxygenSaturation | 既有基礎生理量測 Profile 已有標準代碼及單位；交換時另帶本次 Encounter |
| 檢體、藥品及既有用藥清單 | 直接使用 TW Core Specimen、Medication、MedicationStatement | 本次沒有額外必填需求 |
| 個案、療程、診斷、計畫、目標、醫囑、處置、問卷、通訊及摘要 | 繼承相應 LTC Profile | 保留本 IG 共用識別與填寫規則，補充在宅急症關聯 |
| 就診、檢驗、檢驗報告、處方、過敏及附件 | 繼承相應 TW Core Profile | 不重建國內共用欄位與標準術語 |
| 照護團隊 | 繼承 TW Core CareTeam | LTC 團隊的成員型別不允許共照機構 |
| 工作任務 | 繼承 R4 Task | LTCTask.owner 不允許 CareTeam，無法用子 Profile 放寬 |
| 給藥 | 繼承 R4 MedicationAdministration | 既有 LTC 定義限定單一時間且要求劑量；無法支援輸注期間及未給藥情境 |
| 臨床評估、設備、同意、文件 Bundle | 繼承相應 R4 Resource | 本 IG 或固定版本 TW Core 尚無適合的共同父層 |

居護 HN 系列 Profile 要求居護來源表單與 HNEpisodeOfCare，不能直接套用到這份在宅急症資料集；本主題重用其共同 LTC 父層，並建立限定 HAHEpisodeOfCare 的療程關聯 Extension。現有血糖 Profile 固定 `vital-signs`，本主題以 laboratory 檢驗結果表達血糖。

HAHPatient 保留 LTCPatient 的會員識別碼、地址、電話與緊急聯絡人要求，適用正式收案交換。資料尚不完整的轉介或預收案，不應偽造值宣告符合 HAHPatient；應先補全資料，或另訂適用的預收案交換規範。

## Profiles

| Profile | 父層 | 用途 |
| --- | --- | --- |
| [在宅急症－個案](StructureDefinition-HAHPatient.html) | `LTCPatient` | 正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。 |
| [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.html) | `LTCEpisodeOfCareBase` | 每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。 |
| [在宅急症－就診基礎](StructureDefinition-HAHEncounter.html) | `$TWCoreEncounter` | 在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。 |
| [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.html) | `HAHEncounter` | 表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示本資料集的在宅住院照護分類，不代表照護地點在醫院。 |
| [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.html) | `HAHEncounter` | 每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。預約或通知不能當成已完成訪視。 |
| [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.html) | `$TWCoreCareTeam` | 記錄主責及共照人員、機構、角色與參與期間。既有長照團隊不允許機構成員，因此由共同 TW Core 父層衍生。 |
| [在宅急症－照護工作](StructureDefinition-HAHVisitTask.html) | `Task` | 記錄訪視、送藥等執行工作。因長照任務的 owner 不允許 CareTeam，此處由 FHIR Task 衍生以支援團隊指派。 |
| [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.html) | `LTCQuestionnaireResponse` | 記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。 |
| [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.html) | `LTCCondition` | 記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。 |
| [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.html) | `LTCCarePlan` | 沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。 |
| [在宅急症－照護目標](StructureDefinition-HAHGoal.html) | `LTCGoal` | 記錄個案預期達到的結果、期限及評值。照護問題應另記錄於 Condition，不以目標取代問題。 |
| [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.html) | `LTCServiceRequest` | 沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。 |
| [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.html) | `ClinicalImpression` | 記錄評估人員對病情的判斷、發現與摘要。生命徵象、檢驗、已執行處置及費用不應只以 JSON 字串塞入 note。 |
| [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.html) | `LTCProcedureCareActivity` | 沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。 |
| [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.html) | `Observation-laboratoryResult-twcore` | 一筆檢驗項目一筆結果。保留檢體、方法、單位與參考區間；缺少結果時填 dataAbsentReason，不填零值代替。 |
| [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.html) | `DiagnosticReport-twcore` | 以一份報告串聯醫囑、檢體與檢驗結果，可附原始報告檔案。 |
| [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.html) | `$TWCoreMedicationRequest` | 記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。 |
| [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.html) | `MedicationAdministration` | 記錄實際給藥時間點或輸注期間。既有長照給藥強制 effectiveDateTime，因此由 FHIR 父層衍生以支援 effectivePeriod 及未給藥。 |
| [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.html) | `AllergyIntolerance-twcore` | 記錄過敏物質、確認狀態及反應。無紀錄不能推定無過敏；未評估與已確認無過敏應分開表達。 |
| [在宅急症－量測設備](StructureDefinition-HAHDevice.html) | `Device` | 記錄居家量測設備的識別與類型。一般設備編號使用 identifier；只有正式 UDI 才填入 udiCarrier。 |
| [在宅急症－照會與交班](StructureDefinition-HAHCommunication.html) | `LTCCommunicationServiceA` | 沿用服務活動紀錄，交換照會回覆、交班與衛教內容。接收訊息不代表已完成待辦工作。 |
| [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.html) | `DocumentReference-twcore` | 記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。 |
| [在宅急症－照護同意](StructureDefinition-HAHConsent.html) | `Consent` | 記錄照護同意的狀態、範圍、時間及來源文件。此資源不取代可執行的醫囑，也不以一般同意代替 DNR 決定。 |
| [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.html) | `LTCCompositionBase` | 彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，資料不足時說明未知或未評估，不得推定為無。 |
| [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.html) | `Bundle` | 以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。 |

## 術語與 Extension

FHIR 的狀態、就診分類、臨床代碼及 UCUM 單位沿用標準系統。新增代碼只表達本資料集的工作分類、訪視方式、結束原因、文件章節及評估結論，不建立重複的臨床檢驗或藥品代碼。

| CodeSystem | 用途 |
| --- | --- |
| [在宅急症－照護活動代碼](CodeSystem-hah-activity.html) | 本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。 |
| [在宅急症－療程結束原因代碼](CodeSystem-hah-outcome.html) | 區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。 |
| [在宅急症－訪視方式代碼](CodeSystem-hah-visit-mode.html) | 記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。 |
| [在宅急症－摘要種類與章節代碼](CodeSystem-hah-document.html) | 本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。 |
| [在宅急症－收案評估結果代碼](CodeSystem-hah-eligibility.html) | 評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。 |

| ValueSet | 用途 |
| --- | --- |
| [在宅急症－服務項目值集](ValueSet-hah-service.html) | 服務請求與工作可用的本地分類；詳細檢驗或處置仍應使用適切標準代碼。 |
| [在宅急症－溝通類型值集](ValueSet-hah-communication.html) | 區分照會、交班與衛教內容。 |
| [在宅急症－療程結束原因值集](ValueSet-hah-outcome.html) | 本次療程已結束時填寫的原因。 |
| [在宅急症－訪視方式值集](ValueSet-hah-visit-mode.html) | 實地、視訊或電話評估。 |
| [在宅急症－摘要種類值集](ValueSet-hah-summary-type.html) | 結案或轉銜摘要。 |
| [在宅急症－摘要章節值集](ValueSet-hah-section.html) | 摘要文件中的臨床章節。 |
| [在宅急症－收案評估結果值集](ValueSet-hah-eligibility.html) | 本次收案評估的建議結果。 |

| Extension | 用途 |
| --- | --- |
| [在宅急症－療程關聯](StructureDefinition-ExtHAHEpisode.html) | 參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。 |
| [在宅急症－療程結束原因](StructureDefinition-ExtHAHOutcome.html) | 療程結束時填入原因。其他原因應另填文字說明。 |
| [在宅急症－訪視方式](StructureDefinition-ExtHAHVisitMode.html) | 填入此次訪視為實地、視訊或電話評估。 |

收案評估使用[問卷定義 1.1.0](Questionnaire-hah-intake-assessment.html)，以 QuestionnaireResponse 的固定 canonical URL 與版本辨識。本版問卷版次與 IG 同為 1.1.0；升版時須同步更新固定的問卷參照。`criteria` 填適用計畫及版本；問卷僅記錄專業人員的評估，不含自動判斷健保資格或疾病收案門檻。`pending`／`ineligible` 須填原因；已完成或修正後的回覆須有全部必答項目。若病患主檔尚未符合正式交換條件，不應宣告符合本問卷回覆 Profile。

## 填寫與交換規則

- `1..1`／`1..*` 是必要資料；`MS` 表示實作需支援，不表示每筆資料都必須有值。未知、未評估、未執行與確認無異常是不同狀態。
- 問題與診斷使用 Condition；期待達成的結果使用 Goal；計畫使用 CarePlan；已執行措施使用 Procedure。不得以 Goal 存放問題清單。
- ServiceRequest 表達申請，Communication 表達回覆或交班。Task 記錄工作執行，不能代替診療紀錄。`restriction.period` 是執行 focus 所指醫囑或計畫的預定期限，填寫時必須有 focus；`executionPeriod` 是實際期間。
- 單項檢驗使用 HAHObservationLab，以 `value[x]` 或 `dataAbsentReason` 表達結果；數值使用 UCUM。DiagnosticReport 彙整結果，Specimen 記錄檢體。生命徵象直接重用既有 Profile；不得把任意 JSON 字串當結構化檢驗資料。
- MedicationRequest 與 MedicationAdministration 分別記錄處方和實際給藥。已執行給藥需有途徑及劑量或速率；持續輸注使用 `effectivePeriod`。未給藥或停止須填原因，不能以零劑量代替。
- ClinicalImpression.summary 提供整體判斷；原始 SOAP 敘述可保留在適當文字欄位。能取得結構化診斷、生命徵象、計畫時，另外建立資源並參照，不從自由文字臆測值。
- Attachment 需有內容或可取得的 URL，以及 MIME 類型。Consent 記錄同意範圍與來源文件；影音會議連結、帳號、密碼及存取憑證不屬於臨床交換資料。
- EpisodeOfCare 完成時填結束時間與結束原因；Encounter 完成時填實際結束時間。轉院另記錄 `hospitalization.destination` 及轉介醫囑；尚未取得對方就醫結果時，不推定為已完成。
- 門診費用、申報點數與帳務資料不列入本次臨床交換；需要申報時應另接[長照支付審查主題](fee-audit.html)，先確認實際適用計畫與代碼，不把來源系統的費用 JSON 直接宣告為有效申報資料。

## 文件與範例

結案／轉銜文件由 HAHCompositionSummary 提供療程、問題、過敏、藥物、結果、照護及後續追蹤七個章節，每章必有可閱讀文字。缺資料時明示「未提供」或「未評估」，不以空白表示正常。其他未知資訊的具體原因可依資料取得情形填寫。

HAHBundleSummary 的第一筆為 Composition，包含個案、收案及整段照護。本主題進一步要求納入所有遞迴參照的臨床資源，讓接收端能獨立閱讀；canonical 問卷定義等規範資源由 IG 提供，不混入臨床文件。所有內容應屬於同一個案，訪視及計畫應連到同一次療程。每次重製文件使用新的 Bundle.identifier。這是在 [FHIR R4 文件規則](https://hl7.org/fhir/R4/documents.html)之上增加的本主題交換要求。

| 情境 | 範例 | 驗證重點 |
| --- | --- | --- |
| 完成療程 | [結案文件](Bundle-hah-document.html)／[摘要](Composition-hah-summary.html) | 收案、實地與視訊訪視、醫囑、檢驗、照護與附件相互參照 |
| 再次收案及轉院 | [轉院文件](Bundle-hah-transfer-document.html)／[摘要](Composition-hah-transfer-summary.html) | 同一 Patient 使用新的 EpisodeOfCare 與 Encounter；標示未知資訊與接收機構 |
| 持續輸注 | [給藥紀錄](MedicationAdministration-hah-infusion.html) | effectivePeriod 與速率 |
| 未執行給藥 | [未給藥紀錄](MedicationAdministration-hah-medication-not-done.html) | not-done 與原因，不強填劑量 |
| 收案評估 | [問卷回覆](QuestionnaireResponse-hah-assessment.html) | 指向固定問卷版本、填寫結論與評估內容 |

所有範例均為合成資料；藥物與劑量只示範資料結構，不是治療方案。FHIR Validator 負責結構、綁定與 invariant；`scripts/hah/verify_examples.py` 額外檢查文件參照完整性、同一個案與療程，以及模型和對照表的欄位覆蓋。

## 來源與實作差距

盤點基準為 [HaH-frontend-mobile](https://github.com/SitatechCo/HaH-frontend-mobile/tree/2838819fe9c602b14fdf007065b8ef90b60d9eb8) 與 [HaH-backend](https://github.com/SitatechCo/HaH-backend/tree/6fbc1c3fef80d25b7e675efe6e500527bc6293ba)。HaH-dashboard 在盤點時沒有可讀取的程式碼。

現有前端已有個案、照護團隊、整段住院及訪視、量測、工作排程、會診與部分照護紀錄。EpisodeOfCare、結構化給藥／過敏／同意、DiagnosticReport、Composition 與完整文件交換是本次補足的標準結構，不代表現有系統已支援。前端 summaryNote 的靜態內容不能當作已實作的風險評分；本版未自行定義 NEWS 等量表。

欄位來源只寫在[逐欄對照表](hah-mapping.html)。跨資源的一致性、原系統資料遷移、接收方確認及正式資格／申報規範，仍須由實作單位與業務專家審查；本版不新增無來源的健保代碼或資格門檻。
