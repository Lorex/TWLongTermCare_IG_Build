# 居家護理－介接訊息 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－介接訊息**

## Resource Profile: 居家護理－介接訊息 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNOperationOutcome | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNOperationOutcome |

 
表達接收或處理訊息。原規範未列出 GetLog 回覆結構及完整錯誤碼，因此不自訂假定的錯誤碼表。 

**Usages:**

* Examples for this Profile: [OperationOutcome/hn-outcome-example](OperationOutcome-hn-outcome-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNOperationOutcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNOperationOutcome.csv), [Excel](StructureDefinition-HNOperationOutcome.xlsx), [Schematron](StructureDefinition-HNOperationOutcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNOperationOutcome",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNOperationOutcome",
  "version" : "1.1.0",
  "name" : "HNOperationOutcome",
  "title" : "居家護理－介接訊息",
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
  "description" : "表達接收或處理訊息。原規範未列出 GetLog 回覆結構及完整錯誤碼，因此不自訂假定的錯誤碼表。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "OperationOutcome",
      "path" : "OperationOutcome"
    },
    {
      "id" : "OperationOutcome.issue.details.text",
      "path" : "OperationOutcome.issue.details.text",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
