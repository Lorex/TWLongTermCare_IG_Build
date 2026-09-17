# 居家護理－個案基本資料表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－個案基本資料表單**

## Resource Profile: 居家護理－個案基本資料表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNBaseDataResponse |

 
記錄個案基本資料的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-basedata-example](QuestionnaireResponse-hn-basedata-example.md) and [QuestionnaireResponse/hn-basedata-foot-example](QuestionnaireResponse-hn-basedata-foot-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNBaseDataResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNBaseDataResponse.csv), [Excel](StructureDefinition-HNBaseDataResponse.xlsx), [Schematron](StructureDefinition-HNBaseDataResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNBaseDataResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse",
  "version" : "1.1.0",
  "name" : "HNBaseDataResponse",
  "title" : "居家護理－個案基本資料表單",
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
  "description" : "記錄個案基本資料的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "hn-basedata-1",
        "severity" : "error",
        "human" : "收案來源選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='CaseSource').all((item.where(linkId='CaseSource.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='CaseSource.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-2",
        "severity" : "error",
        "human" : "性別選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Sex').all((item.where(linkId='Sex.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Sex.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-3",
        "severity" : "error",
        "human" : "教育程度選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Education').all((item.where(linkId='Education.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Education.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-4",
        "severity" : "error",
        "human" : "婚姻狀況選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Marriage').all((item.where(linkId='Marriage.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Marriage.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-5",
        "severity" : "error",
        "human" : "宗教信仰選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Religion').all((item.where(linkId='Religion.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Religion.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-6",
        "severity" : "error",
        "human" : "主要職業選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='ExJob').all((item.where(linkId='ExJob.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='ExJob.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-7",
        "severity" : "error",
        "human" : "家庭經濟狀況選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Economic').all((item.where(linkId='Economic.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Economic.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-8",
        "severity" : "error",
        "human" : "主要醫療決定者關係選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='DecisionMakerRelation').all((item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='DecisionMakerRelation.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-9",
        "severity" : "error",
        "human" : "成員職稱選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').all((item.where(linkId='Medicals.JobTitle.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Medicals.JobTitle.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-10",
        "severity" : "error",
        "human" : "關係選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').all((item.where(linkId='Relatives.Relationship.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Relatives.Relationship.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-11",
        "severity" : "error",
        "human" : "主要照顧時間選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').all((item.where(linkId='Relatives.CareTime.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Relatives.CareTime.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-12",
        "severity" : "error",
        "human" : "有重大事件時應填寫重大事件項目。",
        "expression" : "item.where(linkId='MEvent').answer.value.ofType(Coding).where(code='c90ce0f66f094').exists() implies item.where(linkId='MEventItem').item.where(linkId='MEventItem.Values').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-13",
        "severity" : "error",
        "human" : "主要醫療決定者為子女、機構人員或其他時應填姓名。",
        "expression" : "(item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='c26468c0e3eeb').exists() or item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='c82d38deda8e1').exists() or item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Other').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      },
      {
        "key" : "hn-basedata-14",
        "severity" : "error",
        "human" : "福利包含身障證明時應填寫身障類別。",
        "expression" : "item.where(linkId='Welfare').item.where(linkId='Welfare.Values').answer.value.ofType(Coding).where(code='c515da942c2af').exists() implies item.where(linkId='Welfare').item.where(linkId='Welfare.DisabilityType').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
      }]
    },
    {
      "id" : "QuestionnaireResponse.extension",
      "path" : "QuestionnaireResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.extension:episode",
      "path" : "QuestionnaireResponse.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-basedata"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 26
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseID",
      "short" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseID"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EndDate",
      "short" : "收案日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EndDate"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseSource",
      "short" : "收案來源",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseSource"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "CaseSource.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef3233b113ad"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "CaseSource.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:CaseSource.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseName",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseName",
      "short" : "個案姓名",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseName.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseName"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseName.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseName.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:CaseName.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Sex",
      "short" : "性別",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Sex"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Sex.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8f650cb37b1"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Sex.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Sex.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseType",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseType",
      "short" : "個案類型",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseType.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseType"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseType.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseType.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-082869c8d896"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:CaseType.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Birthdate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Birthdate",
      "short" : "出生日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Birthdate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Birthdate"
    },
    {
      "id" : "QuestionnaireResponse.item:Birthdate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Birthdate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Birthdate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:PhoneNumber",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "PhoneNumber",
      "short" : "聯絡電話",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:PhoneNumber.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "PhoneNumber"
    },
    {
      "id" : "QuestionnaireResponse.item:PhoneNumber.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:PhoneNumber.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:PhoneNumber.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Address",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Address",
      "short" : "居住地址",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Address.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Address"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 3
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:City",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "City",
      "short" : "縣市",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:City.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Address.City"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:City.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:City.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:City.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Area",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Area",
      "short" : "鄉鎮市區",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Area.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Address.Area"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Area.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Area.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Area.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Lane",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Lane",
      "short" : "街路門牌",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Lane.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Address.Lane"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Lane.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Lane.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Address.item:Lane.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Education",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Education",
      "short" : "教育程度",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Education.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Education"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Education.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8bcd09f153b7"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Education.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Education.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Marriage",
      "short" : "婚姻狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Marriage"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Marriage.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-924b837448d2"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Marriage.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Marriage.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Religion",
      "short" : "宗教信仰",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Religion"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Religion.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f6130a2de850"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Religion.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Religion.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "ExJob",
      "short" : "主要職業",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "ExJob"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "ExJob.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9bf58092b1d4"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "ExJob.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:ExJob.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Economic",
      "short" : "家庭經濟狀況",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Economic"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Economic.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4a8dcdb04d9b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Economic.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Economic.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:HasWelfare",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "HasWelfare",
      "short" : "是否有福利",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:HasWelfare.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "HasWelfare"
    },
    {
      "id" : "QuestionnaireResponse.item:HasWelfare.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:HasWelfare.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:HasWelfare.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Welfare",
      "short" : "福利種類",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Welfare"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Values",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Values",
      "short" : "選項",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Values.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Welfare.Values"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Values.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-40193bb109d6"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Values.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Welfare.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:DisabilityType",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "DisabilityType",
      "short" : "身障類別",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:DisabilityType.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Welfare.DisabilityType"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:DisabilityType.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:DisabilityType.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-disability-type"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Welfare.item:DisabilityType.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaregiverID",
      "short" : "主要照顧者關係",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaregiverID"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-738f974cf008"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverName",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaregiverName",
      "short" : "主要照顧者姓名",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverName.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaregiverName"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverName.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverName.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverName.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaregiverAddress",
      "short" : "主要照顧者地址",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaregiverAddress"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 3
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:City",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "City",
      "short" : "縣市",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:City.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "CaregiverAddress.City"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:City.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:City.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:City.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Area",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Area",
      "short" : "鄉鎮市區",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Area.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "CaregiverAddress.Area"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Area.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Area.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Area.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Lane",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Lane",
      "short" : "街路門牌",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Lane.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "CaregiverAddress.Lane"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Lane.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Lane.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverAddress.item:Lane.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverTel",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaregiverTel",
      "short" : "主要照顧者電話",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverTel.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaregiverTel"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverTel.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverTel.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 20
    },
    {
      "id" : "QuestionnaireResponse.item:CaregiverTel.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactRelation",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EgyContactRelation",
      "short" : "緊急聯絡人關係",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactRelation.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EgyContactRelation"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactRelation.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactRelation.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2029890a4c12"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactRelation.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactName",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EgyContactName",
      "short" : "緊急聯絡人姓名",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactName.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EgyContactName"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactName.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactName.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactName.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EgyContactTel1",
      "short" : "緊急聯絡電話一",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EgyContactTel1"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel1.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EgyContactTel2",
      "short" : "緊急聯絡電話二",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EgyContactTel2"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:EgyContactTel2.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "NurseID",
      "short" : "主責護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "NurseID"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "DecisionMakerRelation",
      "short" : "主要醫療決定者關係",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "DecisionMakerRelation"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Value",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DecisionMakerRelation.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b63e1293c409"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DecisionMakerRelation.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:DecisionMakerRelation.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MEvent",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "MEvent",
      "short" : "一年內是否發生重大事件",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MEvent.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "MEvent"
    },
    {
      "id" : "QuestionnaireResponse.item:MEvent.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MEvent.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MEvent.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "MEventItem",
      "short" : "重大事件項目",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "MEventItem"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Values",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Values",
      "short" : "選項",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Values.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MEventItem.Values"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Values.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-fe3736bbd09e"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Values.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MEventItem.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MEventItem.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseDesc",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseDesc",
      "short" : "個案描述",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseDesc.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseDesc"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseDesc.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseDesc.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:CaseDesc.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CreateID",
      "short" : "建立機構代碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CreateID"
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Medicals",
      "short" : "共照醫事人員",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Medicals"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 3
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Name",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Name",
      "short" : "成員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Name.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.Name"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Name.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Name.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Name.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareDate",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "CareDate",
      "short" : "加入日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareDate.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.CareDate"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareDate.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareDate.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:IdNo",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "IdNo",
      "short" : "成員身分證字號",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:IdNo.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.IdNo"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:IdNo.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:IdNo.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:IdNo.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "JobTitle",
      "short" : "成員職稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.JobTitle"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Medicals.JobTitle.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Medicals.JobTitle.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:JobTitle.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Tel",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Tel",
      "short" : "電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Tel.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.Tel"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Tel.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Tel.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:Tel.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareRemark",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "CareRemark",
      "short" : "照護備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareRemark.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Medicals.CareRemark"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareRemark.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareRemark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:Medicals.item:CareRemark.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Relatives",
      "short" : "共照親友",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Relatives"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 4
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Name",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Name",
      "short" : "成員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Name.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.Name"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Name.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Name.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Name.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Relationship",
      "short" : "關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.Relationship"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Relationship.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9570830f5a60"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Relationship.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Relationship.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "CareTime",
      "short" : "主要照顧時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.CareTime"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.CareTime.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a946985c2125"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.CareTime.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareTime.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Tel1",
      "short" : "電話1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.Tel1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel1.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Remark",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Remark",
      "short" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Remark.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel1.Remark"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Remark.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Remark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel1.item:Remark.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Tel2",
      "short" : "電話2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.Tel2"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel2.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Remark",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Remark",
      "short" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Remark.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel2.Remark"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Remark.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Remark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel2.item:Remark.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Tel3",
      "short" : "電話3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.Tel3"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Value",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Value",
      "short" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel3.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 30
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Remark",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Remark",
      "short" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Remark.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Relatives.Tel3.Remark"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Remark.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Remark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:Tel3.item:Remark.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareRemark",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "CareRemark",
      "short" : "照護備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareRemark.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Relatives.CareRemark"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareRemark.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareRemark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:Relatives.item:CareRemark.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    }]
  }
}

```
