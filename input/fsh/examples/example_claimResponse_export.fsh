Instance: ex-claim-response-export
InstanceOf: LTCClaimResponseExport
Title: "長照 SDK－照管全量匯出（ClaimResponse）範例"
Description: "長照照管全量匯出之審核結果與檢核錯誤資訊範例，展示如何使用 LTCClaimResponseExport Profile。"
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* use = #preauthorization
* patient = Reference(ex-pt)
* created = "2025-07-04"
* insurer = Reference(ex-org)
* outcome = #complete
* disposition = "審核通過"

// 民國年月
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
* identifier[yyyymm].value = "11407"

// 檢核錯誤訊息
* extension[errorMessage][0].valueString = "跨月金額超出核定上限"

// 單位資訊
* extension[unit][0].extension[type].valueCodeableConcept.text = "PIA"
* extension[unit][0].extension[name].valueString = "OOO居家長照機構"
* extension[unit][0].extension[code].valueString = "A10001"
