# 在宅急症－收案評估結果代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－收案評估結果代碼**

## CodeSystem: 在宅急症－收案評估結果代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hah-eligibility | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHEligibilityCS |

 
評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [在宅急症－收案評估結果值集](ValueSet-hah-eligibility.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hah-eligibility",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hah-eligibility",
  "version" : "1.1.0",
  "name" : "HAHEligibilityCS",
  "title" : "在宅急症－收案評估結果代碼",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "eligible",
    "display" : "建議收案",
    "definition" : "評估人員建議開始本次在宅急症照護。"
  },
  {
    "code" : "ineligible",
    "display" : "不建議收案",
    "definition" : "評估人員不建議開始本次照護，須填寫原因。"
  },
  {
    "code" : "pending",
    "display" : "待確認",
    "definition" : "仍有待取得的資訊或待確認的條件。"
  }]
}

```
