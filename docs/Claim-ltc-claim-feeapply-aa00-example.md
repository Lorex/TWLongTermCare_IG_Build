# 長照支付審查－A 單位服務紀錄（AA00）申報範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－A 單位服務紀錄（AA00）申報範例**

## Example Claim: 長照支付審查－A 單位服務紀錄（AA00）申報範例

Profile: [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/objid`/00000000000000000101, `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/A000000101, `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/202507

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**created**: 2025-08-05 10:00:00+0800

**insurer**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**provider**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**priority**: Normal

### CareTeams

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Provider** |
| * | 1 | [李小華（A 個管單位個案管理師）](Practitioner-ltc-practitioner-sdk-example.md) |

> **supportingInfo****sequence**: 1**category**: 服務項目**code**: 電訪

> **supportingInfo****sequence**: 2**category**: 服務項目**code**: 家訪

> **supportingInfo****sequence**: 3**category**: 服務對象**code**: 服務使用者

> **supportingInfo****sequence**: 4**category**: 服務對象**code**: 家庭照顧者

> **supportingInfo****sequence**: 5**category**: 服務內容**value**: 以電話訪視確認長照需要者出院返家後之照顧情形，並於同日進行家庭訪視，說明照顧服務（BA01、BA02）與喘息服務之使用方式，並與家庭照顧者討論服務時段調整需求。

> **supportingInfo****sequence**: 6**category**: 服務重點**code**: 追蹤長照需要者與各項服務之連結情形

> **supportingInfo****sequence**: 7**category**: 服務重點**code**: 計畫與內容異動討論

> **supportingInfo****sequence**: 8**category**: 追蹤服務適應與介入情形**value**: 長照需要者自 114 年 6 月起接受居家照顧服務，適應情形良好；家庭照顧者反映上午時段人力銜接困難，已協調服務提供單位將服務時段調整為上午 9 時至 11 時，後續持續追蹤服務銜接情形。

> **supportingInfo****sequence**: 9**category**: 各項服務目標及整體計畫目標達成情形**value**: 服務目標「維持長照需要者基本日常生活自理能力」達成情形良好；「減輕家庭照顧者照顧負荷」目標持續進行中，整體照顧計畫目標達成約八成。

> **supportingInfo****sequence**: 10**category**: 整體計畫的適切性及需求異動**value**: 現行照顧計畫尚屬適切。因家庭照顧者將於 114 年 8 月返回職場，照顧人力需求異動，擬於次月複評時檢討是否增加日間照顧服務時數。

> **supportingInfo****sequence**: 11**category**: 訪視/服務未遇**value**: false

> **supportingInfo****sequence**: 12**category**: 臨終日照顧**value**: false

> **supportingInfo****sequence**: 13**category**: AA10申報狀態**code**: 未申報

> **supportingInfo****sequence**: 14**category**: 備註**value**: 本次同時完成 114 年 7 月份服務紀錄核對。

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active](Coverage-ltc-coverage-sdk-example.md) |

### Items

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Category** | **ProductOrService** | **Serviced[x]** | **Quantity** |
| * | 1 | 補助 | A 單位服務紀錄 | 2025-07-08 09:30:00+0800 --> 2025-07-08 10:30:00+0800 | 1 |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "ltc-claim-feeapply-aa00-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/objid",
    "value" : "00000000000000000101"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "A000000101"
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
  "created" : "2025-08-05T10:00:00+08:00",
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
      "reference" : "Practitioner/ltc-practitioner-sdk-example",
      "identifier" : {
        "system" : "http://www.moi.gov.tw",
        "value" : "A123456789"
      },
      "display" : "李小華（A 個管單位個案管理師）"
    }
  }],
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcItem",
        "display" : "服務項目"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-item",
        "code" : "1",
        "display" : "電訪"
      }]
    }
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcItem",
        "display" : "服務項目"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-item",
        "code" : "2",
        "display" : "家訪"
      }]
    }
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcPeople",
        "display" : "服務對象"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-people",
        "code" : "1",
        "display" : "服務使用者"
      }]
    }
  },
  {
    "sequence" : 4,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcPeople",
        "display" : "服務對象"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-people",
        "code" : "2",
        "display" : "家庭照顧者"
      }]
    }
  },
  {
    "sequence" : 5,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcContent",
        "display" : "服務內容"
      }]
    },
    "valueString" : "以電話訪視確認長照需要者出院返家後之照顧情形，並於同日進行家庭訪視，說明照顧服務（BA01、BA02）與喘息服務之使用方式，並與家庭照顧者討論服務時段調整需求。"
  },
  {
    "sequence" : 6,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcPoint",
        "display" : "服務重點"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-point",
        "code" : "1",
        "display" : "追蹤長照需要者與各項服務之連結情形"
      }]
    }
  },
  {
    "sequence" : 7,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcPoint",
        "display" : "服務重點"
      }]
    },
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-point",
        "code" : "2",
        "display" : "計畫與內容異動討論"
      }]
    }
  },
  {
    "sequence" : 8,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcTrace",
        "display" : "追蹤服務適應與介入情形"
      }]
    },
    "valueString" : "長照需要者自 114 年 6 月起接受居家照顧服務，適應情形良好；家庭照顧者反映上午時段人力銜接困難，已協調服務提供單位將服務時段調整為上午 9 時至 11 時，後續持續追蹤服務銜接情形。"
  },
  {
    "sequence" : 9,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcGoal",
        "display" : "各項服務目標及整體計畫目標達成情形"
      }]
    },
    "valueString" : "服務目標「維持長照需要者基本日常生活自理能力」達成情形良好；「減輕家庭照顧者照顧負荷」目標持續進行中，整體照顧計畫目標達成約八成。"
  },
  {
    "sequence" : 10,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "svcSuitable",
        "display" : "整體計畫的適切性及需求異動"
      }]
    },
    "valueString" : "現行照顧計畫尚屬適切。因家庭照顧者將於 114 年 8 月返回職場，照顧人力需求異動，擬於次月複評時檢討是否增加日間照顧服務時數。"
  },
  {
    "sequence" : 11,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "missedVisit",
        "display" : "訪視/服務未遇"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 12,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "lastSvc",
        "display" : "臨終日照顧"
      }]
    },
    "valueBoolean" : false
  },
  {
    "sequence" : 13,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "aa10Status",
        "display" : "AA10申報狀態"
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
    "sequence" : 14,
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
        "code" : "remark",
        "display" : "備註"
      }]
    },
    "valueString" : "本次同時完成 114 年 7 月份服務紀錄核對。"
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
        "code" : "AA00",
        "display" : "A 單位服務紀錄"
      }]
    },
    "servicedPeriod" : {
      "start" : "2025-07-08T09:30:00+08:00",
      "end" : "2025-07-08T10:30:00+08:00"
    },
    "quantity" : {
      "value" : 1
    }
  }]
}

```
