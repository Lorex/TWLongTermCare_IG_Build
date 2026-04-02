# 照顧管理評估量表－特殊複雜照護需要問卷回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－特殊複雜照護需要問卷回覆**

## Resource Profile: 照顧管理評估量表－特殊複雜照護需要問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCQuestionnaireResponseCMSSpecialCare |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－特殊複雜照護需要問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-special-care-example](QuestionnaireResponse-ltc-questionnaire-response-special-care-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSSpecialCare",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseCMSSpecialCare",
  "title" : "照顧管理評估量表－特殊複雜照護需要問卷回覆",
  "status" : "active",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－特殊複雜照護需要問卷的回覆資料。",
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
      "short" : "特殊複雜照護需要",
      "min" : 19,
      "max" : "30"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G1",
      "short" : "G1. 疼痛狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "疼痛狀況"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "疼痛狀況的回覆",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "疼痛狀況的回覆。[應填入以下字串之一：個案本人回答 | 由主要照顧者代答]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G1a",
      "short" : "G1a. 過去 1 個月中，個案身體疼痛的程度？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G1a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "過去 1 個月中，個案身體疼痛的程度？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "疼痛程度",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "疼痛程度。[應填入以下字串之一：完全無疼痛 | 輕微的疼痛 | 中度疼痛 | 較嚴重的疼痛（尚可忍受的程度） | 非常嚴重的疼痛（無法忍受的程度） | 有疼痛狀況，無法判斷疼痛程度 | 不知道或無法判斷]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G1b",
      "short" : "G1b. 疼痛的頻率為：",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G1b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "疼痛的頻率為："
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G1b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "疼痛的頻率。[應填入以下字串之一：一個月數次 | 一週數次 | 每天疼痛 | 不知道或無法判斷]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2a",
      "short" : "G2a. 請問個案現在的皮膚狀況？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案現在的皮膚狀況？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "皮膚狀況。[應填入以下字串之一：正常 | 異常]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2b",
      "short" : "G2b. 皮膚暴露於潮溼環境的程度",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "皮膚暴露於潮溼環境的程度"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "皮膚暴露於潮溼環境的程度。[應填入以下字串之一：皮膚總是潮溼或整天包尿布 | 皮膚常常潮溼或半天包尿布 | 皮膚偶而潮溼或需要時才包尿布 | 乾燥、乾淨]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2c",
      "short" : "G2c. 請問皮膚異常的狀況為何？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問皮膚異常的狀況為何？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "皮膚異常的狀況。[應填入以下字串之一：乾燥有皮屑 | 瘀青 | 丘疹 | 傷口 | 疥瘡]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2d",
      "short" : "G2d. 傷口情形",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2d"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "傷口情形"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "傷口情形。[應填入以下字串之一：擦傷、割傷 | 壓傷 | 燒燙傷 | 術後傷口 | 延遲癒合之手術傷口 | 糖尿病足潰瘍 | 血管性潰瘍（動脈或靜脈；含足部以外的糖尿病潰瘍） | 其他]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2d1",
      "short" : "G2d1. 壓傷等級",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2d1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "壓傷等級"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "壓傷等級。[應填入以下字串之一：第一級 | 第二級 | 第三級 | 第四級 | 無法分級 | 深層組織損傷]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G2d2",
      "short" : "G2d2. 何者有壓傷或傷口",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G2d2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "何者有壓傷或傷口"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G2d2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "何者有壓傷或傷口。[應填入以下字串之一：右髖部皮膚不完整 | 左髖部皮膚不完整 | 背/臀部皮膚不完整 | 其他 | 其他接觸面皮膚不完整]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G3a",
      "short" : "G3a. 請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G3a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "關節僵硬受限制的影響。[應填入以下字串之一：是，有影響日常生活功能 | 否，沒有影響日常生活功能 | 無法評估]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G3b",
      "short" : "G3b. 受限制的位置",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G3b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "受限制的位置"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G3b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "受限制的位置。[應填入以下字串之一：肩關節 | 肘關節 | 腕指關節 | 髖關節 | 膝關節 | 踝關節 | 頸關節 | 全身關節]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4a",
      "short" : "G4a. 個案過去 3 個月體重是否減輕？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案過去 3 個月體重是否減輕？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案過去 3 個月體重是否減輕？[應填入以下字串之一：非計畫性體重減輕超過 3 公斤 | 非計畫性體重減輕 1～3 公斤 | 體重無變化 | 不知道 | 其他]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4b",
      "short" : "G4b. 個案身體質量指數（BMI）",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案身體質量指數（BMI）"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請依照顧管理評估量表 G4b.個案身體質量指數（BMI）之欄位填答。",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4c",
      "short" : "G4c. 個案一般的飲食狀況，以週為單位",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案一般的飲食狀況，以週為單位"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案一般的飲食狀況，以週為單位。[應填入以下字串之一：未吃完，每餐進食量不超過整餐的 1/3，或除正餐外沒有補充任何點心，或被禁食（或採清流質或靜脈輸液超過 5 天），或灌食自製管灌飲食小於 1600c.c./日，或攝取的管灌飲食小於 800 大卡/日 | 未吃完，每餐進食量不超過整餐的 1/2，或偶爾吃點心，或灌食自製管灌飲食小於 2000c.c./日，或攝取的管灌飲食小於 1000 大卡/日 | 未吃完，每餐進食量超過整餐的 1/2，或有時拒絕用餐但會吃點心，或灌食自製管灌飲食小於 2400c.c./日，或攝取的管灌飲食小於 1200 大卡/日 | 每餐吃完，從不拒絕用餐，或不需任何補充食物，或灌食自製管灌飲食大於 2400c.c./日，或採用管灌飲食（或靜脈營養）大於 1200 大卡/日]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4d1",
      "short" : "G4d1. 過去一年中體重減少了 5% 以上？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4d1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "過去一年中體重減少了 5% 以上？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "過去一年中體重減少了 5% 以上？[應填入以下字串之一：是 | 否 | 其他：（請說明）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4d2",
      "short" : "G4d2. 可以在不用手支撐的狀況下，從椅子上站起來 5 次？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4d2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "可以在不用手支撐的狀況下，從椅子上站起來 5 次？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "可以在不用手支撐的狀況下，從椅子上站起來 5 次？[應填入以下字串之一：是 | 否 | 其他：（請說明）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4d3",
      "short" : "G4d3. 經常有提不起勁來做事的感覺？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4d3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "經常有提不起勁來做事的感覺？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4d3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "經常有提不起勁來做事的感覺？[應填入以下字串之一：是 | 否 | 其他：（請說明）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4e",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4e",
      "short" : "G4e. 請問個案是否有經醫師診斷，且目前（6 個月內）仍存在的疾病",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4e.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4e"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4e.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案是否有經醫師診斷，且目前（6 個月內）仍存在的疾病"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4e.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "example" : [{
        "label" : "Value",
        "valueString" : "否 | 是，高血壓，目前正在治療、目前使用藥物"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4e.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4f",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G4f",
      "short" : "G4f. 個案尋求必要醫療時，是否需要服務介入協助？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4f.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G4f"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4f.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案尋求必要醫療時，是否需要服務介入協助？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4f.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G4f.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案尋求必要醫療時，是否需要服務介入協助？[應填入以下字串之一：不需要協助 | 需協助]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G5a",
      "short" : "G5a. 個案目前是否接受進階照顧？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G5a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案目前是否接受進階照顧？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案目前是否接受進階照顧？[應填入以下字串之一：無 | 有]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G5a1",
      "short" : "G5a1. 進階照顧的內容",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G5a1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "進階照顧的內容"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G5a1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "進階照顧的內容。[應填入以下字串之一：插入（更換）鼻胃管或胃造口管護理 | 管灌餵食 | 氣切護理（更換氣切造口管、氣切造廔口處理） | 呼吸器 | 抽痰(含蒸氣吸入) | 氧氣治療 | 血氧濃度測量 | 中心靜脈營養導管護理 | 靜脈注射、肌肉注射、皮內注射、皮下注射、點滴加藥 | 更換腎臟引流或膀胱引流管 | 更換膀胱造口管(含膀胱造口管護理) | 留置導尿管護理（含尿袋、小腿袋使用） | 一般導尿(單次導尿) | 糞嵌塞清除、大小量灌腸、留置性灌腸 | 腸道造口護理（含造口灌洗） | 引流管灌洗 | 傷口護理、換藥（不包括三、四級壓傷傷口處理） | 壓傷處理 | 疼痛處置 | 血液透析 | 腹膜透析]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G6a",
      "short" : "G6a. 個案是否有任何關於吞嚥困難的情形或症狀？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G6a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案是否有任何關於吞嚥困難的情形或症狀？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案是否有任何關於吞嚥困難的情形或症狀？[應填入以下字串之一：無吞嚥困難 | 抱怨吞嚥困難或吞嚥時會疼痛 | 吃東西或喝水的時候出現咳嗽或嗆咳 | 用餐後嘴中仍含著食物或留有殘餘食物 | 當喝或吃流質或固質的食物時，食物會從嘴角邊流失 | 有流口水之情形 | 無法評估]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G6b",
      "short" : "G6b. 個案有無接受過吞嚥訓練？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G6b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案有無接受過吞嚥訓練？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G6b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案有無接受過吞嚥訓練？",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G7",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G7",
      "short" : "G7. 個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G7.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G7"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G7.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G7.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:item-G7.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？[應填入以下字串之一：未接受過教導 | 維持認知功能 | 行為管理技巧 | 日常生活安排 | 安全與保護]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8a",
      "short" : "G8a. 請問個案是否能維持坐姿的平衡？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案是否能維持坐姿的平衡？（在沒有靠背支撐的狀況下）"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案是否能維持坐姿的平衡？[應填入以下字串之一：正常，不靠扶持能坐著達一分鐘以上 | 較差，不靠扶持只能坐著十秒鐘至一分鐘 | 極差，不靠扶持只能坐著少於十秒鐘（包括完全無法坐）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8b",
      "short" : "G8b. 請問個案是否能維持站立的平衡？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問個案是否能維持站立的平衡？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問個案是否能維持站立的平衡？[應填入以下字串之一：正常，不靠扶持能站立達一分鐘以上 | 較差，不靠扶持只能站立十秒鐘至一分鐘 | 極差，不靠扶持只能站立少於十秒鐘（包括完全無法站）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8c",
      "short" : "G8c. 在過去 12 個月中，個案有沒有跌倒或摔倒過？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "在過去 12 個月中，個案有沒有跌倒或摔倒過？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "在過去 12 個月中，個案有沒有跌倒或摔倒過？[應填入以下字串之一：沒有跌倒或摔倒過【跳答 G8d】 | 跌倒或摔倒 1 次【續答 G8c1】 | 跌倒或摔倒 2 次以上（含 2 次）【續答 G8c1】]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8c1",
      "short" : "G8c1. 現在移位或走路時是否異常",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8c1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "現在移位或走路時是否異常（指是否有困難）例如：頭暈、不穩或不安全"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8c1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "現在移位或走路時是否異常",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8d",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8d",
      "short" : "G8d. 你的日常活動是否因擔心跌倒而不做？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8d.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8d"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8d.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "你的日常活動是否因擔心跌倒而不做？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8d.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8d.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "你的日常活動是否因擔心跌倒而不做？[應填入以下字串之一：不會擔心 | 會擔心 | 不適用（坐輪椅者、臥床者）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8e",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-G8e",
      "short" : "G8e. 個案對於危險的認知？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8e.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "G8e"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8e.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "個案對於危險的認知？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8e.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-G8e.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "個案對於危險的認知？[應填入以下字串之一：有能力：可以認識日常生活危險來源 | 大部分有能力：可以認識大部分於日常生活中的危險來源 | 小範圍有能力：對於常會碰到的危險（尤其是住家環境中會出現的危險），卻常不認為那是危險 | 無能力：完全不自知有危險]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
