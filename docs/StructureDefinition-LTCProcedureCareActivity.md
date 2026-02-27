# 長期照顧－照護活動 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－照護活動**

## Resource Profile: 長期照顧－照護活動 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCProcedureCareActivity | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCProcedureCareActivity |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Procedure Resource，以呈現長照機構住民的照護活動紀錄。 

**Usages:**

* Examples for this Profile: [Procedure/ltc-procedure-bathing-example](Procedure-ltc-procedure-bathing-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCProcedureCareActivity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCProcedureCareActivity.csv), [Excel](StructureDefinition-LTCProcedureCareActivity.xlsx), [Schematron](StructureDefinition-LTCProcedureCareActivity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCProcedureCareActivity",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCProcedureCareActivity",
  "version" : "0.4.1",
  "name" : "LTCProcedureCareActivity",
  "title" : "長期照顧－照護活動",
  "status" : "active",
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Procedure Resource，以呈現長照機構住民的照護活動紀錄。",
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
  "type" : "Procedure",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "照護活動狀態。[應填入：preparation / in-progress / not-done / on-hold / stopped / completed / entered-in-error / unknown]",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/event-status"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "照護活動項目"
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Procedure.code.coding.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding.display",
      "path" : "Procedure.code.coding.display",
      "min" : 1
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "接受照護活動的住民",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "Procedure.subject.reference",
      "path" : "Procedure.subject.reference",
      "short" : "接受照護活動的住民。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "short" : "照護活動執行的日期時間",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "執行照護活動的人員"
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }]
    },
    {
      "id" : "Procedure.performer.actor.reference",
      "path" : "Procedure.performer.actor.reference",
      "short" : "執行照護活動的人員。[應輸入 Practitioner / PractitionerRole / RelatedPerson Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "short" : "執行照護活動的原因",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "照護活動涉及的身體部位"
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "short" : "照護活動的結果",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.note",
      "path" : "Procedure.note",
      "short" : "照護活動的附註",
      "mustSupport" : true
    }]
  }
}

```
