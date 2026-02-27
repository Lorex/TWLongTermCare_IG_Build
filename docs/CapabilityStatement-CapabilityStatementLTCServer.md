# 臺灣長期照顧實作指引 - 伺服端能力聲明 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臺灣長期照顧實作指引 - 伺服端能力聲明**

## CapabilityStatement: 臺灣長期照顧實作指引 - 伺服端能力聲明 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CapabilityStatement/CapabilityStatementLTCServer | *Version*:0.4.1 |
| Active as of 2024-12-19 | *Computable Name*: |

 
此 CapabilityStatement 定義了臺灣長期照顧實作指引中伺服端系統必須支援的 FHIR RESTful API 功能。 

 [Raw OpenAPI-Swagger Definition file](CapabilityStatementLTCServer.openapi.json) | [Download](CapabilityStatementLTCServer.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CapabilityStatementLTCServer",
  "url" : "http://ltc-ig.fhir.tw/CapabilityStatement/CapabilityStatementLTCServer",
  "version" : "0.4.1",
  "title" : "臺灣長期照顧實作指引 - 伺服端能力聲明",
  "status" : "active",
  "date" : "2024-12-19",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 CapabilityStatement 定義了臺灣長期照顧實作指引中伺服端系統必須支援的 FHIR RESTful API 功能。",
  "kind" : "instance",
  "software" : {
    "name" : "臺灣長期照顧實作指引伺服端",
    "version" : "0.4.0",
    "releaseDate" : "2024-12-19"
  },
  "implementation" : {
    "description" : "臺灣長期照顧實作指引伺服端實作",
    "url" : "http://ltc-ig.fhir.tw"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "臺灣長期照顧實作指引伺服端必須支援以下 FHIR RESTful API 功能",
    "security" : {
      "cors" : true,
      "service" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/restful-security-service",
          "code" : "OAuth",
          "display" : "OAuth"
        }]
      }],
      "description" : "支援 OAuth 2.0 認證機制"
    },
    "resource" : [{
      "type" : "Bundle",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Bundle",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleReferral",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleCMS"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Bundle 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Bundle 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Bundle 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Bundle 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["*"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "type",
        "type" : "token",
        "documentation" : "Bundle 類型"
      }]
    },
    {
      "type" : "Composition",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Composition",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Composition 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Composition 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Composition 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Composition 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["Composition:subject", "Composition:author"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "文件主體"
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "文件日期"
      },
      {
        "name" : "type",
        "type" : "token",
        "documentation" : "文件類型"
      }]
    },
    {
      "type" : "Patient",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Patient",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Patient 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Patient 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Patient 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Patient 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["Patient:organization"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "住民識別碼"
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "住民姓名"
      },
      {
        "name" : "birthdate",
        "type" : "date",
        "documentation" : "出生日期"
      },
      {
        "name" : "gender",
        "type" : "token",
        "documentation" : "性別"
      }]
    },
    {
      "type" : "CarePlan",
      "profile" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 CarePlan 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 CarePlan 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 CarePlan 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 CarePlan 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["CarePlan:subject", "CarePlan:author"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "照顧計畫主體"
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "照顧計畫狀態"
      },
      {
        "name" : "intent",
        "type" : "token",
        "documentation" : "照顧計畫意圖"
      }]
    },
    {
      "type" : "CareTeam",
      "profile" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 CareTeam 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 CareTeam 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 CareTeam 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 CareTeam 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["CareTeam:subject"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "照護團隊主體"
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "照護團隊狀態"
      }]
    },
    {
      "type" : "Condition",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Condition",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionResidence",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Condition 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Condition 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Condition 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Condition 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["Condition:subject", "Condition:recorder"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "病情主體"
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "病情代碼"
      },
      {
        "name" : "clinical-status",
        "type" : "token",
        "documentation" : "臨床狀態"
      }]
    },
    {
      "type" : "Goal",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Goal",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Goal 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Goal 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Goal 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Goal 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["Goal:subject"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "目標主體"
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "目標狀態"
      }]
    },
    {
      "type" : "MedicationAdministration",
      "profile" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCMedicationAdministration"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 MedicationAdministration 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 MedicationAdministration 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 MedicationAdministration 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 MedicationAdministration 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["MedicationAdministration:subject",
      "MedicationAdministration:medication"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "用藥主體"
      },
      {
        "name" : "medication",
        "type" : "reference",
        "documentation" : "藥物"
      },
      {
        "name" : "effective-time",
        "type" : "date",
        "documentation" : "用藥時間"
      }]
    },
    {
      "type" : "Observation",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Observation",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationFallingHistory",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSigns"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Observation 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Observation 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Observation 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Observation 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["Observation:subject"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "觀察主體"
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "觀察代碼"
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "觀察日期"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Organization",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Organization 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Organization 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Organization 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Organization 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["*"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "機構識別碼"
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "機構名稱"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Practitioner 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Practitioner 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Practitioner 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Practitioner 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["*"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "醫事人員識別碼"
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "醫事人員姓名"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 PractitionerRole 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 PractitionerRole 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 PractitionerRole 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 PractitionerRole 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["PractitionerRole:practitioner",
      "PractitionerRole:organization"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "practitioner",
        "type" : "reference",
        "documentation" : "醫事人員"
      },
      {
        "name" : "organization",
        "type" : "reference",
        "documentation" : "所屬機構"
      }]
    },
    {
      "type" : "Questionnaire",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 Questionnaire 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 Questionnaire 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 Questionnaire 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 Questionnaire 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["*"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "token",
        "documentation" : "問卷識別碼"
      },
      {
        "name" : "title",
        "type" : "string",
        "documentation" : "問卷標題"
      }]
    },
    {
      "type" : "QuestionnaireResponse",
      "profile" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver",
      "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralSOF"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 QuestionnaireResponse 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 QuestionnaireResponse 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 QuestionnaireResponse 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 QuestionnaireResponse 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["QuestionnaireResponse:subject",
      "QuestionnaireResponse:questionnaire"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "subject",
        "type" : "reference",
        "documentation" : "問卷回應主體"
      },
      {
        "name" : "questionnaire",
        "type" : "reference",
        "documentation" : "問卷"
      },
      {
        "name" : "authored",
        "type" : "date",
        "documentation" : "填寫日期"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
      "supportedProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "支援讀取 RelatedPerson 資源"
      },
      {
        "code" : "search-type",
        "documentation" : "支援搜尋 RelatedPerson 資源"
      },
      {
        "code" : "create",
        "documentation" : "支援建立 RelatedPerson 資源"
      },
      {
        "code" : "update",
        "documentation" : "支援更新 RelatedPerson 資源"
      }],
      "versioning" : "versioned-update",
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "not-supported",
      "referencePolicy" : ["literal"],
      "searchInclude" : ["RelatedPerson:patient"],
      "searchRevInclude" : ["*"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "相關人員主體"
      },
      {
        "name" : "relationship",
        "type" : "token",
        "documentation" : "關係類型"
      }]
    }]
  }]
}

```
