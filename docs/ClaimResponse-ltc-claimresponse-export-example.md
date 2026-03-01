# 長照－照管全量匯出審核結果（ClaimResponse）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－照管全量匯出審核結果（ClaimResponse）範例**

## Example ClaimResponse: 長照－照管全量匯出審核結果（ClaimResponse）範例

Profile: [長照 SDK－照管全量匯出（ClaimResponse）](StructureDefinition-LTC-ClaimResponse-Export.md)

**長照 SDK－錯誤訊息**: 跨月金額超出核定上限

> **長照 SDK－單位資訊（PIA/PIB/CENTER/MAN_*）**
* type: PIA
* name: OOO居家長照機構
* code: A10001

**identifier**: `http://ltc-ig.fhir.tw/identifier/export/yyyymm-roc`/11407

**status**: Active

**type**: Professional

**use**: Preauthorization

**patient**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**created**: 2025-07-04

**insurer**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)

**outcome**: Processing Complete

**disposition**: 審核通過



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "ltc-claimresponse-export-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-ClaimResponse-Export"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-Error",
    "valueString" : "跨月金額超出核定上限"
  },
  {
    "extension" : [{
      "url" : "type",
      "valueCodeableConcept" : {
        "text" : "PIA"
      }
    },
    {
      "url" : "name",
      "valueString" : "OOO居家長照機構"
    },
    {
      "url" : "code",
      "valueString" : "A10001"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-Unit"
  }],
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/export/yyyymm-roc",
    "value" : "11407"
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
  "created" : "2025-07-04",
  "insurer" : {
    "reference" : "Organization/ltc-organization-cs100-example"
  },
  "outcome" : "complete",
  "disposition" : "審核通過"
}

```
