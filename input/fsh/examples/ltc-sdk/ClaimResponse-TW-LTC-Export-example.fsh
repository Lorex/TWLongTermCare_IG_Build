Instance: ClaimResponse-TW-LTC-Export-example
InstanceOf: ClaimTWLTCExport
Title: "長照 SDK－照管PLAN—計畫與金額（示例）"
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* use = #preauthorization
* patient = Reference(ex-pt)
* provider = Reference(ex-org)
* created = "2025-07-04"
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal

// 最小保險區塊（必填）
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ex-coverage)

// ← 用 identifier 承載 caseNo / evaId / yyyymm
* identifier[caseNo].system = "https://ltc-ig.fhir.tw/identifier/export/case-no"
* identifier[caseNo].value  = "111301921"
* identifier[evaId].system  = "https://ltc-ig.fhir.tw/identifier/export/eva-id"
* identifier[evaId].value   = "7574654624"
* identifier[yyyymm].system = "https://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
* identifier[yyyymm].value  = "11407"

// ITEM 1：BB03 23×840=19320
* item[+].sequence = 1
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BB03
* item[=].quantity.value = 23
* item[=].unitPrice.value = 840
* item[=].unitPrice.currency = #TWD
* item[=].net.value = 19320
* item[=].net.currency = #TWD
// planId → 放到 programCode（不綁 VS）
* item[=].programCode[+].coding.system = "https://ltc-ig.fhir.tw/identifier/export/plan-id"
* item[=].programCode[=].coding.code   = #PLAN-0001

// ITEM 2：DA01 以總額表示
* item[+].sequence = 2
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#DA01
* item[=].quantity.value = 1680
* item[=].unitPrice.value = 1
* item[=].unitPrice.currency = #TWD
* item[=].net.value = 1680
* item[=].net.currency = #TWD
* item[=].programCode[+].coding.system = "https://ltc-ig.fhir.tw/identifier/export/plan-id"
* item[=].programCode[=].coding.code   = #PLAN-0002
