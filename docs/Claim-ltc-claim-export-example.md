# 長照－照管計畫與金額（Claim）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－照管計畫與金額（Claim）範例**

## Example Claim: 長照－照管計畫與金額（Claim）範例

Profile: [長照 SDK－照管全量匯出（Claim）](StructureDefinition-LTC-Claim-Export.md)

**identifier**: `https://ltc-ig.fhir.tw/identifier/export/case-no`/111301921, `https://ltc-ig.fhir.tw/identifier/export/eva-id`/7574654624, `https://ltc-ig.fhir.tw/identifier/export/yyyymm-roc`/11407

**status**: Active

**type**: Professional

**use**: Preauthorization

**patient**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**created**: 2025-07-04

**provider**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)

**priority**: Normal

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active](Coverage-ltc-coverage-cs100-example.md) |

> **item****sequence**: 1**productOrService**: 日間照顧（全日）--第2型**programCode**: PLAN-0001**quantity**: 23

### UnitPrices

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 840 | New Taiwan dollar |

### Nets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 19320 | New Taiwan dollar |


> **item****sequence**: 2**productOrService**: 交通接送**programCode**: PLAN-0002**quantity**: 1680

### UnitPrices

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1 | New Taiwan dollar |

### Nets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1680 | New Taiwan dollar |




## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ltc-claim-export-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export"]
  },
  "identifier" : [{
    "system" : "https://ltc-ig.fhir.tw/identifier/export/case-no",
    "value" : "111301921"
  },
  {
    "system" : "https://ltc-ig.fhir.tw/identifier/export/eva-id",
    "value" : "7574654624"
  },
  {
    "system" : "https://ltc-ig.fhir.tw/identifier/export/yyyymm-roc",
    "value" : "11407"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional"
    }]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "created" : "2025-07-04",
  "provider" : {
    "reference" : "Organization/ltc-organization-cs100-example"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/ltc-coverage-cs100-example"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "BB03"
      }]
    },
    "programCode" : [{
      "coding" : [{
        "system" : "https://ltc-ig.fhir.tw/identifier/export/plan-id",
        "code" : "PLAN-0001"
      }]
    }],
    "quantity" : {
      "value" : 23
    },
    "unitPrice" : {
      "value" : 840,
      "currency" : "TWD"
    },
    "net" : {
      "value" : 19320,
      "currency" : "TWD"
    }
  },
  {
    "sequence" : 2,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "DA01"
      }]
    },
    "programCode" : [{
      "coding" : [{
        "system" : "https://ltc-ig.fhir.tw/identifier/export/plan-id",
        "code" : "PLAN-0002"
      }]
    }],
    "quantity" : {
      "value" : 1680
    },
    "unitPrice" : {
      "value" : 1,
      "currency" : "TWD"
    },
    "net" : {
      "value" : 1680,
      "currency" : "TWD"
    }
  }]
}

```
