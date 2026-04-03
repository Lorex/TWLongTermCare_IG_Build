# 照顧管理評估量表－主要照顧者工作與支持 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－主要照顧者工作與支持**

## Resource Profile: 照顧管理評估量表－主要照顧者工作與支持 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCQuestionnaireResponseCMSCaregiverSupport |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者工作與支持的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-caregiver-support-example](QuestionnaireResponse-ltc-questionnaire-response-caregiver-support-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSCaregiverSupport",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseCMSCaregiverSupport",
  "title" : "照顧管理評估量表－主要照顧者工作與支持",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者工作與支持的回覆資料。",
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
      "min" : 8,
      "max" : "13"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K1",
      "short" : "K1.請問您是否與個案同住？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K1.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問您是否與個案同住？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問您是否與個案同住？[應填入以下字串之一：true | false]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K2",
      "short" : "K2.若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K2"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K2.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？[應填入以下字串之一：個案不能一個人在家 | 未滿一小時 | 一小時～未滿三小時 | 三小時～未滿六小時 | 六小時～未滿九小時 | 九小時以上]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K3",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K3",
      "short" : "K3.有無照顧其他失能家人或 3 歲以下幼兒？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K3.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K3"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K3.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "有無照顧其他失能家人或 3 歲以下幼兒？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K3.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K3.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "有無照顧其他失能家人或 3 歲以下幼兒？[應填入以下字串之一：沒有，僅個案 1 人 | 有，共________人（不包括個案）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K4",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K4",
      "short" : "K4.請問您已經照顧個案多久？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K4.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K4"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K4.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問您已經照顧個案多久？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K4.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K4.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問您已經照顧個案多久？",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K5",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K5",
      "short" : "K5.請問您過去 1 個月的健康狀況好不好？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K5.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K5"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K5.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問您過去 1 個月的健康狀況好不好？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K5.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K5.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "請問您過去 1 個月的健康狀況好不好？[應填入以下字串之一：非常好 | 很好 | 好 | 尚可 | 不好 | 非常不好]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K6",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K6",
      "short" : "K6.整體來說，您覺得您生活品質好不好？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K6.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K6"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K6.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "整體來說，您覺得您生活品質好不好？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K6.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K6.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "整體來說，您覺得您生活品質好不好？[應填入以下字串之一：非常好 | 很好 | 好 | 尚可 | 不好 | 非常不好]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7",
      "short" : "K7.請問您目前有沒有在工作？",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請問您目前有沒有在工作？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7a",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7a",
      "short" : "K7a.您以前有沒有工作（有沒有工作賺錢）？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7a.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7a"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7a.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "您以前有沒有工作（有沒有工作賺錢）？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7a.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7a.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7b",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7b",
      "short" : "K7b.您是不是因為照顧個案而不再工作？【跳答 K8】",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7b.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7b"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7b.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "您是不是因為照顧個案而不再工作？【跳答 K8】"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7b.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7b.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7c",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7c",
      "short" : "K7c.您目前的工作是全職還是兼職？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7c.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7c"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7c.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "您目前的工作是全職還是兼職？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7c.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7c.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "您目前的工作是全職還是兼職？[應填入以下字串之一：全職 | 兼職（部分時間工作）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7d",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7d",
      "short" : "K7d.為了照顧個案，您的工作是否受到影響？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7d.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7d"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7d.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "為了照顧個案，您的工作是否受到影響？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7d.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7d.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7e",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K7e",
      "short" : "K7e.若有影響，影響的結果為何？",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7e.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K7e"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7e.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "若有影響，影響的結果為何？"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7e.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K7e.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "若有影響，影響的結果為何？[應填入以下字串之一：必須減少工作時間 | 必須請假（事假、病假、家庭照顧假） | 必須彈性調整工作時間 | 其他（請說明）]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:item-K8",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "item-K8",
      "short" : "K8.請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:item-K8.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "K8"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K8.text",
      "path" : "QuestionnaireResponse.item.text",
      "min" : 1,
      "patternString" : "請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題："
    },
    {
      "id" : "QuestionnaireResponse.item:item-K8.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:item-K8.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
