# IADL 問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IADL 問卷回覆**

## Resource Profile: IADL 問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseIADL |

 
此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md) and [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-iadl-example](QuestionnaireResponse-ltc-questionnaire-response-iadl-example.md) and [QuestionnaireResponse/ltc-questionnaire-response-iadl-referral-example](QuestionnaireResponse-ltc-questionnaire-response-iadl-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseIADL)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseIADL.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseIADL.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseIADL.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseIADL",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseIADL",
  "title" : "IADL 問卷回覆",
  "status" : "active",
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "open"
      },
      "short" : "E. 個案日常活動功能量表",
      "min" : 8,
      "max" : "8"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F1",
      "short" : "F1. 使用電話",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "fixedString" : "F1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "使用電話"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "使用電話的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F2",
      "short" : "F2. 購物",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "購物"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "購物的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F3",
      "short" : "F3. 備餐",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "備餐"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "備餐的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F4",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F4",
      "short" : "F4. 處理家務",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F4.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F4"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F4.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "處理家務"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F4.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "處理家務的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F4.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F5",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F5",
      "short" : "F5. 洗衣服",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F5.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F5"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F5.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "洗衣服"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F5.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "洗衣服的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F5.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F6",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F6",
      "short" : "F6. 外出",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F6.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F6"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F6.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "外出"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F6.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "外出的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F6.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F7",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F7",
      "short" : "F7. 服用藥物",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F7.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F7"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F7.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "服用藥物"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F7.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "服用藥物的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F7.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-F8",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-F8",
      "short" : "F8. 處理財務的能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-F8.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "F8"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F8.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "處理財務的能力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F8.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "處理財務能力的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-F8.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 0-4），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
