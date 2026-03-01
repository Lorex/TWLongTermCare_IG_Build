# 照顧管理評估量表－個案基本資料 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－個案基本資料**

## Resource Profile: 照顧管理評估量表－個案基本資料 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCPatientCMS |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [Patient/ltc-patient-cms-chen-ming-hui-example](Patient-ltc-patient-cms-chen-ming-hui-example.md) and [Patient/ltc-patient-cms-example](Patient-ltc-patient-cms-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCPatientCMS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCPatientCMS.csv), [Excel](StructureDefinition-LTCPatientCMS.xlsx), [Schematron](StructureDefinition-LTCPatientCMS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCPatientCMS",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS",
  "version" : "1.0.0",
  "name" : "LTCPatientCMS",
  "title" : "照顧管理評估量表－個案基本資料",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 2
    },
    {
      "id" : "Patient.extension:educationStatus",
      "path" : "Patient.extension",
      "sliceName" : "educationStatus",
      "short" : "A2. 個案教育程度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:identity",
      "path" : "Patient.extension",
      "sliceName" : "identity",
      "short" : "A3. 個案身分別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "short" : "A1. 個案婚姻狀況",
      "min" : 1
    }]
  }
}

```
