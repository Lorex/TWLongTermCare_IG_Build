# 長照支付審查－清冊文件下載路徑 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－清冊文件下載路徑**

## Extension: 長照支付審查－清冊文件下載路徑 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtTWLTCFeeAuditDocUrl |

此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)
* Examples for this Extension: [Bundle/ltc-bundle-feeaudit-response-example](Bundle-ltc-bundle-feeaudit-response-example.md) and [ClaimResponse/ltc-claimresponse-feeaudit-example](ClaimResponse-ltc-claimresponse-feeaudit-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.csv), [Excel](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-FeeAudit-DocUrl",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl",
  "version" : "1.1.0",
  "name" : "ExtTWLTCFeeAuditDocUrl",
  "title" : "長照支付審查－清冊文件下載路徑",
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
  "description" : "此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照支付審查－清冊文件下載路徑",
      "definition" : "此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:docType",
      "path" : "Extension.extension",
      "sliceName" : "docType",
      "short" : "清冊文件類別，標示本筆下載路徑所對應的總表或清冊種類",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:docType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:docType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "docType"
    },
    {
      "id" : "Extension.extension:docType.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "清冊文件類別代碼。[應填入暫付總表、總表、清冊、清冊EXCEL、A碼清冊、A碼清冊EXCEL、申請記錄不通過清冊、申請記錄不通過EXCEL清冊之一]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-doc-type"
      }
    },
    {
      "id" : "Extension.extension:url",
      "path" : "Extension.extension",
      "sliceName" : "url",
      "short" : "文件下載路徑，長度上限 200",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:url.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:url.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "url"
    },
    {
      "id" : "Extension.extension:url.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "總表或清冊檔案之下載網址。[應填入 URL 字串]",
      "min" : 1,
      "type" : [{
        "code" : "url"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
