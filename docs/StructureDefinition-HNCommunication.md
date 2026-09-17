# 居家護理－共照紀錄 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－共照紀錄**

## Resource Profile: 居家護理－共照紀錄 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCommunication | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNCommunication |

 
記錄共照人員提供的照護紀錄。沿用既有服務活動 Communication，新增收案與來源表單關聯。 

**Usages:**

* Examples for this Profile: [Communication/hn-communication-example](Communication-hn-communication-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCommunication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCommunication.csv), [Excel](StructureDefinition-HNCommunication.xlsx), [Schematron](StructureDefinition-HNCommunication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCommunication",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCommunication",
  "version" : "1.1.0",
  "name" : "HNCommunication",
  "title" : "居家護理－共照紀錄",
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
  "description" : "記錄共照人員提供的照護紀錄。沿用既有服務活動 Communication，新增收案與來源表單關聯。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Communication",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.extension",
      "path" : "Communication.extension",
      "min" : 2
    },
    {
      "id" : "Communication.extension:episode",
      "path" : "Communication.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.extension:sourceForm",
      "path" : "Communication.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.medium",
      "path" : "Communication.medium",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ParticipationMode|3.0.0"
      }
    },
    {
      "id" : "Communication.subject",
      "path" : "Communication.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.sent",
      "path" : "Communication.sent",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.sender",
      "path" : "Communication.sender",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload",
      "path" : "Communication.payload",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
