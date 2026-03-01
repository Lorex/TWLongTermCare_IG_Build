# 長期照顧個案位置監測範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧個案位置監測範例**

## Example Location: 長期照顧個案位置監測範例

Profile: [長期照顧－個案位置監測](StructureDefinition-Location-twltc.md)

**status**: Active

**name**: 新北市私立安康老人長期照顧中心（養護型）

**description**: 失智症個案陳明輝目前所在的日照中心

**mode**: Instance

**type**: Patient's Residence

**address**: 新北市中和區安康路二段123號(work)

### Positions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Longitude** | **Latitude** | **Altitude** |
| * | 121.5089 | 24.9936 | 25.5 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ltc-location-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"]
  },
  "status" : "active",
  "name" : "新北市私立安康老人長期照顧中心（養護型）",
  "description" : "失智症個案陳明輝目前所在的日照中心",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "PTRES",
      "display" : "Patient's Residence"
    }]
  }],
  "address" : {
    "use" : "work",
    "type" : "physical",
    "text" : "新北市中和區安康路二段123號"
  },
  "position" : {
    "longitude" : 121.5089,
    "latitude" : 24.9936,
    "altitude" : 25.5
  }
}

```
