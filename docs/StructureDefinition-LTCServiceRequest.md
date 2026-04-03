# 長期照顧－服務請求 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－服務請求**

## Resource Profile: 長期照顧－服務請求 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCServiceRequest | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCServiceRequest |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 ServiceRequest Resource，以呈現長期照顧情境中的轉介申請及服務請求需求。 

**Usages:**

* Examples for this Profile: [ServiceRequest/ltc-servicerequest-referral-example](ServiceRequest-ltc-servicerequest-referral-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCServiceRequest.csv), [Excel](StructureDefinition-LTCServiceRequest.xlsx), [Schematron](StructureDefinition-LTCServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCServiceRequest",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCServiceRequest",
  "version" : "1.0.0",
  "name" : "LTCServiceRequest",
  "title" : "長期照顧－服務請求",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ServiceRequest Resource，以呈現長期照顧情境中的轉介申請及服務請求需求。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "服務請求識別碼",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "服務類別，如轉介、照護服務請求等"
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "服務項目代碼"
    },
    {
      "id" : "ServiceRequest.code.coding:ltcServiceItem",
      "path" : "ServiceRequest.code.coding",
      "sliceName" : "ltcServiceItem",
      "short" : "臺灣長照服務項目代碼（AA..GA 系列）",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
      }
    },
    {
      "id" : "ServiceRequest.code.coding:ltcServiceItem.system",
      "path" : "ServiceRequest.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item"
    },
    {
      "id" : "ServiceRequest.code.coding:ltcServiceItem.code",
      "path" : "ServiceRequest.code.coding.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "mustSupport" : true
    }]
  }
}

```
