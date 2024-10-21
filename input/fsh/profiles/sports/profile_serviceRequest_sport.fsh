Alias: $TWCoreServiceRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore
Alias: $TempCodeVS = http://ltc-ig.fhir.tw/ValueSet/TempCodeVS-Sports
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sports
Alias: $ICD10PCS2023TWFCS = http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS
Alias: $ICD10PCS2023TWFVS = http://ltc-ig.fhir.tw/ValueSet/ICD-10-PCS-2023-TW-F-VS
Alias: $ServiceRequestPAVSSports = http://ltc-ig.fhir.tw/ValueSet/ServiceRequestPAVS-Sports

Profile: PASportsServiceRequest
Parent: $TWCoreServiceRequest
Id: PASportsServiceRequest
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
* code.coding[PA] from $ServiceRequestPAVSSports (required)
* code.coding[PA].system 1..1 MS
* code.coding[PA].system = "http://snomed.info/sct"
* code.coding[PA].code 1..1 MS

* subject 1..1 MS
* subject only Reference(TWCorePatient)

* authoredOn 1..1 MS

* requester 1..1 MS
* requester only Reference(TWCorePractitioner or TWCoreOrganization)
