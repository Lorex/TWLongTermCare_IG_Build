Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore

Profile: LTCCondition
Parent: $TWCoreCondition
Id: LTCCondition
Title: "TWLTC Condition"
Description: "長照機構住民的病情、問題或診斷資料，用以表述發生在長照機構住民的診斷，或需要特別注意或處理的健康問題與病情。"

* code 1..1 MS
* code ^short = "病情、問題或診斷的識別"
* subject 1..1 MS
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "擁有此病情、問題或診斷的住民。[應輸入 Patient Resource ID]"
* recorder 1..1 MS
* recorder only Reference(LTCPractitioner or LTCPractitionerRole or LTCPatient or LTCRelatedPerson)
* recorder.reference 1..1 MS
* recorder.reference ^short = "記錄此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]"
* asserter 0..1 MS
* asserter only Reference(LTCPractitioner or LTCPractitionerRole or LTCPatient or LTCRelatedPerson)
* asserter.reference 1..1 MS
* asserter.reference ^short = "聲稱有此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]"