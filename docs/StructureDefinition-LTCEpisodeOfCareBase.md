# 長期照顧－案件管理基礎 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－案件管理基礎**

## Resource Profile: 長期照顧－案件管理基礎 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCEpisodeOfCareBase | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCEpisodeOfCareBase |

 
此 Profile 為所有長期照顧 EpisodeOfCare Profile 的共用基礎，定義案件管理之基本結構與共用欄位。 

**Usages:**

* Derived from this Profile: [長照案件（CS100 專用版）](StructureDefinition-LTC-EpisodeOfCare-CS100.md) and [長照 SDK－長照案件](StructureDefinition-LTC-EpisodeOfCare-Payload.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCEpisodeOfCareBase)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCEpisodeOfCareBase.csv), [Excel](StructureDefinition-LTCEpisodeOfCareBase.xlsx), [Schematron](StructureDefinition-LTCEpisodeOfCareBase.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCEpisodeOfCareBase",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCEpisodeOfCareBase",
  "version" : "1.0.0",
  "name" : "LTCEpisodeOfCareBase",
  "title" : "長期照顧－案件管理基礎",
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
  "description" : "此 Profile 為所有長期照顧 EpisodeOfCare Profile 的共用基礎，定義案件管理之基本結構與共用欄位。",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare.status",
      "path" : "EpisodeOfCare.status",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period.start",
      "path" : "EpisodeOfCare.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period.end",
      "path" : "EpisodeOfCare.period.end",
      "mustSupport" : true
    }]
  }
}

```
