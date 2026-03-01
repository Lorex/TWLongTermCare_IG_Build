# 長照 SDK－長照案件 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－長照案件**

## Resource Profile: 長照 SDK－長照案件 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload | *Version*:1.0.0 |
| Draft as of 2026-03-01 | *Computable Name*:LTCEpisodeOfCarePayload |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 EpisodeOfCare Resource，以呈現長照 SDK 回傳之案件資訊，包含案件流水號、個案狀態、開結案時間及主責機構等資料。 

**Usages:**

* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md)
* Examples for this Profile: [EpisodeOfCare/ltc-episodeofcare-sdk-example](EpisodeOfCare-ltc-episodeofcare-sdk-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-EpisodeOfCare-Payload)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-EpisodeOfCare-Payload.csv), [Excel](StructureDefinition-LTC-EpisodeOfCare-Payload.xlsx), [Schematron](StructureDefinition-LTC-EpisodeOfCare-Payload.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-EpisodeOfCare-Payload",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload",
  "version" : "1.0.0",
  "name" : "LTCEpisodeOfCarePayload",
  "title" : "長照 SDK－長照案件",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 EpisodeOfCare Resource，以呈現長照 SDK 回傳之案件資訊，包含案件流水號、個案狀態、開結案時間及主責機構等資料。",
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
      "id" : "EpisodeOfCare.identifier:caseSerial",
      "path" : "EpisodeOfCare.identifier",
      "sliceName" : "caseSerial",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:caseSerial.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier:caseSerial.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.status",
      "path" : "EpisodeOfCare.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-status"
      }
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    }]
  }
}

```
