# 長照－核定額度（CoverageEligibilityResponse） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－核定額度（CoverageEligibilityResponse）**

## Resource Profile: 長照－核定額度（CoverageEligibilityResponse） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse | *Version*:1.0.0 |
| Draft as of 2026-04-02 | *Computable Name*:LTCCoverageEligibilityResponse |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CoverageEligibilityResponse Resource，以呈現長照各服務別之核定額度摘要，包含總額、補助金額、自付額及比率等資料。 

**Usages:**

* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md)
* Refer to this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)
* Examples for this Profile: [CoverageEligibilityResponse/ltc-coverageeligibilityresponse-cs100-example](CoverageEligibilityResponse-ltc-coverageeligibilityresponse-cs100-example.md) and [CoverageEligibilityResponse/ltc-coverageeligibilityresponse-sdk-example](CoverageEligibilityResponse-ltc-coverageeligibilityresponse-sdk-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-CoverageEligibilityResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-CoverageEligibilityResponse.csv), [Excel](StructureDefinition-LTC-CoverageEligibilityResponse.xlsx), [Schematron](StructureDefinition-LTC-CoverageEligibilityResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-CoverageEligibilityResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse",
  "version" : "1.0.0",
  "name" : "LTCCoverageEligibilityResponse",
  "title" : "長照－核定額度（CoverageEligibilityResponse）",
  "status" : "draft",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CoverageEligibilityResponse Resource，以呈現長照各服務別之核定額度摘要，包含總額、補助金額、自付額及比率等資料。",
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
    "identity" : "cdanetv4",
    "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
    "name" : "Canadian Dental Association eclaims standard"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CoverageEligibilityResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CoverageEligibilityResponse.status",
      "path" : "CoverageEligibilityResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.purpose",
      "path" : "CoverageEligibilityResponse.purpose",
      "max" : "1",
      "patternCode" : "benefits",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.patient",
      "path" : "CoverageEligibilityResponse.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.created",
      "path" : "CoverageEligibilityResponse.created",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.requestor",
      "path" : "CoverageEligibilityResponse.requestor",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurer",
      "path" : "CoverageEligibilityResponse.insurer",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurance",
      "path" : "CoverageEligibilityResponse.insurance",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurance.item",
      "path" : "CoverageEligibilityResponse.insurance.item",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurance.item.category",
      "path" : "CoverageEligibilityResponse.insurance.item.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurance.item.benefit",
      "path" : "CoverageEligibilityResponse.insurance.item.benefit",
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "CoverageEligibilityResponse.insurance.item.benefit.allowed[x]",
      "path" : "CoverageEligibilityResponse.insurance.item.benefit.allowed[x]",
      "type" : [{
        "code" : "Money"
      }]
    }]
  }
}

```
