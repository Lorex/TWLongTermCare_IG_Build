# 長照案件（CS100 專用版） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照案件（CS100 專用版）**

## Resource Profile: 長照案件（CS100 專用版） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100 | *Version*:1.0.0 |
| Draft as of 2026-03-01 | *Computable Name*:LTCEpisodeOfCareCS100 |

 
對應衛生福利部照顧服務管理資訊平臺『CS100 個案總查詢』之案件列資料。 作為 CS100 匯出資料列的病例/案件載體，提供個案管理之基礎欄位（案件編號、狀態、期間、主責機構、個管等）。 

**Usages:**

* Refer to this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)
* Examples for this Profile: [EpisodeOfCare/ltc-episodeofcare-cs100-example](EpisodeOfCare-ltc-episodeofcare-cs100-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-EpisodeOfCare-CS100)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-EpisodeOfCare-CS100.csv), [Excel](StructureDefinition-LTC-EpisodeOfCare-CS100.xlsx), [Schematron](StructureDefinition-LTC-EpisodeOfCare-CS100.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-EpisodeOfCare-CS100",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100",
  "version" : "1.0.0",
  "name" : "LTCEpisodeOfCareCS100",
  "title" : "長照案件（CS100 專用版）",
  "status" : "draft",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "對應衛生福利部照顧服務管理資訊平臺『CS100 個案總查詢』之案件列資料。\n作為 CS100 匯出資料列的病例/案件載體，提供個案管理之基礎欄位（案件編號、狀態、期間、主責機構、個管等）。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCEpisodeOfCareBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.extension",
      "path" : "EpisodeOfCare.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "EpisodeOfCare.extension:source",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "source",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Case-Source"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:caseId",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "caseId",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:caseId.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/cs100/case-id",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:caseId.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "EpisodeOfCare.careManager",
      "path" : "EpisodeOfCare.careManager",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }],
      "mustSupport" : true
    }]
  }
}

```
