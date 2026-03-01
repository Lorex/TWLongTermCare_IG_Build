# 長照 SDK－保險覆蓋（Coverage）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－保險覆蓋（Coverage）範例**

## Example Coverage: 長照 SDK－保險覆蓋（Coverage）範例

**status**: Active

**beneficiary**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**payor**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "ltc-coverage-sdk-example",
  "status" : "active",
  "beneficiary" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "payor" : [{
    "reference" : "Organization/ltc-organization-sdk-example"
  }]
}

```
