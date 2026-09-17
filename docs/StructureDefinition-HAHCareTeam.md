# 在宅急症－照護團隊 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護團隊**

## Resource Profile: 在宅急症－照護團隊 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHCareTeam |

 
記錄主責及共照人員、機構、角色與參與期間。既有長照團隊不允許機構成員，因此由共同 TW Core 父層衍生。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md) and [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)
* Examples for this Profile: [CareTeam/hah-team](CareTeam-hah-team.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHCareTeam.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHCareTeam.csv), [Excel](StructureDefinition-HAHCareTeam.xlsx), [Schematron](StructureDefinition-HAHCareTeam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHCareTeam",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam",
  "version" : "1.1.0",
  "name" : "HAHCareTeam",
  "title" : "在宅急症－照護團隊",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "記錄主責及共照人員、機構、角色與參與期間。既有長照團隊不允許機構成員，因此由共同 TW Core 父層衍生。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam"
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "min" : 1
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "CareTeam.encounter",
      "path" : "CareTeam.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      }]
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "CareTeam.participant.period",
      "path" : "CareTeam.participant.period",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    }]
  }
}

```
