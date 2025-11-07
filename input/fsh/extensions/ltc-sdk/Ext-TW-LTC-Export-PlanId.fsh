Extension: ExtTWLTCExportPlanId
Id: Ext-TW-LTC-Export-PlanId
Title: "長照 SDK－計畫明細ID（PLAN_ID）"
Description: "此 Extension 用於表示長照 SDK 的計畫明細 ID（PLAN_ID），適用於 Claim.item。"
// * ^url = http://ltc-ig.fhir.tw/StructureDefinition/Ext_TW_LTC_Export_PlanId
* value[x] only string
* ^context.type = #element
* ^context.expression = "Claim.item"
