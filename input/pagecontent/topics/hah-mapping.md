本頁為在宅急症的專用來源欄位與 FHIR 對照表。

| 模型欄位 | 基數 | 型態 | 內容 | FHIR 對應 | 來源與差異 |
|---|---|---|---|---|---|
| `patient` | 1..1 | `BackboneElement` | 個案 | `HAHPatient` | patient.js |
| `patient.identifier` | 1..* | `Identifier` | 個案識別碼 | `Patient.identifier` | patient.js |
| `patient.name` | 1..2 | `HumanName` | 姓名 | `Patient.name` | patient.js |
| `patient.birthDate` | 1..1 | `date` | 出生日期 | `Patient.birthDate` | patient.js |
| `patient.gender` | 0..1 | `code` | 性別 | `Patient.gender` | patient.js |
| `patient.address` | 1..2 | `Address` | 居住地址 | `Patient.address` | patient.js |
| `patient.telecom` | 1..* | `ContactPoint` | 聯絡方式 | `Patient.telecom` | patient.js |
| `patient.contact` | 1..* | `BackboneElement` | 緊急聯絡人 | `Patient.contact` | patient.js |
| `patient.contact.name` | 1..1 | `HumanName` | 聯絡人姓名 | `Patient.contact.name` | patient.js |
| `patient.contact.relationship` | 1..1 | `CodeableConcept` | 與個案關係 | `Patient.contact.relationship` | patient.js |
| `patient.contact.telecom` | 1..* | `ContactPoint` | 聯絡人電話 | `Patient.contact.telecom` | patient.js |
| `patient.caregiver` | 0..* | `Reference(LTCRelatedPerson)` | 主要照顧者 | `RelatedPerson.patient` | patient.js 的 caregiver；結構化參照為新增 |
| `patient.deceased` | 0..1 | `dateTime` | 死亡時間 | `Patient.deceasedDateTime` | 新增死亡時間 |
| `intake` | 0..1 | `BackboneElement` | 收案評估 | `HAHAssessmentResponse` | 新增結構化表單 |
| `intake.criteria` | 1..1 | `string` | 計畫名稱與版本 | `QuestionnaireResponse.item[criteria]` | 新增 |
| `intake.homeSafety` | 1..1 | `string` | 環境與設備可行性 | `QuestionnaireResponse.item[homeSafety]` | 新增 |
| `intake.caregiverSupport` | 1..1 | `string` | 照顧者支援能力 | `QuestionnaireResponse.item[caregiverSupport]` | 新增 |
| `intake.decision` | 1..1 | `Coding` | 收案建議 | `QuestionnaireResponse.item[decision]` | 新增 |
| `intake.reason` | 0..1 | `string` | 評估原因 | `QuestionnaireResponse.item[reason]` | 新增 |
| `intake.assessor` | 1..1 | `Reference(LTCPractitionerRole or LTCPractitioner)` | 評估人員 | `QuestionnaireResponse.author` | 新增 |
| `intake.date` | 1..1 | `dateTime` | 評估時間 | `QuestionnaireResponse.authored` | 新增 |
| `episode` | 1..1 | `BackboneElement` | 一次收案療程 | `HAHEpisodeOfCare` | 由 Patient 收案資訊與 Encounter 彙整 |
| `episode.identifier` | 1..* | `Identifier` | 療程識別碼 | `EpisodeOfCare.identifier` | 新增穩定識別 |
| `episode.status` | 1..1 | `code` | 療程狀態 | `EpisodeOfCare.status` | 收案、結案狀態轉換 |
| `episode.period` | 1..1 | `Period` | 實際照護期間 | `EpisodeOfCare.period` | 收案與結案日期 |
| `episode.organization` | 1..1 | `Reference(LTCOrganization)` | 負責機構 | `EpisodeOfCare.managingOrganization` | patient.js、encounter.js |
| `episode.diagnosis` | 0..* | `Reference(HAHCondition)` | 收案診斷 | `EpisodeOfCare.diagnosis.condition` | condition.js |
| `episode.team` | 0..* | `Reference(HAHCareTeam)` | 照護團隊 | `EpisodeOfCare.team` | careTeam.js |
| `episode.referral` | 0..* | `Reference(HAHServiceRequest)` | 收案轉介 | `EpisodeOfCare.referralRequest` | 新增轉介串聯 |
| `episode.outcome` | 0..1 | `CodeableConcept` | 結束原因 | `EpisodeOfCare.extension[outcome]` | EnrollmentInfo.vue；原因代碼需轉換 |
| `encounter` | 1..* | `BackboneElement` | 整段照護或單次訪視 | `HAHEncounter` | encounter.js |
| `encounter.identifier` | 0..* | `Identifier` | 就診識別碼 | `Encounter.identifier` | 新增交換識別 |
| `encounter.status` | 1..1 | `code` | 就診狀態 | `Encounter.status` | encounter.js |
| `encounter.class` | 1..1 | `Coding` | 照護分類 | `Encounter.class` | IMP、HH；VR 為明確化 |
| `encounter.period` | 1..1 | `Period` | 實際服務起訖 | `Encounter.period` | encounter.js |
| `encounter.parent` | 0..1 | `Reference(HAHAdmissionEncounter)` | 所屬整段照護 | `Encounter.partOf` | 新增；單次訪視必填 |
| `encounter.mode` | 0..1 | `code` | 訪視方式 | `Encounter.extension[mode]` | 新增；單次訪視必填 |
| `encounter.participant` | 1..* | `Reference(LTCPractitioner or LTCPractitionerRole)` | 照護人員 | `Encounter.participant.individual` | encounter.js |
| `encounter.organization` | 1..1 | `Reference(LTCOrganization)` | 服務機構 | `Encounter.serviceProvider` | encounter.js |
| `encounter.location` | 0..* | `Reference(Location)` | 照護地點 | `Encounter.location.location` | task.js 的地點與座標 |
| `encounter.disposition` | 0..1 | `CodeableConcept` | 出院或轉出處置 | `Encounter.hospitalization.dischargeDisposition` | 新增結構化資料 |
| `encounter.destination` | 0..1 | `Reference(Organization or Location)` | 接續照護地點 | `Encounter.hospitalization.destination` | clinicalNote.js 的 transferHospital |
| `problem` | 0..* | `BackboneElement` | 診斷與照護問題 | `HAHCondition` | condition.js |
| `problem.code` | 1..1 | `CodeableConcept` | 診斷或問題 | `Condition.code` | condition.js |
| `problem.category` | 1..1 | `CodeableConcept` | 診斷或問題分類 | `Condition.category` | condition.js |
| `problem.onset` | 0..1 | `dateTime` | 發病時間 | `Condition.onsetDateTime` | condition.js |
| `problem.clinicalStatus` | 0..1 | `CodeableConcept` | 病情狀態 | `Condition.clinicalStatus` | condition.js |
| `problem.verification` | 0..1 | `CodeableConcept` | 確認狀態 | `Condition.verificationStatus` | condition.js |
| `problem.encounter` | 1..1 | `Reference(HAHEncounter)` | 對應就診 | `Condition.encounter` | condition.js |
| `team` | 0..* | `BackboneElement` | 團隊成員 | `HAHCareTeam` | careTeam.js |
| `team.member` | 1..1 | `Reference(Practitioner or PractitionerRole or Organization or RelatedPerson)` | 人員或機構 | `CareTeam.participant.member` | careTeam.js |
| `team.role` | 1..1 | `CodeableConcept` | 成員角色 | `CareTeam.participant.role` | careTeam.js |
| `team.period` | 0..1 | `Period` | 責任期間 | `CareTeam.participant.period` | 新增期間約定 |
| `plan` | 0..* | `BackboneElement` | 照護計畫 | `HAHCarePlan` | goal.js |
| `plan.status` | 1..1 | `code` | 計畫狀態 | `CarePlan.status` | goal.js |
| `plan.period` | 0..1 | `Period` | 計畫期間 | `CarePlan.period` | goal.js |
| `plan.problem` | 0..* | `Reference(HAHCondition)` | 處理的問題 | `CarePlan.addresses` | 需求語意校正 |
| `plan.goal` | 0..* | `Reference(HAHGoal)` | 預期目標 | `CarePlan.goal` | goal.js |
| `plan.activity` | 1..* | `Reference(HAHServiceRequest or HAHMedicationRequest)` | 預定服務或處方 | `CarePlan.activity.reference；也可用 detail` | goal.js 的 activity 結構化 |
| `goal` | 0..* | `BackboneElement` | 照護目標 | `HAHGoal` | goal.js |
| `goal.description` | 1..1 | `CodeableConcept` | 預期結果 | `Goal.description` | 目標與需求分開 |
| `goal.status` | 1..1 | `code` | 目標狀態 | `Goal.lifecycleStatus` | goal.js |
| `goal.due` | 1..1 | `date` | 預期達到日期 | `Goal.target.dueDate` | goal.js |
| `goal.result` | 0..* | `Reference(Observation)` | 評值結果 | `Goal.outcomeReference` | 新增結果串聯 |
| `request` | 0..* | `BackboneElement` | 服務請求 | `HAHServiceRequest` | queryNote.js；檢驗及轉介串聯新增 |
| `request.code` | 1..1 | `CodeableConcept` | 服務項目 | `ServiceRequest.code` | 原本僅部分文字，新增標準化 |
| `request.category` | 1..* | `CodeableConcept` | 服務分類 | `ServiceRequest.category` | 新增 |
| `request.status` | 1..1 | `code` | 請求狀態 | `ServiceRequest.status` | queryNote.js |
| `request.intent` | 1..1 | `code` | 請求意圖 | `ServiceRequest.intent` | queryNote.js |
| `request.requester` | 1..1 | `Reference(Practitioner or PractitionerRole or Organization)` | 開立者 | `ServiceRequest.requester` | queryNote.js |
| `request.performer` | 0..* | `Reference(Practitioner or PractitionerRole or Organization)` | 執行對象 | `ServiceRequest.performer` | queryNote.js |
| `request.occurrence` | 0..1 | `Period` | 預定服務期間 | `ServiceRequest.occurrencePeriod` | 新增 |
| `observation` | 0..* | `BackboneElement` | 生命徵象與檢驗 | `既有量測 Profiles、HAHObservationLab` | CreateNursingNote.vue、PatientLabReports.vue |
| `observation.code` | 1..1 | `CodeableConcept` | 量測或檢驗項目 | `Observation.code` | 體溫、心率、呼吸、血壓、血氧、血糖、CRP、血氣等 |
| `observation.status` | 1..1 | `code` | 結果狀態 | `Observation.status` | Observation 寫入流程 |
| `observation.time` | 1..1 | `dateTime` | 量測或採檢時間 | `Observation.effectiveDateTime` | 既有資料 |
| `observation.value` | 0..1 | `Quantity` | 數值與單位 | `Observation.valueQuantity` | 既有數值；須確認 UCUM |
| `observation.textValue` | 0..1 | `string` | 文字結果 | `Observation.valueString` | 檢驗頁既有資料 |
| `observation.absentReason` | 0..1 | `CodeableConcept` | 缺值原因 | `Observation.dataAbsentReason` | 新增缺值規則 |
| `observation.component` | 0..* | `BackboneElement` | 同次量測組成值 | `Observation.component` | 血壓專用；單項檢驗不使用 |
| `observation.component.code` | 1..1 | `CodeableConcept` | 組成項目 | `Observation.component.code` | 收縮壓或舒張壓 |
| `observation.component.value` | 1..1 | `Quantity` | 組成數值 | `Observation.component.valueQuantity` | 血壓數值與 mm[Hg] |
| `observation.device` | 0..1 | `Reference(HAHDevice)` | 量測設備 | `Observation.device` | Device.js |
| `observation.encounter` | 0..1 | `Reference(HAHEncounter)` | 量測對應就診 | `Observation.encounter` | 修正 focus 作外鍵的用法 |
| `observation.specimen` | 0..1 | `Reference(Specimen)` | 檢體 | `Observation.specimen` | 新增 |
| `observation.referenceRange` | 0..* | `Range` | 參考區間 | `Observation.referenceRange.low/high` | PatientLabReports.vue |
| `report` | 0..* | `BackboneElement` | 檢驗報告 | `HAHDiagnosticReport` | 新增報告層 |
| `report.identifier` | 0..* | `Identifier` | 報告識別碼 | `DiagnosticReport.identifier` | 新增 |
| `report.code` | 1..1 | `CodeableConcept` | 報告種類 | `DiagnosticReport.code` | 新增 |
| `report.status` | 1..1 | `code` | 報告狀態 | `DiagnosticReport.status` | 新增 |
| `report.result` | 1..* | `Reference(HAHObservationLab)` | 單項結果 | `DiagnosticReport.result` | 連結既有結果 |
| `report.specimen` | 0..* | `Reference(Specimen)` | 檢體 | `DiagnosticReport.specimen` | 新增 |
| `report.issued` | 1..1 | `instant` | 報告發布時間 | `DiagnosticReport.issued` | 新增 |
| `medicationOrder` | 0..* | `BackboneElement` | 給藥處方 | `HAHMedicationRequest` | 新增結構化處方 |
| `medicationOrder.medication` | 1..1 | `CodeableConcept` | 藥品 | `MedicationRequest.medicationCodeableConcept 或 medicationReference` | 新增 |
| `medicationOrder.status` | 1..1 | `code` | 處方狀態 | `MedicationRequest.status` | 新增 |
| `medicationOrder.intent` | 1..1 | `code` | 處方意圖 | `MedicationRequest.intent` | 新增 |
| `medicationOrder.dosage` | 1..* | `Dosage` | 劑量頻率與途徑 | `MedicationRequest.dosageInstruction` | 新增 |
| `medicationOrder.requester` | 1..1 | `Reference(Practitioner or PractitionerRole)` | 開立者 | `MedicationRequest.requester` | 新增 |
| `administration` | 0..* | `BackboneElement` | 實際給藥 | `HAHMedicationAdministration` | 新增 |
| `administration.request` | 1..1 | `Reference(HAHMedicationRequest)` | 對應處方 | `MedicationAdministration.request` | 新增 |
| `administration.status` | 1..1 | `code` | 給藥狀態 | `MedicationAdministration.status` | 新增 |
| `administration.reason` | 0..* | `CodeableConcept` | 未給藥或停止原因 | `MedicationAdministration.statusReason` | 新增 |
| `administration.time` | 0..1 | `dateTime` | 單次給藥時間 | `MedicationAdministration.effectiveDateTime` | 新增；與期間擇一 |
| `administration.period` | 0..1 | `Period` | 輸注期間 | `MedicationAdministration.effectivePeriod` | 新增；與時間點擇一 |
| `administration.dose` | 0..1 | `Quantity` | 給藥劑量 | `MedicationAdministration.dosage.dose` | 新增 |
| `administration.rate` | 0..1 | `Quantity` | 給藥速率 | `MedicationAdministration.dosage.rateQuantity` | 新增 |
| `administration.route` | 0..1 | `CodeableConcept` | 給藥途徑 | `MedicationAdministration.dosage.route` | 新增 |
| `assessment` | 0..* | `BackboneElement` | 臨床評估 | `HAHClinicalImpression` | clinicalNote.js |
| `assessment.summary` | 1..1 | `string` | 評估摘要 | `ClinicalImpression.summary` | 原 description、SOAP 文字 |
| `assessment.assessor` | 1..1 | `Reference(Practitioner or PractitionerRole)` | 評估人員 | `ClinicalImpression.assessor` | clinicalNote.js |
| `assessment.time` | 1..1 | `dateTime` | 評估時間 | `ClinicalImpression.effectiveDateTime` | 原服務時間 |
| `assessment.support` | 0..* | `Reference(Resource)` | 支持證據 | `ClinicalImpression.supportingInfo` | Observation、附件等 |
| `procedure` | 0..* | `BackboneElement` | 已執行處置 | `HAHProcedure` | 原護理措施文字；結構化新增 |
| `procedure.code` | 1..1 | `CodeableConcept` | 處置項目 | `Procedure.code` | 原 selectedInterventions |
| `procedure.status` | 1..1 | `code` | 處置狀態 | `Procedure.status` | 新增 |
| `procedure.period` | 0..1 | `Period` | 執行期間 | `Procedure.performedPeriod` | 新增；也可用 performedDateTime |
| `procedure.performer` | 1..* | `Reference(Practitioner or PractitionerRole)` | 執行人員 | `Procedure.performer.actor` | 既有人員 |
| `procedure.outcome` | 0..1 | `CodeableConcept` | 處置結果 | `Procedure.outcome` | 原評值文字 |
| `allergy` | 0..* | `BackboneElement` | 過敏資訊 | `HAHAllergyIntolerance` | 原 Condition 過敏旗標；擴充物質、確認狀態及反應 |
| `allergy.substance` | 1..1 | `CodeableConcept` | 物質或過敏狀態 | `AllergyIntolerance.code` | 新增 |
| `allergy.verification` | 1..1 | `CodeableConcept` | 確認狀態 | `AllergyIntolerance.verificationStatus` | 新增 |
| `allergy.manifestation` | 0..* | `CodeableConcept` | 反應表現 | `AllergyIntolerance.reaction.manifestation` | 新增 |
| `consent` | 0..* | `BackboneElement` | 照護同意 | `HAHConsent` | 新增 |
| `consent.status` | 1..1 | `code` | 同意狀態 | `Consent.status` | 新增 |
| `consent.scope` | 1..1 | `CodeableConcept` | 同意範圍 | `Consent.scope` | 新增 |
| `consent.source` | 1..1 | `Reference(HAHDocumentReference)` | 來源文件 | `Consent.sourceReference` | 新增；也可用 sourceAttachment |
| `communication` | 0..* | `BackboneElement` | 照會與交班 | `HAHCommunication` | queryNote.js、handover_notification.py |
| `communication.category` | 1..* | `CodeableConcept` | 溝通類型 | `Communication.category` | 新增分類 |
| `communication.sender` | 1..1 | `Reference(Practitioner or PractitionerRole or Organization or RelatedPerson)` | 發送者 | `Communication.sender` | queryNote.js |
| `communication.recipient` | 1..* | `Reference(Resource)` | 接收者 | `Communication.recipient` | queryNote.js |
| `communication.sent` | 1..1 | `dateTime` | 發送時間 | `Communication.sent` | queryNote.js |
| `communication.content` | 1..* | `string` | 內容 | `Communication.payload.contentString` | queryNote.js、交班內容 |
| `communication.request` | 0..* | `Reference(HAHServiceRequest)` | 依據請求 | `Communication.basedOn` | queryNote.js |
| `task` | 0..* | `BackboneElement` | 照護工作 | `HAHVisitTask` | task.js |
| `task.code` | 1..1 | `CodeableConcept` | 工作類型 | `Task.code` | selectedJobs 分類 |
| `task.status` | 1..1 | `code` | 工作狀態 | `Task.status` | task.js |
| `task.owner` | 1..1 | `Reference(Practitioner or PractitionerRole or Organization or CareTeam)` | 負責人或團隊 | `Task.owner` | task.js |
| `task.scheduled` | 0..1 | `Period` | 預定執行期限 | `Task.restriction.period` | 修正原 executionPeriod 語意 |
| `task.actual` | 0..1 | `Period` | 實際執行期間 | `Task.executionPeriod` | 新增實際起訖 |
| `task.location` | 0..1 | `Reference(Location)` | 工作地點 | `Task.location` | task.js |
| `attachment` | 0..* | `BackboneElement` | 照護附件 | `HAHDocumentReference` | fhirResources.js |
| `attachment.type` | 1..1 | `CodeableConcept` | 附件種類 | `DocumentReference.type` | 既有附件 |
| `attachment.content` | 1..* | `Attachment` | 附件內容或網址 | `DocumentReference.content.attachment` | fhirResources.js |
| `attachment.author` | 1..* | `Reference(Resource)` | 作者 | `DocumentReference.author` | fhirResources.js |
| `summary` | 0..1 | `BackboneElement` | 結案與轉銜摘要 | `HAHCompositionSummary、HAHBundleSummary` | 新增文件交換 |
| `summary.type` | 1..1 | `CodeableConcept` | 摘要種類 | `Composition.type` | 新增 |
| `summary.date` | 1..1 | `dateTime` | 文件時間 | `Composition.date` | 新增 |
| `summary.followUp` | 1..1 | `string` | 後續照護與待辦 | `Composition.section[followUp].text` | 原交班與轉送資料 |
| `summary.documentId` | 1..1 | `Identifier` | 文件識別碼 | `Bundle.identifier` | 新增 |
{: .grid .rwd-table}


[返回在宅急症主題](hah.html)。
