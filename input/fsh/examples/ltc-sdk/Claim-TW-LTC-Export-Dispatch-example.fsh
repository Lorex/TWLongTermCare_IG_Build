Instance: Claim-TW-LTC-Export-Dispatch-example
InstanceOf: Claim-TW-LTC-Export
Title: "長照 SDK－照管CASE—可提供服務（示例）"
Usage: #example

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* use = #preauthorization
* created = "2025-07-01"
* patient = Reference(ex-pt)
* provider = Reference(ex-org)
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority"
* priority.coding.code = #normal

// 最小保險區塊（必填）
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ex-coverage)

// ← 用 identifier 承載
* identifier[caseNo].system = "https://ltc-ig.fhir.tw/identifier/export/case-no"
* identifier[caseNo].value  = "111307113"
* identifier[evaId].system  = "https://ltc-ig.fhir.tw/identifier/export/eva-id"
* identifier[evaId].value   = "7546385480"

// 只列代碼（補 sequence）
* item[+].sequence = 1
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BA04
* item[+].sequence = 2
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BA07
* item[+].sequence = 3
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BA18
* item[+].sequence = 4
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BA02
* item[+].sequence = 5
* item[=].productOrService = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#BA13
