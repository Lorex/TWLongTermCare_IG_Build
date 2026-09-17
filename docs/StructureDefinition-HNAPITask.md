# 居家護理－介接作業 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－介接作業**

## Resource Profile: 居家護理－介接作業 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNAPITask |

 
記錄上傳及查詢工作。上傳成功僅表示已接收；須依後續處理結果另行更新任務狀態。 

**Usages:**

* Examples for this Profile: [Task/hn-getlog-task-example](Task-hn-getlog-task-example.md), [Task/hn-ticket-task-example](Task-hn-ticket-task-example.md) and [Task/hn-upload-task-example](Task-hn-upload-task-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNAPITask.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNAPITask.csv), [Excel](StructureDefinition-HNAPITask.xlsx), [Schematron](StructureDefinition-HNAPITask.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNAPITask",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask",
  "version" : "1.1.0",
  "name" : "HNAPITask",
  "title" : "居家護理－介接作業",
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
  "description" : "記錄上傳及查詢工作。上傳成功僅表示已接收；須依後續處理結果另行更新任務狀態。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTask",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task",
      "constraint" : [{
        "key" : "hn-query-start",
        "severity" : "error",
        "human" : "依日期查詢時應填入起始日。",
        "expression" : "code.coding.where(code='GetLog').exists() implies input.where(type.coding.where(code='start-date').exists()).exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
      },
      {
        "key" : "hn-query-ticket",
        "severity" : "error",
        "human" : "依追蹤碼查詢時應填入追蹤碼。",
        "expression" : "code.coding.where(code='GetLogByTicket').exists() implies input.where(type.coding.where(code='ticket').exists()).exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
      }]
    },
    {
      "id" : "Task.extension",
      "path" : "Task.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Task.extension:collectionUpdate",
      "path" : "Task.extension",
      "sliceName" : "collectionUpdate",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier.system",
      "path" : "Task.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/home-nursing/ticket"
    },
    {
      "id" : "Task.identifier.value",
      "path" : "Task.identifier.value",
      "min" : 1,
      "constraint" : [{
        "key" : "hn-ticket",
        "severity" : "error",
        "human" : "追蹤碼必須為八位數字。",
        "expression" : "matches('^[0-9]{8}$')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
      }]
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-api"
      }
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Task.input:startDate",
      "path" : "Task.input",
      "sliceName" : "startDate",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:startDate.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "start-date"
        }]
      }
    },
    {
      "id" : "Task.input:startDate.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Task.input:endDate",
      "path" : "Task.input",
      "sliceName" : "endDate",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:endDate.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "end-date"
        }]
      }
    },
    {
      "id" : "Task.input:endDate.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Task.input:ticket",
      "path" : "Task.input",
      "sliceName" : "ticket",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:ticket.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "ticket"
        }]
      }
    },
    {
      "id" : "Task.input:ticket.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "constraint" : [{
        "key" : "hn-ticket",
        "severity" : "error",
        "human" : "追蹤碼必須為八位數字。",
        "expression" : "matches('^[0-9]{8}$')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
      }]
    },
    {
      "id" : "Task.input:sourceForm",
      "path" : "Task.input",
      "sliceName" : "sourceForm",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:sourceForm.type",
      "path" : "Task.input.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "source-form"
        }]
      }
    },
    {
      "id" : "Task.input:sourceForm.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }]
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Task.output:code",
      "path" : "Task.output",
      "sliceName" : "code",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:code.type",
      "path" : "Task.output.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "response-code"
        }]
      }
    },
    {
      "id" : "Task.output:code.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Task.output:message",
      "path" : "Task.output",
      "sliceName" : "message",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:message.type",
      "path" : "Task.output.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "response-message"
        }]
      }
    },
    {
      "id" : "Task.output:message.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
