# 在宅急症－服務請求 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－服務請求**

## Resource Profile: 在宅急症－服務請求 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHServiceRequest |

 
沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)... Show 5 more, [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.md), [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md), [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.md), [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md) and [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)
* Examples for this Profile: [ServiceRequest/hah-consult-request](ServiceRequest-hah-consult-request.md), [ServiceRequest/hah-lab-request](ServiceRequest-hah-lab-request.md) and [ServiceRequest/hah-transfer-request](ServiceRequest-hah-transfer-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHServiceRequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHServiceRequest.csv), [Excel](StructureDefinition-HAHServiceRequest.xlsx), [Schematron](StructureDefinition-HAHServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHServiceRequest",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
  "version" : "1.1.0",
  "name" : "HAHServiceRequest",
  "title" : "在宅急症－服務請求",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-service"
      }
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "mustSupport" : true
    }]
  }
}

```
