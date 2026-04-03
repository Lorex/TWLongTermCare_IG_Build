# 長照 SDK－服務活動紀錄（SERVICE_A） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－服務活動紀錄（SERVICE_A）**

## Resource Profile: 長照 SDK－服務活動紀錄（SERVICE_A） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA | *Version*:1.0.0 |
| Draft as of 2026-04-03 | *Computable Name*:LTCCommunicationServiceA |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Communication Resource，以呈現長照服務活動紀錄，包含電訪、家訪等過程資料。 

**Usages:**

* Examples for this Profile: [Communication/ltc-communication-servicea-example](Communication-ltc-communication-servicea-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Communication-ServiceA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Communication-ServiceA.csv), [Excel](StructureDefinition-LTC-Communication-ServiceA.xlsx), [Schematron](StructureDefinition-LTC-Communication-ServiceA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Communication-ServiceA",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA",
  "version" : "1.0.0",
  "name" : "LTCCommunicationServiceA",
  "title" : "長照 SDK－服務活動紀錄（SERVICE_A）",
  "status" : "draft",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Communication Resource，以呈現長照服務活動紀錄，包含電訪、家訪等過程資料。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.extension",
      "path" : "Communication.extension",
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
      "id" : "Communication.extension:caseNo",
      "path" : "Communication.extension",
      "sliceName" : "caseNo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo"]
      }]
    },
    {
      "id" : "Communication.category",
      "path" : "Communication.category",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-activity"
      }
    },
    {
      "id" : "Communication.topic",
      "path" : "Communication.topic",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
      }
    }]
  }
}

```
