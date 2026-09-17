# 在宅急症醫療人員範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症醫療人員範例**

## Example Practitioner: 在宅急症醫療人員範例

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: `https://example.org/practitioners`/HAH-STAFF-1

**name**: 李示範



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "hah-practitioner",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "system" : "https://example.org/practitioners",
    "value" : "HAH-STAFF-1"
  }],
  "name" : [{
    "use" : "usual",
    "text" : "李示範"
  }]
}

```
