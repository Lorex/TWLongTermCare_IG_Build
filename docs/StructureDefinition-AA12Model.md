# 長期照護醫師意見書 (AA12) 邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護醫師意見書 (AA12) 邏輯模型**

## Logical Model: 長期照護醫師意見書 (AA12) 邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/AA12Model | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:AA12Model |

 
此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/AA12Model)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AA12Model.csv), [Excel](StructureDefinition-AA12Model.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AA12Model",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/AA12Model",
  "version" : "1.0.0",
  "name" : "AA12Model",
  "title" : "長期照護醫師意見書 (AA12) 邏輯模型",
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
  "description" : "此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "AA12ModelMapping",
    "name" : "長期照護醫師意見書邏輯模型對應",
    "comment" : "此對應說明長期照護醫師意見書邏輯模型與 FHIR 資源的對應關係"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/AA12Model",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "AA12Model",
      "path" : "AA12Model",
      "short" : "長期照護醫師意見書 (AA12) 邏輯模型",
      "definition" : "此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。"
    },
    {
      "id" : "AA12Model.formHeader",
      "path" : "AA12Model.formHeader",
      "short" : "表單基本資料",
      "definition" : "醫師意見書表單的基本資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.formHeader.formDate",
      "path" : "AA12Model.formHeader.formDate",
      "short" : "填表日期",
      "definition" : "填寫表單的日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.authored"
      }]
    },
    {
      "id" : "AA12Model.formHeader.formNumber",
      "path" : "AA12Model.formHeader.formNumber",
      "short" : "表單編號",
      "definition" : "表單的唯一編號",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.identifier.value"
      }]
    },
    {
      "id" : "AA12Model.applicant",
      "path" : "AA12Model.applicant",
      "short" : "申請者基本資料",
      "definition" : "申請長期照護服務的個案資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.applicant.name",
      "path" : "AA12Model.applicant.name",
      "short" : "申請者姓名",
      "definition" : "申請者的姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.name.family + Patient.name.given"
      }]
    },
    {
      "id" : "AA12Model.applicant.idNumber",
      "path" : "AA12Model.applicant.idNumber",
      "short" : "身分證字號",
      "definition" : "申請者的身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.identifier.value"
      }]
    },
    {
      "id" : "AA12Model.applicant.birthDate",
      "path" : "AA12Model.applicant.birthDate",
      "short" : "出生日期",
      "definition" : "申請者的出生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.birthDate"
      }]
    },
    {
      "id" : "AA12Model.applicant.gender",
      "path" : "AA12Model.applicant.gender",
      "short" : "性別",
      "definition" : "申請者的性別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.gender"
      }]
    },
    {
      "id" : "AA12Model.applicant.address",
      "path" : "AA12Model.applicant.address",
      "short" : "住址",
      "definition" : "申請者的居住地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.address.text"
      }]
    },
    {
      "id" : "AA12Model.applicant.phone",
      "path" : "AA12Model.applicant.phone",
      "short" : "聯絡電話",
      "definition" : "申請者的聯絡電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "Patient.telecom.value"
      }]
    },
    {
      "id" : "AA12Model.physician",
      "path" : "AA12Model.physician",
      "short" : "醫師基本資料",
      "definition" : "填寫意見書的醫師資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.physician.name",
      "path" : "AA12Model.physician.name",
      "short" : "醫師姓名",
      "definition" : "填寫意見書的醫師姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCorePractitioner.name.text"
      }]
    },
    {
      "id" : "AA12Model.physician.institutionName",
      "path" : "AA12Model.physician.institutionName",
      "short" : "醫療機構名稱",
      "definition" : "醫師所屬的醫療機構名稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCoreOrganization.name"
      }]
    },
    {
      "id" : "AA12Model.physician.institutionAddress",
      "path" : "AA12Model.physician.institutionAddress",
      "short" : "醫療機構地址",
      "definition" : "醫療機構的地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCoreOrganization.address.text"
      }]
    },
    {
      "id" : "AA12Model.physician.institutionPhone",
      "path" : "AA12Model.physician.institutionPhone",
      "short" : "醫療機構電話",
      "definition" : "醫療機構的電話",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCoreOrganization.telecom.value"
      }]
    },
    {
      "id" : "AA12Model.physician.institutionFax",
      "path" : "AA12Model.physician.institutionFax",
      "short" : "醫療機構傳真",
      "definition" : "醫療機構的傳真號碼",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCoreOrganization.telecom.value"
      }]
    },
    {
      "id" : "AA12Model.basicInformation",
      "path" : "AA12Model.basicInformation",
      "short" : "基本資料",
      "definition" : "醫師意見書的基本資料",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.basicInformation.lastConsultationDate",
      "path" : "AA12Model.basicInformation.lastConsultationDate",
      "short" : "最近一次診察日期",
      "definition" : "最近一次診察的日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='last-consultation-date').answer.valueDate"
      }]
    },
    {
      "id" : "AA12Model.basicInformation.opinionCount",
      "path" : "AA12Model.basicInformation.opinionCount",
      "short" : "製作意見書次數",
      "definition" : "製作意見書的次數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='opinion-count').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.basicInformation.previousOpinionDate",
      "path" : "AA12Model.basicInformation.previousOpinionDate",
      "short" : "前次意見書日期",
      "definition" : "前次意見書的日期（若非初次）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='previous-opinion-date').answer.valueDate"
      }]
    },
    {
      "id" : "AA12Model.basicInformation.consultationDepartments",
      "path" : "AA12Model.basicInformation.consultationDepartments",
      "short" : "目前診察科別",
      "definition" : "目前診察的科別資訊",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "TWCorePractitionerRole.specialty"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis",
      "path" : "AA12Model.diseaseDiagnosis",
      "short" : "相關疾病診斷意見",
      "definition" : "疾病診斷相關資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.diseases",
      "path" : "AA12Model.diseaseDiagnosis.diseases",
      "short" : "診斷疾病",
      "definition" : "診斷的疾病資訊",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.diseases.diseaseName",
      "path" : "AA12Model.diseaseDiagnosis.diseases.diseaseName",
      "short" : "疾病名稱",
      "definition" : "診斷的疾病名稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='disease-name').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.diseases.icdCode",
      "path" : "AA12Model.diseaseDiagnosis.diseases.icdCode",
      "short" : "ICD代碼",
      "definition" : "疾病的ICD代碼",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='disease-icd').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.diseases.onsetDate",
      "path" : "AA12Model.diseaseDiagnosis.diseases.onsetDate",
      "short" : "發病日期",
      "definition" : "疾病發病的日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='disease-onset').answer.valueDate"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.conditionStatus",
      "path" : "AA12Model.diseaseDiagnosis.conditionStatus",
      "short" : "病情狀態",
      "definition" : "病情的穩定狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='condition-status').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.diseaseDiagnosis.unstableReason",
      "path" : "AA12Model.diseaseDiagnosis.unstableReason",
      "short" : "不穩定狀態說明",
      "definition" : "病情不穩定時的詳細說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='unstable-reason').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.recentTreatment",
      "path" : "AA12Model.recentTreatment",
      "short" : "近期治療",
      "definition" : "過去7日內接受的治療",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.recentTreatment.treatmentType",
      "path" : "AA12Model.recentTreatment.treatmentType",
      "short" : "治療類型",
      "definition" : "接受的治療類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='recent-treatment').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.recentTreatment.otherTreatment",
      "path" : "AA12Model.recentTreatment.otherTreatment",
      "short" : "其他重要治療",
      "definition" : "其他重要的治療項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='other-treatment').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion",
      "path" : "AA12Model.medicalCareOpinion",
      "short" : "醫事照護意見",
      "definition" : "醫師的照護意見",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.carePrecautions",
      "path" : "AA12Model.medicalCareOpinion.carePrecautions",
      "short" : "照顧應注意事項及處置方法",
      "definition" : "照顧時應注意的事項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.carePrecautions.precautionType",
      "path" : "AA12Model.medicalCareOpinion.carePrecautions.precautionType",
      "short" : "注意事項類型",
      "definition" : "需要注意的事項類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='care-precautions').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.carePrecautions.otherPrecaution",
      "path" : "AA12Model.medicalCareOpinion.carePrecautions.otherPrecaution",
      "short" : "其他注意事項",
      "definition" : "其他未列出的注意事項",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='other-precautions').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.carePrecautions.treatmentSuggestions",
      "path" : "AA12Model.medicalCareOpinion.carePrecautions.treatmentSuggestions",
      "short" : "處置建議",
      "definition" : "醫師的處置建議",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='treatment-suggestions').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.recommendedServices",
      "path" : "AA12Model.medicalCareOpinion.recommendedServices",
      "short" : "建議介入之醫事照護服務",
      "definition" : "建議的照護服務",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.recommendedServices.serviceType",
      "path" : "AA12Model.medicalCareOpinion.recommendedServices.serviceType",
      "short" : "服務類型",
      "definition" : "建議的照護服務類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='recommended-services').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.recommendedServices.otherService",
      "path" : "AA12Model.medicalCareOpinion.recommendedServices.otherService",
      "short" : "其他醫事照護服務",
      "definition" : "其他未列出的照護服務",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='other-services').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.sixMonthImpact",
      "path" : "AA12Model.medicalCareOpinion.sixMonthImpact",
      "short" : "最近六個月內可能影響長照服務使用狀況",
      "definition" : "最近六個月內可能影響長照服務使用狀況的說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='six-month-impact').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.infectiousDisease",
      "path" : "AA12Model.medicalCareOpinion.infectiousDisease",
      "short" : "罹患感染症",
      "definition" : "感染症相關資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.infectiousDisease.hasInfectiousDisease",
      "path" : "AA12Model.medicalCareOpinion.infectiousDisease.hasInfectiousDisease",
      "short" : "是否罹患感染症",
      "definition" : "是否罹患感染症",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='infectious-disease').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.infectiousDisease.diseaseName",
      "path" : "AA12Model.medicalCareOpinion.infectiousDisease.diseaseName",
      "short" : "感染症病名",
      "definition" : "感染的疾病名稱",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='infectious-disease-name').answer.valueString"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.infectiousDisease.isolationRequired",
      "path" : "AA12Model.medicalCareOpinion.infectiousDisease.isolationRequired",
      "short" : "是否需要隔離",
      "definition" : "是否需要隔離措施",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='isolation-required').answer.valueBoolean"
      }]
    },
    {
      "id" : "AA12Model.medicalCareOpinion.infectiousDisease.isolationType",
      "path" : "AA12Model.medicalCareOpinion.infectiousDisease.isolationType",
      "short" : "隔離類型",
      "definition" : "需要的隔離類型",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='isolation-type').answer.valueCoding"
      }]
    },
    {
      "id" : "AA12Model.physicalMentalStatus",
      "path" : "AA12Model.physicalMentalStatus",
      "short" : "身心狀態或特殊需要註記事項",
      "definition" : "身心狀態或特殊需要的註記事項",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "AA12ModelMapping",
        "map" : "QuestionnaireResponse.item.where(linkId='physical-mental-status').answer.valueString"
      }]
    }]
  }
}

```
