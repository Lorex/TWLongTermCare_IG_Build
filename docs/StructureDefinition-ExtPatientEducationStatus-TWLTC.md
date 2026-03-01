# 長照機構住民教育程度 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照機構住民教育程度**

## Extension: 長照機構住民教育程度 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:ExtPatientEducationStatusTWLTC |

此 Extension 用以表述長照機構住民的教育程度。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [照顧管理評估量表－個案基本資料](StructureDefinition-LTCPatientCMS.md)
* Examples for this Extension: [Bundle/ltc-bundle-cms-example](Bundle-ltc-bundle-cms-example.md), [Patient/ltc-patient-cms-chen-ming-hui-example](Patient-ltc-patient-cms-chen-ming-hui-example.md) and [Patient/ltc-patient-cms-example](Patient-ltc-patient-cms-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/ExtPatientEducationStatus-TWLTC)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtPatientEducationStatus-TWLTC.csv), [Excel](StructureDefinition-ExtPatientEducationStatus-TWLTC.xlsx), [Schematron](StructureDefinition-ExtPatientEducationStatus-TWLTC.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtPatientEducationStatus-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC",
  "version" : "1.0.0",
  "name" : "ExtPatientEducationStatusTWLTC",
  "title" : "長照機構住民教育程度",
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
  "description" : "此 Extension 用以表述長照機構住民的教育程度。",
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
      "short" : "長照機構住民教育程度",
      "definition" : "此 Extension 用以表述長照機構住民的教育程度。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "個案的教育程度代碼",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC"
      }
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "個案的教育程度代碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "short" : "個案的教育程度代碼系統。[應填入教育程度代碼系統的 URL]",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "short" : "個案的教育程度代碼。[應填入 illiterate / literate / elementary / junior / senior / special-elementary / special-junior / special-senior / vocational / college / postgraduate / other]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
