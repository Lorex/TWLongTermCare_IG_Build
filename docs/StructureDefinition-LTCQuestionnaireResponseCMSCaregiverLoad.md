# 照顧管理評估量表－主要照顧者負荷問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表－主要照顧者負荷問卷回覆**

## Resource Profile: 照顧管理評估量表－主要照顧者負荷問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseCMSCaregiverLoad |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者負荷問卷的回覆資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)
* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-caregiver-load-example](QuestionnaireResponse-ltc-questionnaire-response-caregiver-load-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseCMSCaregiverLoad",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseCMSCaregiverLoad",
  "title" : "照顧管理評估量表－主要照顧者負荷問卷回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者負荷問卷的回覆資料。",
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
      "min" : 5,
      "max" : "5"
    },
    {
      "id" : "QuestionnaireResponse.item.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "short" : "問題或量表項目的編號。[應填入以下字串之一：J01 | J02 | J03 | J04 | J05]"
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "short" : "問題或量表項目的內容描述。[應填入以下問題之一：睡眠受到干擾 | 體力上的負荷 | 需分配時間照顧其他家人 | 對個案的行為感到困擾 | 無法承受照顧壓力]",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回覆的內容。[應填入 true 或 false]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
