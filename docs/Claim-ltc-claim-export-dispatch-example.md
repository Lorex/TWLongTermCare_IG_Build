# 長照－照管可提供服務（Claim）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－照管可提供服務（Claim）範例**

## Example Claim: 長照－照管可提供服務（Claim）範例

Profile: [長照 SDK－照管全量匯出（Claim）](StructureDefinition-LTC-Claim-Export.md)

**identifier**: `https://ltc-ig.fhir.tw/identifier/export/case-no`/111307113, `https://ltc-ig.fhir.tw/identifier/export/eva-id`/7546385480

**status**: Active

**type**: Professional

**use**: Preauthorization

**patient**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**created**: 2025-07-01

**provider**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)

**priority**: Normal

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active](Coverage-ltc-coverage-cs100-example.md) |

> **item****sequence**: 1**productOrService**: 協助進食或管灌餵食

> **item****sequence**: 2**productOrService**: 協助沐浴及洗頭

> **item****sequence**: 3**productOrService**: 安全看視

> **item****sequence**: 4**productOrService**: 基本日常照顧

> **item****sequence**: 5**productOrService**: 陪同外出



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ltc-claim-export-dispatch-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export"]
  },
  "identifier" : [{
    "system" : "https://ltc-ig.fhir.tw/identifier/export/case-no",
    "value" : "111307113"
  },
  {
    "system" : "https://ltc-ig.fhir.tw/identifier/export/eva-id",
    "value" : "7546385480"
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
  "created" : "2025-07-01",
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
        "code" : "BA04"
      }]
    }
  },
  {
    "sequence" : 2,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "BA07"
      }]
    }
  },
  {
    "sequence" : 3,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "BA18"
      }]
    }
  },
  {
    "sequence" : 4,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "BA02"
      }]
    }
  },
  {
    "sequence" : 5,
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "BA13"
      }]
    }
  }]
}

```
