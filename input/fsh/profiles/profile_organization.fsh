Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: LTCOrganization
Parent: $TWCoreOrganization
Id: Organization-twltc
Title: "長期照顧－機構"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。"

* . ^short = "機構的資訊"
* identifier.value 1..1 MS
* type 1..1 MS
* type ^short = "機構類型"
* name 1..1 MS
* name ^short = "機構名稱"
* telecom 0..* MS
* telecom.value 0..1
* address 0..1 MS
* address.text 0..1
* contact 0..* MS

* identifier.value ^short = "唯一值。[應填入機構代碼]"
* name ^short = "機構名稱。[應填入機構名稱]"
* telecom ^short = "機構聯絡方式。"
* telecom.value ^short = "實際的聯絡方式之細節。[應填入機構電話]"
* address ^short = "機構所在地址。"
* address.text ^short = "地址的文字表述。[應填入機構地址]"
