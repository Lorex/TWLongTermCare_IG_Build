# 在宅急症－結案與轉銜摘要 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－結案與轉銜摘要**

## Resource Profile: 在宅急症－結案與轉銜摘要 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHCompositionSummary |

 
彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，資料不足時說明未知或未評估，不得推定為無。 

**Usages:**

* Use this Profile: [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.md)
* Examples for this Profile: [Composition/hah-summary](Composition-hah-summary.md) and [Composition/hah-transfer-summary](Composition-hah-transfer-summary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHCompositionSummary.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHCompositionSummary.csv), [Excel](StructureDefinition-HAHCompositionSummary.xlsx), [Schematron](StructureDefinition-HAHCompositionSummary.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHCompositionSummary",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary",
  "version" : "1.1.0",
  "name" : "HAHCompositionSummary",
  "title" : "在宅急症－結案與轉銜摘要",
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
  "description" : "彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，資料不足時說明未知或未評估，不得推定為無。",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition.type",
      "path" : "Composition.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-summary-type"
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "min" : 7
    },
    {
      "id" : "Composition.section.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-section"
      }
    },
    {
      "id" : "Composition.section.text",
      "path" : "Composition.section.text",
      "min" : 1
    },
    {
      "id" : "Composition.section:course",
      "path" : "Composition.section",
      "sliceName" : "course",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:course.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "course"
        }]
      }
    },
    {
      "id" : "Composition.section:course.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse"]
      }]
    },
    {
      "id" : "Composition.section:problems",
      "path" : "Composition.section",
      "sliceName" : "problems",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:problems.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "problems"
        }]
      }
    },
    {
      "id" : "Composition.section:problems.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "Composition.section:allergies",
      "path" : "Composition.section",
      "sliceName" : "allergies",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:allergies.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "allergies"
        }]
      }
    },
    {
      "id" : "Composition.section:allergies.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAllergyIntolerance"]
      }]
    },
    {
      "id" : "Composition.section:medications",
      "path" : "Composition.section",
      "sliceName" : "medications",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:medications.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "medications"
        }]
      }
    },
    {
      "id" : "Composition.section:medications.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration",
        "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationStatement-twcore"]
      }]
    },
    {
      "id" : "Composition.section:results",
      "path" : "Composition.section",
      "sliceName" : "results",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:results.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "results"
        }]
      }
    },
    {
      "id" : "Composition.section:results.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHDiagnosticReport"]
      }]
    },
    {
      "id" : "Composition.section:care",
      "path" : "Composition.section",
      "sliceName" : "care",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:care.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "care"
        }]
      }
    },
    {
      "id" : "Composition.section:care.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHConsent",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"]
      }]
    },
    {
      "id" : "Composition.section:followUp",
      "path" : "Composition.section",
      "sliceName" : "followUp",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:followUp.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "follow-up"
        }]
      }
    },
    {
      "id" : "Composition.section:followUp.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHCommunication",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"]
      }]
    }]
  }
}

```
