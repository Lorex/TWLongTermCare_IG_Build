# 個案身分別 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身分別**

## Extension: 個案身分別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:ExtPatientIdentityTWLTC |

此 Extension 用以表述個案的身分別。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [照顧管理評估量表－個案基本資料](StructureDefinition-LTCPatientCMS.md)
* Examples for this Extension: [Bundle/ltc-bundle-cms-example](Bundle-ltc-bundle-cms-example.md), [Patient/ltc-patient-cms-chen-ming-hui-example](Patient-ltc-patient-cms-chen-ming-hui-example.md) and [Patient/ltc-patient-cms-example](Patient-ltc-patient-cms-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/ExtPatientIdentity-TWLTC)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtPatientIdentity-TWLTC.csv), [Excel](StructureDefinition-ExtPatientIdentity-TWLTC.xlsx), [Schematron](StructureDefinition-ExtPatientIdentity-TWLTC.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtPatientIdentity-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC",
  "version" : "0.4.1",
  "name" : "ExtPatientIdentityTWLTC",
  "title" : "個案身分別",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Extension 用以表述個案的身分別。",
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
      "short" : "個案身分別",
      "definition" : "此 Extension 用以表述個案的身分別。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "個案的身分別代碼",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC"
      }
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "個案的身分別代碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "short" : "個案的身分別代碼系統。[應填入身分別代碼系統的 URL]",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "short" : "個案的身分別代碼。",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
