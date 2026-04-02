# 長期照顧－照顧目標 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－照顧目標**

## Resource Profile: 長期照顧－照顧目標 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCGoal |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現長期照顧情境中涉及之照顧目標內容。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md)
* Examples for this Profile: [Goal/ltc-goal-mobility-improvement-example](Goal-ltc-goal-mobility-improvement-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCGoal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCGoal.csv), [Excel](StructureDefinition-LTCGoal.xlsx), [Schematron](StructureDefinition-LTCGoal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCGoal",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal",
  "version" : "1.0.0",
  "name" : "LTCGoal",
  "title" : "長期照顧－照顧目標",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現長期照顧情境中涉及之照顧目標內容。",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Goal.lifecycleStatus",
      "path" : "Goal.lifecycleStatus",
      "short" : "照顧目標的生命週期狀態。[應填入 proposed / planned / accepted / active / on-hold / completed / cancelled / entered-in-error / rejected]",
      "mustSupport" : true
    },
    {
      "id" : "Goal.description",
      "path" : "Goal.description",
      "short" : "照顧目標的描述",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/GoalDescriptionVS-TWLTC"
      }
    },
    {
      "id" : "Goal.description.coding",
      "path" : "Goal.description.coding",
      "short" : "照顧目標的描述代碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Goal.description.coding.system",
      "path" : "Goal.description.coding.system",
      "short" : "照顧目標的描述代碼系統。[應填入 SNOMED CT 或 LOINC 等術語系統的 URL]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.description.coding.code",
      "path" : "Goal.description.coding.code",
      "short" : "照顧目標的描述代碼。[應填入 SNOMED CT 或 LOINC 等術語系統的代碼]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.subject",
      "path" : "Goal.subject",
      "short" : "照顧目標的適用主體",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.subject.reference",
      "path" : "Goal.subject.reference",
      "short" : "照顧目標的適用主體。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.start[x]",
      "path" : "Goal.start[x]",
      "short" : "照顧的開始日期。[應填入日期或日期時間]",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target",
      "path" : "Goal.target",
      "short" : "照顧的目標",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target.detail[x]",
      "path" : "Goal.target.detail[x]",
      "short" : "照顧目標的詳細描述。",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target.due[x]",
      "path" : "Goal.target.due[x]",
      "short" : "照顧目標的預計完成日期。[應填入日期或日期時間]",
      "mustSupport" : true
    },
    {
      "id" : "Goal.expressedBy",
      "path" : "Goal.expressedBy",
      "short" : "照顧目標的提出者",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.expressedBy.reference",
      "path" : "Goal.expressedBy.reference",
      "short" : "誰提出了這個照顧目標？[應輸入 Practitioner / RelatedPerson / PractitionerRole Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.note",
      "path" : "Goal.note",
      "short" : "照顧目標的附註",
      "mustSupport" : true
    }]
  }
}

```
