# 長期照顧－服務人員角色 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－服務人員角色**

## Resource Profile: 長期照顧－服務人員角色 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCPractitionerRole |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。 
有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html) 中的說明。 

**Usages:**

* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md), [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md), [長期照顧－病情、問題或診斷](StructureDefinition-LTCCondition.md), [長期照顧－照顧目標](StructureDefinition-LTCGoal.md)... Show 7 more, [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md), [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md), [長期照顧－AA01照顧計畫擬訂與服務連結問卷回應](StructureDefinition-LTCQuestionnaireResponseAA01.md), [長期照顧－AA02照顧管理追蹤問卷回覆](StructureDefinition-LTCQuestionnaireResponseAA02.md), [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md), [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md) and [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)
* Examples for this Profile: [PractitionerRole/ltc-practitioner-role-nurse-example](PractitionerRole-ltc-practitioner-role-nurse-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCPractitionerRole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCPractitionerRole.csv), [Excel](StructureDefinition-LTCPractitionerRole.xlsx), [Schematron](StructureDefinition-LTCPractitionerRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCPractitionerRole",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
  "version" : "0.4.1",
  "name" : "LTCPractitionerRole",
  "title" : "長期照顧－服務人員角色",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。\n\n有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html) 中的說明。",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "能為長照機構提供所定義服務的長照服務提供者",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.practitioner.reference",
      "path" : "PractitionerRole.practitioner.reference",
      "short" : "關聯的長照服務人員。[應輸入 Practitioner Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "提供此長照服務提供者角色的機構",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "PractitionerRole.organization.reference",
      "path" : "PractitionerRole.organization.reference",
      "short" : "關聯的長照服務機構。[應輸入 Organization Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "short" : "長照服務提供者提供長照服務的地點",
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.location.reference",
      "path" : "PractitionerRole.location.reference",
      "short" : "關聯的長照服務地點。[應輸入 Location Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
