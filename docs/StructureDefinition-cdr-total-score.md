# CDR 總分 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDR 總分**

## Extension: CDR 總分 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:CDR_TotalScore |
| **Copyright/Legal**: Copyright © 2024 Taiwan Long-Term Care Implementation Guide | |

臨床失智評估量表的總分

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [QuestionnaireResponse/ltc-questionnaire-response-cdr-complete-example](QuestionnaireResponse-ltc-questionnaire-response-cdr-complete-example.md), [QuestionnaireResponse/ltc-questionnaire-response-cdr-example](QuestionnaireResponse-ltc-questionnaire-response-cdr-example.md) and [QuestionnaireResponse/ltc-questionnaire-response-cdr-moderate-example](QuestionnaireResponse-ltc-questionnaire-response-cdr-moderate-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/cdr-total-score)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cdr-total-score.csv), [Excel](StructureDefinition-cdr-total-score.xlsx), [Schematron](StructureDefinition-cdr-total-score.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cdr-total-score",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score",
  "version" : "0.4.1",
  "name" : "CDR_TotalScore",
  "title" : "CDR 總分",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "臨床失智評估量表的總分",
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
      "short" : "CDR 總分",
      "definition" : "臨床失智評估量表的總分"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "CDR 總分",
      "definition" : "臨床失智評估量表的總分，範圍為 0-5 分",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
