# MMSE 總分 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MMSE 總分**

## Extension: MMSE 總分 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/mmse-total-score | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:MMSE_TotalScore |
| **Copyright/Legal**: Copyright © 2024 Taiwan Long-Term Care Implementation Guide | |

簡易智能狀態測驗的總分

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [QuestionnaireResponse/ltc-questionnaire-response-mmse-complete-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-complete-example.md), [QuestionnaireResponse/ltc-questionnaire-response-mmse-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-example.md) and [QuestionnaireResponse/ltc-questionnaire-response-mmse-impaired-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-impaired-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/mmse-total-score)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mmse-total-score.csv), [Excel](StructureDefinition-mmse-total-score.xlsx), [Schematron](StructureDefinition-mmse-total-score.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mmse-total-score",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/mmse-total-score",
  "version" : "1.0.0",
  "name" : "MMSE_TotalScore",
  "title" : "MMSE 總分",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "簡易智能狀態測驗的總分",
  "copyright" : "Copyright © 2024 Taiwan Long-Term Care Implementation Guide",
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
    "expression" : "QuestionnaireResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MMSE 總分",
      "definition" : "簡易智能狀態測驗的總分"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/mmse-total-score"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "72106-8",
        "display" : "Total score [MMSE]"
      }],
      "short" : "MMSE 總分",
      "definition" : "簡易智能狀態測驗的總分，範圍為 0-30 分",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
