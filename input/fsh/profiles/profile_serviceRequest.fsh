Alias: $TWCoreServiceRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore

Profile: LTCServiceRequest
Parent: $TWCoreServiceRequest
Id: LTCServiceRequest
Title: "長期照顧－服務請求"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ServiceRequest Resource，以呈現長期照顧情境中的轉介申請及服務請求需求。"

* identifier 0..* MS
* identifier ^short = "服務請求識別碼"

* status 1..1 MS
* intent 1..1 MS

* category 0..* MS
* category ^short = "服務類別，如轉介、照護服務請求等"

* code 1..1 MS
* code ^short = "服務項目代碼"

* subject 1..1 MS
* subject only Reference(LTCPatient)

* encounter 0..1 MS

* occurrence[x] 0..1 MS

* authoredOn 0..1 MS

* requester 0..1 MS
* requester only Reference(LTCPractitioner or LTCOrganization or LTCPractitionerRole)

* performer 0..* MS
* performer only Reference(LTCPractitioner or LTCOrganization or LTCPractitionerRole)

* reasonCode 0..* MS

* reasonReference 0..* MS
* reasonReference only Reference(LTCCondition)

* note 0..* MS

// Example
Instance: ltc-servicerequest-referral-example
InstanceOf: LTCServiceRequest
Title: "長照轉介服務請求範例"
Description: "展示醫療院所向長照機構發送轉介服務請求的範例"
Usage: #example

* status = #active
* intent = #order

* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #3457005
* category.coding.display = "Patient referral"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #306206005
* code.coding.display = "Referral to service"
* code.text = "轉介至日間照護中心"

* subject = Reference(ltc-patient-chen-ming-hui)

* authoredOn = "2024-01-20T14:30:00+08:00"

* requester = Reference(ltc-practitioner-example)

* performer = Reference(ltc-organization-example)

* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #26929004
* reasonCode.coding.display = "Alzheimer's disease"
* reasonCode.text = "失智症照護需求"

* note[0].text = "個案因失智症需轉介至日間照護中心接受日間照護服務，含認知訓練與生活照顧。"
