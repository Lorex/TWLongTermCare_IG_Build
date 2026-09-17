# 居家護理機構範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理機構範例**

## Example Organization: 居家護理機構範例

Profile: [長期照顧－機構](StructureDefinition-Organization-twltc.md)

**identifier**: `https://example.org/home-nursing/agencies`/3501010011

**type**: Healthcare Provider

**name**: 示範居家護理所



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "hn-organization-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
  },
  "identifier" : [{
    "system" : "https://example.org/home-nursing/agencies",
    "value" : "3501010011"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov"
    }]
  }],
  "name" : "示範居家護理所"
}

```
