# 長照機構住民經濟狀況 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照機構住民經濟狀況**

## Extension: 長照機構住民經濟狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:ExtPatientEconomyStatusTWLTC |

此 Extension 用以表述長照機構住民的經濟狀況。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [轉介單－個案基本資料](StructureDefinition-LTCPatientReferral.md)
* Examples for this Extension: [Bundle/ltc-bundle-referral-example](Bundle-ltc-bundle-referral-example.md), [Patient/ltc-patient-referral-chen-ming-hui-example](Patient-ltc-patient-referral-chen-ming-hui-example.md) and [Patient/ltc-patient-referral-example](Patient-ltc-patient-referral-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/ExtPatientEconomyStatus-TWLTC)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtPatientEconomyStatus-TWLTC.csv), [Excel](StructureDefinition-ExtPatientEconomyStatus-TWLTC.xlsx), [Schematron](StructureDefinition-ExtPatientEconomyStatus-TWLTC.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtPatientEconomyStatus-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC",
  "version" : "1.0.0",
  "name" : "ExtPatientEconomyStatusTWLTC",
  "title" : "長照機構住民經濟狀況",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Extension 用以表述長照機構住民的經濟狀況。",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照機構住民經濟狀況",
      "definition" : "此 Extension 用以表述長照機構住民的經濟狀況。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "個案的經濟狀況代碼",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/EconomyStatusVS-TWLTC"
      }
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "個案的經濟狀況代碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "short" : "個案的經濟狀況代碼系統。[應填入經濟狀況代碼系統的 URL]",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "short" : "個案的經濟狀況代碼。[應填入 poor / barely-maintain / well-off / middle-class / wealthy]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
