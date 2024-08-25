Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore

Profile: LTCPractitioner
Title: "TW Long Term Care Practitioner"
Parent: $TWCorePractitioner
Description: "長期照顧服務人員資料，包含醫師、護理師、藥師、照顧服務員等實際參與長照服務的人員資料。"

* name 1..* MS
* name ^short = "長期照顧服務提供人員姓名"