# 長照 SDK－核定請求（CoverageEligibilityRequest）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－核定請求（CoverageEligibilityRequest）範例**

## Example CoverageEligibilityRequest: 長照 SDK－核定請求（CoverageEligibilityRequest）範例

**status**: Active

**purpose**: Coverage benefits

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**created**: 2025-08-04 17:00:00+0800

**insurer**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

### Insurances

| | |
| :--- | :--- |
| - | **Coverage** |
| * | [Coverage: status = active](Coverage-ltc-coverage-sdk-example.md) |



## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityRequest",
  "id" : "ltc-coverageeligibilityrequest-sdk-example",
  "status" : "active",
  "purpose" : ["benefits"],
  "patient" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "created" : "2025-08-04T17:00:00+08:00",
  "insurer" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "insurance" : [{
    "coverage" : {
      "reference" : "Coverage/ltc-coverage-sdk-example"
    }
  }]
}

```
