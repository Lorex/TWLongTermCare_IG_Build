# 居家護理－疾病史評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－疾病史評估邏輯模型**

## Logical Model: 居家護理－疾病史評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNMedicalHistoriesModel |

 
描述居家護理疾病史評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNMedicalHistoriesModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNMedicalHistoriesModel.csv), [Excel](StructureDefinition-HNMedicalHistoriesModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNMedicalHistoriesModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesModel",
  "version" : "1.1.0",
  "name" : "HNMedicalHistoriesModel",
  "title" : "居家護理－疾病史評估邏輯模型",
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
  "description" : "描述居家護理疾病史評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-medicalhistories-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse",
    "name" : "居家護理－疾病史評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNMedicalHistoriesModel",
      "path" : "HNMedicalHistoriesModel",
      "short" : "居家護理－疾病史評估邏輯模型",
      "definition" : "描述居家護理疾病史評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNMedicalHistoriesModel.date",
      "path" : "HNMedicalHistoriesModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.nurseID",
      "path" : "HNMedicalHistoriesModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.ansOther1",
      "path" : "HNMedicalHistoriesModel.ansOther1",
      "short" : "主要診斷",
      "definition" : "主要診斷",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='AnsOther_1')",
        "comment" : "來源欄位／題目：AnsOther_1"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.ansOther2",
      "path" : "HNMedicalHistoriesModel.ansOther2",
      "short" : "次要診斷",
      "definition" : "次要診斷",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='AnsOther_2')",
        "comment" : "來源欄位／題目：AnsOther_2"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7",
      "short" : "心臟問題(只包含心臟)",
      "definition" : "心臟問題(只包含心臟)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='心臟問題(只包含心臟)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7').item.where(linkId='MedicalHistoryQuestions.q32e5fad7.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='心臟問題(只包含心臟)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q32e5fad7.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7').item.where(linkId='MedicalHistoryQuestions.q32e5fad7.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='心臟問題(只包含心臟)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8",
      "short" : "周邊血管系統問題(包括高血壓)",
      "definition" : "周邊血管系統問題(包括高血壓)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qbeda0dd8.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc",
      "short" : "造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)",
      "definition" : "造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc').item.where(linkId='MedicalHistoryQuestions.q628b2adc.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q628b2adc.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc').item.where(linkId='MedicalHistoryQuestions.q628b2adc.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9",
      "short" : "呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)",
      "definition" : "呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q7e61f4f9.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479",
      "short" : "眼耳鼻喉問題",
      "definition" : "眼耳鼻喉問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='眼耳鼻喉問題']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479').item.where(linkId='MedicalHistoryQuestions.q958e3479.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='眼耳鼻喉問題'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q958e3479.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479').item.where(linkId='MedicalHistoryQuestions.q958e3479.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='眼耳鼻喉問題'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48",
      "short" : "上消化道問題(食道、胃、十二指腸)",
      "definition" : "上消化道問題(食道、胃、十二指腸)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48').item.where(linkId='MedicalHistoryQuestions.q5713fd48.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q5713fd48.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48').item.where(linkId='MedicalHistoryQuestions.q5713fd48.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939",
      "short" : "下消化道問題(小腸、大腸、直腸)",
      "definition" : "下消化道問題(小腸、大腸、直腸)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939').item.where(linkId='MedicalHistoryQuestions.q486b7939.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q486b7939.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939').item.where(linkId='MedicalHistoryQuestions.q486b7939.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283",
      "short" : "肝膽胰臟問題",
      "definition" : "肝膽胰臟問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肝膽胰臟問題']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283').item.where(linkId='MedicalHistoryQuestions.qb7ad0283.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肝膽胰臟問題'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qb7ad0283.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283').item.where(linkId='MedicalHistoryQuestions.qb7ad0283.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肝膽胰臟問題'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017",
      "short" : "腎臟問題",
      "definition" : "腎臟問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='腎臟問題']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017').item.where(linkId='MedicalHistoryQuestions.qc62d7017.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='腎臟問題'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qc62d7017.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017').item.where(linkId='MedicalHistoryQuestions.qc62d7017.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='腎臟問題'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3",
      "short" : "其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)",
      "definition" : "其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qa92ba1d3.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7",
      "short" : "肌肉骨骼皮膚問題",
      "definition" : "肌肉骨骼皮膚問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7').item.where(linkId='MedicalHistoryQuestions.q48138ed7.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q48138ed7.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7').item.where(linkId='MedicalHistoryQuestions.q48138ed7.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f",
      "short" : "神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)",
      "definition" : "神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f').item.where(linkId='MedicalHistoryQuestions.q24f8809f.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q24f8809f.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f').item.where(linkId='MedicalHistoryQuestions.q24f8809f.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c",
      "short" : "內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)",
      "definition" : "內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c').item.where(linkId='MedicalHistoryQuestions.qe34cc85c.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.qe34cc85c.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c').item.where(linkId='MedicalHistoryQuestions.qe34cc85c.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271",
      "short" : "情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)",
      "definition" : "情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)']"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271.answer",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271').item.where(linkId='MedicalHistoryQuestions.q2c808271.Answer')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)'].Answer"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271.statement",
      "path" : "HNMedicalHistoriesModel.medicalHistoryQuestions.q2c808271.statement",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271').item.where(linkId='MedicalHistoryQuestions.q2c808271.Statement')",
        "comment" : "來源欄位／題目：MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)'].Statement"
      }]
    },
    {
      "id" : "HNMedicalHistoriesModel.isTemporary",
      "path" : "HNMedicalHistoriesModel.isTemporary",
      "short" : "是否暫存",
      "definition" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-medicalhistories-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
