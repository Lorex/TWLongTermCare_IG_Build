Alias: $TWCorePractitionerRole = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: LTCPractitionerRole
Parent: $TWCorePractitionerRole
Id: LTCPractitionerRole
Title: "長期照顧－服務人員角色"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。

有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://build.fhir.org/ig/cctwFHIRterm/MOHW_TWCoreIG_Build/StructureDefinition-PractitionerRole-twcore.html) 中的說明。"

* practitioner 1..1 MS
* practitioner ^short = "能為長照機構提供所定義服務的長照服務提供者"
* practitioner.reference 1..1 MS
* practitioner.reference ^short = "關聯的長照服務人員。[應輸入 Practitioner Resource ID]"
* practitioner only Reference(LTCPractitioner)
* organization 0..1 MS
* organization ^short = "提供此長照服務提供者角色的機構"
* organization.reference 1..1 MS
* organization.reference ^short = "關聯的長照服務機構。[應輸入 Organization Resource ID]"
* organization only Reference(LTCOrganization)
* location 0..1 MS
* location ^short = "長照服務提供者提供長照服務的地點"
* location.reference 1..1 MS
* location.reference ^short = "關聯的長照服務地點。[應輸入 Location Resource ID]"

// Example
Instance: ltc-practitioner-role-nurse-example
InstanceOf: LTCPractitionerRole
Title: "長期照顧護理師角色範例"
Description: "一個長期照顧護理師角色的範例，展示如何使用 LTCPractitionerRole Profile"
Usage: #example

* active = true

* practitioner = Reference(ltc-practitioner-nurse-example)
* organization = Reference(ltc-organization-example)

* code[0].coding.system = "http://snomed.info/sct"
* code[0].coding.code = #224535009
* code[0].coding.display = "Registered nurse"

* specialty[0].coding.system = "http://snomed.info/sct"
* specialty[0].coding.code = #394609007
* specialty[0].coding.display = "General surgery (qualifier value)"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "02-29412345"

* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "meiling.wang@ltc-center.tw"

* availableTime[0].daysOfWeek[0] = #mon
* availableTime[0].daysOfWeek[1] = #tue
* availableTime[0].daysOfWeek[2] = #wed
* availableTime[0].daysOfWeek[3] = #thu
* availableTime[0].daysOfWeek[4] = #fri
* availableTime[0].availableStartTime = "08:00:00"
* availableTime[0].availableEndTime = "17:00:00"
