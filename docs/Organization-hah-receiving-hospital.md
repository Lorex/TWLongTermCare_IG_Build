# 轉院接收機構範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉院接收機構範例**

## Example Organization: 轉院接收機構範例

Profile: [長期照顧－機構](StructureDefinition-Organization-twltc.md)

**identifier**: `https://example.org/organizations`/HAH-HOSPITAL-2

**type**: Healthcare Provider

**name**: 轉院接收示範醫院



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hah-receiving-hospital",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
  },
  "identifier" : [{
    "system" : "https://example.org/organizations",
    "value" : "HAH-HOSPITAL-2"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov"
    }]
  }],
  "name" : "轉院接收示範醫院"
}

```
