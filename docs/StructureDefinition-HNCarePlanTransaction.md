# 居家護理－照護計畫交易 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫交易**

## Resource Profile: 居家護理－照護計畫交易 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanTransaction | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNCarePlanTransaction |

 
以 FHIR transaction 一次提交目標、措施、評值及其臨床資源。任一 entry 失敗時不得僅儲存部分資料。原 API 的檔案仍須依其格式另外轉換。 

**Usages:**

* Examples for this Profile: [Bundle/hn-careplan-transaction-example](Bundle-hn-careplan-transaction-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCarePlanTransaction.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCarePlanTransaction.csv), [Excel](StructureDefinition-HNCarePlanTransaction.xlsx), [Schematron](StructureDefinition-HNCarePlanTransaction.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCarePlanTransaction",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanTransaction",
  "version" : "1.1.0",
  "name" : "HNCarePlanTransaction",
  "title" : "居家護理－照護計畫交易",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "以 FHIR transaction 一次提交目標、措施、評值及其臨床資源。任一 entry 失敗時不得僅儲存部分資料。原 API 的檔案仍須依其格式另外轉換。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsResponse",
        "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresResponse",
        "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsResponse"]
      },
      {
        "code" : "Goal",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNGoal"]
      },
      {
        "code" : "CarePlan",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlan"]
      }]
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT"
    }]
  }
}

```
