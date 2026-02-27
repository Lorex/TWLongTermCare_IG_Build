# 照顧管理評估量表－居家環境與社會參與問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－居家環境與社會參與問卷回覆**

## Resource Profile: 照顧管理評估量表－居家環境與社會參與問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseCMSSociety |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－居家環境與社會參與問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-society-example](QuestionnaireResponse-ltc-questionnaire-response-society-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseCMSSociety)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSSociety.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSSociety.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSSociety.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSSociety",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseCMSSociety",
  "title" : "照顧管理評估量表－居家環境與社會參與問卷回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－居家環境與社會參與問卷的回覆資料。",
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
      "min" : 4,
      "max" : "11"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1a",
      "short" : "H1a. 請問個案目前的居住狀況？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案目前的居住狀況？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案目前的居住狀況？[應填入以下字串之一：獨居 | 與家人或其他人同住 | 住在機構 | 政府補助居住服務 | 其他]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1b",
      "short" : "H1b. 請問目前哪些人與個案同住？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問目前哪些人與個案同住？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問目前哪些人與個案同住？[可複選：配偶或同居人 | 父親（含配偶或同居人的父親） | 母親（含配偶或同居人的母親） | 子女（含媳婿） | 兄弟姐妹 | （外）祖父母 | （外）孫子女 | 其他親戚 | 子女家輪流住 | 同儕朋友 | 其他]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1c",
      "short" : "H1c. 請問個案居住在幾樓？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案居住在幾樓？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案居住在幾樓？",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1d",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1d",
      "short" : "H1d. 請問是否有電梯？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1d.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1d"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1d.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問是否有電梯？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1d.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1d.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1e",
      "short" : "H1e. 請問個案居住處是否有任何環境上的障礙會影響到日常生活？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1e"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案居住處是否有任何環境上的障礙會影響到日常生活？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案居住處是否有任何環境上的障礙會影響到日常生活？[應填入以下字串之一：環境構造上的障礙並不構成問題 | 個案的活動範圍有階梯 | 個案的活動範圍有跌倒風險 | 個案從室內到室外有階梯或門檻 | 個案使用助行器或輪椅，室內走道過於狹窄或有阻礙 | 空間不夠置放額外的醫療設備或器材 | 其他 | 不適用]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H1e1",
      "short" : "H1e1. 有跌倒風險地點",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H1e1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "有跌倒風險地點"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-H1e1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "有跌倒風險地點[可複選：客廳 | 臥室 | 走道 | 樓梯 | 陽台 | 吃飯處 | 書房 | 浴室 | 居家出入口 | 其他]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H2a",
      "short" : "H2a. 請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H2a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？[應填入以下字串之一：沒有親朋好友 | 從不聯絡 | 很少聯絡 | 每個月至少 1 次 | 每週至少 1 次]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H2b",
      "short" : "H2b. 請問個案目前是否有參與下列的活動？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H2b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案目前是否有參與下列的活動？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案目前是否有參與下列的活動？[應填入以下字串之一：沒有 | 每年至少 1 次 | 每六個月至少 1 次 | 每三個月至少 1 次 | 每一個月至少 1 次 | 每週至少 1 次]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H2c",
      "short" : "H2c. 請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H2c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H2c1",
      "short" : "H2c1. 請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H2c1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？[應填入以下字串之一：監督陪同 | 口頭/手勢的提示 | 部分肢體協助 | 完全肢體協助]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-H2c2",
      "short" : "H2c2. 請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "H2c2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-H2c2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？[應填入以下字串之一：一個月不到 1 次 | 至少一個月 1 次，但不是每個星期 | 至少一星期 1 次]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
