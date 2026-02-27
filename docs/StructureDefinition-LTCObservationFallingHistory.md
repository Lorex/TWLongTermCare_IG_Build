# 安全防護－跌倒紀錄 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **安全防護－跌倒紀錄**

## Resource Profile: 安全防護－跌倒紀錄 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationFallingHistory | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCObservationFallingHistory |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的跌倒紀錄。 

**Usages:**

* Examples for this Profile: [Observation/ltc-observation-falling-history-example](Observation-ltc-observation-falling-history-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCObservationFallingHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCObservationFallingHistory.csv), [Excel](StructureDefinition-LTCObservationFallingHistory.xlsx), [Schematron](StructureDefinition-LTCObservationFallingHistory.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCObservationFallingHistory",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationFallingHistory",
  "version" : "0.4.1",
  "name" : "LTCObservationFallingHistory",
  "title" : "安全防護－跌倒紀錄",
  "status" : "active",
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的跌倒紀錄。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "跌倒紀錄的類別",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw"
      }
    },
    {
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
        "code" : "survey"
      }
    },
    {
      "id" : "Observation.category:twcore",
      "path" : "Observation.category",
      "sliceName" : "twcore",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw"
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "跌倒紀錄的類型"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "101440-6",
        "display" : "History of Falls"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "跌倒紀錄的對象"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
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
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "此跌倒紀錄發生的時間",
      "min" : 1,
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "跌倒紀錄結果（如果有偵測到跌倒，則填入 Observed）",
      "min" : 1,
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/FallHistoryResultVS-TWLTC"
      }
    }]
  }
}

```
