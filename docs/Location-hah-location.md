# 在宅急症照護地點範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症照護地點範例**

## Example Location: 在宅急症照護地點範例

Profile: [長期照顧－個案位置監測](StructureDefinition-Location-twltc.md)

**status**: Active

**name**: 王測試居住地

**type**: Patient's Residence

**address**: 臺北市中正區測試路1號



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "hah-location",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"]
  },
  "status" : "active",
  "name" : "王測試居住地",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "PTRES",
      "display" : "Patient's Residence"
    }]
  }],
  "address" : {
    "text" : "臺北市中正區測試路1號"
  }
}

```
