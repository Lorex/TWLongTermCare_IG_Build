# 運動處方－服務請求 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動處方－服務請求**

## Resource Profile: 運動處方－服務請求 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportServiceRequest | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:PASportServiceRequest |

 
長照機構住民運動處方的服務請求資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data ServiceRequest Profile。 

**Usages:**

* Examples for this Profile: [ServiceRequest/pasport-servicerequest-exercise-therapy-example](ServiceRequest-pasport-servicerequest-exercise-therapy-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/PASportServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportServiceRequest.csv), [Excel](StructureDefinition-PASportServiceRequest.xlsx), [Schematron](StructureDefinition-PASportServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportServiceRequest",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportServiceRequest",
  "version" : "0.4.1",
  "name" : "PASportServiceRequest",
  "title" : "運動處方－服務請求",
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
  "description" : "長照機構住民運動處方的服務請求資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data ServiceRequest Profile。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier.system",
      "path" : "ServiceRequest.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier.value",
      "path" : "ServiceRequest.identifier.value",
      "short" : "運動處方唯一識別碼",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category.coding",
      "path" : "ServiceRequest.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "ServiceRequest.category.coding.system",
      "path" : "ServiceRequest.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
    },
    {
      "id" : "ServiceRequest.category.coding.code",
      "path" : "ServiceRequest.category.coding.code",
      "min" : 1,
      "fixedCode" : "PhysicalActivity"
    },
    {
      "id" : "ServiceRequest.code.coding:ICD10PCSF",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "ICD10PCSF",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/ICD-10-PCS-2023-TW-F-VS"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:ICD10PCSF.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS"
    },
    {
      "id" : "ServiceRequest.code.coding:ICD10PCSF.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code.coding:PA",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "PA",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/ServiceRequestPAVS-Sport"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:PA.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "ServiceRequest.code.coding:PA.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        }]
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
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore"],
        "_targetProfile" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
            "valueBoolean" : true
          }]
        },
        null]
      }]
    }]
  }
}

```
