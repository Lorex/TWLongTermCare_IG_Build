# 在宅急症體溫計範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症體溫計範例**

## Example Device: 在宅急症體溫計範例

Profile: [在宅急症－量測設備](StructureDefinition-HAHDevice.md)

**identifier**: `https://example.org/devices`/THERMOMETER-001

**status**: Active

**type**: 體溫計

**patient**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**owner**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "hah-device",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"]
  },
  "identifier" : [{
    "system" : "https://example.org/devices",
    "value" : "THERMOMETER-001"
  }],
  "status" : "active",
  "type" : {
    "text" : "體溫計"
  },
  "patient" : {
    "reference" : "Patient/hah-patient"
  },
  "owner" : {
    "reference" : "Organization/hah-organization"
  }
}

```
