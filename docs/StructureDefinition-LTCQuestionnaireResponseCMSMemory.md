# 照顧管理評估量表－個案短期記憶力問卷回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－個案短期記憶力問卷回覆**

## Resource Profile: 照顧管理評估量表－個案短期記憶力問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCQuestionnaireResponseCMSMemory |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案短期記憶力問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-memory-example](QuestionnaireResponse-ltc-questionnaire-response-memory-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseCMSMemory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSMemory.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSMemory.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSMemory.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSMemory",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseCMSMemory",
  "title" : "照顧管理評估量表－個案短期記憶力問卷回覆",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案短期記憶力問卷的回覆資料。",
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
      "max" : "5"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d0",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-d0",
      "short" : "D0. 個案短期記憶力回答狀態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-d0.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "fixedString" : "D0"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d0.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案短期記憶力回答狀態"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d0.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案短期記憶力回答狀態的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d0.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案短期記憶力回答狀態的回覆。[應填入以下字串之一：個案可回答 D 大題 | 個案本人無法回答 | 拒答]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-d1a",
      "short" : "D1a. 個案能重複的詞數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "D1a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案能重複的詞數"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案能重複的詞數的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案能重複的詞數的回覆。[應填入 0-3 之間的整數]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-d1b1",
      "short" : "D1b1. 回憶起「襪子」",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "D1b1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "回憶起「襪子」"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "回憶起「襪子」的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回憶起「襪子」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-d1b2",
      "short" : "D1b2. 回憶起「藍色」",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "D1b2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "回憶起「藍色」"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "回憶起「藍色」的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回憶起「藍色」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-d1b3",
      "short" : "D1b3. 回憶起「床鋪」",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "D1b3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "回憶起「床鋪」"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "回憶起「床鋪」的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-d1b3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回憶起「床鋪」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
