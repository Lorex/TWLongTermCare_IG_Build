# 長期照顧－任務管理 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－任務管理**

## Resource Profile: 長期照顧－任務管理 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCTask | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCTask |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現長期照顧情境中的轉介確認、照顧計畫狀態更新等任務管理需求。 

**Usages:**

* Examples for this Profile: [Task/ltc-task-referral-acceptance-example](Task-ltc-task-referral-acceptance-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCTask)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCTask.csv), [Excel](StructureDefinition-LTCTask.xlsx), [Schematron](StructureDefinition-LTCTask.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCTask",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTask",
  "version" : "1.0.0",
  "name" : "LTCTask",
  "title" : "長期照顧－任務管理",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現長期照顧情境中的轉介確認、照顧計畫狀態更新等任務管理需求。",
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
      "path" : "Task"
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "short" : "任務狀態。[應填入以下字串之一：requested | accepted | rejected | completed | in-progress | cancelled | on-hold | failed | ready | received | draft | entered-in-error]",
      "mustSupport" : true
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "short" : "任務意圖。[應填入以下字串之一：unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option]",
      "mustSupport" : true
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "short" : "任務類型代碼，如轉介確認、計畫狀態更新",
      "mustSupport" : true
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "short" : "任務關聯資源，即這項任務所關聯的主要資源為何？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan",
        "http://hl7.org/fhir/StructureDefinition/Resource"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "short" : "任務受益者，即這項任務是為了誰而執行的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "short" : "任務建立時間。[應填入日期時間]",
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "short" : "任務請求者，即這項任務是由誰提出的？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "short" : "任務負責者，即這項任務由誰負責執行？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.reasonCode",
      "path" : "Task.reasonCode",
      "short" : "任務原因代碼，即為什麼要執行這項任務？",
      "mustSupport" : true
    },
    {
      "id" : "Task.note",
      "path" : "Task.note",
      "short" : "任務備註。",
      "mustSupport" : true
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "short" : "任務輸入參數，即執行這項任務所需的輸入資料。",
      "mustSupport" : true
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "short" : "任務輸出結果，即執行這項任務後產出的資料。",
      "mustSupport" : true
    }]
  }
}

```
