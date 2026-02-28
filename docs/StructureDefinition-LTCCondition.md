# 長期照顧－病情、問題或診斷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－病情、問題或診斷**

## Resource Profile: 長期照顧－病情、問題或診斷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCCondition |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的病情、問題或診斷資料。 

**Usages:**

* Derived from this Profile: [長期照顧－身心障礙手冊持有狀態](StructureDefinition-LTCConditionDisability.md), [長期照顧－身心障礙類型](StructureDefinition-LTCConditionDisabilityType.md), [長期照顧－主要問題及需求](StructureDefinition-LTCConditionNeed.md), [長期照顧－主要疾病](StructureDefinition-LTCConditionProblem.md)... Show 2 more, [運動處方－運動史](StructureDefinition-PASportConditionExerciseHistory.md) and [運動處方－病史](StructureDefinition-PASportConditionMedicalHistory.md)
* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md)
* Examples for this Profile: [Condition/ltc-condition-example](Condition-ltc-condition-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCondition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCondition.csv), [Excel](StructureDefinition-LTCCondition.xlsx), [Schematron](StructureDefinition-LTCCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCondition",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition",
  "version" : "0.4.1",
  "name" : "LTCCondition",
  "title" : "長期照顧－病情、問題或診斷",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的病情、問題或診斷資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
  "type" : "Condition",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "Condition.subject.reference",
      "path" : "Condition.subject.reference",
      "short" : "擁有此病情、問題或診斷的住民。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder.reference",
      "path" : "Condition.recorder.reference",
      "short" : "記錄此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }]
    },
    {
      "id" : "Condition.asserter.reference",
      "path" : "Condition.asserter.reference",
      "short" : "聲稱有此病情、問題或診斷的人員。[應輸入 Practitioner/PractitionerRole/Patient/RelatedPerson Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
