# 長期照護管理中心個案服務初篩表/轉介單文件架構 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護管理中心個案服務初篩表/轉介單文件架構**

## Resource Profile: 長期照護管理中心個案服務初篩表/轉介單文件架構 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCCompositionReferral |

 
此 Composition 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件結構。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Examples for this Profile: [Composition/ltc-composition-referral-example](Composition-ltc-composition-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCompositionReferral)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCompositionReferral.csv), [Excel](StructureDefinition-LTCCompositionReferral.xlsx), [Schematron](StructureDefinition-LTCCompositionReferral.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCompositionReferral",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral",
  "version" : "1.0.0",
  "name" : "LTCCompositionReferral",
  "title" : "長期照護管理中心個案服務初篩表/轉介單文件架構",
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
  "description" : "此 Composition 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件結構。",
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
      "short" : "轉介單描述的個案",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"]
      }]
    },
    {
      "id" : "Composition.subject.reference",
      "path" : "Composition.subject.reference",
      "short" : "轉介單描述的個案。[應輸入 Patient Resource ID]",
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
      "min" : 16,
      "max" : "17"
    },
    {
      "id" : "Composition.section:patient",
      "path" : "Composition.section",
      "sliceName" : "patient",
      "short" : "個案基本資料",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patient.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "個案基本資料"
    },
    {
      "id" : "Composition.section:patient.entry",
      "path" : "Composition.section.entry",
      "short" : "個案基本資料的內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"]
      }]
    },
    {
      "id" : "Composition.section:patient.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "個案基本資料的內容。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-disability",
      "path" : "Composition.section",
      "sliceName" : "condition-disability",
      "short" : "身心障礙手冊",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-disability.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "身心障礙手冊"
    },
    {
      "id" : "Composition.section:condition-disability.entry",
      "path" : "Composition.section.entry",
      "short" : "身心障礙手冊的內容，至少應填寫是否領有身心障礙手冊，如有領有身心障礙手冊，則續填身障類別與疾病代碼 (ICD-10)，如有多個身障疾病則可放入多個 Condition。",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"]
      }]
    },
    {
      "id" : "Composition.section:condition-tube",
      "path" : "Composition.section",
      "sliceName" : "condition-tube",
      "short" : "管路",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-tube.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "管路"
    },
    {
      "id" : "Composition.section:condition-tube.entry",
      "path" : "Composition.section.entry",
      "short" : "管路的內容，至少應填寫是否有管路，如有管路，則續填管路類別，如有多個管路則可放入多個 Condition。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"]
      }]
    },
    {
      "id" : "Composition.section:condition-crush",
      "path" : "Composition.section",
      "sliceName" : "condition-crush",
      "short" : "壓傷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-crush.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "壓傷"
    },
    {
      "id" : "Composition.section:condition-crush.entry",
      "path" : "Composition.section.entry",
      "short" : "壓傷的內容，至少應填寫是否有壓傷，如有壓傷，則續填壓傷部位、等級與大小。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"]
      }]
    },
    {
      "id" : "Composition.section:condition-residence",
      "path" : "Composition.section",
      "sliceName" : "condition-residence",
      "short" : "居住狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-residence.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "居住狀況"
    },
    {
      "id" : "Composition.section:condition-residence.entry",
      "path" : "Composition.section.entry",
      "short" : "居住狀況的內容，應填寫個案獨居狀態。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionResidence"]
      }]
    },
    {
      "id" : "Composition.section:condition-caregiver",
      "path" : "Composition.section",
      "sliceName" : "condition-caregiver",
      "short" : "看護",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-caregiver.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "看護"
    },
    {
      "id" : "Composition.section:condition-caregiver.entry",
      "path" : "Composition.section.entry",
      "short" : "看護的內容，至少應填寫個案是否有看護，如有看護，則續填本國／外國籍看護人力配置狀況。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver"]
      }]
    },
    {
      "id" : "Composition.section:condition-problem",
      "path" : "Composition.section",
      "sliceName" : "condition-problem",
      "short" : "疾病狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-problem.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "疾病狀況"
    },
    {
      "id" : "Composition.section:condition-problem.entry",
      "path" : "Composition.section.entry",
      "short" : "案主(家)主要疾病",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore"]
      }]
    },
    {
      "id" : "Composition.section:condition-need",
      "path" : "Composition.section",
      "sliceName" : "condition-need",
      "short" : "案主(家)主要問題及需求",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:condition-need.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "案主(家)主要問題及需求"
    },
    {
      "id" : "Composition.section:condition-need.entry",
      "path" : "Composition.section.entry",
      "short" : "案主(家)主要問題及需求",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore"]
      }]
    },
    {
      "id" : "Composition.section:careplan",
      "path" : "Composition.section",
      "sliceName" : "careplan",
      "short" : "欲申請服務之種類",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:careplan.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "欲申請服務之種類"
    },
    {
      "id" : "Composition.section:careplan.entry",
      "path" : "Composition.section.entry",
      "short" : "欲申請服務之種類",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-adl",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-adl",
      "short" : "ADL 失能項目評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-adl.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "ADL 失能項目評估"
    },
    {
      "id" : "Composition.section:questionnaire-adl.entry",
      "path" : "Composition.section.entry",
      "short" : "ADL 失能項目評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-iadl",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-iadl",
      "short" : "IADL 失能項目評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-iadl.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "IADL 失能項目評估"
    },
    {
      "id" : "Composition.section:questionnaire-iadl.entry",
      "path" : "Composition.section.entry",
      "short" : "IADL 失能項目評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-sof",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-sof",
      "short" : "長者衰弱評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-sof.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "長者衰弱評估"
    },
    {
      "id" : "Composition.section:questionnaire-sof.entry",
      "path" : "Composition.section.entry",
      "short" : "長者衰弱評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralSOF"]
      }]
    },
    {
      "id" : "Composition.section:questionnaire-caregiver",
      "path" : "Composition.section",
      "sliceName" : "questionnaire-caregiver",
      "short" : "照顧者評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:questionnaire-caregiver.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "照顧者評估"
    },
    {
      "id" : "Composition.section:questionnaire-caregiver.entry",
      "path" : "Composition.section.entry",
      "short" : "照顧者評估",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver"]
      }]
    },
    {
      "id" : "Composition.section:encounter",
      "path" : "Composition.section",
      "sliceName" : "encounter",
      "short" : "出入院情形",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:encounter.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "出入院情形"
    },
    {
      "id" : "Composition.section:encounter.entry",
      "path" : "Composition.section.entry",
      "short" : "個案的出入院情形，若個案在住院中，則填入該次就診資料。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore"]
      }]
    },
    {
      "id" : "Composition.section:practitioner",
      "path" : "Composition.section",
      "sliceName" : "practitioner",
      "short" : "填表者/轉介者資訊及簽名欄",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:practitioner.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "填表者/轉介者資訊及簽名欄"
    },
    {
      "id" : "Composition.section:practitioner.entry",
      "path" : "Composition.section.entry",
      "short" : "填表者/轉介者資訊及簽名欄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "Composition.section:organization",
      "path" : "Composition.section",
      "sliceName" : "organization",
      "short" : "填表單位資訊",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:organization.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "填表單位資訊"
    },
    {
      "id" : "Composition.section:organization.entry",
      "path" : "Composition.section.entry",
      "short" : "填表單位資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "Composition.section:related-person-extra",
      "path" : "Composition.section",
      "sliceName" : "related-person-extra",
      "short" : "關係人",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:related-person-extra.title",
      "path" : "Composition.section.title",
      "min" : 1,
      "patternString" : "關係人"
    },
    {
      "id" : "Composition.section:related-person-extra.entry",
      "path" : "Composition.section.entry",
      "short" : "關係人的內容。",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }]
    },
    {
      "id" : "Composition.section:related-person-extra.entry.reference",
      "path" : "Composition.section.entry.reference",
      "short" : "關係人的內容。[應輸入 RelatedPerson Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
