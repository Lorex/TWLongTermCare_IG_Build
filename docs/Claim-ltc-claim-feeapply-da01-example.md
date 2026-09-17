# 長照支付審查－個案服務紀錄申報（DA01 交通接送）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－個案服務紀錄申報（DA01 交通接送）範例**

## Example Claim: 長照支付審查－個案服務紀錄申報（DA01 交通接送）範例

Profile: [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/objid`/00000000000000000006, `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/A0001, `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**created**: 2019-02-05 10:00:00+0800

**provider**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**priority**: Normal

### CareTeams

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Provider** |
| * | 1 | [Practitioner 李小華](Practitioner-ltc-practitioner-sdk-example.md) |

> **supportingInfo****sequence**: 1**category**: 出發地**value**: [Location 個案住家](Location-ltc-location-feeapply-home-example.md)

> **supportingInfo****sequence**: 2**category**: 目的地**value**: [Location 亞東醫院](Location-ltc-location-feeapply-hospital-example.md)

> **supportingInfo****sequence**: 3**category**: 車號**value**: 1111-AA

> **supportingInfo****sequence**: 4**category**: 駕駛員**value**: 黃OO

> **supportingInfo****sequence**: 5**category**: 里程數**value**: 12 公里 (Details: UCUM codekm = 'km')

> **supportingInfo****sequence**: 6**category**: 臨終日照顧**value**: false

> **supportingInfo****sequence**: 7**category**: 訪視/服務未遇**value**: false

> **supportingInfo****sequence**: 8**category**: 是否申報AA09**value**: false

> **supportingInfo****sequence**: 9**category**: AA10申報狀態**code**: 未申報

> **supportingInfo****sequence**: 10**category**: 備註**value**: 1

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | 長期照顧給付及支付基準 |

> **item****sequence**: 1**category**: 補助**productOrService**: 交通接送**serviced**: 2019-01-05 13:30:00+0800 --> 2019-01-05 14:00:00+0800**location**: [Location 亞東醫院](Location-ltc-location-feeapply-hospital-example.md)**quantity**: 1

### UnitPrices

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 430 | New Taiwan dollar |

### Nets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 430 | New Taiwan dollar |


### Totals

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 430 | New Taiwan dollar |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ltc-claim-feeapply-da01-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/objid",
    "value" : "00000000000000000006"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "A0001"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "created" : "2019-02-05T10:00:00+08:00",
  "provider" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Practitioner/ltc-practitioner-sdk-example"
    }
  }],
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "addrFrom"
      }]
    },
    "valueReference" : {
      "reference" : "Location/ltc-location-feeapply-home-example"
    }
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "addrTo"
      }]
    },
    "valueReference" : {
      "reference" : "Location/ltc-location-feeapply-hospital-example"
    }
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "carNo"
      }]
    },
    "valueString" : "1111-AA"
  },
  {
    "sequence" : 4,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "driver"
      }]
    },
    "valueString" : "黃OO"
  },
  {
    "sequence" : 5,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "milage"
      }]
    },
    "valueQuantity" : {
      "value" : 12,
      "unit" : "公里",
      "system" : "http://unitsofmeasure.org",
      "code" : "km"
    }
  },
  {
    "sequence" : 6,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "lastSvc"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 7,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "missedVisit"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 8,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "applyAA09"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 9,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "aa10Status"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status",
        "code" : "0",
        "display" : "未申報"
      }]
    }
  },
  {
    "sequence" : 10,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "remark"
      }]
    },
    "valueString" : "1"
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "display" : "長期照顧給付及支付基準"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-fee-type",
        "code" : "1",
        "display" : "補助"
      }]
    },
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "DA01",
        "display" : "交通接送"
      }]
    },
    "servicedPeriod" : {
      "start" : "2019-01-05T13:30:00+08:00",
      "end" : "2019-01-05T14:00:00+08:00"
    },
    "locationReference" : {
      "reference" : "Location/ltc-location-feeapply-hospital-example"
    },
    "quantity" : {
      "value" : 1
    },
    "unitPrice" : {
      "value" : 430,
      "currency" : "TWD"
    },
    "net" : {
      "value" : 430,
      "currency" : "TWD"
    }
  }],
  "total" : {
    "value" : 430,
    "currency" : "TWD"
  }
}

```
