# 居家護理－照護紀錄表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護紀錄表單**

## Resource Profile: 居家護理－照護紀錄表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCareRecordResponse |

 
記錄照護紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-carerecord-example](QuestionnaireResponse-hn-carerecord-example.md), [QuestionnaireResponse/hn-carerecord-wounds-example](QuestionnaireResponse-hn-carerecord-wounds-example.md) and [QuestionnaireResponse/hn-foot-record-example](QuestionnaireResponse-hn-foot-record-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCareRecordResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCareRecordResponse.csv), [Excel](StructureDefinition-HNCareRecordResponse.xlsx), [Schematron](StructureDefinition-HNCareRecordResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCareRecordResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse",
  "version" : "1.1.0",
  "name" : "HNCareRecordResponse",
  "title" : "居家護理－照護紀錄表單",
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
  "description" : "記錄照護紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-carerecord-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-3",
        "severity" : "error",
        "human" : "紀錄來源選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='RecordSource').all((item.where(linkId='RecordSource.Value').answer.value.ofType(Coding).where(code='cabca60121b39').exists()) implies item.where(linkId='RecordSource.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-4",
        "severity" : "error",
        "human" : "居住所選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Live').all((item.where(linkId='Live.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Live.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-5",
        "severity" : "error",
        "human" : "損傷類型選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').all((item.where(linkId='SkinDamages.Kind.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='SkinDamages.Kind.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-6",
        "severity" : "error",
        "human" : "事件類型選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').all((item.where(linkId='EmergencyEvents.EmergencyType.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='EmergencyEvents.EmergencyType.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-7",
        "severity" : "error",
        "human" : "家訪應填使用資源及服務項目。",
        "expression" : "item.where(linkId='RecordSource').item.where(linkId='RecordSource.Value').answer.value.ofType(Coding).where(code='cbeb7cdda895a').exists() implies (item.where(linkId='UseResources').item.where(linkId='UseResources.Values').answer.value.exists() and item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Values').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-8",
        "severity" : "error",
        "human" : "事件旗標為是時應填寫事件內容。",
        "expression" : "item.where(linkId='IsUnplanned').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='Unplanned').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-9",
        "severity" : "error",
        "human" : "事件旗標為是時應填寫事件內容。",
        "expression" : "item.where(linkId='IsEmergency').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='Emergency').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-10",
        "severity" : "error",
        "human" : "事件旗標為是時應填寫事件內容。",
        "expression" : "item.where(linkId='IsSkinDamages').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='SkinDamages').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-11",
        "severity" : "error",
        "human" : "事件旗標為是時應填寫事件內容。",
        "expression" : "item.where(linkId='IsEmergencyEvents').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='EmergencyEvents').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-12",
        "severity" : "error",
        "human" : "足部護理已評估時應提供評估內容。",
        "expression" : "item.where(linkId='FJMEvaluation').answer.value.ofType(Coding).where(code='cb6c73a5e123a').exists() implies item.where(linkId='FJM').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-13",
        "severity" : "error",
        "human" : "照護結束時間不可早於開始時間。",
        "expression" : "item.where(linkId='Time2').answer.value.single() >= item.where(linkId='Time').answer.value.single()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-14",
        "severity" : "error",
        "human" : "壓傷應選擇其對應等級。",
        "expression" : "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='c7ead2b329689').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cd2309630a543').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c02aab4358253').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cccd9b119924f').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cb77fa71e8c7f').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cecf422c03011').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c6210bfc58f77').exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-15",
        "severity" : "error",
        "human" : "失禁性皮膚炎應選擇其對應等級。",
        "expression" : "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='cc7a2787e9f48').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='ccf3d835a3018').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='ce33cd81b67cc').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c7259a0720e42').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c5c19c5dfd9c3').exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-16",
        "severity" : "error",
        "human" : "其他傷口須留空等級並填寫說明。",
        "expression" : "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.empty() and item.where(linkId='WoundRecords.Statement').answer.value.exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
      },
      {
        "key" : "hn-carerecord-17",
        "severity" : "error",
        "human" : "非無法分期的傷口須填寫長、寬、深。",
        "expression" : "item.where(linkId='WoundRecords').all(((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='c7ead2b329689').exists()) and (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cecf422c03011').exists())).not() implies (item.where(linkId='WoundRecords.Length').answer.value.exists() and item.where(linkId='WoundRecords.Width').answer.value.exists() and item.where(linkId='WoundRecords.Depth').answer.value.exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-carerecord"
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
      "min" : 14
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
      "id" : "QuestionnaireResponse.item:Date",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Date",
      "short" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Date"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Date.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "NurseID",
      "short" : "護理人員身分證字號",
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
      "id" : "QuestionnaireResponse.item:Time",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Time",
      "short" : "照護開始時間",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Time"
    },
    {
      "id" : "QuestionnaireResponse.item:Time.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Time.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Time2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Time2",
      "short" : "照護結束時間",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Time2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Time2"
    },
    {
      "id" : "QuestionnaireResponse.item:Time2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Time2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Time2.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "RecordSource",
      "short" : "紀錄來源",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "RecordSource"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item",
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
      "id" : "QuestionnaireResponse.item:RecordSource.item:Value",
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
      "id" : "QuestionnaireResponse.item:RecordSource.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "RecordSource.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-04e9c37073f4"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Other",
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
      "id" : "QuestionnaireResponse.item:RecordSource.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "RecordSource.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:RecordSource.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Height",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Height",
      "short" : "身高（公分）",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Height.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Height"
    },
    {
      "id" : "QuestionnaireResponse.item:Height.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Height.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:Height.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Weight",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Weight",
      "short" : "體重（公斤）",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Weight.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Weight"
    },
    {
      "id" : "QuestionnaireResponse.item:Weight.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Weight.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:Weight.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BMI",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BMI",
      "short" : "身體質量指數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BMI.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BMI"
    },
    {
      "id" : "QuestionnaireResponse.item:BMI.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BMI.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:BMI.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ArmW",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "ArmW",
      "short" : "臂中圍（公分）",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:ArmW.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "ArmW"
    },
    {
      "id" : "QuestionnaireResponse.item:ArmW.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:ArmW.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:ArmW.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:LegW",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "LegW",
      "short" : "小腿圍（公分）",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:LegW.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "LegW"
    },
    {
      "id" : "QuestionnaireResponse.item:LegW.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:LegW.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:LegW.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Live",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Live",
      "short" : "居住所",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Live.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Live"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item",
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
      "id" : "QuestionnaireResponse.item:Live.item:Value",
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
      "id" : "QuestionnaireResponse.item:Live.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Live.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d93b34f7b736"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Other",
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
      "id" : "QuestionnaireResponse.item:Live.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Live.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Live.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "LiveArea",
      "short" : "居住區域",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "LiveArea"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:City",
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
      "id" : "QuestionnaireResponse.item:LiveArea.item:City.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "LiveArea.City"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:City.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:City.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:City.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:Area",
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
      "id" : "QuestionnaireResponse.item:LiveArea.item:Area.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "LiveArea.Area"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:Area.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:Area.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:LiveArea.item:Area.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "UseResources",
      "short" : "使用資源",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "UseResources"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item",
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
      "id" : "QuestionnaireResponse.item:UseResources.item:Values",
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
      "id" : "QuestionnaireResponse.item:UseResources.item:Values.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "UseResources.Values"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Values.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-38762eb1c742"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Values.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Other",
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
      "id" : "QuestionnaireResponse.item:UseResources.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "UseResources.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:UseResources.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "ServiceItems",
      "short" : "服務項目",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "ServiceItems"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item",
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
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Values",
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
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Values.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "ServiceItems.Values"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Values.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8a0ace9ffad"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Values.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Other",
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
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "ServiceItems.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:ServiceItems.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsUnplanned",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsUnplanned",
      "short" : "是否非計畫性再住院",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsUnplanned.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsUnplanned"
    },
    {
      "id" : "QuestionnaireResponse.item:IsUnplanned.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsUnplanned.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsUnplanned.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Unplanned",
      "short" : "非計畫性再住院",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Unplanned"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item",
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
      "id" : "QuestionnaireResponse.item:Unplanned.item:Date",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Date",
      "short" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Unplanned.Date"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Date.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Date.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Time",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Time",
      "short" : "發生時段",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Unplanned.Time"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Time.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Time.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Statement",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Statement",
      "short" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Unplanned.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 2100
    },
    {
      "id" : "QuestionnaireResponse.item:Unplanned.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergency",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsEmergency",
      "short" : "是否使用急診",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergency.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsEmergency"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergency.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergency.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergency.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Emergency",
      "short" : "使用急診",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Emergency"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item",
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
      "id" : "QuestionnaireResponse.item:Emergency.item:Date",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Date",
      "short" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Emergency.Date"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Date.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Date.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Time",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Time",
      "short" : "發生時段",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Emergency.Time"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Time.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Time.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Statement",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Statement",
      "short" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Emergency.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 2100
    },
    {
      "id" : "QuestionnaireResponse.item:Emergency.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSkinDamages",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsSkinDamages",
      "short" : "是否皮膚損傷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsSkinDamages.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsSkinDamages"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSkinDamages.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSkinDamages.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsSkinDamages.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "SkinDamages",
      "short" : "皮膚損傷",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "SkinDamages"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item",
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
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Date",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Date",
      "short" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "SkinDamages.Date"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Date.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Date.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Time",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Time",
      "short" : "發生時段",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "SkinDamages.Time"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Time.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Time.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Kind",
      "short" : "損傷類型",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "SkinDamages.Kind"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item",
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
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Value",
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
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "SkinDamages.Kind.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b0ba220a4535"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Other",
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
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "SkinDamages.Kind.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Kind.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Statement",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Statement",
      "short" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "SkinDamages.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 2100
    },
    {
      "id" : "QuestionnaireResponse.item:SkinDamages.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergencyEvents",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsEmergencyEvents",
      "short" : "是否緊急事件",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergencyEvents.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsEmergencyEvents"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergencyEvents.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergencyEvents.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsEmergencyEvents.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EmergencyEvents",
      "short" : "緊急事件",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EmergencyEvents"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 8
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "EmergencyType",
      "short" : "事件類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.EmergencyType"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item",
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
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Value",
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
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "EmergencyEvents.EmergencyType.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4abebe47a94c"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Other",
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
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "EmergencyEvents.EmergencyType.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:EmergencyType.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Date",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Date",
      "short" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Date"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Date.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Date.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Time",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Time",
      "short" : "發生時段",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Time"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Time.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Time.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Reason",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Reason",
      "short" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Reason.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Reason"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Reason.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Reason.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Reason.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Description",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Description",
      "short" : "事件描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Description.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Description"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Description.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Description.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Description.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Process",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Process",
      "short" : "通報及處理過程",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Process.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Process"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Process.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Process.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Process.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Report",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Report",
      "short" : "檢討紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Report.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.Report"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Report.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Report.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:Report.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:CreateID",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "CreateID",
      "short" : "照護人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:CreateID.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyEvents.CreateID"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:CreateID.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:CreateID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyEvents.item:CreateID.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "VitalSign",
      "short" : "生命徵象",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "VitalSign"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item",
      "path" : "QuestionnaireResponse.item.item",
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
      "id" : "QuestionnaireResponse.item:VitalSign.item:Date",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Date",
      "short" : "量測日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.Date"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Date.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Date.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Time",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Time",
      "short" : "量測時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Time.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.Time"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Time.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Time.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Time.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Temperature",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Temperature",
      "short" : "體溫",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Temperature.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.Temperature"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Temperature.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Temperature.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Temperature.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Pulse",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Pulse",
      "short" : "脈搏",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Pulse.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.Pulse"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Pulse.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Pulse.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Pulse.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Respiration",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Respiration",
      "short" : "呼吸",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Respiration.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.Respiration"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Respiration.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Respiration.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:Respiration.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure1",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "BloodPressure1",
      "short" : "收縮壓",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure1.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.BloodPressure1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure1.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure1.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure2",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "BloodPressure2",
      "short" : "舒張壓",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure2.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.BloodPressure2"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure2.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodPressure2.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodGlucose",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "BloodGlucose",
      "short" : "血糖",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodGlucose.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.BloodGlucose"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodGlucose.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodGlucose.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodGlucose.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodOxygen",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "BloodOxygen",
      "short" : "血氧",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodOxygen.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "VitalSign.BloodOxygen"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodOxygen.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodOxygen.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:VitalSign.item:BloodOxygen.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "WoundRecords",
      "short" : "傷口紀錄",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "WoundRecords"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 6
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Part",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Part",
      "short" : "傷口部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Part.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Part"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Part.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Part.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Part.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Length",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Length",
      "short" : "傷口長度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Length.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Length"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Length.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Length.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Length.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Width",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Width",
      "short" : "傷口寬度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Width.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Width"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Width.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Width.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Width.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Depth",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Depth",
      "short" : "傷口深度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Depth.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Depth"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Depth.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Depth.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Depth.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Category",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Category",
      "short" : "傷口分類",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Category.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Category"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Category.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Category.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ab16e9d81e7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Category.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Level",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Level",
      "short" : "傷口等級",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Level.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Level"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Level.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Level.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-de533dbea66c"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Level.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Statement",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Statement",
      "short" : "傷口說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "WoundRecords.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:WoundRecords.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJMEvaluation",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "FJMEvaluation",
      "short" : "足部護理評估狀態",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJMEvaluation.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "FJMEvaluation"
    },
    {
      "id" : "QuestionnaireResponse.item:FJMEvaluation.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJMEvaluation.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5154109e8985"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJMEvaluation.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "FJM",
      "short" : "足部護理",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "FJM"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item",
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
      "id" : "QuestionnaireResponse.item:FJM.item:Item",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Item",
      "short" : "項目分類",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Item.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "FJM.Item"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Item.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0a65df60cccf"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Item.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Question",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Question",
      "short" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Question.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "FJM.Question"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Question.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Question.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-14764e5914f7"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Question.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Answers",
      "short" : "答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "FJM.Answers"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Values",
      "path" : "QuestionnaireResponse.item.item.item",
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
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Values.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "FJM.Answers.Values"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Values.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Values.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Other",
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
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "FJM.Answers.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "FJMList",
      "short" : "操作項目紀錄",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMList"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
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
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubQuestion",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "sliceName" : "SubQuestion",
      "short" : "操作項目與流程",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubQuestion.linkId",
      "path" : "QuestionnaireResponse.item.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMList.SubQuestion"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubQuestion.answer",
      "path" : "QuestionnaireResponse.item.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubQuestion.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dfa44a5bba0b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubQuestion.item",
      "path" : "QuestionnaireResponse.item.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubAnswers",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "sliceName" : "SubAnswers",
      "short" : "有反應物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubAnswers.linkId",
      "path" : "QuestionnaireResponse.item.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMList.SubAnswers"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubAnswers.answer",
      "path" : "QuestionnaireResponse.item.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubAnswers.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubAnswers.item",
      "path" : "QuestionnaireResponse.item.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubStatement",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "sliceName" : "SubStatement",
      "short" : "觀察紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubStatement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMList.SubStatement"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubStatement.answer",
      "path" : "QuestionnaireResponse.item.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubStatement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMList.item:SubStatement.item",
      "path" : "QuestionnaireResponse.item.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "FJMVas",
      "short" : "疼痛量尺",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMVas"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 2
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Part",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "sliceName" : "Part",
      "short" : "疼痛部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Part.linkId",
      "path" : "QuestionnaireResponse.item.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMVas.Part"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Part.answer",
      "path" : "QuestionnaireResponse.item.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Part.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Part.item",
      "path" : "QuestionnaireResponse.item.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Point",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "sliceName" : "Point",
      "short" : "疼痛程度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Point.linkId",
      "path" : "QuestionnaireResponse.item.item.item.item.linkId",
      "patternString" : "FJM.Answers.FJMVas.Point"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Point.answer",
      "path" : "QuestionnaireResponse.item.item.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Point.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 1,
      "maxValueInteger" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Answers.item:FJMVas.item:Point.item",
      "path" : "QuestionnaireResponse.item.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Statement",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Statement",
      "short" : "主訴敘述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "FJM.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:FJM.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Statement",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Statement",
      "short" : "照護紀錄",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsTemporary",
      "short" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsTemporary"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    }]
  }
}

```
