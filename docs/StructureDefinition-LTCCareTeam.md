# 長期照顧－照顧團隊 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－照顧團隊**

## Resource Profile: 長期照顧－照顧團隊 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCCareTeam |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CareTeam Resource，以呈現長期照顧情境中涉及之照顧團隊資訊。 

**Usages:**

* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md) and [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)
* Examples for this Profile: [陳明慧照顧團隊](CareTeam-ltc-care-team-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCCareTeam)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCareTeam.csv), [Excel](StructureDefinition-LTCCareTeam.xlsx), [Schematron](StructureDefinition-LTCCareTeam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCareTeam",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam",
  "version" : "0.4.1",
  "name" : "LTCCareTeam",
  "title" : "長期照顧－照顧團隊",
  "status" : "active",
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CareTeam Resource，以呈現長期照顧情境中涉及之照顧團隊資訊。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam"
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "short" : "照顧團隊的狀態。[應填入 proposed / active / suspended / inactive / entered-in-error]",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/care-team-status"
      }
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "short" : "照顧團隊的適用主體，即這個照顧團隊的適用對象是誰？",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "CareTeam.subject.reference",
      "path" : "CareTeam.subject.reference",
      "short" : "照顧團隊的適用主體。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "short" : "照顧團隊的參與者，即這個照顧團隊是由哪些人參與的？"
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "short" : "照顧團隊參與者的角色",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/participant-role"
      }
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "short" : "照顧團隊的成員",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "CareTeam.participant.member.reference",
      "path" : "CareTeam.participant.member.reference",
      "short" : "照顧團隊的成員。[應輸入 Practitioner / RelatedPerson / PractitionerRole Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
