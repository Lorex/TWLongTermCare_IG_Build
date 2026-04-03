# 照顧管理評估量表文件打包 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表文件打包**

## Resource Profile: 照顧管理評估量表文件打包 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleCMS | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCBundleCMS |

 
此 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件打包結構。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-cms-example](Bundle-ltc-bundle-cms-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCBundleCMS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCBundleCMS.csv), [Excel](StructureDefinition-LTCBundleCMS.xlsx), [Schematron](StructureDefinition-LTCBundleCMS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCBundleCMS",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleCMS",
  "version" : "1.0.0",
  "name" : "LTCBundleCMS",
  "title" : "照顧管理評估量表文件打包",
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
  "description" : "此 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件打包結構。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Bundle 的類型",
      "patternCode" : "document",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 13,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "short" : "照顧管理評估量表文件結構",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "個案基本資料",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"]
      },
      {
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:related-person",
      "path" : "Bundle.entry",
      "sliceName" : "related-person",
      "short" : "照顧者基本資料",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:related-person.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-communication",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-communication",
      "short" : "個案溝通能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-communication.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-memory",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-memory",
      "short" : "個案短期記憶力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-memory.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-adl",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-adl",
      "short" : "個案日常生活能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-adl.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-iadl",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-iadl",
      "short" : "F. 個案工具性日常活動功能量表 (IADLs) 的內容",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-iadl.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-special-care",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-special-care",
      "short" : "個案特殊照護需求",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-special-care.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-society",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-society",
      "short" : "個案社會參與",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-society.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-mental",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-mental",
      "short" : "個案心理狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-mental.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver-load",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-caregiver-load",
      "short" : "照顧者負荷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver-load.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver-support",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-caregiver-support",
      "short" : "照顧者支持",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver-support.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-caregiver",
      "path" : "Bundle.entry",
      "sliceName" : "condition-caregiver",
      "short" : "照顧者相關狀況，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-caregiver.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "short" : "組織機構，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "short" : "醫護人員，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner-role",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner-role",
      "short" : "醫護人員角色，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner-role.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore"]
      }],
      "mustSupport" : true
    }]
  }
}

```
