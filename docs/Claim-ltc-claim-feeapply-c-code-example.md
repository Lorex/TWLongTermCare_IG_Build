# 長照支付審查－C 碼專業服務紀錄申報範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－C 碼專業服務紀錄申報範例**

## Example Claim: 長照支付審查－C 碼專業服務紀錄申報範例

Profile: [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/objid`/00000000000000000102, `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/C000000101, `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/202507

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**created**: 2025-08-05 10:30:00+0800

**insurer**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**provider**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**priority**: Normal

### CareTeams

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Provider** |
| * | 1 | [王美玲（C 單位專業服務人員）](Practitioner-ltc-practitioner-example.md) |

> **supportingInfo****sequence**: 1**category**: 專業服務復能目標達成情形**code**: 已滿1照顧組合之次數，但尚未達目標

> **supportingInfo****sequence**: 2**category**: 專業服務復能目標**value**: 三個月內提升長照需要者下肢肌力與床邊坐站轉位能力，達到在他人口頭提示下可自行完成床邊坐站轉位。

> **supportingInfo****sequence**: 3**category**: 專業服務指導對象**value**: 長照需要者本人及其主要家庭照顧者（配偶）。

> **supportingInfo****sequence**: 4**category**: 專業服務服務內容**value**: 執行下肢肌力訓練與床邊坐站轉位訓練共 40 分鐘，並實地指導家庭照顧者正確之轉位協助技巧、輔具（助行器）使用方式及居家環境安全注意事項。

> **supportingInfo****sequence**: 5**category**: 專業服務指導建議摘要**value**: 建議家庭照顧者每日協助長照需要者進行坐站訓練 2 次、每次 10 下，並於床邊加裝安全扶手；下次訪視時再評估轉位獨立程度並調整訓練強度。

> **supportingInfo****sequence**: 6**category**: 訪視/服務未遇**value**: false

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active](Coverage-ltc-coverage-sdk-example.md) |

### Items

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Category** | **ProductOrService** | **Serviced[x]** | **Quantity** |
| * | 1 | 補助 | ADLs復能照護--居家 | 2025-07-15 14:00:00+0800 --> 2025-07-15 15:00:00+0800 | 1 |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ltc-claim-feeapply-c-code-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/objid",
    "value" : "00000000000000000102"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "C000000101"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "202507"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional",
      "display" : "Professional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "created" : "2025-08-05T10:30:00+08:00",
  "insurer" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "provider" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal",
      "display" : "Normal"
    }]
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Practitioner/ltc-practitioner-example",
      "identifier" : {
        "system" : "http://www.moi.gov.tw",
        "value" : "B223456789"
      },
      "display" : "王美玲（C 單位專業服務人員）"
    }
  }],
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svccGoalType",
        "display" : "專業服務復能目標達成情形"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svcc-goal-type",
        "code" : "3",
        "display" : "已滿1照顧組合之次數，但尚未達目標"
      }]
    }
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svccGoal",
        "display" : "專業服務復能目標"
      }]
    },
    "valueString" : "三個月內提升長照需要者下肢肌力與床邊坐站轉位能力，達到在他人口頭提示下可自行完成床邊坐站轉位。"
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svccContentTarget",
        "display" : "專業服務指導對象"
      }]
    },
    "valueString" : "長照需要者本人及其主要家庭照顧者（配偶）。"
  },
  {
    "sequence" : 4,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svccContent",
        "display" : "專業服務服務內容"
      }]
    },
    "valueString" : "執行下肢肌力訓練與床邊坐站轉位訓練共 40 分鐘，並實地指導家庭照顧者正確之轉位協助技巧、輔具（助行器）使用方式及居家環境安全注意事項。"
  },
  {
    "sequence" : 5,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svccSuggest",
        "display" : "專業服務指導建議摘要"
      }]
    },
    "valueString" : "建議家庭照顧者每日協助長照需要者進行坐站訓練 2 次、每次 10 下，並於床邊加裝安全扶手；下次訪視時再評估轉位獨立程度並調整訓練強度。"
  },
  {
    "sequence" : 6,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "missedVisit",
        "display" : "訪視/服務未遇"
      }]
    },
    "valueBoolean" : false
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/ltc-coverage-sdk-example"
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
        "code" : "CA03",
        "display" : "ADLs復能照護--居家"
      }]
    },
    "servicedPeriod" : {
      "start" : "2025-07-15T14:00:00+08:00",
      "end" : "2025-07-15T15:00:00+08:00"
    },
    "quantity" : {
      "value" : 1
    }
  }]
}

```
