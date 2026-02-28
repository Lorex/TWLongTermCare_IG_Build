# 長期照顧－問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－問卷**

## Resource Profile: 長期照顧－問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaire |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。 

**Usages:**

* Refer to this Profile: [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md), [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md) and [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md)
* Examples for this Profile: [AA12](Questionnaire-ltc-questionnaire-aa12-example.md), [ADLAssessment](Questionnaire-ltc-questionnaire-adl-assessment-example.md), [LTCQuestionnaireCaregiverLoad](Questionnaire-ltc-questionnaire-caregiver-load.md), [LTCQuestionnaireCaregiverSupport](Questionnaire-ltc-questionnaire-caregiver-support.md)... Show 12 more, [LTCQuestionnaireCaregiver](Questionnaire-ltc-questionnaire-caregiver.md), [CDR](Questionnaire-ltc-questionnaire-cdr.md), [LTCQuestionnaireCommunication](Questionnaire-ltc-questionnaire-communication.md), [LTCQuestionnaireIADL](Questionnaire-ltc-questionnaire-iadl.md), [LTCQuestionnaireMemory](Questionnaire-ltc-questionnaire-memory.md), [LTCQuestionnaireMental](Questionnaire-ltc-questionnaire-mental.md), [MMSE](Questionnaire-ltc-questionnaire-mmse.md), [LTCQuestionnaireSociety](Questionnaire-ltc-questionnaire-society.md), [LTCQuestionnaireSOF](Questionnaire-ltc-questionnaire-sof.md), [LTCQuestionnaireSpecialCare](Questionnaire-ltc-questionnaire-special-care.md), [AA01](Questionnaire-questionnaire-aa01-example.md) and [AA02](Questionnaire-questionnaire-aa02-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaire.csv), [Excel](StructureDefinition-LTCQuestionnaire.xlsx), [Schematron](StructureDefinition-LTCQuestionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaire",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaire",
  "title" : "長期照顧－問卷",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。",
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
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Questionnaire",
      "path" : "Questionnaire"
    },
    {
      "id" : "Questionnaire.url",
      "path" : "Questionnaire.url",
      "short" : "問卷的網址",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.identifier",
      "path" : "Questionnaire.identifier",
      "short" : "問卷的識別碼",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.version",
      "path" : "Questionnaire.version",
      "short" : "問卷的版本",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.name",
      "path" : "Questionnaire.name",
      "short" : "電腦可讀的問卷名稱，作為問卷的識別名稱",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.title",
      "path" : "Questionnaire.title",
      "short" : "人類可讀的問卷名稱，通常為紙本問卷上方的標題",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.status",
      "path" : "Questionnaire.status",
      "short" : "問卷的狀態。[應填入 draft / active / retired / unknown]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/publication-status"
      }
    },
    {
      "id" : "Questionnaire.item",
      "path" : "Questionnaire.item",
      "short" : "問卷的問題或量表項目",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.linkId",
      "path" : "Questionnaire.item.linkId",
      "short" : "問題或量表項目的唯一識別碼。[應填入獨立的編號]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.prefix",
      "path" : "Questionnaire.item.prefix",
      "short" : "問題或量表項目的前置標籤或人類可讀編號，通常為數字或字母。[應填入編號，如 1.、A.、I.、Q1. 等]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.text",
      "path" : "Questionnaire.item.text",
      "short" : "問題或量表項目的內容描述。[應填入問題或量表項目的內容]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.type",
      "path" : "Questionnaire.item.type",
      "short" : "問題或量表項目的資料型態。[應填入 group / display / boolean / decimal / integer / date / dateTime +]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.required",
      "path" : "Questionnaire.item.required",
      "short" : "問題或量表項目是否為必填。[應填入 true / false]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.repeats",
      "path" : "Questionnaire.item.repeats",
      "short" : "問題或量表項目是否可重複填寫。[應填入 true / false]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.readOnly",
      "path" : "Questionnaire.item.readOnly",
      "short" : "問題或量表項目是否為唯讀。[應填入 true / false]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.maxLength",
      "path" : "Questionnaire.item.maxLength",
      "short" : "問題或量表項目的最大長度。[應填入數字]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.answerOption",
      "path" : "Questionnaire.item.answerOption",
      "short" : "問題或量表項目的選項",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.initial",
      "path" : "Questionnaire.item.initial",
      "short" : "問題或量表項目的預設值",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.initial.value[x]",
      "path" : "Questionnaire.item.initial.value[x]",
      "short" : "預設值。[應填入預設值]",
      "mustSupport" : true
    },
    {
      "id" : "Questionnaire.item.item",
      "path" : "Questionnaire.item.item",
      "short" : "問卷的問題或量表項目（用於巢狀問卷）",
      "mustSupport" : true
    }]
  }
}

```
