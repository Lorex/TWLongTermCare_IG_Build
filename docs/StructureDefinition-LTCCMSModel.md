# 照顧管理評估量表邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表邏輯模型**

## Logical Model: 照顧管理評估量表邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCMSModel | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCCMSModel |

 
此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCMSModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCMSModel.csv), [Excel](StructureDefinition-LTCCMSModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCMSModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCMSModel",
  "version" : "1.0.0",
  "name" : "LTCCMSModel",
  "title" : "照顧管理評估量表邏輯模型",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCMSModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCCMSModel",
      "path" : "LTCCMSModel",
      "short" : "照顧管理評估量表邏輯模型",
      "definition" : "此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。"
    },
    {
      "id" : "LTCCMSModel.hospital",
      "path" : "LTCCMSModel.hospital",
      "short" : "醫事機構基本資料",
      "definition" : "填寫評估的醫事機構相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.hospital.hospitalId",
      "path" : "LTCCMSModel.hospital.hospitalId",
      "short" : "醫事機構代碼",
      "definition" : "醫事機構的唯一識別碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.hospital.hospitalName",
      "path" : "LTCCMSModel.hospital.hospitalName",
      "short" : "醫事機構名稱",
      "definition" : "醫事機構的正式名稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.hospital.address",
      "path" : "LTCCMSModel.hospital.address",
      "short" : "醫事機構地址",
      "definition" : "醫事機構的完整地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.hospital.phone",
      "path" : "LTCCMSModel.hospital.phone",
      "short" : "醫事機構電話",
      "definition" : "醫事機構的聯絡電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.hospital.email",
      "path" : "LTCCMSModel.hospital.email",
      "short" : "醫事機構電子郵件",
      "definition" : "醫事機構的電子郵件地址",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient",
      "path" : "LTCCMSModel.patient",
      "short" : "個案基本資料",
      "definition" : "接受評估的個案相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.patientId",
      "path" : "LTCCMSModel.patient.patientId",
      "short" : "個案身分證字號",
      "definition" : "個案的身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.name",
      "path" : "LTCCMSModel.patient.name",
      "short" : "個案姓名",
      "definition" : "個案的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.birthDate",
      "path" : "LTCCMSModel.patient.birthDate",
      "short" : "個案出生日期",
      "definition" : "個案的出生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.gender",
      "path" : "LTCCMSModel.patient.gender",
      "short" : "個案性別",
      "definition" : "個案的性別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.address",
      "path" : "LTCCMSModel.patient.address",
      "short" : "個案居住地址",
      "definition" : "個案的居住地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.phone",
      "path" : "LTCCMSModel.patient.phone",
      "short" : "個案聯絡電話",
      "definition" : "個案的聯絡電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.disabilityStatus",
      "path" : "LTCCMSModel.patient.disabilityStatus",
      "short" : "是否領有身心障礙手冊",
      "definition" : "個案是否領有身心障礙手冊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.disabilityType",
      "path" : "LTCCMSModel.patient.disabilityType",
      "short" : "身心障礙類別",
      "definition" : "個案的身心障礙類別",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.patient.disabilityCode",
      "path" : "LTCCMSModel.patient.disabilityCode",
      "short" : "身心障礙疾病代碼",
      "definition" : "身心障礙的ICD-10疾病代碼",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson",
      "path" : "LTCCMSModel.relatedPerson",
      "short" : "照顧者基本資料",
      "definition" : "個案照顧者相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.primaryCaregiver",
      "path" : "LTCCMSModel.relatedPerson.primaryCaregiver",
      "short" : "主要照顧者",
      "definition" : "個案的主要照顧者資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.primaryCaregiver.name",
      "path" : "LTCCMSModel.relatedPerson.primaryCaregiver.name",
      "short" : "主要照顧者姓名",
      "definition" : "主要照顧者的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.primaryCaregiver.relationship",
      "path" : "LTCCMSModel.relatedPerson.primaryCaregiver.relationship",
      "short" : "與個案關係",
      "definition" : "主要照顧者與個案的關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.primaryCaregiver.phone",
      "path" : "LTCCMSModel.relatedPerson.primaryCaregiver.phone",
      "short" : "主要照顧者聯絡電話",
      "definition" : "主要照顧者的聯絡電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.primaryCaregiver.disabilityStatus",
      "path" : "LTCCMSModel.relatedPerson.primaryCaregiver.disabilityStatus",
      "short" : "是否持有身心障礙手冊",
      "definition" : "主要照顧者是否持有身心障礙手冊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.secondaryCaregiver",
      "path" : "LTCCMSModel.relatedPerson.secondaryCaregiver",
      "short" : "次要照顧者",
      "definition" : "個案的次要照顧者資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.secondaryCaregiver.name",
      "path" : "LTCCMSModel.relatedPerson.secondaryCaregiver.name",
      "short" : "次要照顧者姓名",
      "definition" : "次要照顧者的姓名",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.relatedPerson.secondaryCaregiver.relationship",
      "path" : "LTCCMSModel.relatedPerson.secondaryCaregiver.relationship",
      "short" : "與個案關係",
      "definition" : "次要照顧者與個案的關係",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment",
      "path" : "LTCCMSModel.assessment",
      "short" : "評估量表內容",
      "definition" : "各項評估量表的評分結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.communication",
      "path" : "LTCCMSModel.assessment.communication",
      "short" : "個案溝通能力評估",
      "definition" : "個案溝通能力的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.communication.understanding",
      "path" : "LTCCMSModel.assessment.communication.understanding",
      "short" : "理解能力評分",
      "definition" : "個案理解能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.communication.expression",
      "path" : "LTCCMSModel.assessment.communication.expression",
      "short" : "表達能力評分",
      "definition" : "個案表達能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.communication.hearing",
      "path" : "LTCCMSModel.assessment.communication.hearing",
      "short" : "聽力狀況評分",
      "definition" : "個案聽力狀況的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.communication.vision",
      "path" : "LTCCMSModel.assessment.communication.vision",
      "short" : "視力狀況評分",
      "definition" : "個案視力狀況的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.memory",
      "path" : "LTCCMSModel.assessment.memory",
      "short" : "個案短期記憶力評估",
      "definition" : "個案短期記憶力的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.memory.orientation",
      "path" : "LTCCMSModel.assessment.memory.orientation",
      "short" : "定向感評分",
      "definition" : "個案定向感的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.memory.recall",
      "path" : "LTCCMSModel.assessment.memory.recall",
      "short" : "記憶力評分",
      "definition" : "個案記憶力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.memory.attention",
      "path" : "LTCCMSModel.assessment.memory.attention",
      "short" : "注意力評分",
      "definition" : "個案注意力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl",
      "path" : "LTCCMSModel.assessment.adl",
      "short" : "個案日常活動功能量表",
      "definition" : "個案基本日常活動能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.bathing",
      "path" : "LTCCMSModel.assessment.adl.bathing",
      "short" : "洗澡能力評分",
      "definition" : "個案洗澡能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.dressing",
      "path" : "LTCCMSModel.assessment.adl.dressing",
      "short" : "穿衣能力評分",
      "definition" : "個案穿衣能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.toileting",
      "path" : "LTCCMSModel.assessment.adl.toileting",
      "short" : "如廁能力評分",
      "definition" : "個案如廁能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.transferring",
      "path" : "LTCCMSModel.assessment.adl.transferring",
      "short" : "移位能力評分",
      "definition" : "個案移位能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.continence",
      "path" : "LTCCMSModel.assessment.adl.continence",
      "short" : "大小便控制能力評分",
      "definition" : "個案大小便控制能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.adl.feeding",
      "path" : "LTCCMSModel.assessment.adl.feeding",
      "short" : "進食能力評分",
      "definition" : "個案進食能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl",
      "path" : "LTCCMSModel.assessment.iadl",
      "short" : "個案工具性日常活動功能量表",
      "definition" : "個案工具性日常活動能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.telephone",
      "path" : "LTCCMSModel.assessment.iadl.telephone",
      "short" : "使用電話能力評分",
      "definition" : "個案使用電話能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.shopping",
      "path" : "LTCCMSModel.assessment.iadl.shopping",
      "short" : "購物能力評分",
      "definition" : "個案購物能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.cooking",
      "path" : "LTCCMSModel.assessment.iadl.cooking",
      "short" : "烹飪能力評分",
      "definition" : "個案烹飪能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.housekeeping",
      "path" : "LTCCMSModel.assessment.iadl.housekeeping",
      "short" : "家務能力評分",
      "definition" : "個案家務能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.laundry",
      "path" : "LTCCMSModel.assessment.iadl.laundry",
      "short" : "洗衣能力評分",
      "definition" : "個案洗衣能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.transportation",
      "path" : "LTCCMSModel.assessment.iadl.transportation",
      "short" : "交通能力評分",
      "definition" : "個案交通能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.medication",
      "path" : "LTCCMSModel.assessment.iadl.medication",
      "short" : "服藥管理能力評分",
      "definition" : "個案服藥管理能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.iadl.finances",
      "path" : "LTCCMSModel.assessment.iadl.finances",
      "short" : "財務管理能力評分",
      "definition" : "個案財務管理能力的評分",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare",
      "path" : "LTCCMSModel.assessment.specialCare",
      "short" : "特殊複雜照護需要評估",
      "definition" : "個案特殊照護需求的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare.tubeFeeding",
      "path" : "LTCCMSModel.assessment.specialCare.tubeFeeding",
      "short" : "管灌餵食需求",
      "definition" : "個案是否需要管灌餵食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare.oxygenTherapy",
      "path" : "LTCCMSModel.assessment.specialCare.oxygenTherapy",
      "short" : "氧氣治療需求",
      "definition" : "個案是否需要氧氣治療",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare.woundCare",
      "path" : "LTCCMSModel.assessment.specialCare.woundCare",
      "short" : "傷口照護需求",
      "definition" : "個案是否需要傷口照護",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare.catheter",
      "path" : "LTCCMSModel.assessment.specialCare.catheter",
      "short" : "導尿管照護需求",
      "definition" : "個案是否需要導尿管照護",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.specialCare.tracheostomy",
      "path" : "LTCCMSModel.assessment.specialCare.tracheostomy",
      "short" : "氣切照護需求",
      "definition" : "個案是否需要氣切照護",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.society",
      "path" : "LTCCMSModel.assessment.society",
      "short" : "居家環境與社會參與評估",
      "definition" : "個案居家環境與社會參與的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.society.homeEnvironment",
      "path" : "LTCCMSModel.assessment.society.homeEnvironment",
      "short" : "居家環境評估",
      "definition" : "個案居家環境的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.society.socialParticipation",
      "path" : "LTCCMSModel.assessment.society.socialParticipation",
      "short" : "社會參與評估",
      "definition" : "個案社會參與的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.society.communityResources",
      "path" : "LTCCMSModel.assessment.society.communityResources",
      "short" : "社區資源使用評估",
      "definition" : "個案社區資源使用的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.mental",
      "path" : "LTCCMSModel.assessment.mental",
      "short" : "情緒及行為型態評估",
      "definition" : "個案情緒及行為的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.mental.mood",
      "path" : "LTCCMSModel.assessment.mental.mood",
      "short" : "情緒狀態評估",
      "definition" : "個案情緒狀態的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.mental.behavior",
      "path" : "LTCCMSModel.assessment.mental.behavior",
      "short" : "行為模式評估",
      "definition" : "個案行為模式的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.mental.cognitive",
      "path" : "LTCCMSModel.assessment.mental.cognitive",
      "short" : "認知功能評估",
      "definition" : "個案認知功能的評估結果",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverLoad",
      "path" : "LTCCMSModel.assessment.caregiverLoad",
      "short" : "主要照護者負荷評估",
      "definition" : "主要照護者負荷的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverLoad.physicalLoad",
      "path" : "LTCCMSModel.assessment.caregiverLoad.physicalLoad",
      "short" : "身體負荷評估",
      "definition" : "主要照護者身體負荷的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverLoad.emotionalLoad",
      "path" : "LTCCMSModel.assessment.caregiverLoad.emotionalLoad",
      "short" : "情緒負荷評估",
      "definition" : "主要照護者情緒負荷的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverLoad.socialLoad",
      "path" : "LTCCMSModel.assessment.caregiverLoad.socialLoad",
      "short" : "社交負荷評估",
      "definition" : "主要照護者社交負荷的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverLoad.financialLoad",
      "path" : "LTCCMSModel.assessment.caregiverLoad.financialLoad",
      "short" : "經濟負荷評估",
      "definition" : "主要照護者經濟負荷的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverSupport",
      "path" : "LTCCMSModel.assessment.caregiverSupport",
      "short" : "主要照護者工作與支持評估",
      "definition" : "主要照護者工作與支持的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverSupport.workStatus",
      "path" : "LTCCMSModel.assessment.caregiverSupport.workStatus",
      "short" : "工作狀況",
      "definition" : "主要照護者的工作狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverSupport.supportNetwork",
      "path" : "LTCCMSModel.assessment.caregiverSupport.supportNetwork",
      "short" : "支持網絡評估",
      "definition" : "主要照護者支持網絡的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessment.caregiverSupport.respiteCare",
      "path" : "LTCCMSModel.assessment.caregiverSupport.respiteCare",
      "short" : "喘息服務需求評估",
      "definition" : "主要照護者喘息服務需求的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessmentDate",
      "path" : "LTCCMSModel.assessmentDate",
      "short" : "評估日期",
      "definition" : "進行評估的日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCCMSModel.assessor",
      "path" : "LTCCMSModel.assessor",
      "short" : "評估人員",
      "definition" : "執行評估的人員資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCMSModel.assessor.name",
      "path" : "LTCCMSModel.assessor.name",
      "short" : "評估人員姓名",
      "definition" : "評估人員的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessor.license",
      "path" : "LTCCMSModel.assessor.license",
      "short" : "評估人員證照號碼",
      "definition" : "評估人員的證照號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCMSModel.assessor.organization",
      "path" : "LTCCMSModel.assessor.organization",
      "short" : "評估機構",
      "definition" : "評估人員所屬的機構",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
