# 居家護理－全人評估 API 邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－全人評估 API 邏輯模型**

## Logical Model: 居家護理－全人評估 API 邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationAPIModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNEvaluationAPIModel |

 
描述全人評估 API 的請求資料。來源為 V5.0.16 印刷頁 14–70，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNEvaluationAPIModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNEvaluationAPIModel.csv), [Excel](StructureDefinition-HNEvaluationAPIModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNEvaluationAPIModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationAPIModel",
  "version" : "1.1.0",
  "name" : "HNEvaluationAPIModel",
  "title" : "居家護理－全人評估 API 邏輯模型",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "描述全人評估 API 的請求資料。來源為 V5.0.16 印刷頁 14–70，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationAPIModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNEvaluationAPIModel",
      "path" : "HNEvaluationAPIModel",
      "short" : "居家護理－全人評估 API 邏輯模型",
      "definition" : "描述全人評估 API 的請求資料。來源為 V5.0.16 印刷頁 14–70，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
    },
    {
      "id" : "HNEvaluationAPIModel.agency",
      "path" : "HNEvaluationAPIModel.agency",
      "short" : "機構識別",
      "definition" : "填入 AGENCY_ID 對應的機構識別。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList",
      "path" : "HNEvaluationAPIModel.dataList",
      "short" : "個案評估批次",
      "definition" : "每筆資料包含個案識別與不同日期的評估。",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.caseID",
      "path" : "HNEvaluationAPIModel.dataList.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.endDate",
      "path" : "HNEvaluationAPIModel.dataList.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.healthyHabits",
      "path" : "HNEvaluationAPIModel.dataList.healthyHabits",
      "short" : "健康紀錄評估",
      "definition" : "健康紀錄評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.medicalHistories",
      "path" : "HNEvaluationAPIModel.dataList.medicalHistories",
      "short" : "疾病史評估",
      "definition" : "疾病史評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.drugSafeties",
      "path" : "HNEvaluationAPIModel.dataList.drugSafeties",
      "short" : "藥物安全性評估",
      "definition" : "藥物安全性評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.bodyEvaluations",
      "path" : "HNEvaluationAPIModel.dataList.bodyEvaluations",
      "short" : "身體評估評估",
      "definition" : "身體評估評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.pressureInjuries",
      "path" : "HNEvaluationAPIModel.dataList.pressureInjuries",
      "short" : "壓力性損傷危險評估",
      "definition" : "壓力性損傷危險評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.fallRisks",
      "path" : "HNEvaluationAPIModel.dataList.fallRisks",
      "short" : "跌倒危險性評估",
      "definition" : "跌倒危險性評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.aDLs",
      "path" : "HNEvaluationAPIModel.dataList.aDLs",
      "short" : "日常生活功能評估",
      "definition" : "日常生活功能評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.iADLs",
      "path" : "HNEvaluationAPIModel.dataList.iADLs",
      "short" : "工具性日常生活活動功能評估",
      "definition" : "工具性日常生活活動功能評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.dementias",
      "path" : "HNEvaluationAPIModel.dataList.dementias",
      "short" : "認知功能評估",
      "definition" : "認知功能評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.geriatricDepressionScales",
      "path" : "HNEvaluationAPIModel.dataList.geriatricDepressionScales",
      "short" : "情緒問題評估",
      "definition" : "情緒問題評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.mNASFs",
      "path" : "HNEvaluationAPIModel.dataList.mNASFs",
      "short" : "簡易營養評估",
      "definition" : "簡易營養評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.painEvaluations",
      "path" : "HNEvaluationAPIModel.dataList.painEvaluations",
      "short" : "疼痛評估",
      "definition" : "疼痛評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsModel"
      }]
    },
    {
      "id" : "HNEvaluationAPIModel.dataList.sOFs",
      "path" : "HNEvaluationAPIModel.dataList.sOFs",
      "short" : "衰弱評估",
      "definition" : "衰弱評估",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsModel"
      }]
    }]
  }
}

```
