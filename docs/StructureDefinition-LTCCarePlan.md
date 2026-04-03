# 長期照顧－照顧計畫 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－照顧計畫**

## Resource Profile: 長期照顧－照顧計畫 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCCarePlan |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之照顧計畫內容。 

**Usages:**

* Derived from this Profile: [轉介單－服務種類](StructureDefinition-LTCCarePlanReferral.md)
* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md) and [長期照顧－任務管理](StructureDefinition-LTCTask.md)
* Examples for this Profile: [CarePlan/ltc-careplan-mobility-example](CarePlan-ltc-careplan-mobility-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCarePlan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCarePlan.csv), [Excel](StructureDefinition-LTCCarePlan.xlsx), [Schematron](StructureDefinition-LTCCarePlan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCarePlan",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan",
  "version" : "1.0.0",
  "name" : "LTCCarePlan",
  "title" : "長期照顧－照顧計畫",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之照顧計畫內容。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan.basedOn",
      "path" : "CarePlan.basedOn",
      "short" : "照顧計畫的來源，即這項照顧計畫是基於哪個照顧計畫？",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan"]
      }]
    },
    {
      "id" : "CarePlan.basedOn.reference",
      "path" : "CarePlan.basedOn.reference",
      "short" : "照顧計畫的來源。[應輸入 CarePlan Resource ID]",
      "min" : 1
    },
    {
      "id" : "CarePlan.replaces",
      "path" : "CarePlan.replaces",
      "short" : "照顧計畫的替代，即這項照顧計畫已經被哪個照顧計畫替代？",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan"]
      }]
    },
    {
      "id" : "CarePlan.replaces.reference",
      "path" : "CarePlan.replaces.reference",
      "short" : "照顧計畫的替代。[應輸入 CarePlan Resource ID]",
      "min" : 1
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "short" : "照顧計畫的緊急備用方案，即這項照顧計畫使用哪個緊急備用方案？",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.partOf.reference",
      "path" : "CarePlan.partOf.reference",
      "short" : "照顧計畫的緊急備用方案。[應輸入 CarePlan Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "short" : "照顧計畫的狀態。[應填入以下字串之一：active | on-hold | completed | cancelled | entered-in-error | unknown]"
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "short" : "照顧計畫的意圖。[應填入以下字串之一：proposal | plan | order | option]"
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "short" : "照顧計畫的分類。"
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "short" : "照顧計畫的適用主體，即這個照顧計畫的適用對象是誰？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "CarePlan.subject.reference",
      "path" : "CarePlan.subject.reference",
      "short" : "照顧計畫的適用主體。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "short" : "照顧計畫對應的就診資訊，即這個照顧計畫是哪個就診資訊的一部分？",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter.reference",
      "path" : "CarePlan.encounter.reference",
      "short" : "照顧計畫對應的就診資訊。[應輸入 Encounter Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "short" : "照顧計畫的有效期間，即這個照顧計畫的有效期間是多久？",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period.start",
      "path" : "CarePlan.period.start",
      "short" : "照顧計畫的開始日期。[應填入日期或日期時間]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period.end",
      "path" : "CarePlan.period.end",
      "short" : "照顧計畫的結束日期。[應填入日期或日期時間]",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "short" : "照顧計畫的提出者，即這個照顧計畫是由誰提出或計畫的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-hosp-twcore",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author.reference",
      "path" : "CarePlan.author.reference",
      "short" : "照顧計畫的提出者。[應輸入 Practitioner / RelatedPerson / PractitionerRole / Organization / CareTeam Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "short" : "照顧計畫的參與者，即這個照顧計畫是由誰來參與的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-hosp-twcore",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.contributor.reference",
      "path" : "CarePlan.contributor.reference",
      "short" : "照顧計畫的參與者。[應輸入 Practitioner / RelatedPerson / PractitionerRole / Organization / CareTeam Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "short" : "照顧計畫對應的需求，即這個照顧計畫是針對哪些問題或需求而設計的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses.reference",
      "path" : "CarePlan.addresses.reference",
      "short" : "照顧計畫對應的需求。[應輸入 Condition Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "short" : "照顧計畫的輔助資訊，即這個照顧計畫應該考量到哪些資訊？",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "short" : "照顧計畫的目標，即這個照顧計畫預期達成哪些目標？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal.reference",
      "path" : "CarePlan.goal.reference",
      "short" : "照顧計畫的目標。[應輸入 Goal Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "short" : "照顧計畫的活動，即這個照顧計畫包含哪些活動？這裡可以使用 Reference 或是純文字來表述。",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "short" : "照顧計畫的活動參考 Resource。",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "short" : "照顧計畫的活動詳細資訊，即這個照顧計畫的活動內容是什麼？這裡可以直接描述活動內容，或是針對 Reference 內容進行更進一步的描述。",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "short" : "照顧計畫的附註。",
      "mustSupport" : true
    }]
  }
}

```
