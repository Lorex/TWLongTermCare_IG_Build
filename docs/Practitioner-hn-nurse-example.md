# 居家護理護理人員範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理護理人員範例**

## Example Practitioner: 居家護理護理人員範例

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: `http://www.moi.gov.tw`/B123456789

**name**: 王美玲



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "hn-nurse-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "system" : "http://www.moi.gov.tw",
    "value" : "B123456789"
  }],
  "name" : [{
    "use" : "usual",
    "text" : "王美玲"
  }]
}

```
