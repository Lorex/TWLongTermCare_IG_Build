# 長期照顧管理中心個案服務初篩表/轉介單文件打包 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧管理中心個案服務初篩表/轉介單文件打包**

## Resource Profile: 長期照顧管理中心個案服務初篩表/轉介單文件打包 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleReferral | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCBundleReferral |

 
此 Bundle 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件打包結構。 
注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-referral-example](Bundle-ltc-bundle-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCBundleReferral)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCBundleReferral.csv), [Excel](StructureDefinition-LTCBundleReferral.xlsx), [Schematron](StructureDefinition-LTCBundleReferral.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCBundleReferral",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleReferral",
  "version" : "1.0.0",
  "name" : "LTCBundleReferral",
  "title" : "長期照顧管理中心個案服務初篩表/轉介單文件打包",
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
  "description" : "此 Bundle 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件打包結構。\n\n注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。",
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
      "min" : 18,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "short" : "轉介單文件架構",
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
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "個案基本資料",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-disability",
      "path" : "Bundle.entry",
      "sliceName" : "condition-disability",
      "short" : "身心障礙手冊",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-disability.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-tube",
      "path" : "Bundle.entry",
      "sliceName" : "condition-tube",
      "short" : "管路",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-tube.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-crush",
      "path" : "Bundle.entry",
      "sliceName" : "condition-crush",
      "short" : "壓傷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-crush.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-residence",
      "path" : "Bundle.entry",
      "sliceName" : "condition-residence",
      "short" : "居住狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-residence.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionResidence"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-caregiver",
      "path" : "Bundle.entry",
      "sliceName" : "condition-caregiver",
      "short" : "看護",
      "min" : 1,
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
      "id" : "Bundle.entry:condition-problem",
      "path" : "Bundle.entry",
      "sliceName" : "condition-problem",
      "short" : "疾病狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-problem.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionProblem"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-need",
      "path" : "Bundle.entry",
      "sliceName" : "condition-need",
      "short" : "案主(家)主要問題及需求",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:condition-need.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Condition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionNeed"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:careplan",
      "path" : "Bundle.entry",
      "sliceName" : "careplan",
      "short" : "欲申請服務之種類",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:careplan.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-adl",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-adl",
      "short" : "ADL 失能項目評估",
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
      "short" : "IADL 失能項目評估",
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
      "id" : "Bundle.entry:questionnaire-sof",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-sof",
      "short" : "長者衰弱評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-sof.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralSOF"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver",
      "path" : "Bundle.entry",
      "sliceName" : "questionnaire-caregiver",
      "short" : "照顧者評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:questionnaire-caregiver.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter",
      "path" : "Bundle.entry",
      "sliceName" : "encounter",
      "short" : "出入院情形",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:encounter.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "short" : "填表者/轉介者資訊及簽名欄",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "short" : "填表單位資訊",
      "min" : 1,
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
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:goal",
      "path" : "Bundle.entry",
      "sliceName" : "goal",
      "short" : "治療目標，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:goal.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Goal",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:related-person-extra",
      "path" : "Bundle.entry",
      "sliceName" : "related-person-extra",
      "short" : "關係人，為了因應 FHIR 結構要求，此項目為選填。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:related-person-extra.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }],
      "mustSupport" : true
    }]
  }
}

```
