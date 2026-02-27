# 是否為主要照顧者 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **是否為主要照顧者**

## Extension: 是否為主要照顧者 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:ExtRelatedPersonIsPrimaryTWLTC |

此 Extension 用以表述關係人是否為主要照顧者。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長期照顧－關係人](StructureDefinition-LTCRelatedPerson.md)
* Examples for this Extension: [Bundle/ltc-bundle-cms-example](Bundle-ltc-bundle-cms-example.md), [Bundle/ltc-bundle-referral-example](Bundle-ltc-bundle-referral-example.md), [RelatedPerson/ltc-related-person-primary-caregiver-example](RelatedPerson-ltc-related-person-primary-caregiver-example.md) and [RelatedPerson/ltc-related-person-primary-caregiver-referral-example](RelatedPerson-ltc-related-person-primary-caregiver-referral-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.csv), [Excel](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.xlsx), [Schematron](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtRelatedPersonIsPrimary-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC",
  "version" : "0.4.1",
  "name" : "ExtRelatedPersonIsPrimaryTWLTC",
  "title" : "是否為主要照顧者",
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
  "description" : "此 Extension 用以表述關係人是否為主要照顧者。",
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
    "expression" : "RelatedPerson"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "是否為主要照顧者",
      "definition" : "此 Extension 用以表述關係人是否為主要照顧者。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "是否為主要照顧者 [ true: 是 / false: 否，該關係人為次要照顧者 ]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    }]
  }
}

```
