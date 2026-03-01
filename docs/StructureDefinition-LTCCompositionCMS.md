# 照顧管理評估量表文件架構 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表文件架構**

## Resource Profile: 照顧管理評估量表文件架構 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCCompositionCMS |

 
此 Composition 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md)
* Examples for this Profile: [Composition/ltc-composition-cms-example](Composition-ltc-composition-cms-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCompositionCMS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCompositionCMS.csv), [Excel](StructureDefinition-LTCCompositionCMS.xlsx), [Schematron](StructureDefinition-LTCCompositionCMS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCompositionCMS",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS",
  "version" : "1.0.0",
  "name" : "LTCCompositionCMS",
  "title" : "照顧管理評估量表文件架構",
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
  "description" : "此 Composition 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "short" : "照顧管理評估量表描述的個案",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"]
      }]
    },
    {
      "id" : "Composition.subject.reference",
      "path" : "Composition.subject.reference",
      "short" : "照顧管理評估量表描述的個案。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "title"
        }],
        "rules" : "open"
      },
      "min" : 11,
      "max" : "11"
    },
    {
      "id" : "Composition.section:patient",
      "path" : "Composition.section",
      "sliceName" : "patient",
      "short" : "A. 個案基本資料",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patient.title",
      "path" : "Composition.section.title",
      "short" : "個案基本資料",
      "min" : 1,
      "patternString" : "A. 個案基本資料",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patient.entry",
      "path" : "Composition.section.entry",
      "short" : "個案基本資料的內容",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"]
      }]
    },
    {
      "id" : "Composition.section:patient.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案基本資料的內容，含身心障礙手冊資料。身心障礙手冊的內容至少應填寫是否領有身心障礙手冊，如有領有身心障礙手冊，則續填身障類別與疾病代碼 (ICD-10)，如有多個身障疾病則可放入多個 Condition。[應輸入 Patient 與 Condition Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:related-person",
      "path" : "Composition.section",
      "sliceName" : "related-person",
      "short" : "B. 照顧者基本資料",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:related-person.title",
      "path" : "Composition.section.title",
      "short" : "照顧者基本資料",
      "min" : 1,
      "patternString" : "B. 照顧者基本資料",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:related-person.entry",
      "path" : "Composition.section.entry",
      "short" : "照顧者基本資料的內容，包含主要照顧者與次要照顧者資料，以及主要照顧者是否持有身心障礙手冊。",
      "min" : 3,
      "max" : "3",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver"]
      }]
    },
    {
      "id" : "Composition.section:related-person.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "照顧者基本資料的內容。[應輸入 RelatedPerson 與  LTCConditionDisability Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-communication",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-communication",
      "short" : "C. 個案溝通能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-communication.title",
      "path" : "Composition.section.title",
      "short" : "C. 個案溝通能力",
      "min" : 1,
      "patternString" : "C. 個案溝通能力",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-communication.entry",
      "path" : "Composition.section.entry",
      "short" : "個案溝通能力的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-communication.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案溝通能力的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-memory",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-memory",
      "short" : "D. 個案短期記憶力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-memory.title",
      "path" : "Composition.section.title",
      "short" : "D. 個案短期記憶力",
      "min" : 1,
      "patternString" : "D. 個案短期記憶力",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-memory.entry",
      "path" : "Composition.section.entry",
      "short" : "個案短期記憶力的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-memory.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案短期記憶力的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-adl",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-adl",
      "short" : "E. 個案日常活動功能量表 (ADLs)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-adl.title",
      "path" : "Composition.section.title",
      "short" : "E. 個案日常活動功能量表 (ADLs)",
      "min" : 1,
      "patternString" : "E. 個案日常活動功能量表 (ADLs)",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-adl.entry",
      "path" : "Composition.section.entry",
      "short" : "個案日常活動功能量表 (ADLs) 的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-adl.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案日常活動功能量表 (ADLs) 的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-iadl",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-iadl",
      "short" : "F. 個案工具性日常活動功能量表 (IADLs)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-iadl.title",
      "path" : "Composition.section.title",
      "short" : "F. 個案工具性日常活動功能量表 (IADLs)",
      "min" : 1,
      "patternString" : "F. 個案工具性日常活動功能量表 (IADLs)",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-iadl.entry",
      "path" : "Composition.section.entry",
      "short" : "個案工具性日常活動功能量表 (IADLs) 的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-iadl.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案工具性日常活動功能量表 (IADLs) 的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-special-care",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-special-care",
      "short" : "G. 特殊複雜照護需要",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-special-care.title",
      "path" : "Composition.section.title",
      "short" : "G. 特殊複雜照護需要",
      "min" : 1,
      "patternString" : "G. 特殊複雜照護需要",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-special-care.entry",
      "path" : "Composition.section.entry",
      "short" : "特殊複雜照護需要的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-special-care.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "特殊複雜照護需要的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-society",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-society",
      "short" : "H. 居家環境與社會參與",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-society.title",
      "path" : "Composition.section.title",
      "short" : "H. 居家環境與社會參與",
      "min" : 1,
      "patternString" : "H. 居家環境與社會參與",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-society.entry",
      "path" : "Composition.section.entry",
      "short" : "居家環境與社會參與的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-society.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "居家環境與社會參與的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-mental",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-mental",
      "short" : "I. 情緒及行為型態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-mental.title",
      "path" : "Composition.section.title",
      "short" : "I. 情緒及行為型態",
      "min" : 1,
      "patternString" : "I. 情緒及行為型態",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-mental.entry",
      "path" : "Composition.section.entry",
      "short" : "情緒及行為型態的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-mental.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "情緒及行為型態的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-load",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-caregiver-load",
      "short" : "J. 主要照護者負荷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-load.title",
      "path" : "Composition.section.title",
      "short" : "J. 主要照護者負荷",
      "min" : 1,
      "patternString" : "J. 主要照護者負荷",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-load.entry",
      "path" : "Composition.section.entry",
      "short" : "主要照護者負荷的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-load.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "主要照護者負荷的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-support",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-caregiver-support",
      "short" : "K. 主要照護者工作與支持",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-support.title",
      "path" : "Composition.section.title",
      "short" : "K. 主要照護者工作與支持",
      "min" : 1,
      "patternString" : "K. 主要照護者工作與支持",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-support.entry",
      "path" : "Composition.section.entry",
      "short" : "主要照護者工作與支持的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-caregiver-support.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "主要照護者工作與支持的內容。[應輸入 Questionnaire Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
