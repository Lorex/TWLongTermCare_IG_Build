# 居家護理－共照紀錄邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－共照紀錄邏輯模型**

## Logical Model: 居家護理－共照紀錄邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCaseDescModel |

 
描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－共照紀錄 API 邏輯模型](StructureDefinition-HNCaseDescAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCaseDescModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCaseDescModel.csv), [Excel](StructureDefinition-HNCaseDescModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCaseDescModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescModel",
  "version" : "1.1.0",
  "name" : "HNCaseDescModel",
  "title" : "居家護理－共照紀錄邏輯模型",
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
  "description" : "描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-casedesc-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescResponse",
    "name" : "居家護理－共照紀錄欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCaseDescModel",
      "path" : "HNCaseDescModel",
      "short" : "居家護理－共照紀錄邏輯模型",
      "definition" : "描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNCaseDescModel.caseID",
      "path" : "HNCaseDescModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNCaseDescModel.endDate",
      "path" : "HNCaseDescModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNCaseDescModel.date",
      "path" : "HNCaseDescModel.date",
      "short" : "照護日期",
      "definition" : "照護日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNCaseDescModel.time",
      "path" : "HNCaseDescModel.time",
      "short" : "開始時間",
      "definition" : "開始時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Time')",
        "comment" : "來源欄位／題目：Time"
      }]
    },
    {
      "id" : "HNCaseDescModel.time2",
      "path" : "HNCaseDescModel.time2",
      "short" : "結束時間",
      "definition" : "結束時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Time2')",
        "comment" : "來源欄位／題目：Time2"
      }]
    },
    {
      "id" : "HNCaseDescModel.medicalName",
      "path" : "HNCaseDescModel.medicalName",
      "short" : "共照成員姓名",
      "definition" : "共照成員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MedicalName')",
        "comment" : "來源欄位／題目：MedicalName"
      }]
    },
    {
      "id" : "HNCaseDescModel.title",
      "path" : "HNCaseDescModel.title",
      "short" : "共照成員職稱",
      "definition" : "共照成員職稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title')",
        "comment" : "來源欄位／題目：Title"
      }]
    },
    {
      "id" : "HNCaseDescModel.title.value",
      "path" : "HNCaseDescModel.title.value",
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
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Value')",
        "comment" : "來源欄位／題目：Title.Value"
      }]
    },
    {
      "id" : "HNCaseDescModel.title.other",
      "path" : "HNCaseDescModel.title.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Other')",
        "comment" : "來源欄位／題目：Title.Other"
      }]
    },
    {
      "id" : "HNCaseDescModel.statement",
      "path" : "HNCaseDescModel.statement",
      "short" : "照護紀錄",
      "definition" : "照護紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casedesc-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    }]
  }
}

```
