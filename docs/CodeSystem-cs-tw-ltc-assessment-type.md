# 長照 SDK－評估類型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估類型**

## CodeSystem: 長照 SDK－評估類型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-type | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:CS_TW_LTC_AssessmentType |

 
對應 r2.8 / r3.21：出院銜接、初評、複評、計畫異動、舊系統無評估轉入、身障居服匯入、AA計劃異動。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_AssessmentType](ValueSet-vs-tw-ltc-assessment-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-assessment-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-type",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_AssessmentType",
  "title" : "長照 SDK－評估類型",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "對應 r2.8 / r3.21：出院銜接、初評、複評、計畫異動、舊系統無評估轉入、身障居服匯入、AA計劃異動。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "discharge-link",
    "display" : "出院銜接評估"
  },
  {
    "code" : "initial",
    "display" : "初評"
  },
  {
    "code" : "reassess",
    "display" : "複評"
  },
  {
    "code" : "plan-change",
    "display" : "計畫異動"
  },
  {
    "code" : "legacy-import",
    "display" : "舊系統無評估轉入"
  },
  {
    "code" : "disability-hh",
    "display" : "身障居服匯入"
  },
  {
    "code" : "aa-change",
    "display" : "AA計劃異動"
  }]
}

```
