# 居家護理－藥物安全性評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－藥物安全性評估邏輯模型**

## Logical Model: 居家護理－藥物安全性評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNDrugSafetiesModel |

 
描述居家護理藥物安全性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNDrugSafetiesModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNDrugSafetiesModel.csv), [Excel](StructureDefinition-HNDrugSafetiesModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNDrugSafetiesModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesModel",
  "version" : "1.1.0",
  "name" : "HNDrugSafetiesModel",
  "title" : "居家護理－藥物安全性評估邏輯模型",
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
  "description" : "描述居家護理藥物安全性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-drugsafeties-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse",
    "name" : "居家護理－藥物安全性評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNDrugSafetiesModel",
      "path" : "HNDrugSafetiesModel",
      "short" : "居家護理－藥物安全性評估邏輯模型",
      "definition" : "描述居家護理藥物安全性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNDrugSafetiesModel.date",
      "path" : "HNDrugSafetiesModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.nurseID",
      "path" : "HNDrugSafetiesModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.statement",
      "path" : "HNDrugSafetiesModel.statement",
      "short" : "無法評估原因或備註",
      "definition" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions",
      "path" : "HNDrugSafetiesModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q1b200653",
      "path" : "HNDrugSafetiesModel.questions.q1b200653",
      "short" : "是否有長期使用藥物",
      "definition" : "是否有長期使用藥物",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1b200653')",
        "comment" : "來源欄位／題目：Questions[Question='是否有長期使用藥物']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q1b200653.answer",
      "path" : "HNDrugSafetiesModel.questions.q1b200653.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1b200653').item.where(linkId='Questions.q1b200653.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='是否有長期使用藥物'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q1b200653.statement1",
      "path" : "HNDrugSafetiesModel.questions.q1b200653.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1b200653').item.where(linkId='Questions.q1b200653.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='是否有長期使用藥物'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qb5202c4c",
      "path" : "HNDrugSafetiesModel.questions.qb5202c4c",
      "short" : "目前使用中的藥物種類",
      "definition" : "目前使用中的藥物種類",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c')",
        "comment" : "來源欄位／題目：Questions[Question='目前使用中的藥物種類']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qb5202c4c.answer",
      "path" : "HNDrugSafetiesModel.questions.qb5202c4c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c').item.where(linkId='Questions.qb5202c4c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='目前使用中的藥物種類'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qb5202c4c.statement1",
      "path" : "HNDrugSafetiesModel.questions.qb5202c4c.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c').item.where(linkId='Questions.qb5202c4c.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='目前使用中的藥物種類'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q023931ae",
      "path" : "HNDrugSafetiesModel.questions.q023931ae",
      "short" : "使用精神用藥",
      "definition" : "使用精神用藥",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q023931ae')",
        "comment" : "來源欄位／題目：Questions[Question='使用精神用藥']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q023931ae.answer",
      "path" : "HNDrugSafetiesModel.questions.q023931ae.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q023931ae').item.where(linkId='Questions.q023931ae.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='使用精神用藥'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q023931ae.statement1",
      "path" : "HNDrugSafetiesModel.questions.q023931ae.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q023931ae').item.where(linkId='Questions.q023931ae.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='使用精神用藥'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc7a63c2d",
      "path" : "HNDrugSafetiesModel.questions.qc7a63c2d",
      "short" : "使用止痛用藥",
      "definition" : "使用止痛用藥",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d')",
        "comment" : "來源欄位／題目：Questions[Question='使用止痛用藥']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc7a63c2d.answer",
      "path" : "HNDrugSafetiesModel.questions.qc7a63c2d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d').item.where(linkId='Questions.qc7a63c2d.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='使用止痛用藥'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc7a63c2d.statement1",
      "path" : "HNDrugSafetiesModel.questions.qc7a63c2d.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d').item.where(linkId='Questions.qc7a63c2d.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='使用止痛用藥'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q0482b7eb",
      "path" : "HNDrugSafetiesModel.questions.q0482b7eb",
      "short" : "是否存在多重用藥問題",
      "definition" : "是否存在多重用藥問題",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb')",
        "comment" : "來源欄位／題目：Questions[Question='是否存在多重用藥問題']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q0482b7eb.answer",
      "path" : "HNDrugSafetiesModel.questions.q0482b7eb.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-523a43c4a46a"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb').item.where(linkId='Questions.q0482b7eb.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='是否存在多重用藥問題'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.q0482b7eb.statement1",
      "path" : "HNDrugSafetiesModel.questions.q0482b7eb.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb').item.where(linkId='Questions.q0482b7eb.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='是否存在多重用藥問題'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc67400fe",
      "path" : "HNDrugSafetiesModel.questions.qc67400fe",
      "short" : "目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)",
      "definition" : "目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe')",
        "comment" : "來源欄位／題目：Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)']"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc67400fe.answer",
      "path" : "HNDrugSafetiesModel.questions.qc67400fe.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe').item.where(linkId='Questions.qc67400fe.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)'].Answer"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.questions.qc67400fe.statement1",
      "path" : "HNDrugSafetiesModel.questions.qc67400fe.statement1",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe').item.where(linkId='Questions.qc67400fe.Statement1')",
        "comment" : "來源欄位／題目：Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)'].Statement1"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses",
      "path" : "HNDrugSafetiesModel.drugInUses",
      "short" : "使用中的藥物",
      "definition" : "使用中的藥物",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses')",
        "comment" : "來源欄位／題目：DrugInUses"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses.name",
      "path" : "HNDrugSafetiesModel.drugInUses.name",
      "short" : "藥物品項",
      "definition" : "藥物品項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Name')",
        "comment" : "來源欄位／題目：DrugInUses.Name"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses.volume",
      "path" : "HNDrugSafetiesModel.drugInUses.volume",
      "short" : "劑量",
      "definition" : "劑量",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Volume')",
        "comment" : "來源欄位／題目：DrugInUses.Volume"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses.frequency",
      "path" : "HNDrugSafetiesModel.drugInUses.frequency",
      "short" : "頻率",
      "definition" : "頻率",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Frequency')",
        "comment" : "來源欄位／題目：DrugInUses.Frequency"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses.purpose",
      "path" : "HNDrugSafetiesModel.drugInUses.purpose",
      "short" : "用途",
      "definition" : "用途",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Purpose')",
        "comment" : "來源欄位／題目：DrugInUses.Purpose"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.drugInUses.remark",
      "path" : "HNDrugSafetiesModel.drugInUses.remark",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Remark')",
        "comment" : "來源欄位／題目：DrugInUses.Remark"
      }]
    },
    {
      "id" : "HNDrugSafetiesModel.isTemporary",
      "path" : "HNDrugSafetiesModel.isTemporary",
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
        "identity" : "hn-drugsafeties-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
