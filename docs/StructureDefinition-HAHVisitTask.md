# 在宅急症－照護工作 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護工作**

## Resource Profile: 在宅急症－照護工作 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHVisitTask |

 
記錄訪視、送藥等執行工作。因長照任務的 owner 不允許 CareTeam，此處由 FHIR Task 衍生以支援團隊指派。 

**Usages:**

* Refer to this Profile: [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [Task/hah-task](Task-hah-task.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHVisitTask.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHVisitTask.csv), [Excel](StructureDefinition-HAHVisitTask.xlsx), [Schematron](StructureDefinition-HAHVisitTask.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHVisitTask",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask",
  "version" : "1.1.0",
  "name" : "HAHVisitTask",
  "title" : "在宅急症－照護工作",
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
  "description" : "記錄訪視、送藥等執行工作。因長照任務的 owner 不允許 CareTeam，此處由 FHIR Task 衍生以支援團隊指派。",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task",
      "constraint" : [{
        "key" : "hah-task-completed",
        "severity" : "error",
        "human" : "已完成工作應記錄實際執行起訖時間。",
        "expression" : "status = 'completed' implies (executionPeriod.start.exists() and executionPeriod.end.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"
      },
      {
        "key" : "hah-task-requested-period",
        "severity" : "error",
        "human" : "填寫執行範圍或期限時，應以 focus 參照被執行的醫囑或計畫。",
        "expression" : "restriction.exists() implies focus.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"
      }]
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-service"
      }
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore"]
      }]
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.encounter",
      "path" : "Task.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.executionPeriod",
      "path" : "Task.executionPeriod",
      "short" : "實際執行期間。[不得以預定時間代替]",
      "mustSupport" : true
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore"]
      }]
    },
    {
      "id" : "Task.restriction.period",
      "path" : "Task.restriction.period",
      "short" : "預定執行期限",
      "mustSupport" : true
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "mustSupport" : true
    }]
  }
}

```
