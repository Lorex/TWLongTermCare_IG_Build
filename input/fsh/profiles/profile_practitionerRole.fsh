Alias: $TWCorePractitionerRole = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: LTCPractitionerRole
Parent: $TWCorePractitionerRole
Id: LTCPractitionerRole
Title: "TW Long Term Care PractitionerRole"
Description: "長期照顧服務人員角色資料，包含醫師、護理師、藥師、照顧服務員等實際參與長照服務的人員角色資料。有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://build.fhir.org/ig/cctwFHIRterm/MOHW_TWCoreIG_Build/StructureDefinition-PractitionerRole-twcore.html) 中的說明。"

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
