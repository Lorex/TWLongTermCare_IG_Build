# 照顧管理評估量表－情緒及行為型態問卷回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－情緒及行為型態問卷回覆**

## Resource Profile: 照顧管理評估量表－情緒及行為型態問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCQuestionnaireResponseCMSMental |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－情緒及行為型態問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-mental-example](QuestionnaireResponse-ltc-questionnaire-response-mental-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseCMSMental)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSMental.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSMental.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSMental.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSMental",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseCMSMental",
  "title" : "照顧管理評估量表－情緒及行為型態問卷回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－情緒及行為型態問卷的回覆資料。",
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
      "min" : 14,
      "max" : "14"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I01",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I01",
      "short" : "I01. 遊走",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I01.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I01"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I01.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "遊走"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I01.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I01.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "遊走[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I02",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I02",
      "short" : "I02. 日夜顛倒/作息混亂",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I02.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I02"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I02.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "日夜顛倒/作息混亂"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I02.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I02.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "日夜顛倒/作息混亂[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I03",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I03",
      "short" : "I03. 語言攻擊行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I03.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I03"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I03.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "語言攻擊行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I03.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I03.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "語言攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I04",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I04",
      "short" : "I04. 肢體攻擊行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I04.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I04"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I04.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "肢體攻擊行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I04.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I04.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "肢體攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I05",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I05",
      "short" : "I05. 干擾行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I05.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I05"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I05.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "干擾行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I05.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I05.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "干擾行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I06",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I06",
      "short" : "I06. 抗拒照護",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I06.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I06"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I06.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "抗拒照護"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I06.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I06.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "抗拒照護[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I07",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I07",
      "short" : "I07. 妄想",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I07.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I07"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I07.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "妄想"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I07.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I07.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "妄想[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I08",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I08",
      "short" : "I08. 幻覺",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I08.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I08"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I08.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "幻覺"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I08.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I08.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "幻覺[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I09",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I09",
      "short" : "I09. 恐懼或焦慮",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I09.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I09"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I09.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "恐懼或焦慮"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I09.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I09.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "恐懼或焦慮[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I10",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I10",
      "short" : "I10. 憂鬱及負性症狀",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I10.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I10"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I10.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "憂鬱及負性症狀"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I10.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I10.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "憂鬱及負性症狀[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I11",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I11",
      "short" : "I11. 自傷行為及自殺（包含意念及行為）",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I11.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I11"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I11.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "自傷行為及自殺（包含意念及行為）"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I11.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I11.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "自傷行為及自殺（包含意念及行為）[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I12",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I12",
      "short" : "I12. 重複行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I12.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I12"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I12.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "重複行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I12.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I12.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "重複行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I13",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I13",
      "short" : "I13. 對物品的攻擊行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I13.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I13"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I13.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "對物品的攻擊行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I13.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I13.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "對物品的攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-I14",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-I14",
      "short" : "I14. 其他不適當以及不潔行為",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-I14.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "I14"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I14.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "其他不適當以及不潔行為"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I14.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-I14.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "其他不適當以及不潔行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
