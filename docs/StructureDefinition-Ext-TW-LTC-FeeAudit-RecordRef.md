# 長照支付審查－服務記錄識別資訊 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務記錄識別資訊**

## Extension: 長照支付審查－服務記錄識別資訊 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtTWLTCFeeAuditRecordRef |

此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)
* Examples for this Extension: [Bundle/ltc-bundle-feeaudit-response-example](Bundle-ltc-bundle-feeaudit-response-example.md) and [ClaimResponse/ltc-claimresponse-feeaudit-example](ClaimResponse-ltc-claimresponse-feeaudit-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.csv), [Excel](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-FeeAudit-RecordRef",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef",
  "version" : "1.1.0",
  "name" : "ExtTWLTCFeeAuditRecordRef",
  "title" : "長照支付審查－服務記錄識別資訊",
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
  "description" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。",
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
    "expression" : "ClaimResponse.item"
  },
  {
    "type" : "element",
    "expression" : "ClaimResponse.error"
  },
  {
    "type" : "element",
    "expression" : "ClaimResponse.addItem"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照支付審查－服務記錄識別資訊",
      "definition" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:objid",
      "path" : "Extension.extension",
      "sliceName" : "objid",
      "short" : "服務記錄識別碼（objid；於 addItem 為 ref_objid），長度上限 20，對應該筆服務紀錄申報（LTCClaimFeeApply）之 identifier[objid].value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:objid.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:objid.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "objid"
    },
    {
      "id" : "Extension.extension:objid.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "服務記錄識別碼值，例如 882601915",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sourceSystem",
      "path" : "Extension.extension",
      "sliceName" : "sourceSystem",
      "short" : "來源系統別（source_system；於 addItem 為 ref_source_system），長度上限 20",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:sourceSystem.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sourceSystem.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sourceSystem"
    },
    {
      "id" : "Extension.extension:sourceSystem.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "來源系統別值，例如 TranCareCenter",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transNo",
      "path" : "Extension.extension",
      "sliceName" : "transNo",
      "short" : "該筆服務記錄申報時之交易序號（trans_no），長度上限 10",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transNo.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transNo.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transNo"
    },
    {
      "id" : "Extension.extension:transNo.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "交易序號值，例如 A123456789",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
