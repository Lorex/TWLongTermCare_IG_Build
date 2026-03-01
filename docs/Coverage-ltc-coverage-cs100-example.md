# 長照 CS100－保險覆蓋（Coverage）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－保險覆蓋（Coverage）範例**

## Example Coverage: 長照 CS100－保險覆蓋（Coverage）範例

**status**: Active

**beneficiary**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**payor**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "ltc-coverage-cs100-example",
  "status" : "active",
  "beneficiary" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "payor" : [{
    "reference" : "Organization/ltc-organization-cs100-example"
  }]
}

```
