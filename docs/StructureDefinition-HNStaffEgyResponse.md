# 居家護理－人員緊急事件表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－人員緊急事件表單**

## Resource Profile: 居家護理－人員緊急事件表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNStaffEgyResponse |

 
記錄人員緊急事件的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-staffegy-example](QuestionnaireResponse-hn-staffegy-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNStaffEgyResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNStaffEgyResponse.csv), [Excel](StructureDefinition-HNStaffEgyResponse.xlsx), [Schematron](StructureDefinition-HNStaffEgyResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNStaffEgyResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse",
  "version" : "1.1.0",
  "name" : "HNStaffEgyResponse",
  "title" : "居家護理－人員緊急事件表單",
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
  "description" : "記錄人員緊急事件的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "hn-staffegy-1",
        "severity" : "error",
        "human" : "工作人員職稱選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='Title').all((item.where(linkId='Title.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Title.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse"
      },
      {
        "key" : "hn-staffegy-2",
        "severity" : "error",
        "human" : "緊急事件類型選擇其他時應填寫補充說明。",
        "expression" : "item.where(linkId='EmergencyType').all((item.where(linkId='EmergencyType.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='EmergencyType.Other').answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse"
      }]
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-staffegy",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
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
      "min" : 11
    },
    {
      "id" : "QuestionnaireResponse.item:Title",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Title",
      "short" : "工作人員職稱",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Title.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Title"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item",
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
      "id" : "QuestionnaireResponse.item:Title.item:Value",
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
      "id" : "QuestionnaireResponse.item:Title.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Title.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Title.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Other",
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
      "id" : "QuestionnaireResponse.item:Title.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Title.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Title.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Name",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Name",
      "short" : "工作人員姓名",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Name.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Name"
    },
    {
      "id" : "QuestionnaireResponse.item:Name.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Name.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:Name.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IDNo",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IDNo",
      "short" : "人員身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IDNo.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IDNo"
    },
    {
      "id" : "QuestionnaireResponse.item:IDNo.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IDNo.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:IDNo.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EmergencyType",
      "short" : "緊急事件類型",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EmergencyType"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item",
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
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Value",
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
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Value.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyType.Value"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Value.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Value.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6892f4f30c24"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Value.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Other",
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
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "EmergencyType.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:EmergencyType.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Date",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Date",
      "short" : "發生日期",
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
      "id" : "QuestionnaireResponse.item:Time",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Time",
      "short" : "發生時間",
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
      "id" : "QuestionnaireResponse.item:Reason",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Reason",
      "short" : "發生原因",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Reason.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Reason"
    },
    {
      "id" : "QuestionnaireResponse.item:Reason.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Reason.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Reason.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Description",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Description",
      "short" : "事件敘述",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Description.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Description"
    },
    {
      "id" : "QuestionnaireResponse.item:Description.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Description.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:Description.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Process",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Process",
      "short" : "通報及處理過程",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Process.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Process"
    },
    {
      "id" : "QuestionnaireResponse.item:Process.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Process.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:Process.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Report",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Report",
      "short" : "檢討紀錄",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Report.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Report"
    },
    {
      "id" : "QuestionnaireResponse.item:Report.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Report.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 200
    },
    {
      "id" : "QuestionnaireResponse.item:Report.item",
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
    }]
  }
}

```
