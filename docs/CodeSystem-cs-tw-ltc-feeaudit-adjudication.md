# 支付審查－核定金額類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－核定金額類別**

## CodeSystem: 支付審查－核定金額類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditAdjudication |
| *Other Identifiers:*OID:2.25.234101207453386091746621372782033473905 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項金額欄位之類別代碼，供 ClaimResponse.total.category 與 ClaimResponse.item.adjudication.category 使用。其中核定金額（approveFee）、核增金額（incInAcc）、核減金額（decInAcc）、政策鼓勵金額（aSvcFee）、分案暫付金額（tempPaymentFee）為長照支付審查特有、國際標準無對應者；申請核銷金額（submitted）、自付額（copayment）與單價（price）則與 HL7 標準代碼系統 http://terminology.hl7.org/CodeSystem/adjudication 之 submitted、copay、eligible 語意相近，本 CodeSystem 為保持同一組金額類別代碼之一致性而一併收錄，實作者於跨國情境交換時得改用該標準代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－核定金額類別](ValueSet-vs-tw-ltc-feeaudit-adjudication.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-adjudication",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.234101207453386091746621372782033473905"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditAdjudication",
  "title" : "支付審查－核定金額類別",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項金額欄位之類別代碼，供 ClaimResponse.total.category 與 ClaimResponse.item.adjudication.category 使用。其中核定金額（approveFee）、核增金額（incInAcc）、核減金額（decInAcc）、政策鼓勵金額（aSvcFee）、分案暫付金額（tempPaymentFee）為長照支付審查特有、國際標準無對應者；申請核銷金額（submitted）、自付額（copayment）與單價（price）則與 HL7 標準代碼系統 http://terminology.hl7.org/CodeSystem/adjudication 之 submitted、copay、eligible 語意相近，本 CodeSystem 為保持同一組金額類別代碼之一致性而一併收錄，實作者於跨國情境交換時得改用該標準代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "approveFee",
    "display" : "核定金額"
  },
  {
    "code" : "incInAcc",
    "display" : "核增金額"
  },
  {
    "code" : "decInAcc",
    "display" : "核減金額"
  },
  {
    "code" : "copayment",
    "display" : "自付額",
    "definition" : "個案就該筆服務所應自行負擔之金額（copayment）。語意等同 HL7 標準代碼 http://terminology.hl7.org/CodeSystem/adjudication#copay。"
  },
  {
    "code" : "aSvcFee",
    "display" : "政策鼓勵金額"
  },
  {
    "code" : "tempPaymentFee",
    "display" : "分案暫付金額"
  },
  {
    "code" : "price",
    "display" : "單價"
  },
  {
    "code" : "submitted",
    "display" : "申請核銷金額",
    "definition" : "服務單位就本分案所申請核銷之總金額（amount）。語意等同 HL7 標準代碼 http://terminology.hl7.org/CodeSystem/adjudication#submitted。"
  }]
}

```
