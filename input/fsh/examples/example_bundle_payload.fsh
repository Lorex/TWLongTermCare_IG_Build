Instance: ltc-bundle-payload-example
InstanceOf: LTCBundlePayload
Title: "長照 SDK－回傳包（4合1）範例"
Description: "長照 SDK 回傳資料包範例，包含案件、評估、核定額度及照顧計畫等資源之集合。"
Usage: #example

* type = #collection

* entry[0].fullUrl = "http://example.org/Patient/ltc-patient-sdk-example"
* entry[0].resource = ltc-patient-sdk-example

* entry[+].fullUrl = "http://example.org/Organization/ltc-organization-sdk-example"
* entry[=].resource = ltc-organization-sdk-example

* entry[+].fullUrl = "http://example.org/Practitioner/ltc-practitioner-sdk-example"
* entry[=].resource = ltc-practitioner-sdk-example

* entry[+].fullUrl = "http://example.org/EpisodeOfCare/ltc-episodeofcare-sdk-example"
* entry[=].resource = ltc-episodeofcare-sdk-example

* entry[+].fullUrl = "http://example.org/Observation/ltc-observation-assessment-sdk-example"
* entry[=].resource = ltc-observation-assessment-sdk-example

* entry[+].fullUrl = "http://example.org/CoverageEligibilityResponse/ltc-coverageeligibilityresponse-sdk-example"
* entry[=].resource = ltc-coverageeligibilityresponse-sdk-example

* entry[+].fullUrl = "http://example.org/CarePlan/ltc-careplan-sdk-example"
* entry[=].resource = ltc-careplan-sdk-example
