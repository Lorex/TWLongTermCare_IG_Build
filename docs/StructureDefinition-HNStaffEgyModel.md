# 居家護理－人員緊急事件邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－人員緊急事件邏輯模型**

## Logical Model: 居家護理－人員緊急事件邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNStaffEgyModel |

 
描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－人員緊急事件 API 邏輯模型](StructureDefinition-HNStaffEgyAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNStaffEgyModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNStaffEgyModel.csv), [Excel](StructureDefinition-HNStaffEgyModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNStaffEgyModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyModel",
  "version" : "1.1.0",
  "name" : "HNStaffEgyModel",
  "title" : "居家護理－人員緊急事件邏輯模型",
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
  "description" : "描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-staffegy-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse",
    "name" : "居家護理－人員緊急事件欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNStaffEgyModel",
      "path" : "HNStaffEgyModel",
      "short" : "居家護理－人員緊急事件邏輯模型",
      "definition" : "描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNStaffEgyModel.title",
      "path" : "HNStaffEgyModel.title",
      "short" : "工作人員職稱",
      "definition" : "工作人員職稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title')",
        "comment" : "來源欄位／題目：Title"
      }]
    },
    {
      "id" : "HNStaffEgyModel.title.value",
      "path" : "HNStaffEgyModel.title.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018"
      },
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Value')",
        "comment" : "來源欄位／題目：Title.Value"
      }]
    },
    {
      "id" : "HNStaffEgyModel.title.other",
      "path" : "HNStaffEgyModel.title.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Other')",
        "comment" : "來源欄位／題目：Title.Other"
      }]
    },
    {
      "id" : "HNStaffEgyModel.name",
      "path" : "HNStaffEgyModel.name",
      "short" : "工作人員姓名",
      "definition" : "工作人員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Name')",
        "comment" : "來源欄位／題目：Name"
      }]
    },
    {
      "id" : "HNStaffEgyModel.iDNo",
      "path" : "HNStaffEgyModel.iDNo",
      "short" : "人員身分證字號",
      "definition" : "人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IDNo')",
        "comment" : "來源欄位／題目：IDNo"
      }]
    },
    {
      "id" : "HNStaffEgyModel.emergencyType",
      "path" : "HNStaffEgyModel.emergencyType",
      "short" : "緊急事件類型",
      "definition" : "緊急事件類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyType')",
        "comment" : "來源欄位／題目：EmergencyType"
      }]
    },
    {
      "id" : "HNStaffEgyModel.emergencyType.value",
      "path" : "HNStaffEgyModel.emergencyType.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6892f4f30c24"
      },
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Value')",
        "comment" : "來源欄位／題目：EmergencyType.Value"
      }]
    },
    {
      "id" : "HNStaffEgyModel.emergencyType.other",
      "path" : "HNStaffEgyModel.emergencyType.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Other')",
        "comment" : "來源欄位／題目：EmergencyType.Other"
      }]
    },
    {
      "id" : "HNStaffEgyModel.date",
      "path" : "HNStaffEgyModel.date",
      "short" : "發生日期",
      "definition" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNStaffEgyModel.time",
      "path" : "HNStaffEgyModel.time",
      "short" : "發生時間",
      "definition" : "發生時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Time')",
        "comment" : "來源欄位／題目：Time"
      }]
    },
    {
      "id" : "HNStaffEgyModel.reason",
      "path" : "HNStaffEgyModel.reason",
      "short" : "發生原因",
      "definition" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Reason')",
        "comment" : "來源欄位／題目：Reason"
      }]
    },
    {
      "id" : "HNStaffEgyModel.description",
      "path" : "HNStaffEgyModel.description",
      "short" : "事件敘述",
      "definition" : "事件敘述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Description')",
        "comment" : "來源欄位／題目：Description"
      }]
    },
    {
      "id" : "HNStaffEgyModel.process",
      "path" : "HNStaffEgyModel.process",
      "short" : "通報及處理過程",
      "definition" : "通報及處理過程",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Process')",
        "comment" : "來源欄位／題目：Process"
      }]
    },
    {
      "id" : "HNStaffEgyModel.report",
      "path" : "HNStaffEgyModel.report",
      "short" : "檢討紀錄",
      "definition" : "檢討紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Report')",
        "comment" : "來源欄位／題目：Report"
      }]
    },
    {
      "id" : "HNStaffEgyModel.createID",
      "path" : "HNStaffEgyModel.createID",
      "short" : "建立機構代碼",
      "definition" : "建立機構代碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-staffegy-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CreateID')",
        "comment" : "來源欄位／題目：CreateID"
      }]
    }]
  }
}

```
