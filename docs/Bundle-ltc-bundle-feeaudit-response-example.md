# 長照支付審查－分案審核明細回覆打包（Bundle）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核明細回覆打包（Bundle）範例**

## Example Bundle: 長照支付審查－分案審核明細回覆打包（Bundle）範例



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ltc-bundle-feeaudit-response-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse"]
  },
  "type" : "searchset",
  "total" : 2,
  "link" : [{
    "relation" : "self",
    "url" : "http://ltc-ig.fhir.tw/fhir/ClaimResponse?identifier=http://ltc-ig.fhir.tw/identifier/feeaudit/case-no|201907C010163"
  }],
  "entry" : [{
    "fullUrl" : "http://ltc-ig.fhir.tw/ClaimResponse/ltc-claimresponse-feeaudit-example",
    "resource" : {
      "resourceType" : "ClaimResponse",
      "id" : "ltc-claimresponse-feeaudit-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClaimResponse_ltc-claimresponse-feeaudit-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClaimResponse ltc-claimresponse-feeaudit-example</b></p><a name=\"ltc-claimresponse-feeaudit-example\"> </a><a name=\"hcltc-claimresponse-feeaudit-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCClaimResponseFeeAudit.html\">長照支付審查－分案審核明細</a></p></div><blockquote><p><b>長照支付審查－分案審核統計與承辦資訊</b></p><ul><li>records: 3</li><li>cases: 2</li><li>approveCaseNum: 2</li><li>approveRecordCount: 1</li><li>tempPaymentStatus: 1: 等待暫付總表</li><li>transNo: 00106</li><li>auditMan: CG碼承辦人</li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type tempPaymentDoc}\">暫付總表</span></li><li>url: <a href=\"http://url/download/doc/dc6a\">http://url/download/doc/dc6a</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseSummaryNotice}\">總表</span></li><li>url: <a href=\"http://url/download/doc/dc6adc6a\">http://url/download/doc/dc6adc6a</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseSvcList}\">清冊</span></li><li>url: <a href=\"http://url/download/doc/dc6afa306c\">http://url/download/doc/dc6afa306c</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseSvcListExcel}\">清冊EXCEL</span></li><li>url: <a href=\"http://url/download/doc/dc6a6c\">http://url/download/doc/dc6a6c</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseASvcList}\">A碼清冊</span></li><li>url: <a href=\"http://url/download/doc/dc6afa306cc554311c\">http://url/download/doc/dc6afa306cc554311c</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseASvcListExcel}\">A碼清冊EXCEL</span></li><li>url: <a href=\"http://url/download/doc9967-7bddc554311c\">http://url/download/doc9967-7bddc554311c</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseErrList}\">申請記錄不通過清冊</span></li><li>url: <a href=\"http://url/download/doc/dc6afa306cc-5ce29d30f843\">http://url/download/doc/dc6afa306cc-5ce29d30f843</a></li></ul></blockquote><blockquote><p><b>長照支付審查－清冊文件下載路徑</b></p><ul><li>docType: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type caseErrListExcel}\">申請記錄不通過EXCEL清冊</span></li><li>url: <a href=\"http://url/download/doc/dc6afa306c-5ce29d30f843\">http://url/download/doc/dc6afa306c-5ce29d30f843</a></li></ul></blockquote><p><b>identifier</b>: <code>http://ltc-ig.fhir.tw/identifier/feeaudit/case-no</code>/201907C010163, <code>http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver</code>/006, <code>http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm</code>/201907</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type professional}\">Professional</span></p><p><b>use</b>: Claim</p><p><b>patient</b>: <a href=\"Patient-ltc-patient-chen-ming-hui.html\">陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))</a></p><p><b>created</b>: 2019-07-23 15:43:51+0800</p><p><b>insurer</b>: <a href=\"Organization-ltc-organization-feeaudit-authority-example.html\">Organization 新北市政府衛生局</a></p><p><b>outcome</b>: Partial Processing</p><p><b>disposition</b>: 請長照機構於5日內將總表送至本局</p><blockquote><p><b>item</b></p><blockquote><p><b>長照支付審查－服務記錄識別資訊</b></p><ul><li>objid: 882601915</li><li>sourceSystem: TranCareCenter</li><li>transNo: A123456789</li></ul></blockquote><p><b>itemSequence</b>: 1</p><blockquote><p><b>adjudication</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication price}\">單價</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>400</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>adjudication</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication copayment}\">自付額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>85</td><td>New Taiwan dollar</td></tr></table></blockquote></blockquote><blockquote><p><b>addItem</b></p><blockquote><p><b>長照支付審查－服務記錄識別資訊</b></p><ul><li>objid: 882601915</li><li>sourceSystem: TranCareCenter</li></ul></blockquote><p><b>itemSequence</b>: 1</p><p><b>productOrService</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item AA05}\">照顧困難之服務加計</span></p><blockquote><p><b>adjudication</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication price}\">單價</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>200</td><td>New Taiwan dollar</td></tr></table></blockquote></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication submitted}\">申請核銷金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>4500</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication approveFee}\">核定金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>1596</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication aSvcFee}\">政策鼓勵金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>400</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication tempPaymentFee}\">分案暫付金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>17500</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication incInAcc}\">核增金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>4000</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>total</b></p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication decInAcc}\">核減金額</span></p><h3>Amounts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>500</td><td>New Taiwan dollar</td></tr></table></blockquote><blockquote><p><b>processNote</b></p><p><b>number</b>: 1</p><p><b>type</b>: Display</p><p><b>text</b>: 核增原因（inc_in_reason）：因個案身分異動</p></blockquote><blockquote><p><b>processNote</b></p><p><b>number</b>: 2</p><p><b>type</b>: Display</p><p><b>text</b>: 核減原因（dec_in_reason）：因個案CMS等級異動</p></blockquote></div>"
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
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "http://ltc-ig.fhir.tw/OperationOutcome/ltc-operationoutcome-feeaudit-example",
    "resource" : {
      "resourceType" : "OperationOutcome",
      "id" : "ltc-operationoutcome-feeaudit-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"OperationOutcome_ltc-operationoutcome-feeaudit-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: OperationOutcome ltc-operationoutcome-feeaudit-example</b></p><a name=\"ltc-operationoutcome-feeaudit-example\"> </a><a name=\"hcltc-operationoutcome-feeaudit-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCOperationOutcomeFeeAudit.html\">長照支付審查－申報檢核結果</a></p></div><p><b>長照 SDK－案件編號（CASENO）</b>: 201907C010163</p><h3>Issues</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Severity</b></td><td><b>Code</b></td><td><b>Details</b></td><td><b>Diagnostics</b></td><td><b>Expression</b></td></tr><tr><td style=\"display: none\">*</td><td>Error</td><td>Processing Failure</td><td><span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code E4015}\">單位已執行申報確認通知，不在受理新的服務紀錄申報</span></td><td>錯誤服務記錄（err_records）：識別碼（objid）882601914；來源系統別（source_system）TranCareCenter；交易序號（trans_no）00106</td><td>Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')</td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
        "valueString" : "201907C010163"
      }],
      "issue" : [{
        "severity" : "error",
        "code" : "processing",
        "details" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code",
            "code" : "E4015",
            "display" : "單位已執行申報確認通知，不在受理新的服務紀錄申報"
          }],
          "text" : "單位已執行申報確認通知，不在受理新的服務紀錄申報"
        },
        "diagnostics" : "錯誤服務記錄（err_records）：識別碼（objid）882601914；來源系統別（source_system）TranCareCenter；交易序號（trans_no）00106",
        "expression" : ["Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')"]
      }]
    },
    "search" : {
      "mode" : "outcome"
    }
  }]
}

```
