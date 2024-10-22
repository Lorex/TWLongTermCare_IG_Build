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