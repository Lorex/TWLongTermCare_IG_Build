# 長照支付審查－分案審核明細邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核明細邏輯模型**

## Logical Model: 長照支付審查－分案審核明細邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditDetailModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCFeeAuditDetailModel |

 
此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCFeeAuditDetailModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCFeeAuditDetailModel.csv), [Excel](StructureDefinition-LTCFeeAuditDetailModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCFeeAuditDetailModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditDetailModel",
  "version" : "1.1.0",
  "name" : "LTCFeeAuditDetailModel",
  "title" : "長照支付審查－分案審核明細邏輯模型",
  "status" : "draft",
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
  "description" : "此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LTCFeeAuditDetailModelMapping",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit",
    "name" : "長照支付審查－分案審核明細邏輯模型對應",
    "comment" : "此對應說明長照支付審查分案審核明細邏輯模型與 LTCClaimResponseFeeAudit (ClaimResponse) Profile 之欄位對應關係。對應原則：識別性欄位落於 ClaimResponse.identifier 之具名切片；分案層級之各項金額一律落於 ClaimResponse.total（以 total.category 區分，取值自 VS_TW_LTC_FeeAuditAdjudication），逐筆服務記錄之金額才落於 item.adjudication；分案層級之統計值、暫付申請狀態、分案已處理之單號與承辦人員落於 extension[auditSummary]；每筆服務記錄之識別碼（objid）、來源系統別（source_system）與交易序號（trans_no）落於各該 item／error／addItem 之 extension[recordRef]（因 ClaimResponse 之各 itemSequence 於 FHIR R4 為 positiveInt，無法承載長度 20 之字串識別碼）。"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditDetailModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCFeeAuditDetailModel",
      "path" : "LTCFeeAuditDetailModel",
      "short" : "長照支付審查－分案審核明細邏輯模型",
      "definition" : "此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。",
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse",
        "comment" : "分案審核明細整體對應至 ClaimResponse"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo",
      "path" : "LTCFeeAuditDetailModel.queryInfo",
      "short" : "查詢輸入資訊",
      "definition" : "分案審核明細查詢的傳送資料（app_result_query_info），單筆物件",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditDetailModel.queryInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審查年月，格式 yyyyMM，長度 6（writeoff_yyyymm）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月（yyyyMM）"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo.transNo",
      "path" : "LTCFeeAuditDetailModel.queryInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次查詢的交易序號，長度 10（trans_no）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse",
        "comment" : "本次查詢之交易序號，屬傳輸層查詢參數，不落於回覆之 ClaimResponse"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo.queryType",
      "path" : "LTCFeeAuditDetailModel.queryInfo.queryType",
      "short" : "查詢類別",
      "definition" : "查詢類別，長度 1，固定值：B，代表分案審核明細查詢（query_type）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse",
        "comment" : "查詢類別固定值 B，屬傳輸層查詢參數，不落於回覆之 ClaimResponse"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo.cityCd",
      "path" : "LTCFeeAuditDetailModel.queryInfo.cityCd",
      "short" : "縣市代碼",
      "definition" : "受理案件之縣市代碼，長度 5（city_cd）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.insurer",
        "comment" : "縣市代碼，以 Reference(LTCOrganization) 指向受理本分案之縣市主管機關，代碼記錄於 Organization.identifier.value"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.queryInfo.caseNo",
      "path" : "LTCFeeAuditDetailModel.queryInfo.caseNo",
      "short" : "核銷案號",
      "definition" : "欲查詢明細之核銷案號，長度 30（case_no）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/case-no').value",
        "comment" : "核銷案號"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult",
      "path" : "LTCFeeAuditDetailModel.auditResult",
      "short" : "分案審核明細",
      "definition" : "分案審核明細查詢的回覆內容（Response.result）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseNo",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseNo",
      "short" : "核銷案號",
      "definition" : "本分案之核銷案號，長度 30（case_no）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/case-no').value",
        "comment" : "核銷案號，以 identifier[caseNo] 切片表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.records",
      "path" : "LTCFeeAuditDetailModel.auditResult.records",
      "short" : "服務記錄筆數",
      "definition" : "本分案申請之服務記錄總筆數（records），為審核通過服務記錄（approve_records）與錯誤服務記錄（err_records）之筆數合計",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('records').valueInteger",
        "comment" : "服務記錄筆數；亦等於 ClaimResponse.item 與 ClaimResponse.error 之筆數合計"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.cases",
      "path" : "LTCFeeAuditDetailModel.auditResult.cases",
      "short" : "個案數",
      "definition" : "本分案申請之個案數（cases）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('cases').valueInteger",
        "comment" : "個案數"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.amount",
      "path" : "LTCFeeAuditDetailModel.auditResult.amount",
      "short" : "申請核銷金額",
      "definition" : "本分案申請核銷之總金額（amount）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='submitted').amount",
        "comment" : "申請核銷金額，落於分案層級之 total，category 為 submitted"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.auditMan",
      "path" : "LTCFeeAuditDetailModel.auditResult.auditMan",
      "short" : "承辦人員",
      "definition" : "承辦審核之人員姓名，長度 10（audit_man）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('auditMan').valueString",
        "comment" : "承辦人員；不可使用 ClaimResponse.requestor，該元素於 FHIR R4 之語意為提出申報之服務提供方，與審查機關之承辦人語意方向相反"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.auditReason",
      "path" : "LTCFeeAuditDetailModel.auditResult.auditReason",
      "short" : "承辦審核意見",
      "definition" : "承辦人員之審核意見說明，長度 4000（audit_reason）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.disposition",
        "comment" : "承辦審核意見"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.docVer",
      "path" : "LTCFeeAuditDetailModel.auditResult.docVer",
      "short" : "總表版次",
      "definition" : "核銷總表之版次，長度 15（doc_ver）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver').value",
        "comment" : "總表版次，以 identifier[docVer] 切片表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.verDt",
      "path" : "LTCFeeAuditDetailModel.auditResult.verDt",
      "short" : "版次時間",
      "definition" : "總表版次產生時間，格式 yyyyMMddhhmmss，長度 14（ver_dt）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.created",
        "comment" : "版次時間（yyyyMMddhhmmss），以 dateTime 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveCaseNum",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveCaseNum",
      "short" : "核定個案數",
      "definition" : "審核核定通過之個案數（approve_case_num）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('approveCaseNum').valueInteger",
        "comment" : "核定個案數"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecordCount",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecordCount",
      "short" : "核定服務記錄數",
      "definition" : "審核核定通過之服務記錄筆數（approve_record_count）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('approveRecordCount').valueInteger",
        "comment" : "核定服務記錄數；亦等於 ClaimResponse.item 之筆數"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveFee",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveFee",
      "short" : "核定金額",
      "definition" : "審核核定之給付金額（approve_fee）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='approveFee').amount",
        "comment" : "核定金額，屬分案層級金額，落於 total"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcFee",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcFee",
      "short" : "政策鼓勵金額",
      "definition" : "A 碼加成之政策鼓勵給付金額（a_svc_fee）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='aSvcFee').amount",
        "comment" : "政策鼓勵金額，屬分案層級金額，落於 total"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.tempPaymentStatus",
      "path" : "LTCFeeAuditDetailModel.auditResult.tempPaymentStatus",
      "short" : "暫付申請狀態",
      "definition" : "暫付申請之處理狀態，長度 15，有申請暫付才顯示（temp_payment_status）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('tempPaymentStatus').valueString",
        "comment" : "暫付申請狀態，有申請暫付才顯示"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.tempPaymentFee",
      "path" : "LTCFeeAuditDetailModel.auditResult.tempPaymentFee",
      "short" : "分案暫付金額",
      "definition" : "本分案之暫付金額，有申請暫付才顯示（temp_payment_fee）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='tempPaymentFee').amount",
        "comment" : "分案暫付金額，屬分案層級金額，落於 total"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.tempPaymentDocUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.tempPaymentDocUrl",
      "short" : "暫付總表下載路徑",
      "definition" : "暫付總表檔案之下載路徑，長度 200（temp_payment_doc_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='tempPaymentDoc').extension('url').valueUrl",
        "comment" : "暫付總表下載路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseSummaryNoticeUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseSummaryNoticeUrl",
      "short" : "總表下載路徑",
      "definition" : "核銷總表檔案之下載路徑，長度 200（case_summary_notice_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSummaryNotice').extension('url').valueUrl",
        "comment" : "總表下載路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseSvcListUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseSvcListUrl",
      "short" : "清冊路徑",
      "definition" : "服務記錄清冊之下載路徑，長度 200（case_svc_list_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSvcList').extension('url').valueUrl",
        "comment" : "清冊路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseSvcListExcelUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseSvcListExcelUrl",
      "short" : "清冊 EXCEL 下載路徑",
      "definition" : "服務記錄清冊 EXCEL 檔之下載路徑，長度 200（case_svc_list_excel_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSvcListExcel').extension('url').valueUrl",
        "comment" : "清冊 EXCEL 下載路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseASvcListUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseASvcListUrl",
      "short" : "A 碼清冊路徑",
      "definition" : "A 碼加成清冊之下載路徑，長度 200（case_a_svc_list_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseASvcList').extension('url').valueUrl",
        "comment" : "A 碼清冊路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseASvcListExcelUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseASvcListExcelUrl",
      "short" : "A 碼清冊 EXCEL 下載路徑",
      "definition" : "A 碼加成清冊 EXCEL 檔之下載路徑，長度 200（case_a_svc_list_excel_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseASvcListExcel').extension('url').valueUrl",
        "comment" : "A 碼清冊 EXCEL 下載路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseErrListUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseErrListUrl",
      "short" : "申請記錄不通過清冊路徑",
      "definition" : "申請記錄審核不通過清冊之下載路徑，長度 200（case_err_list_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseErrList').extension('url').valueUrl",
        "comment" : "申請記錄不通過清冊路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.caseErrListExcelUrl",
      "path" : "LTCFeeAuditDetailModel.auditResult.caseErrListExcelUrl",
      "short" : "申請記錄不通過 EXCEL 清冊路徑",
      "definition" : "申請記錄審核不通過清冊 EXCEL 檔之下載路徑，長度 200（case_err_list_excel_url）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseErrListExcel').extension('url').valueUrl",
        "comment" : "申請記錄不通過 EXCEL 清冊路徑"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.transNos",
      "path" : "LTCFeeAuditDetailModel.auditResult.transNos",
      "short" : "分案已處理之單號",
      "definition" : "本分案已處理之申請單單號陣列（trans_nos）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('transNo').valueString",
        "comment" : "分案已處理之申請單單號，為多筆字串，逐筆各為一個子擴充實例；不可使用 ClaimResponse.request，該元素於 FHIR R4 為 0..1 Reference"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.incInAcc",
      "path" : "LTCFeeAuditDetailModel.auditResult.incInAcc",
      "short" : "核增金額",
      "definition" : "審核後核增之金額（inc_in_acc）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='incInAcc').amount",
        "comment" : "核增金額，屬分案層級金額，落於 total"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.incInReason",
      "path" : "LTCFeeAuditDetailModel.auditResult.incInReason",
      "short" : "核增原因",
      "definition" : "核增金額之原因說明，長度 4000（inc_in_reason）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.processNote.text",
        "comment" : "核增原因，以審核附註之自由文字表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.decInAcc",
      "path" : "LTCFeeAuditDetailModel.auditResult.decInAcc",
      "short" : "核減金額",
      "definition" : "審核後核減之金額（dec_in_acc）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.total.where(category.coding.code='decInAcc').amount",
        "comment" : "核減金額，屬分案層級金額，落於 total"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.decInReason",
      "path" : "LTCFeeAuditDetailModel.auditResult.decInReason",
      "short" : "核減原因",
      "definition" : "核減金額之原因說明，長度 4000（dec_in_reason）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.processNote.text",
        "comment" : "核減原因，以審核附註之自由文字表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords",
      "short" : "審核通過服務記錄",
      "definition" : "審核通過之服務記錄明細，多筆（approve_records）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item",
        "comment" : "審核通過服務記錄，逐筆對應 ClaimResponse.item；item.itemSequence 僅為本資源內之流水序號"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords.sourceSystem",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords.sourceSystem",
      "short" : "來源系統別",
      "definition" : "服務記錄之來源系統別，長度 20（source_system）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString",
        "comment" : "來源系統別"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords.objid",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords.objid",
      "short" : "識別碼",
      "definition" : "服務記錄之識別碼，長度 20（objid）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString",
        "comment" : "服務記錄識別碼；不可使用 item.itemSequence，該元素於 FHIR R4 為 positiveInt"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords.transNo",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords.transNo",
      "short" : "交易序號",
      "definition" : "服務記錄申報時之交易序號，長度 10（trans_no）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('transNo').valueString",
        "comment" : "交易序號"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords.price",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords.price",
      "short" : "單價",
      "definition" : "該筆服務記錄之核定單價（price）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item.adjudication.where(category.coding.code='price').amount",
        "comment" : "單價，屬逐筆服務記錄之金額，落於 item.adjudication"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.approveRecords.copayment",
      "path" : "LTCFeeAuditDetailModel.auditResult.approveRecords.copayment",
      "short" : "自付額",
      "definition" : "該筆服務記錄之個案自付額（copayment）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.item.adjudication.where(category.coding.code='copayment').amount",
        "comment" : "自付額，屬逐筆服務記錄之金額，落於 item.adjudication"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords",
      "short" : "錯誤服務記錄",
      "definition" : "審核不通過（錯誤）之服務記錄明細，多筆（err_records）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error",
        "comment" : "錯誤服務記錄，逐筆對應 ClaimResponse.error；若該筆之 err_code／err_message 為空而無法填入 error.code（1..1 且綁定錯誤代碼值集），得改以隨附之 LTCOperationOutcomeFeeAudit 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords.sourceSystem",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords.sourceSystem",
      "short" : "來源系統別",
      "definition" : "服務記錄之來源系統別，長度 20（source_system）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString",
        "comment" : "來源系統別"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords.objid",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords.objid",
      "short" : "識別碼",
      "definition" : "服務記錄之識別碼，長度 20（objid）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString",
        "comment" : "服務記錄識別碼；不可使用 error.itemSequence，該元素於 FHIR R4 為 positiveInt"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords.transNo",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords.transNo",
      "short" : "交易序號",
      "definition" : "服務記錄申報時之交易序號，長度 10（trans_no）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('transNo').valueString",
        "comment" : "交易序號"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords.errCode",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords.errCode",
      "short" : "錯誤碼",
      "definition" : "審核不通過之錯誤代碼，長度 5（err_code）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error.code.coding.code",
        "comment" : "錯誤碼"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.errRecords.errMessage",
      "path" : "LTCFeeAuditDetailModel.auditResult.errRecords.errMessage",
      "short" : "錯誤原因",
      "definition" : "審核不通過之錯誤原因說明，長度 200（err_message）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.error.code.text",
        "comment" : "錯誤原因"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords",
      "short" : "A 碼加成資料區",
      "definition" : "A 碼加成（政策鼓勵）之給付明細，多筆（a_svc_records）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.addItem",
        "comment" : "A 碼加成資料，逐筆對應 ClaimResponse.addItem"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.refSourceSystem",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.refSourceSystem",
      "short" : "審核通過服務記錄來源系統別",
      "definition" : "所加成之審核通過服務記錄來源系統別，長度 20（ref_source_system）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.addItem.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString",
        "comment" : "所加成之審核通過服務記錄來源系統別"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.refObjid",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.refObjid",
      "short" : "審核通過服務記錄識別碼",
      "definition" : "所加成之審核通過服務記錄識別碼，長度 20（ref_objid）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.addItem.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString",
        "comment" : "所加成之審核通過服務記錄識別碼；不可使用 addItem.itemSequence，該元素於 FHIR R4 為 positiveInt 且語意上指向原申請單之項目序號"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.aGovItemCd",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.aGovItemCd",
      "short" : "A 碼",
      "definition" : "A 碼加成之給付項目代碼，長度 10（a_gov_item_cd）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.addItem.productOrService",
        "comment" : "A 碼加成之給付項目代碼"
      }]
    },
    {
      "id" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.price",
      "path" : "LTCFeeAuditDetailModel.auditResult.aSvcRecords.price",
      "short" : "單價",
      "definition" : "該筆 A 碼加成之單價（price）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditDetailModelMapping",
        "map" : "ClaimResponse.addItem.adjudication.where(category.coding.code='price').amount",
        "comment" : "單價，落於 addItem.adjudication"
      }]
    }]
  }
}

```
