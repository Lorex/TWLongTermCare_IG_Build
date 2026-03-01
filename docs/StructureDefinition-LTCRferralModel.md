# 長期照顧管理中心個案服務初篩表/轉介單邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧管理中心個案服務初篩表/轉介單邏輯模型**

## Logical Model: 長期照顧管理中心個案服務初篩表/轉介單邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCRferralModel | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCRferralModel |

 
此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。 
注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCRferralModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCRferralModel.csv), [Excel](StructureDefinition-LTCRferralModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCRferralModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRferralModel",
  "version" : "1.0.0",
  "name" : "LTCRferralModel",
  "title" : "長期照顧管理中心個案服務初篩表/轉介單邏輯模型",
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
  "description" : "此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。\n\n注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRferralModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCRferralModel",
      "path" : "LTCRferralModel",
      "short" : "長期照顧管理中心個案服務初篩表/轉介單邏輯模型",
      "definition" : "此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。\n\n注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。"
    },
    {
      "id" : "LTCRferralModel.patient",
      "path" : "LTCRferralModel.patient",
      "short" : "個案基本資料",
      "definition" : "接受轉介的個案相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.patientId",
      "path" : "LTCRferralModel.patient.patientId",
      "short" : "個案身分證字號",
      "definition" : "個案的身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.name",
      "path" : "LTCRferralModel.patient.name",
      "short" : "個案姓名",
      "definition" : "個案的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.birthDate",
      "path" : "LTCRferralModel.patient.birthDate",
      "short" : "個案出生日期",
      "definition" : "個案的出生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.gender",
      "path" : "LTCRferralModel.patient.gender",
      "short" : "個案性別",
      "definition" : "個案的性別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.address",
      "path" : "LTCRferralModel.patient.address",
      "short" : "個案居住地址",
      "definition" : "個案的居住地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.phone",
      "path" : "LTCRferralModel.patient.phone",
      "short" : "個案聯絡電話",
      "definition" : "個案的聯絡電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.emergencyContact",
      "path" : "LTCRferralModel.patient.emergencyContact",
      "short" : "緊急聯絡人",
      "definition" : "個案的緊急聯絡人資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.emergencyContact.name",
      "path" : "LTCRferralModel.patient.emergencyContact.name",
      "short" : "緊急聯絡人姓名",
      "definition" : "緊急聯絡人的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.emergencyContact.relationship",
      "path" : "LTCRferralModel.patient.emergencyContact.relationship",
      "short" : "與個案關係",
      "definition" : "緊急聯絡人與個案的關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.patient.emergencyContact.phone",
      "path" : "LTCRferralModel.patient.emergencyContact.phone",
      "short" : "緊急聯絡人電話",
      "definition" : "緊急聯絡人的聯絡電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.disability",
      "path" : "LTCRferralModel.disability",
      "short" : "身心障礙手冊",
      "definition" : "個案身心障礙手冊相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.disability.hasDisabilityCard",
      "path" : "LTCRferralModel.disability.hasDisabilityCard",
      "short" : "是否領有身心障礙手冊",
      "definition" : "個案是否領有身心障礙手冊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.disability.disabilityType",
      "path" : "LTCRferralModel.disability.disabilityType",
      "short" : "身心障礙類別",
      "definition" : "個案的身心障礙類別",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.disability.disabilityCode",
      "path" : "LTCRferralModel.disability.disabilityCode",
      "short" : "身心障礙疾病代碼",
      "definition" : "身心障礙的ICD-10疾病代碼",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.disability.disabilityLevel",
      "path" : "LTCRferralModel.disability.disabilityLevel",
      "short" : "身心障礙等級",
      "definition" : "個案的身心障礙等級",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions",
      "path" : "LTCRferralModel.medicalConditions",
      "short" : "醫療狀況",
      "definition" : "個案醫療相關狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.tubeStatus",
      "path" : "LTCRferralModel.medicalConditions.tubeStatus",
      "short" : "管路狀況",
      "definition" : "個案管路相關狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.tubeStatus.hasTube",
      "path" : "LTCRferralModel.medicalConditions.tubeStatus.hasTube",
      "short" : "是否有管路",
      "definition" : "個案是否有管路",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.tubeStatus.tubeType",
      "path" : "LTCRferralModel.medicalConditions.tubeStatus.tubeType",
      "short" : "管路類型",
      "definition" : "個案管路的類型",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.crushStatus",
      "path" : "LTCRferralModel.medicalConditions.crushStatus",
      "short" : "壓傷狀況",
      "definition" : "個案壓傷相關狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.crushStatus.hasCrush",
      "path" : "LTCRferralModel.medicalConditions.crushStatus.hasCrush",
      "short" : "是否有壓傷",
      "definition" : "個案是否有壓傷",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.crushStatus.crushLocation",
      "path" : "LTCRferralModel.medicalConditions.crushStatus.crushLocation",
      "short" : "壓傷部位",
      "definition" : "個案壓傷的部位",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.crushStatus.crushStage",
      "path" : "LTCRferralModel.medicalConditions.crushStatus.crushStage",
      "short" : "壓傷等級",
      "definition" : "個案壓傷的等級",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalConditions.crushStatus.crushSize",
      "path" : "LTCRferralModel.medicalConditions.crushStatus.crushSize",
      "short" : "壓傷大小",
      "definition" : "個案壓傷的大小",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.livingSituation",
      "path" : "LTCRferralModel.livingSituation",
      "short" : "居住狀況",
      "definition" : "個案居住相關狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.livingSituation.residenceType",
      "path" : "LTCRferralModel.livingSituation.residenceType",
      "short" : "居住類型",
      "definition" : "個案的居住類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.livingSituation.livingAlone",
      "path" : "LTCRferralModel.livingSituation.livingAlone",
      "short" : "是否獨居",
      "definition" : "個案是否獨居",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.livingSituation.housingCondition",
      "path" : "LTCRferralModel.livingSituation.housingCondition",
      "short" : "居住環境狀況",
      "definition" : "個案居住環境的狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.livingSituation.accessibility",
      "path" : "LTCRferralModel.livingSituation.accessibility",
      "short" : "無障礙設施",
      "definition" : "個案居住環境的無障礙設施",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation",
      "path" : "LTCRferralModel.caregiverSituation",
      "short" : "照顧者狀況",
      "definition" : "個案照顧者相關狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation.hasCaregiver",
      "path" : "LTCRferralModel.caregiverSituation.hasCaregiver",
      "short" : "是否有照顧者",
      "definition" : "個案是否有照顧者",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation.caregiverType",
      "path" : "LTCRferralModel.caregiverSituation.caregiverType",
      "short" : "照顧者類型",
      "definition" : "照顧者的類型",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation.caregiverNationality",
      "path" : "LTCRferralModel.caregiverSituation.caregiverNationality",
      "short" : "照顧者國籍",
      "definition" : "照顧者的國籍",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation.caregiverRelationship",
      "path" : "LTCRferralModel.caregiverSituation.caregiverRelationship",
      "short" : "照顧者與個案關係",
      "definition" : "照顧者與個案的關係",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.caregiverSituation.caregiverWorkStatus",
      "path" : "LTCRferralModel.caregiverSituation.caregiverWorkStatus",
      "short" : "照顧者工作狀況",
      "definition" : "照顧者的工作狀況",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory",
      "path" : "LTCRferralModel.medicalHistory",
      "short" : "疾病狀況",
      "definition" : "個案疾病相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory.primaryDiseases",
      "path" : "LTCRferralModel.medicalHistory.primaryDiseases",
      "short" : "主要疾病",
      "definition" : "個案的主要疾病",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory.primaryDiseases.diseaseName",
      "path" : "LTCRferralModel.medicalHistory.primaryDiseases.diseaseName",
      "short" : "疾病名稱",
      "definition" : "疾病的名稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory.primaryDiseases.icd10Code",
      "path" : "LTCRferralModel.medicalHistory.primaryDiseases.icd10Code",
      "short" : "ICD-10 代碼",
      "definition" : "疾病的ICD-10代碼",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory.primaryDiseases.diagnosisDate",
      "path" : "LTCRferralModel.medicalHistory.primaryDiseases.diagnosisDate",
      "short" : "診斷日期",
      "definition" : "疾病的診斷日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCRferralModel.medicalHistory.primaryDiseases.currentStatus",
      "path" : "LTCRferralModel.medicalHistory.primaryDiseases.currentStatus",
      "short" : "目前狀況",
      "definition" : "疾病目前的狀況",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems",
      "path" : "LTCRferralModel.needsAndProblems",
      "short" : "案主(家)主要問題及需求",
      "definition" : "個案及家庭的主要問題與需求",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.primaryProblems",
      "path" : "LTCRferralModel.needsAndProblems.primaryProblems",
      "short" : "主要問題",
      "definition" : "個案及家庭的主要問題",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.primaryProblems.problemDescription",
      "path" : "LTCRferralModel.needsAndProblems.primaryProblems.problemDescription",
      "short" : "問題描述",
      "definition" : "問題的詳細描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.primaryProblems.problemCategory",
      "path" : "LTCRferralModel.needsAndProblems.primaryProblems.problemCategory",
      "short" : "問題類別",
      "definition" : "問題的類別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.careNeeds",
      "path" : "LTCRferralModel.needsAndProblems.careNeeds",
      "short" : "照護需求",
      "definition" : "個案的照護需求",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.careNeeds.needDescription",
      "path" : "LTCRferralModel.needsAndProblems.careNeeds.needDescription",
      "short" : "需求描述",
      "definition" : "需求的詳細描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.needsAndProblems.careNeeds.needPriority",
      "path" : "LTCRferralModel.needsAndProblems.careNeeds.needPriority",
      "short" : "需求優先級",
      "definition" : "需求的優先級",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.requestedServices",
      "path" : "LTCRferralModel.requestedServices",
      "short" : "欲申請服務之種類",
      "definition" : "個案欲申請的服務",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.requestedServices.serviceType",
      "path" : "LTCRferralModel.requestedServices.serviceType",
      "short" : "服務類型",
      "definition" : "申請的服務類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.requestedServices.serviceDescription",
      "path" : "LTCRferralModel.requestedServices.serviceDescription",
      "short" : "服務描述",
      "definition" : "服務的詳細描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.requestedServices.serviceFrequency",
      "path" : "LTCRferralModel.requestedServices.serviceFrequency",
      "short" : "服務頻率",
      "definition" : "服務的頻率",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.requestedServices.serviceDuration",
      "path" : "LTCRferralModel.requestedServices.serviceDuration",
      "short" : "服務期間",
      "definition" : "服務的期間",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment",
      "path" : "LTCRferralModel.functionalAssessment",
      "short" : "功能評估",
      "definition" : "個案功能相關評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment",
      "short" : "ADL 失能項目評估",
      "definition" : "個案基本日常活動能力評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.bathing",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.bathing",
      "short" : "洗澡能力",
      "definition" : "個案洗澡能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.dressing",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.dressing",
      "short" : "穿衣能力",
      "definition" : "個案穿衣能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.toileting",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.toileting",
      "short" : "如廁能力",
      "definition" : "個案如廁能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.transferring",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.transferring",
      "short" : "移位能力",
      "definition" : "個案移位能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.continence",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.continence",
      "short" : "大小便控制能力",
      "definition" : "個案大小便控制能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.adlAssessment.feeding",
      "path" : "LTCRferralModel.functionalAssessment.adlAssessment.feeding",
      "short" : "進食能力",
      "definition" : "個案進食能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment",
      "short" : "IADL 失能項目評估",
      "definition" : "個案工具性日常活動能力評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.telephone",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.telephone",
      "short" : "使用電話能力",
      "definition" : "個案使用電話能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.shopping",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.shopping",
      "short" : "購物能力",
      "definition" : "個案購物能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.cooking",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.cooking",
      "short" : "烹飪能力",
      "definition" : "個案烹飪能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.housekeeping",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.housekeeping",
      "short" : "家務能力",
      "definition" : "個案家務能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.laundry",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.laundry",
      "short" : "洗衣能力",
      "definition" : "個案洗衣能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.transportation",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.transportation",
      "short" : "交通能力",
      "definition" : "個案交通能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.medication",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.medication",
      "short" : "服藥管理能力",
      "definition" : "個案服藥管理能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.iadlAssessment.finances",
      "path" : "LTCRferralModel.functionalAssessment.iadlAssessment.finances",
      "short" : "財務管理能力",
      "definition" : "個案財務管理能力的評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment",
      "short" : "長者衰弱評估",
      "definition" : "個案衰弱相關評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment.weightLoss",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment.weightLoss",
      "short" : "體重減輕",
      "definition" : "個案是否有體重減輕",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment.exhaustion",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment.exhaustion",
      "short" : "疲憊感",
      "definition" : "個案是否有疲憊感",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment.weakness",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment.weakness",
      "short" : "握力",
      "definition" : "個案握力是否減弱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment.slowWalking",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment.slowWalking",
      "short" : "行走速度",
      "definition" : "個案行走速度是否變慢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.sofAssessment.lowActivity",
      "path" : "LTCRferralModel.functionalAssessment.sofAssessment.lowActivity",
      "short" : "活動量",
      "definition" : "個案活動量是否降低",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment",
      "short" : "照顧者評估",
      "definition" : "個案照顧者相關評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverName",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverName",
      "short" : "照顧者姓名",
      "definition" : "照顧者的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverRelationship",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverRelationship",
      "short" : "與個案關係",
      "definition" : "照顧者與個案的關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverAge",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverAge",
      "short" : "照顧者年齡",
      "definition" : "照顧者的年齡",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverHealth",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverHealth",
      "short" : "照顧者健康狀況",
      "definition" : "照顧者的健康狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverWorkStatus",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverWorkStatus",
      "short" : "照顧者工作狀況",
      "definition" : "照顧者的工作狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverSupport",
      "path" : "LTCRferralModel.functionalAssessment.caregiverAssessment.caregiverSupport",
      "short" : "照顧者支持系統",
      "definition" : "照顧者的支持系統",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo",
      "path" : "LTCRferralModel.hospitalizationInfo",
      "short" : "出入院情形",
      "definition" : "個案出入院相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo.admissionStatus",
      "path" : "LTCRferralModel.hospitalizationInfo.admissionStatus",
      "short" : "住院狀態",
      "definition" : "個案的住院狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo.admissionDate",
      "path" : "LTCRferralModel.hospitalizationInfo.admissionDate",
      "short" : "入院日期",
      "definition" : "個案的入院日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo.dischargeDate",
      "path" : "LTCRferralModel.hospitalizationInfo.dischargeDate",
      "short" : "出院日期",
      "definition" : "個案的出院日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo.hospitalName",
      "path" : "LTCRferralModel.hospitalizationInfo.hospitalName",
      "short" : "醫院名稱",
      "definition" : "個案就診的醫院名稱",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.hospitalizationInfo.department",
      "path" : "LTCRferralModel.hospitalizationInfo.department",
      "short" : "科別",
      "definition" : "個案就診的科別",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo",
      "path" : "LTCRferralModel.referralInfo",
      "short" : "轉介資訊",
      "definition" : "轉介相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo.referrerName",
      "path" : "LTCRferralModel.referralInfo.referrerName",
      "short" : "填表者/轉介者姓名",
      "definition" : "填表者或轉介者的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo.referrerTitle",
      "path" : "LTCRferralModel.referralInfo.referrerTitle",
      "short" : "填表者/轉介者職稱",
      "definition" : "填表者或轉介者的職稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo.referrerLicense",
      "path" : "LTCRferralModel.referralInfo.referrerLicense",
      "short" : "填表者/轉介者證照號碼",
      "definition" : "填表者或轉介者的證照號碼",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo.referrerPhone",
      "path" : "LTCRferralModel.referralInfo.referrerPhone",
      "short" : "填表者/轉介者電話",
      "definition" : "填表者或轉介者的電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.referralInfo.referrerSignature",
      "path" : "LTCRferralModel.referralInfo.referrerSignature",
      "short" : "填表者/轉介者簽名",
      "definition" : "填表者或轉介者的簽名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.organizationInfo",
      "path" : "LTCRferralModel.organizationInfo",
      "short" : "填表單位資訊",
      "definition" : "填表單位相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCRferralModel.organizationInfo.organizationName",
      "path" : "LTCRferralModel.organizationInfo.organizationName",
      "short" : "填表單位名稱",
      "definition" : "填表單位的名稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.organizationInfo.organizationAddress",
      "path" : "LTCRferralModel.organizationInfo.organizationAddress",
      "short" : "填表單位地址",
      "definition" : "填表單位的地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.organizationInfo.organizationPhone",
      "path" : "LTCRferralModel.organizationInfo.organizationPhone",
      "short" : "填表單位電話",
      "definition" : "填表單位的電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.organizationInfo.organizationContact",
      "path" : "LTCRferralModel.organizationInfo.organizationContact",
      "short" : "填表單位聯絡人",
      "definition" : "填表單位的聯絡人",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCRferralModel.submissionDate",
      "path" : "LTCRferralModel.submissionDate",
      "short" : "轉介單提交日期",
      "definition" : "轉介單提交的日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
