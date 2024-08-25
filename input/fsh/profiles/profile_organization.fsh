Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: LTCOrganization
Parent: $TWCoreOrganization
Id: Organization-twltc
Title: "TW Long Term Care Organization"
Description: "長期照顧機構資料，包含長照機構的名稱、地址、聯絡方式等資訊。"

* . ^short = "長期照顧服務機構的資訊"
* identifier.value 1..1 MS
* name 1..1 MS
* telecom 1..* MS
* telecom.value 1..1
* address 1..1 MS
* address.text 1..1
* contact 0..* MS

* identifier.value ^short = "唯一值。[應填入機構代碼]"
* name ^short = "機構名稱。[應填入機構名稱]"
* telecom ^short = "機構聯絡方式。"
* telecom.value ^short = "實際的聯絡方式之細節。[應填入機構電話]"
* address ^short = "機構所在地址。"
* address.text ^short = "地址的文字表述。[應填入機構地址]"
