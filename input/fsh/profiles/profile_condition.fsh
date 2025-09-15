Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore

Profile: LTCCondition
Parent: $TWCoreCondition
Id: LTCCondition
Title: "長期照顧－病情、問題或診斷"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的病情、問題或診斷資料。"

* code 1..1 MS
* code ^short = "病情、問題或診斷的識別"
* subject 1..1 MS
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "擁有此病情、問題或診斷的住民。[應輸入 Patient Resource ID]"
* recorder 0..1 MS
* recorder only Reference(LTCPractitioner or LTCPractitionerRole or LTCPatient or LTCRelatedPerson)
* recorder.reference 1..1 MS
* recorder.reference ^short = "記錄此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]"
* asserter 0..1 MS
* asserter only Reference(LTCPractitioner or LTCPractitionerRole or LTCPatient or LTCRelatedPerson)
* asserter.reference 1..1 MS
* asserter.reference ^short = "聲稱有此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]"

// Example
Instance: ltc-condition-diabetes-example
InstanceOf: LTCCondition
Title: "糖尿病病情範例"
Description: "一個糖尿病病情的範例，展示如何使用 LTCCondition Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #encounter-diagnosis
* category[0].coding.display = "Encounter Diagnosis"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #44054006
* code.coding.display = "Diabetes mellitus type 2"
* code.text = "第2型糖尿病"

* subject = Reference(ltc-patient-chen-ming-hui)

* onsetDateTime = "2020-05-15"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* asserter = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "血糖控制穩定，需持續監測"