# 在宅急症－照護資料集 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護資料集**

## Logical Model: 在宅急症－照護資料集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHCareDataset | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHCareDataset |

 
依在宅急症系統盤點建立的資料交換模型，涵蓋正式收案、訪視、照護、檢驗、給藥與轉銜。新增的臨床結構不代表來源系統已實作；來源差異見專用對照表。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHCareDataset.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHCareDataset.csv), [Excel](StructureDefinition-HAHCareDataset.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHCareDataset",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCareDataset",
  "version" : "1.1.0",
  "name" : "HAHCareDataset",
  "title" : "在宅急症－照護資料集",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "依在宅急症系統盤點建立的資料交換模型，涵蓋正式收案、訪視、照護、檢驗、給藥與轉銜。新增的臨床結構不代表來源系統已實作；來源差異見專用對照表。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hah-dataset-fhir",
    "uri" : "http://hl7.org/fhir/R4",
    "name" : "在宅急症資料集與 FHIR 資源對照"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCareDataset",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HAHCareDataset",
      "path" : "HAHCareDataset",
      "short" : "在宅急症－照護資料集",
      "definition" : "依在宅急症系統盤點建立的資料交換模型，涵蓋正式收案、訪視、照護、檢驗、給藥與轉銜。新增的臨床結構不代表來源系統已實作；來源差異見專用對照表。"
    },
    {
      "id" : "HAHCareDataset.patient",
      "path" : "HAHCareDataset.patient",
      "short" : "個案",
      "definition" : "個案。[以下欄位為此項資料的內嵌元素。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHPatient",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.identifier",
      "path" : "HAHCareDataset.patient.identifier",
      "short" : "個案識別碼",
      "definition" : "個案識別碼。[填入識別碼系統與值；至少包含機構給予的個案識別碼。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.identifier",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.name",
      "path" : "HAHCareDataset.patient.name",
      "short" : "姓名",
      "definition" : "姓名。[填入完整姓名；可另以 family 與 given 記錄姓和名。]",
      "min" : 1,
      "max" : "2",
      "type" : [{
        "code" : "HumanName"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.name",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.birthDate",
      "path" : "HAHCareDataset.patient.birthDate",
      "short" : "出生日期",
      "definition" : "出生日期。[以 YYYY-MM-DD 格式填寫日期。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.birthDate",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.gender",
      "path" : "HAHCareDataset.patient.gender",
      "short" : "性別",
      "definition" : "性別。[填入所綁定值集允許的代碼。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.gender",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.address",
      "path" : "HAHCareDataset.patient.address",
      "short" : "居住地址",
      "definition" : "居住地址。[填入完整地址，可另記錄縣市、行政區及郵遞區號。]",
      "min" : 1,
      "max" : "2",
      "type" : [{
        "code" : "Address"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.address",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.telecom",
      "path" : "HAHCareDataset.patient.telecom",
      "short" : "聯絡方式",
      "definition" : "聯絡方式。[填入聯絡種類 system 與實際號碼或地址 value。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.telecom",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.contact",
      "path" : "HAHCareDataset.patient.contact",
      "short" : "緊急聯絡人",
      "definition" : "緊急聯絡人。[以下欄位為此項資料的內嵌元素。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.contact",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.contact.name",
      "path" : "HAHCareDataset.patient.contact.name",
      "short" : "聯絡人姓名",
      "definition" : "聯絡人姓名。[填入完整姓名；可另以 family 與 given 記錄姓和名。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "HumanName"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.contact.name",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.contact.relationship",
      "path" : "HAHCareDataset.patient.contact.relationship",
      "short" : "與個案關係",
      "definition" : "與個案關係。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.contact.relationship",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.contact.telecom",
      "path" : "HAHCareDataset.patient.contact.telecom",
      "short" : "聯絡人電話",
      "definition" : "聯絡人電話。[填入聯絡種類 system 與實際號碼或地址 value。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.contact.telecom",
        "comment" : "來源與差異：patient.js"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.caregiver",
      "path" : "HAHCareDataset.patient.caregiver",
      "short" : "主要照顧者",
      "definition" : "主要照顧者。[應填入對應的 LTCRelatedPerson Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "RelatedPerson.patient",
        "comment" : "來源與差異：patient.js 的 caregiver；結構化參照為新增"
      }]
    },
    {
      "id" : "HAHCareDataset.patient.deceased",
      "path" : "HAHCareDataset.patient.deceased",
      "short" : "死亡時間",
      "definition" : "死亡時間。[填入已確認的死亡時間；不從結案狀態推定。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Patient.deceasedDateTime",
        "comment" : "來源與差異：新增；不可由結案旗標推定"
      }]
    },
    {
      "id" : "HAHCareDataset.intake",
      "path" : "HAHCareDataset.intake",
      "short" : "收案評估",
      "definition" : "收案評估。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHAssessmentResponse",
        "comment" : "來源與差異：新增結構化表單"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.criteria",
      "path" : "HAHCareDataset.intake.criteria",
      "short" : "計畫名稱與版本",
      "definition" : "計畫名稱與版本。[填入本次評估適用的照護計畫名稱及版本。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.item[criteria]",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.homeSafety",
      "path" : "HAHCareDataset.intake.homeSafety",
      "short" : "環境與設備可行性",
      "definition" : "環境與設備可行性。[描述供電、通訊、設備及居家環境是否可支援預定照護。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.item[homeSafety]",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.caregiverSupport",
      "path" : "HAHCareDataset.intake.caregiverSupport",
      "short" : "照顧者支援能力",
      "definition" : "照顧者支援能力。[描述照顧者可提供的協助及尚需補足的能力。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.item[caregiverSupport]",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.decision",
      "path" : "HAHCareDataset.intake.decision",
      "short" : "收案建議",
      "definition" : "收案建議。[填入代碼系統 system 與代碼 code。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-eligibility"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.item[decision]",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.reason",
      "path" : "HAHCareDataset.intake.reason",
      "short" : "評估原因",
      "definition" : "評估原因。[評估為 pending 或 ineligible 時填入原因。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.item[reason]",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.assessor",
      "path" : "HAHCareDataset.intake.assessor",
      "short" : "評估人員",
      "definition" : "評估人員。[應填入對應的 LTCPractitionerRole／LTCPractitioner Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.author",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.intake.date",
      "path" : "HAHCareDataset.intake.date",
      "short" : "評估時間",
      "definition" : "評估時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "QuestionnaireResponse.authored",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.episode",
      "path" : "HAHCareDataset.episode",
      "short" : "一次收案療程",
      "definition" : "一次收案療程。[以下欄位為此項資料的內嵌元素。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHEpisodeOfCare",
        "comment" : "來源與差異：由 Patient 收案資訊與 Encounter 彙整"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.identifier",
      "path" : "HAHCareDataset.episode.identifier",
      "short" : "療程識別碼",
      "definition" : "療程識別碼。[每次收案使用獨立識別碼，包含發碼系統與值。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.identifier",
        "comment" : "來源與差異：新增穩定識別"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.status",
      "path" : "HAHCareDataset.episode.status",
      "short" : "療程狀態",
      "definition" : "療程狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/episode-of-care-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.status",
        "comment" : "來源與差異：收案、結案狀態轉換"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.period",
      "path" : "HAHCareDataset.episode.period",
      "short" : "實際照護期間",
      "definition" : "實際照護期間。[填入收案開始時間；完成療程時另填實際結束時間。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.period",
        "comment" : "來源與差異：收案與結案日期"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.organization",
      "path" : "HAHCareDataset.episode.organization",
      "short" : "負責機構",
      "definition" : "負責機構。[應填入對應的 LTCOrganization Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.managingOrganization",
        "comment" : "來源與差異：patient.js、encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.diagnosis",
      "path" : "HAHCareDataset.episode.diagnosis",
      "short" : "收案診斷",
      "definition" : "收案診斷。[應填入對應的 HAHCondition Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.diagnosis.condition",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.team",
      "path" : "HAHCareDataset.episode.team",
      "short" : "照護團隊",
      "definition" : "照護團隊。[應填入對應的 HAHCareTeam Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.team",
        "comment" : "來源與差異：careTeam.js"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.referral",
      "path" : "HAHCareDataset.episode.referral",
      "short" : "收案轉介",
      "definition" : "收案轉介。[應填入對應的 HAHServiceRequest Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.referralRequest",
        "comment" : "來源與差異：新增轉介串聯"
      }]
    },
    {
      "id" : "HAHCareDataset.episode.outcome",
      "path" : "HAHCareDataset.episode.outcome",
      "short" : "結束原因",
      "definition" : "結束原因。[完成療程時填寫；其他原因另填 text 說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-outcome"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "EpisodeOfCare.extension[outcome]",
        "comment" : "來源與差異：EnrollmentInfo.vue；原因代碼需轉換"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter",
      "path" : "HAHCareDataset.encounter",
      "short" : "整段照護或單次訪視",
      "definition" : "整段照護或單次訪視。[以下欄位為此項資料的內嵌元素。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHEncounter",
        "comment" : "來源與差異：encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.identifier",
      "path" : "HAHCareDataset.encounter.identifier",
      "short" : "就診識別碼",
      "definition" : "就診識別碼。[填入識別系統 system 與識別值 value。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.identifier",
        "comment" : "來源與差異：新增交換識別"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.status",
      "path" : "HAHCareDataset.encounter.status",
      "short" : "就診狀態",
      "definition" : "就診狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.status",
        "comment" : "來源與差異：encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.class",
      "path" : "HAHCareDataset.encounter.class",
      "short" : "照護分類",
      "definition" : "照護分類。[整段照護填 IMP、實地訪視填 HH、遠距評估填 VR，使用 v3-ActCode。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.class",
        "comment" : "來源與差異：IMP、HH；VR 為明確化"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.period",
      "path" : "HAHCareDataset.encounter.period",
      "short" : "實際服務起訖",
      "definition" : "實際服務起訖。[使用 start、end 填入起訖時間；尚未結束時不預填實際結束時間。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.period",
        "comment" : "來源與差異：encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.parent",
      "path" : "HAHCareDataset.encounter.parent",
      "short" : "所屬整段照護",
      "definition" : "所屬整段照護。[單次訪視應參照本次整段照護的 Encounter。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.partOf",
        "comment" : "來源與差異：新增；單次訪視必填"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.mode",
      "path" : "HAHCareDataset.encounter.mode",
      "short" : "訪視方式",
      "definition" : "訪視方式。[單次訪視填入 in-person、video 或 telephone。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-visit-mode"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.extension[mode]",
        "comment" : "來源與差異：新增；單次訪視必填"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.participant",
      "path" : "HAHCareDataset.encounter.participant",
      "short" : "照護人員",
      "definition" : "照護人員。[應填入對應的 LTCPractitioner／LTCPractitionerRole Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.participant.individual",
        "comment" : "來源與差異：encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.organization",
      "path" : "HAHCareDataset.encounter.organization",
      "short" : "服務機構",
      "definition" : "服務機構。[應填入對應的 LTCOrganization Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.serviceProvider",
        "comment" : "來源與差異：encounter.js"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.location",
      "path" : "HAHCareDataset.encounter.location",
      "short" : "照護地點",
      "definition" : "照護地點。[應填入對應的 Location Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.location.location",
        "comment" : "來源與差異：task.js 的地點與座標"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.disposition",
      "path" : "HAHCareDataset.encounter.disposition",
      "short" : "出院或轉出處置",
      "definition" : "出院或轉出處置。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.hospitalization.dischargeDisposition",
        "comment" : "來源與差異：新增結構化資料"
      }]
    },
    {
      "id" : "HAHCareDataset.encounter.destination",
      "path" : "HAHCareDataset.encounter.destination",
      "short" : "接續照護地點",
      "definition" : "接續照護地點。[應填入對應的 Organization／Location Reference。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Encounter.hospitalization.destination",
        "comment" : "來源與差異：clinicalNote.js 的 transferHospital"
      }]
    },
    {
      "id" : "HAHCareDataset.problem",
      "path" : "HAHCareDataset.problem",
      "short" : "診斷與照護問題",
      "definition" : "診斷與照護問題。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHCondition",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.code",
      "path" : "HAHCareDataset.problem.code",
      "short" : "診斷或問題",
      "definition" : "診斷或問題。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.code",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.category",
      "path" : "HAHCareDataset.problem.category",
      "short" : "診斷或問題分類",
      "definition" : "診斷或問題分類。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.category",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.onset",
      "path" : "HAHCareDataset.problem.onset",
      "short" : "發病時間",
      "definition" : "發病時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.onsetDateTime",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.clinicalStatus",
      "path" : "HAHCareDataset.problem.clinicalStatus",
      "short" : "病情狀態",
      "definition" : "病情狀態。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.clinicalStatus",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.verification",
      "path" : "HAHCareDataset.problem.verification",
      "short" : "確認狀態",
      "definition" : "確認狀態。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.verificationStatus",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.problem.encounter",
      "path" : "HAHCareDataset.problem.encounter",
      "short" : "對應就診",
      "definition" : "對應就診。[應填入對應的 HAHEncounter Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Condition.encounter",
        "comment" : "來源與差異：condition.js"
      }]
    },
    {
      "id" : "HAHCareDataset.team",
      "path" : "HAHCareDataset.team",
      "short" : "團隊成員",
      "definition" : "團隊成員。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHCareTeam",
        "comment" : "來源與差異：careTeam.js"
      }]
    },
    {
      "id" : "HAHCareDataset.team.member",
      "path" : "HAHCareDataset.team.member",
      "short" : "人員或機構",
      "definition" : "人員或機構。[應填入對應的 Practitioner／PractitionerRole／Organization／RelatedPerson Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CareTeam.participant.member",
        "comment" : "來源與差異：careTeam.js"
      }]
    },
    {
      "id" : "HAHCareDataset.team.role",
      "path" : "HAHCareDataset.team.role",
      "short" : "成員角色",
      "definition" : "成員角色。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CareTeam.participant.role",
        "comment" : "來源與差異：careTeam.js"
      }]
    },
    {
      "id" : "HAHCareDataset.team.period",
      "path" : "HAHCareDataset.team.period",
      "short" : "責任期間",
      "definition" : "責任期間。[使用 start、end 填入起訖時間；尚未結束時不預填實際結束時間。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CareTeam.participant.period",
        "comment" : "來源與差異：新增期間約定"
      }]
    },
    {
      "id" : "HAHCareDataset.plan",
      "path" : "HAHCareDataset.plan",
      "short" : "照護計畫",
      "definition" : "照護計畫。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHCarePlan",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.plan.status",
      "path" : "HAHCareDataset.plan.status",
      "short" : "計畫狀態",
      "definition" : "計畫狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CarePlan.status",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.plan.period",
      "path" : "HAHCareDataset.plan.period",
      "short" : "計畫期間",
      "definition" : "計畫期間。[使用 start、end 填入起訖時間；尚未結束時不預填實際結束時間。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CarePlan.period",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.plan.problem",
      "path" : "HAHCareDataset.plan.problem",
      "short" : "處理的問題",
      "definition" : "處理的問題。[應填入對應的 HAHCondition Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CarePlan.addresses",
        "comment" : "來源與差異：需求語意校正"
      }]
    },
    {
      "id" : "HAHCareDataset.plan.goal",
      "path" : "HAHCareDataset.plan.goal",
      "short" : "預期目標",
      "definition" : "預期目標。[應填入對應的 HAHGoal Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CarePlan.goal",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.plan.activity",
      "path" : "HAHCareDataset.plan.activity",
      "short" : "預定服務或處方",
      "definition" : "預定服務或處方。[應填入對應的 HAHServiceRequest／HAHMedicationRequest Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "CarePlan.activity.reference；也可用 detail",
        "comment" : "來源與差異：goal.js 的 activity 結構化"
      }]
    },
    {
      "id" : "HAHCareDataset.goal",
      "path" : "HAHCareDataset.goal",
      "short" : "照護目標",
      "definition" : "照護目標。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHGoal",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.goal.description",
      "path" : "HAHCareDataset.goal.description",
      "short" : "預期結果",
      "definition" : "預期結果。[描述個案預期達成的結果，不填入疾病或問題清單。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Goal.description",
        "comment" : "來源與差異：目標與需求分開"
      }]
    },
    {
      "id" : "HAHCareDataset.goal.status",
      "path" : "HAHCareDataset.goal.status",
      "short" : "目標狀態",
      "definition" : "目標狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/goal-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Goal.lifecycleStatus",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.goal.due",
      "path" : "HAHCareDataset.goal.due",
      "short" : "預期達到日期",
      "definition" : "預期達到日期。[填入預期達成目標的日期，使用 YYYY-MM-DD 格式。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Goal.target.dueDate",
        "comment" : "來源與差異：goal.js"
      }]
    },
    {
      "id" : "HAHCareDataset.goal.result",
      "path" : "HAHCareDataset.goal.result",
      "short" : "評值結果",
      "definition" : "評值結果。[應填入對應的 Observation Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Goal.outcomeReference",
        "comment" : "來源與差異：新增結果串聯"
      }]
    },
    {
      "id" : "HAHCareDataset.request",
      "path" : "HAHCareDataset.request",
      "short" : "服務請求",
      "definition" : "服務請求。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHServiceRequest",
        "comment" : "來源與差異：queryNote.js；檢驗及轉介串聯新增"
      }]
    },
    {
      "id" : "HAHCareDataset.request.code",
      "path" : "HAHCareDataset.request.code",
      "short" : "服務項目",
      "definition" : "服務項目。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.code",
        "comment" : "來源與差異：原本僅部分文字，新增標準化"
      }]
    },
    {
      "id" : "HAHCareDataset.request.category",
      "path" : "HAHCareDataset.request.category",
      "short" : "服務分類",
      "definition" : "服務分類。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.category",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.request.status",
      "path" : "HAHCareDataset.request.status",
      "short" : "請求狀態",
      "definition" : "請求狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/request-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.status",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.request.intent",
      "path" : "HAHCareDataset.request.intent",
      "short" : "請求意圖",
      "definition" : "請求意圖。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/request-intent"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.intent",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.request.requester",
      "path" : "HAHCareDataset.request.requester",
      "short" : "開立者",
      "definition" : "開立者。[應填入對應的 Practitioner／PractitionerRole／Organization Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.requester",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.request.performer",
      "path" : "HAHCareDataset.request.performer",
      "short" : "執行對象",
      "definition" : "執行對象。[應填入對應的 Practitioner／PractitionerRole／Organization Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.performer",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.request.occurrence",
      "path" : "HAHCareDataset.request.occurrence",
      "short" : "預定服務期間",
      "definition" : "預定服務期間。[使用 start、end 填入起訖時間；尚未結束時不預填實際結束時間。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ServiceRequest.occurrencePeriod",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.observation",
      "path" : "HAHCareDataset.observation",
      "short" : "生命徵象與檢驗",
      "definition" : "生命徵象與檢驗。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "既有量測 Profiles、HAHObservationLab",
        "comment" : "來源與差異：CreateNursingNote.vue、PatientLabReports.vue"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.code",
      "path" : "HAHCareDataset.observation.code",
      "short" : "量測或檢驗項目",
      "definition" : "量測或檢驗項目。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.code",
        "comment" : "來源與差異：體溫、心率、呼吸、血壓、血氧、血糖、CRP、血氣等"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.status",
      "path" : "HAHCareDataset.observation.status",
      "short" : "結果狀態",
      "definition" : "結果狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.status",
        "comment" : "來源與差異：Observation 寫入流程"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.time",
      "path" : "HAHCareDataset.observation.time",
      "short" : "量測或採檢時間",
      "definition" : "量測或採檢時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.effectiveDateTime",
        "comment" : "來源與差異：既有資料"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.value",
      "path" : "HAHCareDataset.observation.value",
      "short" : "數值與單位",
      "definition" : "數值與單位。[填入實際量測數值、UCUM 系統與單位代碼。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.valueQuantity",
        "comment" : "來源與差異：既有數值；須確認 UCUM"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.textValue",
      "path" : "HAHCareDataset.observation.textValue",
      "short" : "文字結果",
      "definition" : "文字結果。[使用文字結果時填寫；不得與數值結果同時填入。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.valueString",
        "comment" : "來源與差異：檢驗頁既有資料"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.absentReason",
      "path" : "HAHCareDataset.observation.absentReason",
      "short" : "缺值原因",
      "definition" : "缺值原因。[缺少結果時說明原因，不以零值取代。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.dataAbsentReason",
        "comment" : "來源與差異：新增缺值規則"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.component",
      "path" : "HAHCareDataset.observation.component",
      "short" : "同次量測組成值",
      "definition" : "同次量測組成值。[血壓等複合量測分別填入各組成結果；單項檢驗不用此欄位。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.component",
        "comment" : "來源與差異：血壓專用；單項檢驗不使用"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.component.code",
      "path" : "HAHCareDataset.observation.component.code",
      "short" : "組成項目",
      "definition" : "組成項目。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.component.code",
        "comment" : "來源與差異：收縮壓或舒張壓"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.component.value",
      "path" : "HAHCareDataset.observation.component.value",
      "short" : "組成數值",
      "definition" : "組成數值。[填入數值、單位及單位代碼系統。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.component.valueQuantity",
        "comment" : "來源與差異：血壓數值與 mm[Hg]"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.device",
      "path" : "HAHCareDataset.observation.device",
      "short" : "量測設備",
      "definition" : "量測設備。[應填入對應的 HAHDevice Reference。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.device",
        "comment" : "來源與差異：Device.js"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.encounter",
      "path" : "HAHCareDataset.observation.encounter",
      "short" : "量測對應就診",
      "definition" : "量測對應就診。[應填入對應的 HAHEncounter Reference。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.encounter",
        "comment" : "來源與差異：修正 focus 作外鍵的用法"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.specimen",
      "path" : "HAHCareDataset.observation.specimen",
      "short" : "檢體",
      "definition" : "檢體。[應填入對應的 Specimen Reference。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.specimen",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.observation.referenceRange",
      "path" : "HAHCareDataset.observation.referenceRange",
      "short" : "參考區間",
      "definition" : "參考區間。[依此欄位型態填入實際資料。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Range"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Observation.referenceRange.low/high",
        "comment" : "來源與差異：PatientLabReports.vue"
      }]
    },
    {
      "id" : "HAHCareDataset.report",
      "path" : "HAHCareDataset.report",
      "short" : "檢驗報告",
      "definition" : "檢驗報告。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHDiagnosticReport",
        "comment" : "來源與差異：新增報告層"
      }]
    },
    {
      "id" : "HAHCareDataset.report.identifier",
      "path" : "HAHCareDataset.report.identifier",
      "short" : "報告識別碼",
      "definition" : "報告識別碼。[填入識別系統 system 與識別值 value。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.identifier",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.report.code",
      "path" : "HAHCareDataset.report.code",
      "short" : "報告種類",
      "definition" : "報告種類。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.code",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.report.status",
      "path" : "HAHCareDataset.report.status",
      "short" : "報告狀態",
      "definition" : "報告狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/diagnostic-report-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.status",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.report.result",
      "path" : "HAHCareDataset.report.result",
      "short" : "單項結果",
      "definition" : "單項結果。[應填入對應的 HAHObservationLab Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHObservationLab"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.result",
        "comment" : "來源與差異：連結既有結果"
      }]
    },
    {
      "id" : "HAHCareDataset.report.specimen",
      "path" : "HAHCareDataset.report.specimen",
      "short" : "檢體",
      "definition" : "檢體。[應填入對應的 Specimen Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.specimen",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.report.issued",
      "path" : "HAHCareDataset.report.issued",
      "short" : "報告發布時間",
      "definition" : "報告發布時間。[依此欄位型態填入實際資料。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DiagnosticReport.issued",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder",
      "path" : "HAHCareDataset.medicationOrder",
      "short" : "給藥處方",
      "definition" : "給藥處方。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHMedicationRequest",
        "comment" : "來源與差異：新增；送藥畫面不等於處方"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder.medication",
      "path" : "HAHCareDataset.medicationOrder.medication",
      "short" : "藥品",
      "definition" : "藥品。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationRequest.medicationCodeableConcept 或 medicationReference",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder.status",
      "path" : "HAHCareDataset.medicationOrder.status",
      "short" : "處方狀態",
      "definition" : "處方狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationrequest-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationRequest.status",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder.intent",
      "path" : "HAHCareDataset.medicationOrder.intent",
      "short" : "處方意圖",
      "definition" : "處方意圖。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationrequest-intent"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationRequest.intent",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder.dosage",
      "path" : "HAHCareDataset.medicationOrder.dosage",
      "short" : "劑量頻率與途徑",
      "definition" : "劑量頻率與途徑。[填入用法文字；已知的頻率、途徑、劑量及速率應分別填入 Dosage 子欄位。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Dosage"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationRequest.dosageInstruction",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.medicationOrder.requester",
      "path" : "HAHCareDataset.medicationOrder.requester",
      "short" : "開立者",
      "definition" : "開立者。[應填入對應的 Practitioner／PractitionerRole Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationRequest.requester",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration",
      "path" : "HAHCareDataset.administration",
      "short" : "實際給藥",
      "definition" : "實際給藥。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHMedicationAdministration",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.request",
      "path" : "HAHCareDataset.administration.request",
      "short" : "對應處方",
      "definition" : "對應處方。[應填入對應的 HAHMedicationRequest Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.request",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.status",
      "path" : "HAHCareDataset.administration.status",
      "short" : "給藥狀態",
      "definition" : "給藥狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medication-admin-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.status",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.reason",
      "path" : "HAHCareDataset.administration.reason",
      "short" : "未給藥或停止原因",
      "definition" : "未給藥或停止原因。[未給藥或停止時填入原因。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.statusReason",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.time",
      "path" : "HAHCareDataset.administration.time",
      "short" : "單次給藥時間",
      "definition" : "單次給藥時間。[單次給藥填實際時間；持續輸注改填期間。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.effectiveDateTime",
        "comment" : "來源與差異：新增；與期間擇一"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.period",
      "path" : "HAHCareDataset.administration.period",
      "short" : "輸注期間",
      "definition" : "輸注期間。[持續輸注填實際起訖期間，不能用排程代替。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.effectivePeriod",
        "comment" : "來源與差異：新增；與時間點擇一"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.dose",
      "path" : "HAHCareDataset.administration.dose",
      "short" : "給藥劑量",
      "definition" : "給藥劑量。[填實際劑量及單位；尚未給藥時不強填零值。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.dosage.dose",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.rate",
      "path" : "HAHCareDataset.administration.rate",
      "short" : "給藥速率",
      "definition" : "給藥速率。[填輸注速率與單位，例如 mL/h；不代表處方建議。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.dosage.rateQuantity",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.administration.route",
      "path" : "HAHCareDataset.administration.route",
      "short" : "給藥途徑",
      "definition" : "給藥途徑。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "MedicationAdministration.dosage.route",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.assessment",
      "path" : "HAHCareDataset.assessment",
      "short" : "臨床評估",
      "definition" : "臨床評估。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHClinicalImpression",
        "comment" : "來源與差異：clinicalNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.assessment.summary",
      "path" : "HAHCareDataset.assessment.summary",
      "short" : "評估摘要",
      "definition" : "評估摘要。[以文字記錄整體判斷，並參照相關診斷、檢驗與措施。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ClinicalImpression.summary",
        "comment" : "來源與差異：原 description、SOAP 文字"
      }]
    },
    {
      "id" : "HAHCareDataset.assessment.assessor",
      "path" : "HAHCareDataset.assessment.assessor",
      "short" : "評估人員",
      "definition" : "評估人員。[應填入對應的 Practitioner／PractitionerRole Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ClinicalImpression.assessor",
        "comment" : "來源與差異：clinicalNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.assessment.time",
      "path" : "HAHCareDataset.assessment.time",
      "short" : "評估時間",
      "definition" : "評估時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ClinicalImpression.effectiveDateTime",
        "comment" : "來源與差異：原服務時間"
      }]
    },
    {
      "id" : "HAHCareDataset.assessment.support",
      "path" : "HAHCareDataset.assessment.support",
      "short" : "支持證據",
      "definition" : "支持證據。[應填入對應的 Resource Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "ClinicalImpression.supportingInfo",
        "comment" : "來源與差異：Observation、附件等"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure",
      "path" : "HAHCareDataset.procedure",
      "short" : "已執行處置",
      "definition" : "已執行處置。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHProcedure",
        "comment" : "來源與差異：原護理措施文字；結構化新增"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure.code",
      "path" : "HAHCareDataset.procedure.code",
      "short" : "處置項目",
      "definition" : "處置項目。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Procedure.code",
        "comment" : "來源與差異：原 selectedInterventions"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure.status",
      "path" : "HAHCareDataset.procedure.status",
      "short" : "處置狀態",
      "definition" : "處置狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/event-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Procedure.status",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure.period",
      "path" : "HAHCareDataset.procedure.period",
      "short" : "執行期間",
      "definition" : "執行期間。[使用 start、end 填入起訖時間；尚未結束時不預填實際結束時間。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Procedure.performedPeriod",
        "comment" : "來源與差異：新增；也可用 performedDateTime"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure.performer",
      "path" : "HAHCareDataset.procedure.performer",
      "short" : "執行人員",
      "definition" : "執行人員。[應填入對應的 Practitioner／PractitionerRole Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Procedure.performer.actor",
        "comment" : "來源與差異：既有人員"
      }]
    },
    {
      "id" : "HAHCareDataset.procedure.outcome",
      "path" : "HAHCareDataset.procedure.outcome",
      "short" : "處置結果",
      "definition" : "處置結果。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Procedure.outcome",
        "comment" : "來源與差異：原評值文字"
      }]
    },
    {
      "id" : "HAHCareDataset.allergy",
      "path" : "HAHCareDataset.allergy",
      "short" : "過敏資訊",
      "definition" : "過敏資訊。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHAllergyIntolerance",
        "comment" : "來源與差異：原 Condition 過敏旗標不足，新增結構"
      }]
    },
    {
      "id" : "HAHCareDataset.allergy.substance",
      "path" : "HAHCareDataset.allergy.substance",
      "short" : "物質或過敏狀態",
      "definition" : "物質或過敏狀態。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "AllergyIntolerance.code",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.allergy.verification",
      "path" : "HAHCareDataset.allergy.verification",
      "short" : "確認狀態",
      "definition" : "確認狀態。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "AllergyIntolerance.verificationStatus",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.allergy.manifestation",
      "path" : "HAHCareDataset.allergy.manifestation",
      "short" : "反應表現",
      "definition" : "反應表現。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "AllergyIntolerance.reaction.manifestation",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.consent",
      "path" : "HAHCareDataset.consent",
      "short" : "照護同意",
      "definition" : "照護同意。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHConsent",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.consent.status",
      "path" : "HAHCareDataset.consent.status",
      "short" : "同意狀態",
      "definition" : "同意狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/consent-state-codes"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Consent.status",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.consent.scope",
      "path" : "HAHCareDataset.consent.scope",
      "short" : "同意範圍",
      "definition" : "同意範圍。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Consent.scope",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.consent.source",
      "path" : "HAHCareDataset.consent.source",
      "short" : "來源文件",
      "definition" : "來源文件。[參照記錄原始同意文件的 DocumentReference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Consent.sourceReference",
        "comment" : "來源與差異：新增；也可用 sourceAttachment"
      }]
    },
    {
      "id" : "HAHCareDataset.communication",
      "path" : "HAHCareDataset.communication",
      "short" : "照會與交班",
      "definition" : "照會與交班。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHCommunication",
        "comment" : "來源與差異：queryNote.js、handover_notification.py"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.category",
      "path" : "HAHCareDataset.communication.category",
      "short" : "溝通類型",
      "definition" : "溝通類型。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.category",
        "comment" : "來源與差異：新增分類"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.sender",
      "path" : "HAHCareDataset.communication.sender",
      "short" : "發送者",
      "definition" : "發送者。[應填入對應的 Practitioner／PractitionerRole／Organization／RelatedPerson Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.sender",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.recipient",
      "path" : "HAHCareDataset.communication.recipient",
      "short" : "接收者",
      "definition" : "接收者。[應填入對應的 Resource Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.recipient",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.sent",
      "path" : "HAHCareDataset.communication.sent",
      "short" : "發送時間",
      "definition" : "發送時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.sent",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.content",
      "path" : "HAHCareDataset.communication.content",
      "short" : "內容",
      "definition" : "內容。[填入交班或照會內容；需結構化的診斷及醫囑另建資源。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.payload.contentString",
        "comment" : "來源與差異：queryNote.js、交班內容"
      }]
    },
    {
      "id" : "HAHCareDataset.communication.request",
      "path" : "HAHCareDataset.communication.request",
      "short" : "依據請求",
      "definition" : "依據請求。[應填入對應的 HAHServiceRequest Reference。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Communication.basedOn",
        "comment" : "來源與差異：queryNote.js"
      }]
    },
    {
      "id" : "HAHCareDataset.task",
      "path" : "HAHCareDataset.task",
      "short" : "照護工作",
      "definition" : "照護工作。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHVisitTask",
        "comment" : "來源與差異：task.js"
      }]
    },
    {
      "id" : "HAHCareDataset.task.code",
      "path" : "HAHCareDataset.task.code",
      "short" : "工作類型",
      "definition" : "工作類型。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.code",
        "comment" : "來源與差異：selectedJobs 分類"
      }]
    },
    {
      "id" : "HAHCareDataset.task.status",
      "path" : "HAHCareDataset.task.status",
      "short" : "工作狀態",
      "definition" : "工作狀態。[填入所綁定值集允許的代碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/task-status"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.status",
        "comment" : "來源與差異：task.js"
      }]
    },
    {
      "id" : "HAHCareDataset.task.owner",
      "path" : "HAHCareDataset.task.owner",
      "short" : "負責人或團隊",
      "definition" : "負責人或團隊。[應填入對應的 Practitioner／PractitionerRole／Organization／CareTeam Reference。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.owner",
        "comment" : "來源與差異：task.js"
      }]
    },
    {
      "id" : "HAHCareDataset.task.scheduled",
      "path" : "HAHCareDataset.task.scheduled",
      "short" : "預定執行期限",
      "definition" : "預定執行期限。[填預計執行的時間範圍，不當作已完成紀錄。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.restriction.period",
        "comment" : "來源與差異：修正原 executionPeriod 語意"
      }]
    },
    {
      "id" : "HAHCareDataset.task.actual",
      "path" : "HAHCareDataset.task.actual",
      "short" : "實際執行期間",
      "definition" : "實際執行期間。[填實際開始與結束時間；已完成工作兩者均須有值。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.executionPeriod",
        "comment" : "來源與差異：新增實際起訖"
      }]
    },
    {
      "id" : "HAHCareDataset.task.location",
      "path" : "HAHCareDataset.task.location",
      "short" : "工作地點",
      "definition" : "工作地點。[應填入對應的 Location Reference。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Task.location",
        "comment" : "來源與差異：task.js"
      }]
    },
    {
      "id" : "HAHCareDataset.attachment",
      "path" : "HAHCareDataset.attachment",
      "short" : "照護附件",
      "definition" : "照護附件。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHDocumentReference",
        "comment" : "來源與差異：fhirResources.js"
      }]
    },
    {
      "id" : "HAHCareDataset.attachment.type",
      "path" : "HAHCareDataset.attachment.type",
      "short" : "附件種類",
      "definition" : "附件種類。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DocumentReference.type",
        "comment" : "來源與差異：既有附件"
      }]
    },
    {
      "id" : "HAHCareDataset.attachment.content",
      "path" : "HAHCareDataset.attachment.content",
      "short" : "附件內容或網址",
      "definition" : "附件內容或網址。[填 MIME 類型與 base64 內容或可取得的 URL。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DocumentReference.content.attachment",
        "comment" : "來源與差異：fhirResources.js"
      }]
    },
    {
      "id" : "HAHCareDataset.attachment.author",
      "path" : "HAHCareDataset.attachment.author",
      "short" : "作者",
      "definition" : "作者。[應填入對應的 Resource Reference。]",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource"]
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "DocumentReference.author",
        "comment" : "來源與差異：fhirResources.js"
      }]
    },
    {
      "id" : "HAHCareDataset.summary",
      "path" : "HAHCareDataset.summary",
      "short" : "結案與轉銜摘要",
      "definition" : "結案與轉銜摘要。[以下欄位為此項資料的內嵌元素。]",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "HAHCompositionSummary、HAHBundleSummary",
        "comment" : "來源與差異：新增文件交換"
      }]
    },
    {
      "id" : "HAHCareDataset.summary.type",
      "path" : "HAHCareDataset.summary.type",
      "short" : "摘要種類",
      "definition" : "摘要種類。[已知代碼時填 coding.system 及 coding.code，可用 text 補充說明。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-summary-type"
      },
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Composition.type",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.summary.date",
      "path" : "HAHCareDataset.summary.date",
      "short" : "文件時間",
      "definition" : "文件時間。[填入實際時間；包含時分時須提供時區。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Composition.date",
        "comment" : "來源與差異：新增"
      }]
    },
    {
      "id" : "HAHCareDataset.summary.followUp",
      "path" : "HAHCareDataset.summary.followUp",
      "short" : "後續照護與待辦",
      "definition" : "後續照護與待辦。[說明接續照護、待辦及尚未知的結果。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Composition.section[followUp].text",
        "comment" : "來源與差異：原交班與轉送資料"
      }]
    },
    {
      "id" : "HAHCareDataset.summary.documentId",
      "path" : "HAHCareDataset.summary.documentId",
      "short" : "文件識別碼",
      "definition" : "文件識別碼。[填唯一的文件識別系統與值；重製文件另給新的識別碼。]",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hah-dataset-fhir",
        "map" : "Bundle.identifier",
        "comment" : "來源與差異：新增"
      }]
    }]
  }
}

```
