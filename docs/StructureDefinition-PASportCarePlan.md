# 運動處方－運動計畫 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動處方－運動計畫**

## Resource Profile: 運動處方－運動計畫 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportCarePlan | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:PASportCarePlan |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之運動計畫內容。 

**Usages:**

* Examples for this Profile: [CarePlan/pasport-careplan-walking-exercise-example](CarePlan-pasport-careplan-walking-exercise-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportCarePlan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportCarePlan.csv), [Excel](StructureDefinition-PASportCarePlan.xlsx), [Schematron](StructureDefinition-PASportCarePlan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportCarePlan",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportCarePlan",
  "version" : "1.0.0",
  "name" : "PASportCarePlan",
  "title" : "運動處方－運動計畫",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之運動計畫內容。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category.coding",
      "path" : "CarePlan.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category.coding.system",
      "path" : "CarePlan.category.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category.coding.code",
      "path" : "CarePlan.category.coding.code",
      "min" : 1,
      "patternCode" : "PhysicalActivity",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "short" : "依照運動處方設計運動方向",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "short" : "運動處方的適用主體，即這個運動處方是為誰設計的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject.reference",
      "path" : "CarePlan.subject.reference",
      "short" : "運動處方的適用主體。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author",
      "path" : "CarePlan.author",
      "short" : "運動處方的開立人，即這個運動處方是由誰開立的？",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Device-twcore",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.author.reference",
      "path" : "CarePlan.author.reference",
      "short" : "運動處方的開立人。[應輸入 Patient / Practitioner / PractitionerRole / Device / RelatedPerson / Organization / CareTeam Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "short" : "運動處方的目標，即這個運動處方的目標是什麼？",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportGoal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal.reference",
      "path" : "CarePlan.goal.reference",
      "short" : "運動處方的目標。[應輸入 Goal Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "short" : "運動處方中的活動，即這個運動處方中需要進行哪些活動？",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.progress",
      "path" : "CarePlan.activity.progress",
      "short" : "依照運動處方箋設計運動計畫",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.progress.time",
      "path" : "CarePlan.activity.progress.time",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.progress.text",
      "path" : "CarePlan.activity.progress.text",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.description",
      "path" : "CarePlan.activity.detail.description",
      "short" : "紀錄病患執行運動計畫後的狀況",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note.time",
      "path" : "CarePlan.note.time",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note.text",
      "path" : "CarePlan.note.text",
      "mustSupport" : true
    }]
  }
}

```
