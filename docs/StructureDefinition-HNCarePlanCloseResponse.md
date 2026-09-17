# 居家護理－照護計畫結案表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫結案表單**

## Resource Profile: 居家護理－照護計畫結案表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCarePlanCloseResponse |

 
記錄照護計畫結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-careplanclose-example](QuestionnaireResponse-hn-careplanclose-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCarePlanCloseResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCarePlanCloseResponse.csv), [Excel](StructureDefinition-HNCarePlanCloseResponse.xlsx), [Schematron](StructureDefinition-HNCarePlanCloseResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCarePlanCloseResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseResponse",
  "version" : "1.1.0",
  "name" : "HNCarePlanCloseResponse",
  "title" : "居家護理－照護計畫結案表單",
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
  "description" : "記錄照護計畫結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
      "path" : "QuestionnaireResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-careplanclose"
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
      "min" : 7
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
      "id" : "QuestionnaireResponse.item:SummaryCreateDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "SummaryCreateDate",
      "short" : "需求摘要評估日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryCreateDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "SummaryCreateDate"
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryCreateDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryCreateDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryCreateDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Summary",
      "short" : "需求摘要項目",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Summary"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryAnswer",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "SummaryAnswer",
      "short" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryAnswer.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "SummaryAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryAnswer.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:SummaryAnswer.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetStatement",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "TargetStatement",
      "short" : "目標描述",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:TargetStatement.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "TargetStatement"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetStatement.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetStatement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:TargetStatement.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetCreateDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "TargetCreateDate",
      "short" : "目標建立日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:TargetCreateDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "TargetCreateDate"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetCreateDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:TargetCreateDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:TargetCreateDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CloseDate",
      "short" : "結案日期",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CloseDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CloseDate"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:CloseDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CloseID",
      "short" : "結案護理人員身分證字號",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CloseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CloseID"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CloseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:CloseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    }]
  }
}

```
