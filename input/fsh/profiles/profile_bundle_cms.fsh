Alias: $TWBundle = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Bundle-document-twcore
Alias: $TWCoreBundle = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Bundle-twcore

Profile: LTCBundle_CMS
Parent: $TWCoreBundle
Id: Bundle-cms-twltc
Title: "CMS Form Bundle"
Description: "長期照顧藥物處方內容"

* type = #document
* entry 1..* MS