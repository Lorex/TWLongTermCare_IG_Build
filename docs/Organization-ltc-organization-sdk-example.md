# 長照 SDK－長照管理中心（Organization）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－長照管理中心（Organization）範例**

## Example Organization: 長照 SDK－長照管理中心（Organization）範例

Profile: [長期照顧－機構](StructureDefinition-Organization-twltc.md)

**identifier**: `http://www.moi.gov.tw`/0131060099

**type**: Healthcare Provider

**name**: OOO長期照顧管理中心



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ltc-organization-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
  },
  "identifier" : [{
    "system" : "http://www.moi.gov.tw",
    "value" : "0131060099"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "OOO長期照顧管理中心"
}

```
