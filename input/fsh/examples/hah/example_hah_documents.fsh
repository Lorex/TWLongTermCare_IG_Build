Instance: hah-summary
InstanceOf: HAHCompositionSummary
Usage: #example
Title: "在宅急症結案摘要範例"
Description: "以七個章節整理完成療程的合成資料。"
* status = #final
* type = HAHDocumentCS#discharge-summary
* subject = Reference(hah-patient)
* encounter = Reference(hah-admission)
* date = "2026-09-05T12:00:00+08:00"
* title = "王測試在宅急症結案摘要"
* author = Reference(hah-practitioner)
* custodian = Reference(hah-organization)
* section[course].title = "療程經過"
* section[course].text.status = #additional
* section[course].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次在宅照護完成；包含實地與視訊訪視。</p></div>"
* section[course].entry[0] = Reference(hah-episode)
* section[course].entry[1] = Reference(hah-admission)
* section[course].entry[2] = Reference(hah-visit)
* section[course].entry[3] = Reference(hah-video-visit)
* section[course].entry[4] = Reference(hah-impression)
* section[course].entry[5] = Reference(hah-assessment)
* section[problems].title = "診斷與問題"
* section[problems].text.status = #additional
* section[problems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>呼吸道感染，療程結束時已解除。</p></div>"
* section[problems].entry[0] = Reference(hah-condition)
* section[allergies].title = "過敏資訊"
* section[allergies].text.status = #additional
* section[allergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已記錄青黴素過敏及皮疹反應。</p></div>"
* section[allergies].entry[0] = Reference(hah-allergy)
* section[medications].title = "藥物與給藥"
* section[medications].text.status = #additional
* section[medications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>示範輸注與取消給藥；不是臨床處方建議。</p></div>"
* section[medications].entry[0] = Reference(hah-medication-order)
* section[medications].entry[1] = Reference(hah-infusion)
* section[medications].entry[2] = Reference(hah-medication-not-done)
* section[results].title = "檢查結果"
* section[results].text.status = #additional
* section[results].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附體溫與血糖檢驗。</p></div>"
* section[results].entry[0] = Reference(hah-temperature)
* section[results].entry[1] = Reference(hah-report)
* section[care].title = "照護計畫與措施"
* section[care].text.status = #additional
* section[care].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附照護目標、計畫、衛教、同意及設備。</p></div>"
* section[care].entry[0] = Reference(hah-plan)
* section[care].entry[1] = Reference(hah-goal)
* section[care].entry[2] = Reference(hah-procedure)
* section[care].entry[3] = Reference(hah-consent)
* section[care].entry[4] = Reference(hah-device)
* section[followUp].title = "後續照護與交班"
* section[followUp].text.status = #additional
* section[followUp].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已完成本次會診與檢驗工作；後續回診資訊尚未提供。</p></div>"
* section[followUp].entry[0] = Reference(hah-consult-request)
* section[followUp].entry[1] = Reference(hah-lab-request)
* section[followUp].entry[2] = Reference(hah-task)
* section[followUp].entry[3] = Reference(hah-communication)
* section[followUp].entry[4] = Reference(hah-attachment)

Instance: hah-transfer-episode
InstanceOf: HAHEpisodeOfCare
Usage: #example
Title: "再次收案後轉院的療程範例"
Description: "同一個案再次收案建立新療程，以轉院結束。"
* identifier.system = "https://example.org/hah/episodes"
* identifier.value = "HAH-20260910-002"
* status = #finished
* patient = Reference(hah-patient)
* managingOrganization = Reference(hah-organization)
* period.start = "2026-09-10T08:00:00+08:00"
* period.end = "2026-09-11T10:00:00+08:00"
* extension[outcome].valueCodeableConcept = HAHOutcomeCS#hospital-transfer

Instance: hah-receiving-hospital
InstanceOf: LTCOrganization
Usage: #example
Title: "轉院接收機構範例"
Description: "合成的轉院接收機構。"
* identifier.system = "https://example.org/organizations"
* identifier.value = "HAH-HOSPITAL-2"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "轉院接收示範醫院"

Instance: hah-transfer-admission
InstanceOf: HAHAdmissionEncounter
Usage: #example
Title: "在宅急症轉院整段照護範例"
Description: "將轉出時間與目的機構記錄在本次整段照護。"
* status = #finished
* subject = Reference(hah-patient)
* episodeOfCare = Reference(hah-transfer-episode)
* serviceProvider = Reference(hah-organization)
* participant.individual = Reference(hah-practitioner)
* period.start = "2026-09-10T08:00:00+08:00"
* period.end = "2026-09-11T10:00:00+08:00"
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#other-hcf
* hospitalization.destination = Reference(hah-receiving-hospital)

Instance: hah-transfer-request
InstanceOf: HAHServiceRequest
Usage: #example
Title: "在宅急症轉院申請範例"
Description: "申請轉院與接收機構，不將申請狀態視為對方已完成就醫。"
* status = #active
* intent = #order
* category = HAHActivityCS#referral
* code = HAHActivityCS#referral
* subject = Reference(hah-patient)
* encounter = Reference(hah-transfer-admission)
* authoredOn = "2026-09-11T09:30:00+08:00"
* requester = Reference(hah-practitioner)
* performer = Reference(hah-receiving-hospital)
* reasonCode.text = "本次照護需要超出居家服務能力，安排轉院評估。"

Instance: hah-transfer-summary
InstanceOf: HAHCompositionSummary
Usage: #example
Title: "在宅急症轉院摘要範例"
Description: "資訊不足的章節明確標示未提供，不能解讀為無疾病或無用藥。"
* status = #final
* type = HAHDocumentCS#transfer-summary
* subject = Reference(hah-patient)
* encounter = Reference(hah-transfer-admission)
* date = "2026-09-11T10:00:00+08:00"
* title = "王測試在宅急症轉院摘要"
* author = Reference(hah-practitioner)
* custodian = Reference(hah-organization)
* section[course].title = "療程經過"
* section[course].text.status = #additional
* section[course].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次療程已轉出，接收醫院就醫結果尚未提供。</p></div>"
* section[course].entry[0] = Reference(hah-transfer-episode)
* section[course].entry[1] = Reference(hah-transfer-admission)
* section[problems].title = "診斷與問題"
* section[problems].text.status = #additional
* section[problems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
* section[allergies].title = "過敏資訊"
* section[allergies].text.status = #additional
* section[allergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
* section[medications].title = "藥物與給藥"
* section[medications].text.status = #additional
* section[medications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
* section[results].title = "檢查結果"
* section[results].text.status = #additional
* section[results].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
* section[care].title = "照護計畫與措施"
* section[care].text.status = #additional
* section[care].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
* section[followUp].title = "後續照護與交班"
* section[followUp].text.status = #additional
* section[followUp].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>轉院申請已建立；請接收機構續行評估。</p></div>"
* section[followUp].entry[0] = Reference(hah-transfer-request)

Instance: hah-document
InstanceOf: HAHBundleSummary
Usage: #example
Title: "在宅急症結案文件範例"
Description: "包含摘要與所有參照資源的合成文件。"
* identifier.system = "https://example.org/hah/documents"
* identifier.value = "hah-document-v1"
* timestamp = "2026-09-05T12:01:00+08:00"
* meta.lastUpdated = "2026-09-05T12:01:00+08:00"
* entry[composition].fullUrl = "https://example.org/fhir/Composition/hah-summary"
* entry[composition].resource = hah-summary
* entry[patient].fullUrl = "https://example.org/fhir/Patient/hah-patient"
* entry[patient].resource = hah-patient
* entry[episode].fullUrl = "https://example.org/fhir/EpisodeOfCare/hah-episode"
* entry[episode].resource = hah-episode
* entry[admission].fullUrl = "https://example.org/fhir/Encounter/hah-admission"
* entry[admission].resource = hah-admission
* entry[4].fullUrl = "https://example.org/fhir/Organization/hah-organization"
* entry[4].resource = hah-organization
* entry[5].fullUrl = "https://example.org/fhir/Practitioner/hah-practitioner"
* entry[5].resource = hah-practitioner
* entry[6].fullUrl = "https://example.org/fhir/Location/hah-location"
* entry[6].resource = hah-location
* entry[7].fullUrl = "https://example.org/fhir/Encounter/hah-visit"
* entry[7].resource = hah-visit
* entry[8].fullUrl = "https://example.org/fhir/Encounter/hah-video-visit"
* entry[8].resource = hah-video-visit
* entry[9].fullUrl = "https://example.org/fhir/Condition/hah-condition"
* entry[9].resource = hah-condition
* entry[10].fullUrl = "https://example.org/fhir/CareTeam/hah-team"
* entry[10].resource = hah-team
* entry[11].fullUrl = "https://example.org/fhir/Goal/hah-goal"
* entry[11].resource = hah-goal
* entry[12].fullUrl = "https://example.org/fhir/CarePlan/hah-plan"
* entry[12].resource = hah-plan
* entry[13].fullUrl = "https://example.org/fhir/ServiceRequest/hah-lab-request"
* entry[13].resource = hah-lab-request
* entry[14].fullUrl = "https://example.org/fhir/ServiceRequest/hah-consult-request"
* entry[14].resource = hah-consult-request
* entry[15].fullUrl = "https://example.org/fhir/Task/hah-task"
* entry[15].resource = hah-task
* entry[16].fullUrl = "https://example.org/fhir/Specimen/hah-specimen"
* entry[16].resource = hah-specimen
* entry[17].fullUrl = "https://example.org/fhir/Observation/hah-glucose"
* entry[17].resource = hah-glucose
* entry[18].fullUrl = "https://example.org/fhir/DiagnosticReport/hah-report"
* entry[18].resource = hah-report
* entry[19].fullUrl = "https://example.org/fhir/Observation/hah-temperature"
* entry[19].resource = hah-temperature
* entry[20].fullUrl = "https://example.org/fhir/Device/hah-device"
* entry[20].resource = hah-device
* entry[21].fullUrl = "https://example.org/fhir/QuestionnaireResponse/hah-assessment"
* entry[21].resource = hah-assessment
* entry[22].fullUrl = "https://example.org/fhir/ClinicalImpression/hah-impression"
* entry[22].resource = hah-impression
* entry[23].fullUrl = "https://example.org/fhir/Procedure/hah-procedure"
* entry[23].resource = hah-procedure
* entry[24].fullUrl = "https://example.org/fhir/MedicationRequest/hah-medication-order"
* entry[24].resource = hah-medication-order
* entry[25].fullUrl = "https://example.org/fhir/MedicationAdministration/hah-infusion"
* entry[25].resource = hah-infusion
* entry[26].fullUrl = "https://example.org/fhir/MedicationAdministration/hah-medication-not-done"
* entry[26].resource = hah-medication-not-done
* entry[27].fullUrl = "https://example.org/fhir/AllergyIntolerance/hah-allergy"
* entry[27].resource = hah-allergy
* entry[28].fullUrl = "https://example.org/fhir/DocumentReference/hah-attachment"
* entry[28].resource = hah-attachment
* entry[29].fullUrl = "https://example.org/fhir/Consent/hah-consent"
* entry[29].resource = hah-consent
* entry[30].fullUrl = "https://example.org/fhir/Communication/hah-communication"
* entry[30].resource = hah-communication

Instance: hah-transfer-document
InstanceOf: HAHBundleSummary
Usage: #example
Title: "在宅急症轉院文件範例"
Description: "包含摘要與所有參照資源的合成文件。"
* identifier.system = "https://example.org/hah/documents"
* identifier.value = "hah-transfer-document-v1"
* timestamp = "2026-09-11T10:01:00+08:00"
* meta.lastUpdated = "2026-09-11T10:01:00+08:00"
* entry[composition].fullUrl = "https://example.org/fhir/Composition/hah-transfer-summary"
* entry[composition].resource = hah-transfer-summary
* entry[patient].fullUrl = "https://example.org/fhir/Patient/hah-patient"
* entry[patient].resource = hah-patient
* entry[episode].fullUrl = "https://example.org/fhir/EpisodeOfCare/hah-transfer-episode"
* entry[episode].resource = hah-transfer-episode
* entry[admission].fullUrl = "https://example.org/fhir/Encounter/hah-transfer-admission"
* entry[admission].resource = hah-transfer-admission
* entry[4].fullUrl = "https://example.org/fhir/Practitioner/hah-practitioner"
* entry[4].resource = hah-practitioner
* entry[5].fullUrl = "https://example.org/fhir/Organization/hah-organization"
* entry[5].resource = hah-organization
* entry[6].fullUrl = "https://example.org/fhir/Organization/hah-receiving-hospital"
* entry[6].resource = hah-receiving-hospital
* entry[7].fullUrl = "https://example.org/fhir/ServiceRequest/hah-transfer-request"
* entry[7].resource = hah-transfer-request
