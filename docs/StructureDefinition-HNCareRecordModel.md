# 居家護理－照護紀錄邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護紀錄邏輯模型**

## Logical Model: 居家護理－照護紀錄邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCareRecordModel |

 
描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－照護紀錄 API 邏輯模型](StructureDefinition-HNCareRecordAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCareRecordModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCareRecordModel.csv), [Excel](StructureDefinition-HNCareRecordModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCareRecordModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordModel",
  "version" : "1.1.0",
  "name" : "HNCareRecordModel",
  "title" : "居家護理－照護紀錄邏輯模型",
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
  "description" : "描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-carerecord-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse",
    "name" : "居家護理－照護紀錄欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCareRecordModel",
      "path" : "HNCareRecordModel",
      "short" : "居家護理－照護紀錄邏輯模型",
      "definition" : "描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNCareRecordModel.caseID",
      "path" : "HNCareRecordModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNCareRecordModel.endDate",
      "path" : "HNCareRecordModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNCareRecordModel.date",
      "path" : "HNCareRecordModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.nurseID",
      "path" : "HNCareRecordModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNCareRecordModel.time",
      "path" : "HNCareRecordModel.time",
      "short" : "照護開始時間",
      "definition" : "照護開始時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Time')",
        "comment" : "來源欄位／題目：Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.time2",
      "path" : "HNCareRecordModel.time2",
      "short" : "照護結束時間",
      "definition" : "照護結束時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Time2')",
        "comment" : "來源欄位／題目：Time2"
      }]
    },
    {
      "id" : "HNCareRecordModel.recordSource",
      "path" : "HNCareRecordModel.recordSource",
      "short" : "紀錄來源",
      "definition" : "紀錄來源",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='RecordSource')",
        "comment" : "來源欄位／題目：RecordSource"
      }]
    },
    {
      "id" : "HNCareRecordModel.recordSource.value",
      "path" : "HNCareRecordModel.recordSource.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-04e9c37073f4"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='RecordSource').item.where(linkId='RecordSource.Value')",
        "comment" : "來源欄位／題目：RecordSource.Value"
      }]
    },
    {
      "id" : "HNCareRecordModel.recordSource.other",
      "path" : "HNCareRecordModel.recordSource.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='RecordSource').item.where(linkId='RecordSource.Other')",
        "comment" : "來源欄位／題目：RecordSource.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.height",
      "path" : "HNCareRecordModel.height",
      "short" : "身高（公分）",
      "definition" : "身高（公分）。0 至 200，至小數一位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Height')",
        "comment" : "來源欄位／題目：Height"
      }]
    },
    {
      "id" : "HNCareRecordModel.weight",
      "path" : "HNCareRecordModel.weight",
      "short" : "體重（公斤）",
      "definition" : "體重（公斤）。0 至 200，至小數一位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Weight')",
        "comment" : "來源欄位／題目：Weight"
      }]
    },
    {
      "id" : "HNCareRecordModel.bMI",
      "path" : "HNCareRecordModel.bMI",
      "short" : "身體質量指數",
      "definition" : "身體質量指數。0 至 200，至小數一位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BMI')",
        "comment" : "來源欄位／題目：BMI"
      }]
    },
    {
      "id" : "HNCareRecordModel.armW",
      "path" : "HNCareRecordModel.armW",
      "short" : "臂中圍（公分）",
      "definition" : "臂中圍（公分）。0 至 200，至小數一位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ArmW')",
        "comment" : "來源欄位／題目：ArmW"
      }]
    },
    {
      "id" : "HNCareRecordModel.legW",
      "path" : "HNCareRecordModel.legW",
      "short" : "小腿圍（公分）",
      "definition" : "小腿圍（公分）。0 至 200，至小數一位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 200,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='LegW')",
        "comment" : "來源欄位／題目：LegW"
      }]
    },
    {
      "id" : "HNCareRecordModel.live",
      "path" : "HNCareRecordModel.live",
      "short" : "居住所",
      "definition" : "居住所",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Live')",
        "comment" : "來源欄位／題目：Live"
      }]
    },
    {
      "id" : "HNCareRecordModel.live.value",
      "path" : "HNCareRecordModel.live.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d93b34f7b736"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Live').item.where(linkId='Live.Value')",
        "comment" : "來源欄位／題目：Live.Value"
      }]
    },
    {
      "id" : "HNCareRecordModel.live.other",
      "path" : "HNCareRecordModel.live.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Live').item.where(linkId='Live.Other')",
        "comment" : "來源欄位／題目：Live.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.liveArea",
      "path" : "HNCareRecordModel.liveArea",
      "short" : "居住區域",
      "definition" : "居住區域",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='LiveArea')",
        "comment" : "來源欄位／題目：LiveArea"
      }]
    },
    {
      "id" : "HNCareRecordModel.liveArea.city",
      "path" : "HNCareRecordModel.liveArea.city",
      "short" : "縣市",
      "definition" : "縣市",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='LiveArea').item.where(linkId='LiveArea.City')",
        "comment" : "來源欄位／題目：LiveArea.City"
      }]
    },
    {
      "id" : "HNCareRecordModel.liveArea.area",
      "path" : "HNCareRecordModel.liveArea.area",
      "short" : "鄉鎮市區",
      "definition" : "鄉鎮市區",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='LiveArea').item.where(linkId='LiveArea.Area')",
        "comment" : "來源欄位／題目：LiveArea.Area"
      }]
    },
    {
      "id" : "HNCareRecordModel.useResources",
      "path" : "HNCareRecordModel.useResources",
      "short" : "使用資源",
      "definition" : "使用資源",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='UseResources')",
        "comment" : "來源欄位／題目：UseResources"
      }]
    },
    {
      "id" : "HNCareRecordModel.useResources.values",
      "path" : "HNCareRecordModel.useResources.values",
      "short" : "選項",
      "definition" : "選項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-38762eb1c742"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='UseResources').item.where(linkId='UseResources.Values')",
        "comment" : "來源欄位／題目：UseResources.Values"
      }]
    },
    {
      "id" : "HNCareRecordModel.useResources.other",
      "path" : "HNCareRecordModel.useResources.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='UseResources').item.where(linkId='UseResources.Other')",
        "comment" : "來源欄位／題目：UseResources.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.serviceItems",
      "path" : "HNCareRecordModel.serviceItems",
      "short" : "服務項目",
      "definition" : "服務項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ServiceItems')",
        "comment" : "來源欄位／題目：ServiceItems"
      }]
    },
    {
      "id" : "HNCareRecordModel.serviceItems.values",
      "path" : "HNCareRecordModel.serviceItems.values",
      "short" : "選項",
      "definition" : "選項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8a0ace9ffad"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Values')",
        "comment" : "來源欄位／題目：ServiceItems.Values"
      }]
    },
    {
      "id" : "HNCareRecordModel.serviceItems.other",
      "path" : "HNCareRecordModel.serviceItems.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Other')",
        "comment" : "來源欄位／題目：ServiceItems.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.isUnplanned",
      "path" : "HNCareRecordModel.isUnplanned",
      "short" : "是否非計畫性再住院",
      "definition" : "是否非計畫性再住院",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsUnplanned')",
        "comment" : "來源欄位／題目：IsUnplanned"
      }]
    },
    {
      "id" : "HNCareRecordModel.unplanned",
      "path" : "HNCareRecordModel.unplanned",
      "short" : "非計畫性再住院",
      "definition" : "非計畫性再住院",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Unplanned')",
        "comment" : "來源欄位／題目：Unplanned"
      }]
    },
    {
      "id" : "HNCareRecordModel.unplanned.date",
      "path" : "HNCareRecordModel.unplanned.date",
      "short" : "發生日期",
      "definition" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Date')",
        "comment" : "來源欄位／題目：Unplanned.Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.unplanned.time",
      "path" : "HNCareRecordModel.unplanned.time",
      "short" : "發生時段",
      "definition" : "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Time')",
        "comment" : "來源欄位／題目：Unplanned.Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.unplanned.statement",
      "path" : "HNCareRecordModel.unplanned.statement",
      "short" : "發生原因",
      "definition" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Statement')",
        "comment" : "來源欄位／題目：Unplanned.Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.isEmergency",
      "path" : "HNCareRecordModel.isEmergency",
      "short" : "是否使用急診",
      "definition" : "是否使用急診",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsEmergency')",
        "comment" : "來源欄位／題目：IsEmergency"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergency",
      "path" : "HNCareRecordModel.emergency",
      "short" : "使用急診",
      "definition" : "使用急診",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Emergency')",
        "comment" : "來源欄位／題目：Emergency"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergency.date",
      "path" : "HNCareRecordModel.emergency.date",
      "short" : "發生日期",
      "definition" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Date')",
        "comment" : "來源欄位／題目：Emergency.Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergency.time",
      "path" : "HNCareRecordModel.emergency.time",
      "short" : "發生時段",
      "definition" : "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Time')",
        "comment" : "來源欄位／題目：Emergency.Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergency.statement",
      "path" : "HNCareRecordModel.emergency.statement",
      "short" : "發生原因",
      "definition" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Statement')",
        "comment" : "來源欄位／題目：Emergency.Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.isSkinDamages",
      "path" : "HNCareRecordModel.isSkinDamages",
      "short" : "是否皮膚損傷",
      "definition" : "是否皮膚損傷",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsSkinDamages')",
        "comment" : "來源欄位／題目：IsSkinDamages"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages",
      "path" : "HNCareRecordModel.skinDamages",
      "short" : "皮膚損傷",
      "definition" : "皮膚損傷",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages')",
        "comment" : "來源欄位／題目：SkinDamages"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.date",
      "path" : "HNCareRecordModel.skinDamages.date",
      "short" : "發生日期",
      "definition" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Date')",
        "comment" : "來源欄位／題目：SkinDamages.Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.time",
      "path" : "HNCareRecordModel.skinDamages.time",
      "short" : "發生時段",
      "definition" : "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Time')",
        "comment" : "來源欄位／題目：SkinDamages.Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.kind",
      "path" : "HNCareRecordModel.skinDamages.kind",
      "short" : "損傷類型",
      "definition" : "損傷類型",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind')",
        "comment" : "來源欄位／題目：SkinDamages.Kind"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.kind.value",
      "path" : "HNCareRecordModel.skinDamages.kind.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b0ba220a4535"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Value')",
        "comment" : "來源欄位／題目：SkinDamages.Kind.Value"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.kind.other",
      "path" : "HNCareRecordModel.skinDamages.kind.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Other')",
        "comment" : "來源欄位／題目：SkinDamages.Kind.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.skinDamages.statement",
      "path" : "HNCareRecordModel.skinDamages.statement",
      "short" : "發生原因",
      "definition" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Statement')",
        "comment" : "來源欄位／題目：SkinDamages.Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.isEmergencyEvents",
      "path" : "HNCareRecordModel.isEmergencyEvents",
      "short" : "是否緊急事件",
      "definition" : "是否緊急事件",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsEmergencyEvents')",
        "comment" : "來源欄位／題目：IsEmergencyEvents"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents",
      "path" : "HNCareRecordModel.emergencyEvents",
      "short" : "緊急事件",
      "definition" : "緊急事件",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents')",
        "comment" : "來源欄位／題目：EmergencyEvents"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.emergencyType",
      "path" : "HNCareRecordModel.emergencyEvents.emergencyType",
      "short" : "事件類型",
      "definition" : "事件類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType')",
        "comment" : "來源欄位／題目：EmergencyEvents.EmergencyType"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.emergencyType.value",
      "path" : "HNCareRecordModel.emergencyEvents.emergencyType.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4abebe47a94c"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Value')",
        "comment" : "來源欄位／題目：EmergencyEvents.EmergencyType.Value"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.emergencyType.other",
      "path" : "HNCareRecordModel.emergencyEvents.emergencyType.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Other')",
        "comment" : "來源欄位／題目：EmergencyEvents.EmergencyType.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.date",
      "path" : "HNCareRecordModel.emergencyEvents.date",
      "short" : "發生日期",
      "definition" : "發生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Date')",
        "comment" : "來源欄位／題目：EmergencyEvents.Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.time",
      "path" : "HNCareRecordModel.emergencyEvents.time",
      "short" : "發生時段",
      "definition" : "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Time')",
        "comment" : "來源欄位／題目：EmergencyEvents.Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.reason",
      "path" : "HNCareRecordModel.emergencyEvents.reason",
      "short" : "發生原因",
      "definition" : "發生原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Reason')",
        "comment" : "來源欄位／題目：EmergencyEvents.Reason"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.description",
      "path" : "HNCareRecordModel.emergencyEvents.description",
      "short" : "事件描述",
      "definition" : "事件描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Description')",
        "comment" : "來源欄位／題目：EmergencyEvents.Description"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.process",
      "path" : "HNCareRecordModel.emergencyEvents.process",
      "short" : "通報及處理過程",
      "definition" : "通報及處理過程",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Process')",
        "comment" : "來源欄位／題目：EmergencyEvents.Process"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.report",
      "path" : "HNCareRecordModel.emergencyEvents.report",
      "short" : "檢討紀錄",
      "definition" : "檢討紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Report')",
        "comment" : "來源欄位／題目：EmergencyEvents.Report"
      }]
    },
    {
      "id" : "HNCareRecordModel.emergencyEvents.createID",
      "path" : "HNCareRecordModel.emergencyEvents.createID",
      "short" : "照護人員身分證字號",
      "definition" : "照護人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.CreateID')",
        "comment" : "來源欄位／題目：EmergencyEvents.CreateID"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign",
      "path" : "HNCareRecordModel.vitalSign",
      "short" : "生命徵象",
      "definition" : "生命徵象",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign')",
        "comment" : "來源欄位／題目：VitalSign"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.date",
      "path" : "HNCareRecordModel.vitalSign.date",
      "short" : "量測日期",
      "definition" : "量測日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Date')",
        "comment" : "來源欄位／題目：VitalSign.Date"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.time",
      "path" : "HNCareRecordModel.vitalSign.time",
      "short" : "量測時間",
      "definition" : "量測時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Time')",
        "comment" : "來源欄位／題目：VitalSign.Time"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.temperature",
      "path" : "HNCareRecordModel.vitalSign.temperature",
      "short" : "體溫",
      "definition" : "體溫。攝氏度。原 API 為字串；填入 0 至 999，至小數一位。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Temperature')",
        "comment" : "來源欄位／題目：VitalSign.Temperature"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.pulse",
      "path" : "HNCareRecordModel.vitalSign.pulse",
      "short" : "脈搏",
      "definition" : "脈搏。每分鐘次數，0 至 999。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Pulse')",
        "comment" : "來源欄位／題目：VitalSign.Pulse"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.respiration",
      "path" : "HNCareRecordModel.vitalSign.respiration",
      "short" : "呼吸",
      "definition" : "呼吸。每分鐘次數，0 至 999。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Respiration')",
        "comment" : "來源欄位／題目：VitalSign.Respiration"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.bloodPressure1",
      "path" : "HNCareRecordModel.vitalSign.bloodPressure1",
      "short" : "收縮壓",
      "definition" : "收縮壓。mmHg，0 至 999。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure1')",
        "comment" : "來源欄位／題目：VitalSign.BloodPressure1"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.bloodPressure2",
      "path" : "HNCareRecordModel.vitalSign.bloodPressure2",
      "short" : "舒張壓",
      "definition" : "舒張壓。mmHg，0 至 999。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure2')",
        "comment" : "來源欄位／題目：VitalSign.BloodPressure2"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.bloodGlucose",
      "path" : "HNCareRecordModel.vitalSign.bloodGlucose",
      "short" : "血糖",
      "definition" : "血糖。mg/dL，0 至 999。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodGlucose')",
        "comment" : "來源欄位／題目：VitalSign.BloodGlucose"
      }]
    },
    {
      "id" : "HNCareRecordModel.vitalSign.bloodOxygen",
      "path" : "HNCareRecordModel.vitalSign.bloodOxygen",
      "short" : "血氧",
      "definition" : "血氧。百分比，0 至 100。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 100,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodOxygen')",
        "comment" : "來源欄位／題目：VitalSign.BloodOxygen"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords",
      "path" : "HNCareRecordModel.woundRecords",
      "short" : "傷口紀錄",
      "definition" : "傷口紀錄",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords')",
        "comment" : "來源欄位／題目：WoundRecords"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.part",
      "path" : "HNCareRecordModel.woundRecords.part",
      "short" : "傷口部位",
      "definition" : "傷口部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Part')",
        "comment" : "來源欄位／題目：WoundRecords.Part"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.length",
      "path" : "HNCareRecordModel.woundRecords.length",
      "short" : "傷口長度",
      "definition" : "傷口長度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Length')",
        "comment" : "來源欄位／題目：WoundRecords.Length"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.width",
      "path" : "HNCareRecordModel.woundRecords.width",
      "short" : "傷口寬度",
      "definition" : "傷口寬度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Width')",
        "comment" : "來源欄位／題目：WoundRecords.Width"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.depth",
      "path" : "HNCareRecordModel.woundRecords.depth",
      "short" : "傷口深度",
      "definition" : "傷口深度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Depth')",
        "comment" : "來源欄位／題目：WoundRecords.Depth"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.category",
      "path" : "HNCareRecordModel.woundRecords.category",
      "short" : "傷口分類",
      "definition" : "傷口分類",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ab16e9d81e7b"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Category')",
        "comment" : "來源欄位／題目：WoundRecords.Category"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.level",
      "path" : "HNCareRecordModel.woundRecords.level",
      "short" : "傷口等級",
      "definition" : "傷口等級",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-de533dbea66c"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Level')",
        "comment" : "來源欄位／題目：WoundRecords.Level"
      }]
    },
    {
      "id" : "HNCareRecordModel.woundRecords.statement",
      "path" : "HNCareRecordModel.woundRecords.statement",
      "short" : "傷口說明",
      "definition" : "傷口說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Statement')",
        "comment" : "來源欄位／題目：WoundRecords.Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJMEvaluation",
      "path" : "HNCareRecordModel.fJMEvaluation",
      "short" : "足部護理評估狀態",
      "definition" : "足部護理評估狀態",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5154109e8985"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJMEvaluation')",
        "comment" : "來源欄位／題目：FJMEvaluation"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM",
      "path" : "HNCareRecordModel.fJM",
      "short" : "足部護理",
      "definition" : "足部護理",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM')",
        "comment" : "來源欄位／題目：FJM"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.item",
      "path" : "HNCareRecordModel.fJM.item",
      "short" : "項目分類",
      "definition" : "項目分類",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0a65df60cccf"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Item')",
        "comment" : "來源欄位／題目：FJM.Item"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.question",
      "path" : "HNCareRecordModel.fJM.question",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-14764e5914f7"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Question')",
        "comment" : "來源欄位／題目：FJM.Question"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers",
      "path" : "HNCareRecordModel.fJM.answers",
      "short" : "答案",
      "definition" : "答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers')",
        "comment" : "來源欄位／題目：FJM.Answers"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.values",
      "path" : "HNCareRecordModel.fJM.answers.values",
      "short" : "選項",
      "definition" : "選項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Values')",
        "comment" : "來源欄位／題目：FJM.Answers.Values"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.other",
      "path" : "HNCareRecordModel.fJM.answers.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Other')",
        "comment" : "來源欄位／題目：FJM.Answers.Other"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMList",
      "path" : "HNCareRecordModel.fJM.answers.fJMList",
      "short" : "操作項目紀錄",
      "definition" : "操作項目紀錄",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMList"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMList.subQuestion",
      "path" : "HNCareRecordModel.fJM.answers.fJMList.subQuestion",
      "short" : "操作項目與流程",
      "definition" : "操作項目與流程",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dfa44a5bba0b"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubQuestion')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMList.SubQuestion"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMList.subAnswers",
      "path" : "HNCareRecordModel.fJM.answers.fJMList.subAnswers",
      "short" : "有反應物",
      "definition" : "有反應物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubAnswers')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMList.SubAnswers"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMList.subStatement",
      "path" : "HNCareRecordModel.fJM.answers.fJMList.subStatement",
      "short" : "觀察紀錄",
      "definition" : "觀察紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubStatement')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMList.SubStatement"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMVas",
      "path" : "HNCareRecordModel.fJM.answers.fJMVas",
      "short" : "疼痛量尺",
      "definition" : "疼痛量尺",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMVas"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMVas.part",
      "path" : "HNCareRecordModel.fJM.answers.fJMVas.part",
      "short" : "疼痛部位",
      "definition" : "疼痛部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Part')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMVas.Part"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.answers.fJMVas.point",
      "path" : "HNCareRecordModel.fJM.answers.fJMVas.point",
      "short" : "疼痛程度",
      "definition" : "疼痛程度。1 至 10 分。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 1,
      "maxValueInteger" : 10,
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Point')",
        "comment" : "來源欄位／題目：FJM.Answers.FJMVas.Point"
      }]
    },
    {
      "id" : "HNCareRecordModel.fJM.statement",
      "path" : "HNCareRecordModel.fJM.statement",
      "short" : "主訴敘述",
      "definition" : "主訴敘述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Statement')",
        "comment" : "來源欄位／題目：FJM.Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.statement",
      "path" : "HNCareRecordModel.statement",
      "short" : "照護紀錄",
      "definition" : "照護紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNCareRecordModel.isTemporary",
      "path" : "HNCareRecordModel.isTemporary",
      "short" : "是否暫存",
      "definition" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-carerecord-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
