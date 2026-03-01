Profile: LTCCompositionBase
Parent: $TWCoreComposition
Id: LTCCompositionBase
Title: "長期照顧－文件組成基礎"
Description: "此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase"
* ^status = #active
* status 1..1 MS
* type 1..1 MS
* subject 1..1 MS
* date 1..1 MS
* title 1..1 MS
* author 1..* MS
