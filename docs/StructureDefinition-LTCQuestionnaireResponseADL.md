# ADL 問卷回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ADL 問卷回覆**

## Resource Profile: ADL 問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCQuestionnaireResponseADL |

 
此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md) and [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-adl-example](QuestionnaireResponse-ltc-questionnaire-response-adl-example.md) and [QuestionnaireResponse/ltc-questionnaire-response-adl-referral-example](QuestionnaireResponse-ltc-questionnaire-response-adl-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseADL)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseADL.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseADL.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseADL.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseADL",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseADL",
  "title" : "ADL 問卷回覆",
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
  "description" : "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。",
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
      "min" : 11,
      "max" : "11"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E1",
      "short" : "E1. 吃飯",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "fixedString" : "E1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "吃飯"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "吃飯的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E2",
      "short" : "E2. 洗澡",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "洗澡"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "洗澡的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E3",
      "short" : "E3. 穿脫衣物",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "穿脫衣物"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個人修飾的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E4",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E4",
      "short" : "E4. 個人修飾",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E4.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E4"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E4.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個人修飾"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E4.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "穿脫衣物的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E4.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E5",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E5",
      "short" : "E5. 大便控制",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E5.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E5"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E5.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "大便控制"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E5.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "大便控制的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E5.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E6",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E6",
      "short" : "E6. 小便控制",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E6.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E6"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E6.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "小便控制"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E6.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "小便控制的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E6.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E7",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E7",
      "short" : "E7. 上廁所",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E7.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E7"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E7.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "上廁所"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E7.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "上廁所的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E7.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E8",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E8",
      "short" : "E8. 移位",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E8.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E8"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E8.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "移位"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E8.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "移位的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E8.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 15 / 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E9",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E9",
      "short" : "E9. 走路",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E9.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E9"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E9.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "走路"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E9.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "走路的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E9.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 15 / 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E10",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E10",
      "short" : "E10. 上下樓梯",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E10.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E10"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E10.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "上下樓梯"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E10.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "上下樓梯的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E10.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（例如 10 / 5 / 0），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-E11",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-E11",
      "short" : "E11. 行動能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-E11.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "E11"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E11.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "床椅移位"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E11.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "行動能力的分數",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-E11.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整數分數（依題目定義），文字說明由問卷提供",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
