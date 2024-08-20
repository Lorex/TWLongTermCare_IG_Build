Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: LTCOrganization
Parent: $TWCoreOrganization
Title: "TW Long Term Care Organization"
Description: "長期照顧機構資料"

* identifier.value 1..1 MS ^short = "唯一值，應填入機構代碼"
* name 0..1 MS ^short = "機構名稱"
* telecom 1..* MS ^short = "機構聯絡方式"
* telecom.value 1..1
* address 1..* MS
* address.text 1..1 ^short = "地址的文字表述"
* contact 0..* MS