# 居家護理－簡易營養評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－簡易營養評估邏輯模型**

## Logical Model: 居家護理－簡易營養評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNMNASFsModel |

 
描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNMNASFsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNMNASFsModel.csv), [Excel](StructureDefinition-HNMNASFsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNMNASFsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsModel",
  "version" : "1.1.0",
  "name" : "HNMNASFsModel",
  "title" : "居家護理－簡易營養評估邏輯模型",
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
  "description" : "描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-mnasfs-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsResponse",
    "name" : "居家護理－簡易營養評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNMNASFsModel",
      "path" : "HNMNASFsModel",
      "short" : "居家護理－簡易營養評估邏輯模型",
      "definition" : "描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNMNASFsModel.date",
      "path" : "HNMNASFsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNMNASFsModel.nurseID",
      "path" : "HNMNASFsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions",
      "path" : "HNMNASFsModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q9eab1f0b",
      "path" : "HNMNASFsModel.questions.q9eab1f0b",
      "short" : "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？",
      "definition" : "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b')",
        "comment" : "來源欄位／題目：Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q9eab1f0b.answer",
      "path" : "HNMNASFsModel.questions.q9eab1f0b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cfb0b454818b"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b').item.where(linkId='Questions.q9eab1f0b.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qc9c61c04",
      "path" : "HNMNASFsModel.questions.qc9c61c04",
      "short" : "近三個月體重變化",
      "definition" : "近三個月體重變化",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04')",
        "comment" : "來源欄位／題目：Questions[Question='近三個月體重變化']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qc9c61c04.answer",
      "path" : "HNMNASFsModel.questions.qc9c61c04.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bff7df80c996"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04').item.where(linkId='Questions.qc9c61c04.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='近三個月體重變化'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qb3e55f55",
      "path" : "HNMNASFsModel.questions.qb3e55f55",
      "short" : "行動力",
      "definition" : "行動力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55')",
        "comment" : "來源欄位／題目：Questions[Question='行動力']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qb3e55f55.answer",
      "path" : "HNMNASFsModel.questions.qb3e55f55.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3baefb430e5b"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55').item.where(linkId='Questions.qb3e55f55.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='行動力'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q99f746cb",
      "path" : "HNMNASFsModel.questions.q99f746cb",
      "short" : "過去三個月內曾有精神性壓力或急性疾病發作？",
      "definition" : "過去三個月內曾有精神性壓力或急性疾病發作？",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb')",
        "comment" : "來源欄位／題目：Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q99f746cb.answer",
      "path" : "HNMNASFsModel.questions.q99f746cb.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb').item.where(linkId='Questions.q99f746cb.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qa4ab5839",
      "path" : "HNMNASFsModel.questions.qa4ab5839",
      "short" : "神經精神問題",
      "definition" : "神經精神問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839')",
        "comment" : "來源欄位／題目：Questions[Question='神經精神問題']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qa4ab5839.answer",
      "path" : "HNMNASFsModel.questions.qa4ab5839.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5f4a5d3ebea4"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839').item.where(linkId='Questions.qa4ab5839.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='神經精神問題'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q6073598b",
      "path" : "HNMNASFsModel.questions.q6073598b",
      "short" : "身體質量指數(BMI)=體重(公斤)/身高(公尺)2",
      "definition" : "身體質量指數(BMI)=體重(公斤)/身高(公尺)2",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6073598b')",
        "comment" : "來源欄位／題目：Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.q6073598b.answer",
      "path" : "HNMNASFsModel.questions.q6073598b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b8e0b67e2012"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6073598b').item.where(linkId='Questions.q6073598b.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qd38a556c",
      "path" : "HNMNASFsModel.questions.qd38a556c",
      "short" : "若BMI 無法取得，用小腿圍或臂中圍代替(公分)",
      "definition" : "若BMI 無法取得，用小腿圍或臂中圍代替(公分)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c')",
        "comment" : "來源欄位／題目：Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)']"
      }]
    },
    {
      "id" : "HNMNASFsModel.questions.qd38a556c.answer",
      "path" : "HNMNASFsModel.questions.qd38a556c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5d29c89b2d60"
      },
      "mapping" : [{
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c').item.where(linkId='Questions.qd38a556c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)'].Answer"
      }]
    },
    {
      "id" : "HNMNASFsModel.isTemporary",
      "path" : "HNMNASFsModel.isTemporary",
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
        "identity" : "hn-mnasfs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
