# 長照 CS100－核定請求（CoverageEligibilityRequest）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－核定請求（CoverageEligibilityRequest）範例**

## Example CoverageEligibilityRequest: 長照 CS100－核定請求（CoverageEligibilityRequest）範例

**status**: Active

**purpose**: Coverage benefits

**patient**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**created**: 2025-10-05 09:00:00+0800

**insurer**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)

### Insurances

| | |
| :--- | :--- |
| - | **Coverage** |
| * | [Coverage: status = active](Coverage-ltc-coverage-cs100-example.md) |



## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityRequest",
  "id" : "ltc-coverageeligibilityrequest-cs100-example",
  "status" : "active",
  "purpose" : ["benefits"],
  "patient" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "created" : "2025-10-05T09:00:00+08:00",
  "insurer" : {
    "reference" : "Organization/ltc-organization-cs100-example"
  },
  "insurance" : [{
    "coverage" : {
      "reference" : "Coverage/ltc-coverage-cs100-example"
    }
  }]
}

```
