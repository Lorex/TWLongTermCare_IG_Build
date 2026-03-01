Instance: ex-bundle-payload
InstanceOf: LTCBundlePayload
Title: "長照 SDK－回傳包（4合1）範例"
Description: "長照 SDK 回傳資料包範例，包含案件、評估、核定額度及照顧計畫等資源之集合。"
Usage: #example

* type = #collection

* entry[0].fullUrl = "http://example.org/Patient/ex-pt-sdk"
* entry[0].resource = ex-pt-sdk

* entry[+].fullUrl = "http://example.org/Organization/ex-org-sdk"
* entry[=].resource = ex-org-sdk

* entry[+].fullUrl = "http://example.org/Practitioner/ex-prac-sdk"
* entry[=].resource = ex-prac-sdk

* entry[+].fullUrl = "http://example.org/EpisodeOfCare/ex-case-sdk"
* entry[=].resource = ex-case-sdk

* entry[+].fullUrl = "http://example.org/Observation/ex-assess-sdk"
* entry[=].resource = ex-assess-sdk

* entry[+].fullUrl = "http://example.org/CoverageEligibilityResponse/ex-elig-sdk"
* entry[=].resource = ex-elig-sdk

* entry[+].fullUrl = "http://example.org/CarePlan/ex-plan-sdk"
* entry[=].resource = ex-plan-sdk
