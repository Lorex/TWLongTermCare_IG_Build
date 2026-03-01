# 長照 SDK－回傳包（4合1） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－回傳包（4合1）**

## Resource Profile: 長照 SDK－回傳包（4合1） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Bundle-Payload | *Version*:1.0.0 |
| Draft as of 2026-03-02 | *Computable Name*:LTCBundlePayload |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現長照 SDK 回傳之資料包，包含案件、評估、核定額度及照顧計畫等資源之集合。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-payload-example](Bundle-ltc-bundle-payload-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Bundle-Payload)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Bundle-Payload.csv), [Excel](StructureDefinition-LTC-Bundle-Payload.xlsx), [Schematron](StructureDefinition-LTC-Bundle-Payload.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Bundle-Payload",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Bundle-Payload",
  "version" : "1.0.0",
  "name" : "LTCBundlePayload",
  "title" : "長照 SDK－回傳包（4合1）",
  "status" : "draft",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現長照 SDK 回傳之資料包，包含案件、評估、核定額度及照顧計畫等資源之集合。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "collection"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      },
      {
        "code" : "EpisodeOfCare",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload"]
      },
      {
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload"]
      },
      {
        "code" : "CoverageEligibilityResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"]
      },
      {
        "code" : "CarePlan",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"]
      },
      {
        "code" : "Organization",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      },
      {
        "code" : "Practitioner",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      },
      {
        "code" : "CareTeam",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
      }]
    }]
  }
}

```
