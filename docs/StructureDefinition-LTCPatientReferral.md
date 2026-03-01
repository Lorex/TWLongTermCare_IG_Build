# 轉介單－個案基本資料 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單－個案基本資料**

## Resource Profile: 轉介單－個案基本資料 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCPatientReferral |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [Patient/ltc-patient-referral-chen-ming-hui-example](Patient-ltc-patient-referral-chen-ming-hui-example.md) and [Patient/ltc-patient-referral-example](Patient-ltc-patient-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCPatientReferral)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCPatientReferral.csv), [Excel](StructureDefinition-LTCPatientReferral.xlsx), [Schematron](StructureDefinition-LTCPatientReferral.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCPatientReferral",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral",
  "version" : "1.0.0",
  "name" : "LTCPatientReferral",
  "title" : "轉介單－個案基本資料",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 1
    },
    {
      "id" : "Patient.extension:economyStatus",
      "path" : "Patient.extension",
      "sliceName" : "economyStatus",
      "short" : "住民的經濟狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:economyStatus.value[x]",
      "path" : "Patient.extension.value[x]",
      "short" : "住民的經濟狀況代碼"
    }]
  }
}

```
