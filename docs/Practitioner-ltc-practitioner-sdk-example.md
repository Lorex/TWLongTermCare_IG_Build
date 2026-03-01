# 長照 SDK－照顧管理專員（Practitioner）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照顧管理專員（Practitioner）範例**

## Example Practitioner: 長照 SDK－照顧管理專員（Practitioner）範例

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: `http://example.org/fhir/NamingSystem/practitioner-id`/P001

**name**: 李小華



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ltc-practitioner-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "system" : "http://example.org/fhir/NamingSystem/practitioner-id",
    "value" : "P001"
  }],
  "name" : [{
    "text" : "李小華"
  }]
}

```
