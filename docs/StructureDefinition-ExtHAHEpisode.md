# 在宅急症－療程關聯 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－療程關聯**

## Extension: 在宅急症－療程關聯 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:ExtHAHEpisode |

參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－照護同意](StructureDefinition-HAHConsent.md) and [在宅急症－照護目標](StructureDefinition-HAHGoal.md)
* Examples for this Extension: [Bundle/hah-document](Bundle-hah-document.md), [CarePlan/hah-plan](CarePlan-hah-plan.md), [Consent/hah-consent](Consent-hah-consent.md), [Goal/hah-goal](Goal-hah-goal.md) and [QuestionnaireResponse/hah-assessment](QuestionnaireResponse-hah-assessment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHAHEpisode.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHAHEpisode.csv), [Excel](StructureDefinition-ExtHAHEpisode.xlsx), [Schematron](StructureDefinition-ExtHAHEpisode.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHAHEpisode",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
  "version" : "1.1.0",
  "name" : "ExtHAHEpisode",
  "title" : "在宅急症－療程關聯",
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
  "description" : "參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CarePlan"
  },
  {
    "type" : "element",
    "expression" : "Goal"
  },
  {
    "type" : "element",
    "expression" : "QuestionnaireResponse"
  },
  {
    "type" : "element",
    "expression" : "Consent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "在宅急症－療程關聯",
      "definition" : "參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
      }]
    }]
  }
}

```
