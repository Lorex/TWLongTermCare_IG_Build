# 長照支付審查－分案審核明細（ClaimResponse）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核明細（ClaimResponse）範例**

## Example ClaimResponse: 長照支付審查－分案審核明細（ClaimResponse）範例

Profile: [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)

> **長照支付審查－分案審核統計與承辦資訊**
* records: 3
* cases: 2
* approveCaseNum: 2
* approveRecordCount: 1
* tempPaymentStatus: 1: 等待暫付總表
* transNo: 00106
* auditMan: CG碼承辦人

> **長照支付審查－清冊文件下載路徑**
* docType: 暫付總表
* url: [http://url/download/doc/dc6a](http://url/download/doc/dc6a)

> **長照支付審查－清冊文件下載路徑**
* docType: 總表
* url: [http://url/download/doc/dc6adc6a](http://url/download/doc/dc6adc6a)

> **長照支付審查－清冊文件下載路徑**
* docType: 清冊
* url: [http://url/download/doc/dc6afa306c](http://url/download/doc/dc6afa306c)

> **長照支付審查－清冊文件下載路徑**
* docType: 清冊EXCEL
* url: [http://url/download/doc/dc6a6c](http://url/download/doc/dc6a6c)

> **長照支付審查－清冊文件下載路徑**
* docType: A碼清冊
* url: [http://url/download/doc/dc6afa306cc554311c](http://url/download/doc/dc6afa306cc554311c)

> **長照支付審查－清冊文件下載路徑**
* docType: A碼清冊EXCEL
* url: [http://url/download/doc9967-7bddc554311c](http://url/download/doc9967-7bddc554311c)

> **長照支付審查－清冊文件下載路徑**
* docType: 申請記錄不通過清冊
* url: [http://url/download/doc/dc6afa306cc-5ce29d30f843](http://url/download/doc/dc6afa306cc-5ce29d30f843)

> **長照支付審查－清冊文件下載路徑**
* docType: 申請記錄不通過EXCEL清冊
* url: [http://url/download/doc/dc6afa306c-5ce29d30f843](http://url/download/doc/dc6afa306c-5ce29d30f843)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/case-no`/201907C010163, `http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver`/006, `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201907

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**created**: 2019-07-23 15:43:51+0800

**insurer**: [Organization 新北市政府衛生局](Organization-ltc-organization-feeaudit-authority-example.md)

**outcome**: Partial Processing

**disposition**: 請長照機構於5日內將總表送至本局

> **item**
> **長照支付審查－服務記錄識別資訊**
* objid: 882601915
* sourceSystem: TranCareCenter
* transNo: A123456789

**itemSequence**: 1
> **adjudication****category**: 單價

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 400 | New Taiwan dollar |


> **adjudication****category**: 自付額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 85 | New Taiwan dollar |



> **addItem**
> **長照支付審查－服務記錄識別資訊**
* objid: 882601915
* sourceSystem: TranCareCenter

**itemSequence**: 1**productOrService**: 照顧困難之服務加計
> **adjudication****category**: 單價

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 200 | New Taiwan dollar |



> **total****category**: 申請核銷金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 4500 | New Taiwan dollar |


> **total****category**: 核定金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 1596 | New Taiwan dollar |


> **total****category**: 政策鼓勵金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 400 | New Taiwan dollar |


> **total****category**: 分案暫付金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 17500 | New Taiwan dollar |


> **total****category**: 核增金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 4000 | New Taiwan dollar |


> **total****category**: 核減金額

### Amounts

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 500 | New Taiwan dollar |


> **processNote****number**: 1**type**: Display**text**: 核增原因（inc_in_reason）：因個案身分異動

> **processNote****number**: 2**type**: Display**text**: 核減原因（dec_in_reason）：因個案CMS等級異動



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "ltc-claimresponse-feeaudit-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "records",
      "valueInteger" : 3
    },
    {
      "url" : "cases",
      "valueInteger" : 2
    },
    {
      "url" : "approveCaseNum",
      "valueInteger" : 2
    },
    {
      "url" : "approveRecordCount",
      "valueInteger" : 1
    },
    {
      "url" : "tempPaymentStatus",
      "valueString" : "1: 等待暫付總表"
    },
    {
      "url" : "transNo",
      "valueString" : "00106"
    },
    {
      "url" : "auditMan",
      "valueString" : "CG碼承辦人"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "tempPaymentDoc",
          "display" : "暫付總表"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6a"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseSummaryNotice",
          "display" : "總表"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6adc6a"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseSvcList",
          "display" : "清冊"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6afa306c"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseSvcListExcel",
          "display" : "清冊EXCEL"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6a6c"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseASvcList",
          "display" : "A碼清冊"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6afa306cc554311c"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseASvcListExcel",
          "display" : "A碼清冊EXCEL"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc9967-7bddc554311c"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseErrList",
          "display" : "申請記錄不通過清冊"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6afa306cc-5ce29d30f843"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  },
  {
    "extension" : [{
      "url" : "docType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
          "code" : "caseErrListExcel",
          "display" : "申請記錄不通過EXCEL清冊"
        }]
      }
    },
    {
      "url" : "url",
      "valueUrl" : "http://url/download/doc/dc6afa306c-5ce29d30f843"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
  }],
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/case-no",
    "value" : "201907C010163"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver",
    "value" : "006"
  },
  {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201907"
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
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "created" : "2019-07-23T15:43:51+08:00",
  "insurer" : {
    "reference" : "Organization/ltc-organization-feeaudit-authority-example"
  },
  "outcome" : "partial",
  "disposition" : "請長照機構於5日內將總表送至本局",
  "item" : [{
    "extension" : [{
      "extension" : [{
        "url" : "objid",
        "valueString" : "882601915"
      },
      {
        "url" : "sourceSystem",
        "valueString" : "TranCareCenter"
      },
      {
        "url" : "transNo",
        "valueString" : "A123456789"
      }],
      "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"
    }],
    "itemSequence" : 1,
    "adjudication" : [{
      "category" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
          "code" : "price",
          "display" : "單價"
        }]
      },
      "amount" : {
        "value" : 400,
        "currency" : "TWD"
      }
    },
    {
      "category" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
          "code" : "copayment",
          "display" : "自付額"
        }]
      },
      "amount" : {
        "value" : 85,
        "currency" : "TWD"
      }
    }]
  }],
  "addItem" : [{
    "extension" : [{
      "extension" : [{
        "url" : "objid",
        "valueString" : "882601915"
      },
      {
        "url" : "sourceSystem",
        "valueString" : "TranCareCenter"
      }],
      "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"
    }],
    "itemSequence" : [1],
    "productOrService" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
        "code" : "AA05",
        "display" : "照顧困難之服務加計"
      }]
    },
    "adjudication" : [{
      "category" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
          "code" : "price",
          "display" : "單價"
        }]
      },
      "amount" : {
        "value" : 200,
        "currency" : "TWD"
      }
    }]
  }],
  "total" : [{
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "submitted",
        "display" : "申請核銷金額"
      }]
    },
    "amount" : {
      "value" : 4500,
      "currency" : "TWD"
    }
  },
  {
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "approveFee",
        "display" : "核定金額"
      }]
    },
    "amount" : {
      "value" : 1596,
      "currency" : "TWD"
    }
  },
  {
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "aSvcFee",
        "display" : "政策鼓勵金額"
      }]
    },
    "amount" : {
      "value" : 400,
      "currency" : "TWD"
    }
  },
  {
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "tempPaymentFee",
        "display" : "分案暫付金額"
      }]
    },
    "amount" : {
      "value" : 17500,
      "currency" : "TWD"
    }
  },
  {
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "incInAcc",
        "display" : "核增金額"
      }]
    },
    "amount" : {
      "value" : 4000,
      "currency" : "TWD"
    }
  },
  {
    "category" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
        "code" : "decInAcc",
        "display" : "核減金額"
      }]
    },
    "amount" : {
      "value" : 500,
      "currency" : "TWD"
    }
  }],
  "processNote" : [{
    "number" : 1,
    "type" : "display",
    "text" : "核增原因（inc_in_reason）：因個案身分異動"
  },
  {
    "number" : 2,
    "type" : "display",
    "text" : "核減原因（dec_in_reason）：因個案CMS等級異動"
  }]
}

```
