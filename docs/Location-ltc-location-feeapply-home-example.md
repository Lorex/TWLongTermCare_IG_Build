# 長照支付審查－交通接送出發地（個案住家）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－交通接送出發地（個案住家）範例**

## Example Location: 長照支付審查－交通接送出發地（個案住家）範例

Profile: [長照支付審查－交通接送起訖地](StructureDefinition-LTCLocationFeeAuditPlace.md)

**status**: Active

**name**: 個案住家

**description**: 個案王小明之住家，為本次交通接送（DA01）之出發地。

**mode**: Instance

**type**: Patient's Residence

**address**: 台北市中山區中山北路100號(home)

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 121.524 | 25.0625 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ltc-location-feeapply-home-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
  },
  "status" : "active",
  "name" : "個案住家",
  "description" : "個案王小明之住家，為本次交通接送（DA01）之出發地。",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "PTRES",
      "display" : "Patient's Residence"
    }]
  }],
  "address" : {
    "use" : "home",
    "type" : "physical",
    "text" : "台北市中山區中山北路100號"
  },
  "position" : {
    "longitude" : 121.524,
    "latitude" : 25.0625
  }
}

```
