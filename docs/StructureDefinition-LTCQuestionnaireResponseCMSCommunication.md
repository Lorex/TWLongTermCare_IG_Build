# 照顧管理評估量表－個案溝通能力問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－個案溝通能力問卷回覆**

## Resource Profile: 照顧管理評估量表－個案溝通能力問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseCMSCommunication |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案溝通能力問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-communication-example](QuestionnaireResponse-ltc-questionnaire-response-communication-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseCMSCommunication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSCommunication",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseCMSCommunication",
  "title" : "照顧管理評估量表－個案溝通能力問卷回覆",
  "status" : "active",
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案溝通能力問卷的回覆資料。",
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
      "min" : 5,
      "max" : "6"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c1",
      "short" : "C1. 個案意識狀態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "fixedString" : "C1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案意識狀態"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案意識狀態的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案意識狀態的回覆。[應填入以下字串之一：清醒 | 嗜睡 | 混亂 | 呆滯 | 昏迷 | 其他（同時描述內容）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c1a",
      "short" : "C1a. 能對外來刺激做出有意義反應的能力",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "C1a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "能對外來刺激做出有意義反應的能力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "能對外來刺激做出有意義反應的能力的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c1a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "能對外來刺激做出有意義反應的能力的回覆。[應填入以下字串之一：對疼痛刺激無反應，且無表情 | 僅對疼痛刺激有反應，但無法口頭表達 | 偶而可以口頭表達不適]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-c2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c2",
      "short" : "C2. 個案視力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "C2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案視力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案視力的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案視力的回覆。[應填入以下字串之一：正常 | 輕度障礙 | 中度障礙 | 重度障礙 | 極重度障礙 | 失明 | 無法評估]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-c3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c3",
      "short" : "C3. 個案聽力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "C3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案聽力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案聽力的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案聽力的回覆。[應填入以下字串之一：適當 | 輕度障礙 | 中度障礙 | 重度障礙 | 無法評估]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-c4",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c4",
      "short" : "C4. 個案表達能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c4.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "C4"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c4.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案表達能力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c4.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案表達能力的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c4.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案表達能力的回覆。[應填入以下字串之一：良好 | 僅可表達簡單的意思 | 雖能表達簡單的意思，但多數難以理解 | 僅可表達零碎的字或詞 | 無法表達/無法令人理解/不具意義]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-c5",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-c5",
      "short" : "C5. 個案理解能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-c5.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "C5"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c5.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案理解能力"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c5.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "個案理解能力的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-c5.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案理解能力的回覆。[應填入以下字串之一：良好 | 僅可理解簡單的句子 | 僅可理解關鍵的字或詞 | 無法理解 | 無法判斷理解能力]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
