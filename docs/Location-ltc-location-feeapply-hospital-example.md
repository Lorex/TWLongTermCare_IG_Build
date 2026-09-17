# 長照支付審查－交通接送目的地（亞東醫院）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－交通接送目的地（亞東醫院）範例**

## Example Location: 長照支付審查－交通接送目的地（亞東醫院）範例

Profile: [長照支付審查－交通接送起訖地](StructureDefinition-LTCLocationFeeAuditPlace.md)

**status**: Active

**name**: 亞東醫院

**description**: 本次交通接送（DA01）之目的地，個案前往就醫之醫療機構。

**mode**: Instance

**type**: Hospital

**address**: 新北市板橋區南雅南路二段21號(work)

### Positions

| | | |
| :--- | :--- | :--- |
| - | **Longitude** | **Latitude** |
| * | 121.4527 | 25.0022 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ltc-location-feeapply-hospital-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
  },
  "status" : "active",
  "name" : "亞東醫院",
  "description" : "本次交通接送（DA01）之目的地，個案前往就醫之醫療機構。",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }]
  }],
  "address" : {
    "use" : "work",
    "type" : "physical",
    "text" : "新北市板橋區南雅南路二段21號"
  },
  "position" : {
    "longitude" : 121.4527,
    "latitude" : 25.0022
  }
}

```
