Instance: hah-patient
InstanceOf: HAHPatient
Usage: #example
Title: "在宅急症個案範例"
Description: "合成個案，供本主題所有臨床範例參照。"
* identifier[idCardNumber].type = $IdType#NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[member].system = "https://example.org/hah/patients"
* identifier[member].value = "HAH0001"
* name[usual].use = #usual
* name[usual].text = "王測試"
* gender = #male
* birthDate = "1945-03-15"
* telecom.system = #phone
* telecom.value = "02-00000000"
* address[home].use = #home
* address[home].text = "臺北市中正區測試路1號"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#C
* contact.name.text = "王家屬"
* contact.telecom.system = #phone
* contact.telecom.value = "02-00000001"
* managingOrganization = Reference(hah-organization)

Instance: hah-organization
InstanceOf: LTCOrganization
Usage: #example
Title: "在宅急症服務機構範例"
Description: "合成機構，重用長照機構 Profile。"
* identifier.system = "https://example.org/organizations"
* identifier.value = "HAH-ORG-1"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "在宅急症示範醫療機構"

Instance: hah-practitioner
InstanceOf: LTCPractitioner
Usage: #example
Title: "在宅急症醫療人員範例"
Description: "合成人員，重用長照醫事人員 Profile。"
* identifier.system = "https://example.org/practitioners"
* identifier.value = "HAH-STAFF-1"
* name.use = #usual
* name.text = "李示範"

Instance: hah-location
InstanceOf: LTCLocation
Usage: #example
Title: "在宅急症照護地點範例"
Description: "重用個案位置 Profile 表達個案自宅。"
* name = "王測試居住地"
* address.text = "臺北市中正區測試路1號"

Instance: hah-episode
InstanceOf: HAHEpisodeOfCare
Usage: #example
Title: "在宅急症完成療程範例"
Description: "本次合成療程完成治療後結案。"
* identifier.system = "https://example.org/hah/episodes"
* identifier.value = "HAH-20260901-001"
* status = #finished
* patient = Reference(hah-patient)
* managingOrganization = Reference(hah-organization)
* period.start = "2026-09-01T08:00:00+08:00"
* period.end = "2026-09-05T12:00:00+08:00"
* diagnosis.condition = Reference(hah-condition)
* team = Reference(hah-team)
* extension[outcome].valueCodeableConcept = HAHOutcomeCS#completed-treatment

RuleSet: HAHExampleEncounter
* subject = Reference(hah-patient)
* episodeOfCare = Reference(hah-episode)
* serviceProvider = Reference(hah-organization)
* participant.individual = Reference(hah-practitioner)

Instance: hah-admission
InstanceOf: HAHAdmissionEncounter
Usage: #example
Title: "在宅急症整段照護範例"
Description: "整段在宅照護，與多次實地及遠距訪視分開。"
* insert HAHExampleEncounter
* status = #finished
* period.start = "2026-09-01T09:00:00+08:00"
* period.end = "2026-09-05T12:00:00+08:00"
* diagnosis.condition = Reference(hah-condition)
* location.location = Reference(hah-location)
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home

Instance: hah-visit
InstanceOf: HAHVisitEncounter
Usage: #example
Title: "在宅急症實地訪視範例"
Description: "實地訪視，參照同一收案與整段照護。"
* insert HAHExampleEncounter
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#HH
* extension[mode].valueCode = #in-person
* partOf = Reference(hah-admission)
* period.start = "2026-09-01T09:00:00+08:00"
* period.end = "2026-09-01T10:00:00+08:00"
* location.location = Reference(hah-location)

Instance: hah-video-visit
InstanceOf: HAHVisitEncounter
Usage: #example
Title: "在宅急症遠距訪視範例"
Description: "已完成的視訊評估，並非視訊會議邀請。"
* insert HAHExampleEncounter
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR
* extension[mode].valueCode = #video
* partOf = Reference(hah-admission)
* period.start = "2026-09-02T09:00:00+08:00"
* period.end = "2026-09-02T09:15:00+08:00"

Instance: hah-condition
InstanceOf: HAHCondition
Usage: #example
Title: "在宅急症診斷範例"
Description: "合成案例中的呼吸道感染診斷，不代表收案資格或治療建議。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-admission)
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.text = "呼吸道感染"
* recordedDate = "2026-09-01T09:00:00+08:00"

Instance: hah-team
InstanceOf: HAHCareTeam
Usage: #example
Title: "在宅急症跨機構團隊範例"
Description: "示範同一團隊可包含人員與機構成員。"
* status = #inactive
* subject = Reference(hah-patient)
* encounter = Reference(hah-admission)
* participant[0].role.text = "主責醫療人員"
* participant[0].member = Reference(hah-practitioner)
* participant[0].period.start = "2026-09-01"
* participant[0].period.end = "2026-09-05"
* participant[1].role.text = "共照機構"
* participant[1].member = Reference(hah-organization)

Instance: hah-goal
InstanceOf: HAHGoal
Usage: #example
Title: "在宅急症照護目標範例"
Description: "示範個別照護目標與預期完成日期。"
* subject = Reference(hah-patient)
* extension[episode].valueReference = Reference(hah-episode)
* lifecycleStatus = #completed
* description.coding = HAHActivityCS#care-goal
* description.text = "本次照護期間能由照顧者協助完成居家量測並回報不適情形"
* target.dueDate = "2026-09-05"

Instance: hah-plan
InstanceOf: HAHCarePlan
Usage: #example
Title: "在宅急症照護計畫範例"
Description: "計畫參照結構化服務請求、診斷與目標。"
* subject = Reference(hah-patient)
* extension[episode].valueReference = Reference(hah-episode)
* encounter = Reference(hah-admission)
* status = #completed
* intent = #plan
* category[AssessPlan] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw#assess-plan
* addresses = Reference(hah-condition)
* goal = Reference(hah-goal)
* activity.reference = Reference(hah-lab-request)
* period.start = "2026-09-01"
* period.end = "2026-09-05"

* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>王測試的在宅急症照護計畫，所屬療程 HAH-20260901-001，期間為 2026 年 9 月 1 日至 9 月 5 日，狀態為已完成。處理呼吸道感染問題，目標為協助完成每日量測紀錄；包含血糖檢驗醫囑。</p></div>"

RuleSet: HAHExampleRequest
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #completed
* intent = #order
* authoredOn = "2026-09-01T09:05:00+08:00"
* requester = Reference(hah-practitioner)
* reasonReference = Reference(hah-condition)

Instance: hah-lab-request
InstanceOf: HAHServiceRequest
Usage: #example
Title: "在宅急症檢驗請求範例"
Description: "示範檢驗醫囑與後續檢驗報告連結。"
* insert HAHExampleRequest
* category = HAHActivityCS#laboratory
* code.text = "血液葡萄糖檢驗"

Instance: hah-consult-request
InstanceOf: HAHServiceRequest
Usage: #example
Title: "在宅急症照會請求範例"
Description: "示範專業照會與回覆的關聯。"
* insert HAHExampleRequest
* category = HAHActivityCS#consultation
* code = HAHActivityCS#consultation
* performer = Reference(hah-practitioner)

Instance: hah-task
InstanceOf: HAHVisitTask
Usage: #example
Title: "在宅急症工作完成範例"
Description: "團隊負責的檢驗工作，區分預定期限與實際執行時間。"
* status = #completed
* intent = #order
* code = HAHActivityCS#laboratory
* for = Reference(hah-patient)
* encounter = Reference(hah-visit)
* focus = Reference(hah-lab-request)
* authoredOn = "2026-09-01T09:05:00+08:00"
* requester = Reference(hah-practitioner)
* owner = Reference(hah-team)
* location = Reference(hah-location)
* restriction.period.start = "2026-09-01T09:05:00+08:00"
* restriction.period.end = "2026-09-01T10:00:00+08:00"
* executionPeriod.start = "2026-09-01T09:10:00+08:00"
* executionPeriod.end = "2026-09-01T09:20:00+08:00"
* output.type.text = "檢驗報告"
* output.valueReference = Reference(hah-report)

Instance: hah-specimen
InstanceOf: https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore
Usage: #example
Title: "在宅急症檢體範例"
Description: "直接重用 TW Core 檢體 Profile。"
* identifier.system = "https://example.org/specimens"
* identifier.value = "HAH-SPECIMEN-1"
* subject = Reference(hah-patient)
* type.text = "血液"
* collection.collectedDateTime = "2026-09-01T09:10:00+08:00"
* collection.collector = Reference(hah-practitioner)

Instance: hah-glucose
InstanceOf: HAHObservationLab
Usage: #example
Title: "在宅急症血糖檢驗範例"
Description: "血糖使用檢驗結果 Profile，不套用生命徵象分類。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #final
* code = $LOINC#2339-0
* category[twcore] = $ObservationCategory#laboratory
* effectiveDateTime = "2026-09-01T09:10:00+08:00"
* basedOn = Reference(hah-lab-request)
* specimen = Reference(hah-specimen)
* performer = Reference(hah-practitioner)
* valueQuantity = 110 'mg/dL' "mg/dL"

Instance: hah-report
InstanceOf: HAHDiagnosticReport
Usage: #example
Title: "在宅急症檢驗報告範例"
Description: "檢驗報告參照單項結果、醫囑與檢體。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #final
* code.text = "血糖檢驗報告"
* effectiveDateTime = "2026-09-01T09:10:00+08:00"
* issued = "2026-09-01T09:20:00+08:00"
* performer = Reference(hah-organization)
* basedOn = Reference(hah-lab-request)
* specimen = Reference(hah-specimen)
* result = Reference(hah-glucose)

Instance: hah-temperature
InstanceOf: PASportObservationBodyTemperature
Usage: #example
Title: "在宅急症體溫量測範例"
Description: "直接重用既有基礎生理量測 Profile，補上在宅急症就診與設備參照。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #final
* effectiveDateTime = "2026-09-01T09:10:00+08:00"
* valueQuantity = 37.2 'Cel' "Cel"
* category[VSCat] = $ObservationCategory#vital-signs
* performer = Reference(hah-practitioner)
* device = Reference(hah-device)

Instance: hah-device
InstanceOf: HAHDevice
Usage: #example
Title: "在宅急症體溫計範例"
Description: "設備編號使用 identifier，不宣稱為正式 UDI。"
* identifier.system = "https://example.org/devices"
* identifier.value = "THERMOMETER-001"
* status = #active
* type.text = "體溫計"
* patient = Reference(hah-patient)
* owner = Reference(hah-organization)

Instance: hah-assessment
InstanceOf: HAHAssessmentResponse
Usage: #example
Title: "在宅急症收案評估範例"
Description: "合成評估內容，只示範資料結構，不代表任何給付資格判定。"
* subject = Reference(hah-patient)
* author = Reference(hah-practitioner)
* authored = "2026-09-01T08:00:00+08:00"
* status = #completed
* extension[episode].valueReference = Reference(hah-episode)
* item[criteria].answer.valueString = "示範機構收案程序 1.0；本例不作給付判定"
* item[homeSafety].answer.valueString = "已確認照護空間及聯絡設備"
* item[caregiverSupport].answer.valueString = "照顧者可協助量測並聯繫團隊"
* item[decision].answer.valueCoding = HAHEligibilityCS#eligible

Instance: hah-impression
InstanceOf: HAHClinicalImpression
Usage: #example
Title: "在宅急症臨床評估範例"
Description: "以資源參照連結實測資料，避免重複塞入 note JSON。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #completed
* effectiveDateTime = "2026-09-01T09:30:00+08:00"
* date = "2026-09-01T09:35:00+08:00"
* assessor = Reference(hah-practitioner)
* problem = Reference(hah-condition)
* summary = "已完成本次病情與居家照護需求評估，後續依照護計畫追蹤。"
* supportingInfo[0] = Reference(hah-temperature)
* supportingInfo[1] = Reference(hah-report)

Instance: hah-procedure
InstanceOf: HAHProcedure
Usage: #example
Title: "在宅急症處置範例"
Description: "示範已完成的照護處置及實際執行者。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #completed
* code.coding = HAHActivityCS#education
* code.text = "照護者衛教"
* performedDateTime = "2026-09-01T09:40:00+08:00"
* performer.actor = Reference(hah-practitioner)
* note.text = "已向照顧者說明量測紀錄與聯繫方式。"

Instance: hah-medication-order
InstanceOf: HAHMedicationRequest
Usage: #example
Title: "在宅急症輸注處方範例"
Description: "僅示範資料結構的合成處方，不作臨床治療或劑量建議。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #completed
* intent = #order
* authoredOn = "2026-09-01T09:10:00+08:00"
* requester = Reference(hah-practitioner)
* medicationCodeableConcept.text = "示範用輸注液"
* dosageInstruction.text = "本例僅示範輸注期間及速率欄位。"

Instance: hah-infusion
InstanceOf: HAHMedicationAdministration
Usage: #example
Title: "在宅急症持續輸注範例"
Description: "示範 effectivePeriod 與給藥速率，數值為合成資料。"
* subject = Reference(hah-patient)
* context = Reference(hah-visit)
* status = #completed
* medicationCodeableConcept.text = "示範用輸注液"
* request = Reference(hah-medication-order)
* performer.actor = Reference(hah-practitioner)
* effectivePeriod.start = "2026-09-01T09:15:00+08:00"
* effectivePeriod.end = "2026-09-01T09:45:00+08:00"
* dosage.route.text = "靜脈"
* dosage.rateQuantity = 100 'mL/h' "mL/h"

Instance: hah-medication-not-done
InstanceOf: HAHMedicationAdministration
Usage: #example
Title: "在宅急症未給藥範例"
Description: "未執行時保留原因，不虛構給藥劑量。"
* subject = Reference(hah-patient)
* context = Reference(hah-visit)
* status = #not-done
* statusReason.text = "本次給藥經評估取消"
* medicationCodeableConcept.text = "示範用輸注液"
* request = Reference(hah-medication-order)
* performer.actor = Reference(hah-practitioner)
* effectiveDateTime = "2026-09-01T09:50:00+08:00"

Instance: hah-allergy
InstanceOf: HAHAllergyIntolerance
Usage: #example
Title: "在宅急症過敏資訊範例"
Description: "示範已確認的物質與反應，不能由原始過敏布林旗標直接產生。"
* patient = Reference(hah-patient)
* encounter = Reference(hah-visit)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code.text = "青黴素"
* recordedDate = "2026-09-01T09:00:00+08:00"
* reaction.manifestation.text = "皮疹"

Instance: hah-attachment
InstanceOf: HAHDocumentReference
Usage: #example
Title: "在宅急症同意文件附件範例"
Description: "以內嵌文字示範附件交換，內容為合成資料。"
* subject = Reference(hah-patient)
* status = #current
* type.text = "在宅照護同意文件"
* date = "2026-09-01T08:30:00+08:00"
* author = Reference(hah-practitioner)
* context.encounter = Reference(hah-admission)
* content.attachment.contentType = #text/plain
* content.attachment.title = "合成同意文件"
* content.attachment.data = "RXhhbXBsZSBvbmx5"

Instance: hah-consent
InstanceOf: HAHConsent
Usage: #example
Title: "在宅急症照護同意範例"
Description: "示範病人同意、來源文件及療程關聯，不代表 DNR 醫囑。"
* patient = Reference(hah-patient)
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#treatment
* category.text = "在宅急症照護同意"
* dateTime = "2026-09-01T08:30:00+08:00"
* performer = Reference(hah-patient)
* organization = Reference(hah-organization)
* sourceReference = Reference(hah-attachment)
* policy.uri = "https://example.org/policies/hah-care-consent"
* provision.type = #permit
* provision.period.start = "2026-09-01"
* provision.period.end = "2026-09-05"
* extension[episode].valueReference = Reference(hah-episode)

Instance: hah-communication
InstanceOf: HAHCommunication
Usage: #example
Title: "在宅急症照會回覆範例"
Description: "示範照會請求、回覆與接續工作之區別。"
* subject = Reference(hah-patient)
* encounter = Reference(hah-visit)
* status = #completed
* category = HAHActivityCS#consultation
* basedOn = Reference(hah-consult-request)
* sender = Reference(hah-practitioner)
* recipient = Reference(hah-team)
* sent = "2026-09-01T10:00:00+08:00"
* payload.contentString = "已回覆本次照會，請依照護計畫持續追蹤。"
