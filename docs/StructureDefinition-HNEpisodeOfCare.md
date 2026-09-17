# 居家護理－收案歷程 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－收案歷程**

## Resource Profile: 居家護理－收案歷程 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNEpisodeOfCare |

 
以機構、個案與收案日期識別一次居護收案，結案時記錄結束日期及來源表單。 

**Usages:**

* Refer to this Profile: [居家護理－收案關聯](StructureDefinition-ExtHNEpisode.md)
* Examples for this Profile: [EpisodeOfCare/hn-episode-example](EpisodeOfCare-hn-episode-example.md) and [EpisodeOfCare/hn-episode-foot-example](EpisodeOfCare-hn-episode-foot-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNEpisodeOfCare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNEpisodeOfCare.csv), [Excel](StructureDefinition-HNEpisodeOfCare.xlsx), [Schematron](StructureDefinition-HNEpisodeOfCare.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNEpisodeOfCare",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare",
  "version" : "1.1.0",
  "name" : "HNEpisodeOfCare",
  "title" : "居家護理－收案歷程",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "以機構、個案與收案日期識別一次居護收案，結案時記錄結束日期及來源表單。",
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
      },
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.extension:sourceForm",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.identifier.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }]
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
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    }]
  }
}

```
