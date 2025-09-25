Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionCrushVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC

Profile: LTCConditionCrush
Parent: $TWCoreCondition
Id: LTCConditionCrush
Title: "長期照顧－壓傷狀況"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。"

* code 1..1 MS
* code ^short = "壓傷狀況"
* code from $ReferralConditionCrushVS (required)
* code.coding 1..1 MS
* code.coding ^short = "壓傷狀況代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "個案是否有壓傷？如果代碼為 crush，則需填寫備註以描述壓傷狀況"
* note 0..1 MS
* note ^short = "壓傷狀況與類別備註，應填寫部位、等級與大小(cm^2)"

Invariant: LTCConditionCrush-1
Description: "The Condition.note SHALL be present if the Condition.code is 'http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC|crush'."
Expression: "code.coding.code = 'crush' implies note.exists()"
Severity: #error
XPath: "f:code/f:coding[f:system/@value='http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC']/f:code/@value = 'crush' implies f:note"

// Example
Instance: ltc-condition-crush-none-example
InstanceOf: LTCConditionCrush
Title: "無壓傷狀況範例"
Description: "一個無壓傷狀況的範例，展示如何使用 LTCConditionCrush Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
* code.coding.code = #no-crush
* code.coding.display = "無壓傷"

* subject = Reference(ltc-patient-chen-ming-hui)
* note[0].time = "2024-01-15"
* note[0].text = "目前無壓傷"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"

// Example with pressure injury
Instance: ltc-condition-crush-stage2-example
InstanceOf: LTCConditionCrush
Title: "第二期壓傷範例"
Description: "一個第二期壓傷的範例，展示如何使用 LTCConditionCrush Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
* code.coding.code = #crush
* code.coding.display = "壓傷"

* subject = Reference(ltc-patient-chen-ming-hui)
* note[0].time = "2024-01-15"
* note[0].text = "骶尾部約 2x2 公分紅腫破皮"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"

* onsetDateTime = "2024-01-10"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "部位：薦骨部位，等級：第二期，大小：3x2 cm^2，正在進行傷口護理"

* bodySite[0].coding.system = "http://snomed.info/sct"
* bodySite[0].coding.code = #54735007
* bodySite[0].coding.display = "Bone structure of sacrum"

