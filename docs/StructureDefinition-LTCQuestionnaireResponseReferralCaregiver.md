# 轉介單－照顧者問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單－照顧者問卷回覆**

## Resource Profile: 轉介單－照顧者問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseReferralCaregiver |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－照顧者問卷的回覆資料。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-caregiver-referral-example](QuestionnaireResponse-ltc-questionnaire-response-caregiver-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseReferralCaregiver",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseReferralCaregiver",
  "title" : "轉介單－照顧者問卷回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－照顧者問卷的回覆資料。",
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
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "short" : "問題或量表項目的內容描述。[應填入：是否有照顧者]",
      "min" : 1,
      "patternString" : "是否有照顧者"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "回覆的內容",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]:valueString",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "sliceName" : "valueString",
      "short" : "回覆的內容。[應填入以下字串之一：否 / 是，固定 / 是，無固定]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    }]
  }
}

```
