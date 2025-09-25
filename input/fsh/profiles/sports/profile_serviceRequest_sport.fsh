Alias: $TWCoreServiceRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore
Alias: $TempCodeVS = http://ltc-ig.fhir.tw/ValueSet/TempCodeVS-Sport
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport
Alias: $ICD10PCS2023TWFCS = http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS
Alias: $ICD10PCS2023TWFVS = http://ltc-ig.fhir.tw/ValueSet/ICD-10-PCS-2023-TW-F-VS
Alias: $ServiceRequestPAVSSport = http://ltc-ig.fhir.tw/ValueSet/ServiceRequestPAVS-Sport

Profile: PASportServiceRequest
Parent: $TWCoreServiceRequest
Id: PASportServiceRequest
Title: "運動處方－服務請求"
Description: "長照機構住民運動處方的服務請求資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data ServiceRequest Profile。"

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier.value ^short = "運動處方唯一識別碼"

* status 1..1 MS
* intent 1..1 MS

* category 1..* MS
* category.coding 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = $TempCodeCS (exactly)
* category.coding.code 1..1 MS
* category.coding.code = #PhysicalActivity (exactly)

* code 1..1 MS
* code.coding 0..* MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    ICD10PCSF 0..1 MS and
    PA 0..1 MS
* code.coding[ICD10PCSF] from $ICD10PCS2023TWFVS (required)
* code.coding[ICD10PCSF].system 1..1 MS
* code.coding[ICD10PCSF].system = "http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS"
* code.coding[ICD10PCSF].code 1..1 MS
* code.coding[PA] from $ServiceRequestPAVSSport (required)
* code.coding[PA].system 1..1 MS
* code.coding[PA].system = "http://snomed.info/sct"
* code.coding[PA].code 1..1 MS

* subject 1..1 MS
* subject only Reference(TWCorePatient)

* authoredOn 1..1 MS

* requester 1..1 MS
* requester only Reference(TWCorePractitioner or TWCoreOrganization)

// Example
Instance: pasport-servicerequest-exercise-therapy-example
InstanceOf: PASportServiceRequest
Title: "運動治療服務請求範例"
Description: "一個運動治療服務請求的範例，展示如何使用 PASportServiceRequest Profile 來申請運動治療服務"
Usage: #example

* identifier.system = "http://ltc-ig.fhir.tw/servicerequest-id"
* identifier.value = "SR-SPORT-2024-001"

* status = #active
* intent = #order

* category.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
* category.coding.code = #PhysicalActivity
* category.coding.display = "Physical Activity"

* code.coding[PA].system = "http://snomed.info/sct"
* code.coding[PA].code = #229070002
* code.coding[PA].display = "Stretching exercises"

* code.text = "申請個人化運動治療計畫，包含步行訓練、平衡訓練及肌力強化運動"

* subject = Reference(ltc-patient-chen-ming-hui)

* authoredOn = "2024-01-15T10:00:00+08:00"

* requester = Reference(ltc-practitioner-example)

* performerType.coding.system = "http://snomed.info/sct"
* performerType.coding.code = #36682004
* performerType.coding.display = "Physiotherapist"

* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #26929004
* reasonCode.coding.display = "Alzheimer's disease"

* reasonReference = Reference(pasport-condition-exercise-history-example)

* supportingInfo = Reference(pasport-observation-heart-rate-example)

* note[0].time = "2024-01-15T10:00:00+08:00"
* note[0].text = "患者因認知功能輕度下降，建議透過規律運動改善體能及認知功能。需要專業物理治療師指導，設計適合的運動計畫。"

* patientInstruction = "請於每週二、四、六上午9:00-10:00參加運動治療課程，穿著合適運動鞋及寬鬆衣物"