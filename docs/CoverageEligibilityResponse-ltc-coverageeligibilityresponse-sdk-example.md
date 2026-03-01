# 長照 SDK－核定額度回應（CoverageEligibilityResponse）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－核定額度回應（CoverageEligibilityResponse）範例**

## Example CoverageEligibilityResponse: 長照 SDK－核定額度回應（CoverageEligibilityResponse）範例

Profile: [長照－核定額度（CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.md)

**status**: Active

**purpose**: Coverage benefits

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**created**: 2025-08-04 17:02:19+0800

**request**: [CoverageEligibilityRequest: status = active; purpose = benefits; created = 2025-08-04 17:00:00+0800](CoverageEligibilityRequest-ltc-coverageeligibilityrequest-sdk-example.md)

**outcome**: Processing Complete

**insurer**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

> **insurance****coverage**: [Coverage: status = active](Coverage-ltc-coverage-sdk-example.md)
> **item****category**: 照顧及專業服務
> **benefit****type**: 總額度**allowed**: NT$15,460.00 (TWD)

> **benefit****type**: 補助額度**allowed**: NT$12,987.00 (TWD)

> **benefit****type**: 部分負擔**allowed**: NT$2,473.00 (TWD)




## Resource Content

```json
{
  "resourceType" : "CoverageEligibilityResponse",
  "id" : "ltc-coverageeligibilityresponse-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"]
  },
  "status" : "active",
  "purpose" : ["benefits"],
  "patient" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "created" : "2025-08-04T17:02:19+08:00",
  "request" : {
    "reference" : "CoverageEligibilityRequest/ltc-coverageeligibilityrequest-sdk-example"
  },
  "outcome" : "complete",
  "insurer" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "insurance" : [{
    "coverage" : {
      "reference" : "Coverage/ltc-coverage-sdk-example"
    },
    "item" : [{
      "category" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-group",
          "code" : "care-pro",
          "display" : "照顧及專業服務"
        }]
      },
      "benefit" : [{
        "type" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type",
            "code" : "total"
          }]
        },
        "allowedMoney" : {
          "value" : 15460,
          "currency" : "TWD"
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type",
            "code" : "subsidy"
          }]
        },
        "allowedMoney" : {
          "value" : 12987,
          "currency" : "TWD"
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type",
            "code" : "copay"
          }]
        },
        "allowedMoney" : {
          "value" : 2473,
          "currency" : "TWD"
        }
      }]
    }]
  }]
}

```
