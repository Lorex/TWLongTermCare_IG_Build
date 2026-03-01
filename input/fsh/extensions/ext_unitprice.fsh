Extension: ExtTWLTCUnitPrice
Id: Ext-TW-LTC-UnitPrice
Title: "單價"
Description: "此 Extension 用於表示長照服務項目的單價金額。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice"
* ^status = #active
* ^context.type = #element
* ^context.expression = "CarePlan.activity.detail"
* value[x] only Money
* value[x] 1..1 MS
