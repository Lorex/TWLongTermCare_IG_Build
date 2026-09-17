# 居家護理－個案基本資料邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－個案基本資料邏輯模型**

## Logical Model: 居家護理－個案基本資料邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNBaseDataModel |

 
描述居家護理個案基本資料的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－個案基本資料 API 邏輯模型](StructureDefinition-HNBaseDataAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNBaseDataModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNBaseDataModel.csv), [Excel](StructureDefinition-HNBaseDataModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNBaseDataModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataModel",
  "version" : "1.1.0",
  "name" : "HNBaseDataModel",
  "title" : "居家護理－個案基本資料邏輯模型",
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
  "description" : "描述居家護理個案基本資料的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-basedata-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse",
    "name" : "居家護理－個案基本資料欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNBaseDataModel",
      "path" : "HNBaseDataModel",
      "short" : "居家護理－個案基本資料邏輯模型",
      "definition" : "描述居家護理個案基本資料的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNBaseDataModel.caseID",
      "path" : "HNBaseDataModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNBaseDataModel.endDate",
      "path" : "HNBaseDataModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseSource",
      "path" : "HNBaseDataModel.caseSource",
      "short" : "收案來源",
      "definition" : "收案來源",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseSource')",
        "comment" : "來源欄位／題目：CaseSource"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseSource.value",
      "path" : "HNBaseDataModel.caseSource.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef3233b113ad"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseSource').item.where(linkId='CaseSource.Value')",
        "comment" : "來源欄位／題目：CaseSource.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseSource.other",
      "path" : "HNBaseDataModel.caseSource.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseSource').item.where(linkId='CaseSource.Other')",
        "comment" : "來源欄位／題目：CaseSource.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseName",
      "path" : "HNBaseDataModel.caseName",
      "short" : "個案姓名",
      "definition" : "個案姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseName')",
        "comment" : "來源欄位／題目：CaseName"
      }]
    },
    {
      "id" : "HNBaseDataModel.sex",
      "path" : "HNBaseDataModel.sex",
      "short" : "性別",
      "definition" : "性別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Sex')",
        "comment" : "來源欄位／題目：Sex"
      }]
    },
    {
      "id" : "HNBaseDataModel.sex.value",
      "path" : "HNBaseDataModel.sex.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8f650cb37b1"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Sex').item.where(linkId='Sex.Value')",
        "comment" : "來源欄位／題目：Sex.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.sex.other",
      "path" : "HNBaseDataModel.sex.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Sex').item.where(linkId='Sex.Other')",
        "comment" : "來源欄位／題目：Sex.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseType",
      "path" : "HNBaseDataModel.caseType",
      "short" : "個案類型",
      "definition" : "個案類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-082869c8d896"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseType')",
        "comment" : "來源欄位／題目：CaseType"
      }]
    },
    {
      "id" : "HNBaseDataModel.birthdate",
      "path" : "HNBaseDataModel.birthdate",
      "short" : "出生日期",
      "definition" : "出生日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Birthdate')",
        "comment" : "來源欄位／題目：Birthdate"
      }]
    },
    {
      "id" : "HNBaseDataModel.phoneNumber",
      "path" : "HNBaseDataModel.phoneNumber",
      "short" : "聯絡電話",
      "definition" : "聯絡電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='PhoneNumber')",
        "comment" : "來源欄位／題目：PhoneNumber"
      }]
    },
    {
      "id" : "HNBaseDataModel.address",
      "path" : "HNBaseDataModel.address",
      "short" : "居住地址",
      "definition" : "居住地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Address')",
        "comment" : "來源欄位／題目：Address"
      }]
    },
    {
      "id" : "HNBaseDataModel.address.city",
      "path" : "HNBaseDataModel.address.city",
      "short" : "縣市",
      "definition" : "縣市",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Address').item.where(linkId='Address.City')",
        "comment" : "來源欄位／題目：Address.City"
      }]
    },
    {
      "id" : "HNBaseDataModel.address.area",
      "path" : "HNBaseDataModel.address.area",
      "short" : "鄉鎮市區",
      "definition" : "鄉鎮市區",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Address').item.where(linkId='Address.Area')",
        "comment" : "來源欄位／題目：Address.Area"
      }]
    },
    {
      "id" : "HNBaseDataModel.address.lane",
      "path" : "HNBaseDataModel.address.lane",
      "short" : "街路門牌",
      "definition" : "街路門牌",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Address').item.where(linkId='Address.Lane')",
        "comment" : "來源欄位／題目：Address.Lane"
      }]
    },
    {
      "id" : "HNBaseDataModel.education",
      "path" : "HNBaseDataModel.education",
      "short" : "教育程度",
      "definition" : "教育程度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Education')",
        "comment" : "來源欄位／題目：Education"
      }]
    },
    {
      "id" : "HNBaseDataModel.education.value",
      "path" : "HNBaseDataModel.education.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8bcd09f153b7"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Education').item.where(linkId='Education.Value')",
        "comment" : "來源欄位／題目：Education.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.education.other",
      "path" : "HNBaseDataModel.education.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Education').item.where(linkId='Education.Other')",
        "comment" : "來源欄位／題目：Education.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.marriage",
      "path" : "HNBaseDataModel.marriage",
      "short" : "婚姻狀況",
      "definition" : "婚姻狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Marriage')",
        "comment" : "來源欄位／題目：Marriage"
      }]
    },
    {
      "id" : "HNBaseDataModel.marriage.value",
      "path" : "HNBaseDataModel.marriage.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-924b837448d2"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Marriage').item.where(linkId='Marriage.Value')",
        "comment" : "來源欄位／題目：Marriage.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.marriage.other",
      "path" : "HNBaseDataModel.marriage.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Marriage').item.where(linkId='Marriage.Other')",
        "comment" : "來源欄位／題目：Marriage.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.religion",
      "path" : "HNBaseDataModel.religion",
      "short" : "宗教信仰",
      "definition" : "宗教信仰",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Religion')",
        "comment" : "來源欄位／題目：Religion"
      }]
    },
    {
      "id" : "HNBaseDataModel.religion.value",
      "path" : "HNBaseDataModel.religion.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f6130a2de850"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Religion').item.where(linkId='Religion.Value')",
        "comment" : "來源欄位／題目：Religion.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.religion.other",
      "path" : "HNBaseDataModel.religion.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Religion').item.where(linkId='Religion.Other')",
        "comment" : "來源欄位／題目：Religion.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.exJob",
      "path" : "HNBaseDataModel.exJob",
      "short" : "主要職業",
      "definition" : "主要職業",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ExJob')",
        "comment" : "來源欄位／題目：ExJob"
      }]
    },
    {
      "id" : "HNBaseDataModel.exJob.value",
      "path" : "HNBaseDataModel.exJob.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9bf58092b1d4"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ExJob').item.where(linkId='ExJob.Value')",
        "comment" : "來源欄位／題目：ExJob.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.exJob.other",
      "path" : "HNBaseDataModel.exJob.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='ExJob').item.where(linkId='ExJob.Other')",
        "comment" : "來源欄位／題目：ExJob.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.economic",
      "path" : "HNBaseDataModel.economic",
      "short" : "家庭經濟狀況",
      "definition" : "家庭經濟狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Economic')",
        "comment" : "來源欄位／題目：Economic"
      }]
    },
    {
      "id" : "HNBaseDataModel.economic.value",
      "path" : "HNBaseDataModel.economic.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4a8dcdb04d9b"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Economic').item.where(linkId='Economic.Value')",
        "comment" : "來源欄位／題目：Economic.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.economic.other",
      "path" : "HNBaseDataModel.economic.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Economic').item.where(linkId='Economic.Other')",
        "comment" : "來源欄位／題目：Economic.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.hasWelfare",
      "path" : "HNBaseDataModel.hasWelfare",
      "short" : "是否有福利",
      "definition" : "是否有福利",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='HasWelfare')",
        "comment" : "來源欄位／題目：HasWelfare"
      }]
    },
    {
      "id" : "HNBaseDataModel.welfare",
      "path" : "HNBaseDataModel.welfare",
      "short" : "福利種類",
      "definition" : "福利種類",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Welfare')",
        "comment" : "來源欄位／題目：Welfare"
      }]
    },
    {
      "id" : "HNBaseDataModel.welfare.values",
      "path" : "HNBaseDataModel.welfare.values",
      "short" : "選項",
      "definition" : "選項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-40193bb109d6"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Welfare').item.where(linkId='Welfare.Values')",
        "comment" : "來源欄位／題目：Welfare.Values"
      }]
    },
    {
      "id" : "HNBaseDataModel.welfare.other",
      "path" : "HNBaseDataModel.welfare.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Welfare').item.where(linkId='Welfare.Other')",
        "comment" : "來源欄位／題目：Welfare.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.welfare.disabilityType",
      "path" : "HNBaseDataModel.welfare.disabilityType",
      "short" : "身障類別",
      "definition" : "身障類別。福利包含身障證明時必填。使用現有身心障礙類型 CodeSystem 的第一至第八類，回寫原 API 時還原完整名稱。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-disability-type"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Welfare').item.where(linkId='Welfare.DisabilityType')",
        "comment" : "來源欄位／題目：Welfare.DisabilityType"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverID",
      "path" : "HNBaseDataModel.caregiverID",
      "short" : "主要照顧者關係",
      "definition" : "主要照顧者關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-738f974cf008"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverID')",
        "comment" : "來源欄位／題目：CaregiverID"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverName",
      "path" : "HNBaseDataModel.caregiverName",
      "short" : "主要照顧者姓名",
      "definition" : "主要照顧者姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverName')",
        "comment" : "來源欄位／題目：CaregiverName"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverAddress",
      "path" : "HNBaseDataModel.caregiverAddress",
      "short" : "主要照顧者地址",
      "definition" : "主要照顧者地址",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverAddress')",
        "comment" : "來源欄位／題目：CaregiverAddress"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverAddress.city",
      "path" : "HNBaseDataModel.caregiverAddress.city",
      "short" : "縣市",
      "definition" : "縣市",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.City')",
        "comment" : "來源欄位／題目：CaregiverAddress.City"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverAddress.area",
      "path" : "HNBaseDataModel.caregiverAddress.area",
      "short" : "鄉鎮市區",
      "definition" : "鄉鎮市區",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.Area')",
        "comment" : "來源欄位／題目：CaregiverAddress.Area"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverAddress.lane",
      "path" : "HNBaseDataModel.caregiverAddress.lane",
      "short" : "街路門牌",
      "definition" : "街路門牌",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.Lane')",
        "comment" : "來源欄位／題目：CaregiverAddress.Lane"
      }]
    },
    {
      "id" : "HNBaseDataModel.caregiverTel",
      "path" : "HNBaseDataModel.caregiverTel",
      "short" : "主要照顧者電話",
      "definition" : "主要照顧者電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaregiverTel')",
        "comment" : "來源欄位／題目：CaregiverTel"
      }]
    },
    {
      "id" : "HNBaseDataModel.egyContactRelation",
      "path" : "HNBaseDataModel.egyContactRelation",
      "short" : "緊急聯絡人關係",
      "definition" : "緊急聯絡人關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2029890a4c12"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EgyContactRelation')",
        "comment" : "來源欄位／題目：EgyContactRelation"
      }]
    },
    {
      "id" : "HNBaseDataModel.egyContactName",
      "path" : "HNBaseDataModel.egyContactName",
      "short" : "緊急聯絡人姓名",
      "definition" : "緊急聯絡人姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EgyContactName')",
        "comment" : "來源欄位／題目：EgyContactName"
      }]
    },
    {
      "id" : "HNBaseDataModel.egyContactTel1",
      "path" : "HNBaseDataModel.egyContactTel1",
      "short" : "緊急聯絡電話一",
      "definition" : "緊急聯絡電話一",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EgyContactTel1')",
        "comment" : "來源欄位／題目：EgyContactTel1"
      }]
    },
    {
      "id" : "HNBaseDataModel.egyContactTel2",
      "path" : "HNBaseDataModel.egyContactTel2",
      "short" : "緊急聯絡電話二",
      "definition" : "緊急聯絡電話二",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EgyContactTel2')",
        "comment" : "來源欄位／題目：EgyContactTel2"
      }]
    },
    {
      "id" : "HNBaseDataModel.nurseID",
      "path" : "HNBaseDataModel.nurseID",
      "short" : "主責護理人員身分證字號",
      "definition" : "主責護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNBaseDataModel.decisionMakerRelation",
      "path" : "HNBaseDataModel.decisionMakerRelation",
      "short" : "主要醫療決定者關係",
      "definition" : "主要醫療決定者關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DecisionMakerRelation')",
        "comment" : "來源欄位／題目：DecisionMakerRelation"
      }]
    },
    {
      "id" : "HNBaseDataModel.decisionMakerRelation.value",
      "path" : "HNBaseDataModel.decisionMakerRelation.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b63e1293c409"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value')",
        "comment" : "來源欄位／題目：DecisionMakerRelation.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.decisionMakerRelation.other",
      "path" : "HNBaseDataModel.decisionMakerRelation.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Other')",
        "comment" : "來源欄位／題目：DecisionMakerRelation.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.mEvent",
      "path" : "HNBaseDataModel.mEvent",
      "short" : "一年內是否發生重大事件",
      "definition" : "一年內是否發生重大事件",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MEvent')",
        "comment" : "來源欄位／題目：MEvent"
      }]
    },
    {
      "id" : "HNBaseDataModel.mEventItem",
      "path" : "HNBaseDataModel.mEventItem",
      "short" : "重大事件項目",
      "definition" : "重大事件項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MEventItem')",
        "comment" : "來源欄位／題目：MEventItem"
      }]
    },
    {
      "id" : "HNBaseDataModel.mEventItem.values",
      "path" : "HNBaseDataModel.mEventItem.values",
      "short" : "選項",
      "definition" : "選項",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-fe3736bbd09e"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MEventItem').item.where(linkId='MEventItem.Values')",
        "comment" : "來源欄位／題目：MEventItem.Values"
      }]
    },
    {
      "id" : "HNBaseDataModel.mEventItem.other",
      "path" : "HNBaseDataModel.mEventItem.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MEventItem').item.where(linkId='MEventItem.Other')",
        "comment" : "來源欄位／題目：MEventItem.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.caseDesc",
      "path" : "HNBaseDataModel.caseDesc",
      "short" : "個案描述",
      "definition" : "個案描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseDesc')",
        "comment" : "來源欄位／題目：CaseDesc"
      }]
    },
    {
      "id" : "HNBaseDataModel.createID",
      "path" : "HNBaseDataModel.createID",
      "short" : "建立機構代碼",
      "definition" : "建立機構代碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CreateID')",
        "comment" : "來源欄位／題目：CreateID"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals",
      "path" : "HNBaseDataModel.medicals",
      "short" : "共照醫事人員",
      "definition" : "共照醫事人員",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals')",
        "comment" : "來源欄位／題目：Medicals"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.name",
      "path" : "HNBaseDataModel.medicals.name",
      "short" : "成員姓名",
      "definition" : "成員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.Name')",
        "comment" : "來源欄位／題目：Medicals.Name"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.careDate",
      "path" : "HNBaseDataModel.medicals.careDate",
      "short" : "加入日期",
      "definition" : "加入日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.CareDate')",
        "comment" : "來源欄位／題目：Medicals.CareDate"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.idNo",
      "path" : "HNBaseDataModel.medicals.idNo",
      "short" : "成員身分證字號",
      "definition" : "成員身分證字號",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.IdNo')",
        "comment" : "來源欄位／題目：Medicals.IdNo"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.jobTitle",
      "path" : "HNBaseDataModel.medicals.jobTitle",
      "short" : "成員職稱",
      "definition" : "成員職稱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle')",
        "comment" : "來源欄位／題目：Medicals.JobTitle"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.jobTitle.value",
      "path" : "HNBaseDataModel.medicals.jobTitle.value",
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
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').item.where(linkId='Medicals.JobTitle.Value')",
        "comment" : "來源欄位／題目：Medicals.JobTitle.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.jobTitle.other",
      "path" : "HNBaseDataModel.medicals.jobTitle.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').item.where(linkId='Medicals.JobTitle.Other')",
        "comment" : "來源欄位／題目：Medicals.JobTitle.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.tel",
      "path" : "HNBaseDataModel.medicals.tel",
      "short" : "電話",
      "definition" : "電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.Tel')",
        "comment" : "來源欄位／題目：Medicals.Tel"
      }]
    },
    {
      "id" : "HNBaseDataModel.medicals.careRemark",
      "path" : "HNBaseDataModel.medicals.careRemark",
      "short" : "照護備註",
      "definition" : "照護備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Medicals').item.where(linkId='Medicals.CareRemark')",
        "comment" : "來源欄位／題目：Medicals.CareRemark"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives",
      "path" : "HNBaseDataModel.relatives",
      "short" : "共照親友",
      "definition" : "共照親友",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives')",
        "comment" : "來源欄位／題目：Relatives"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.name",
      "path" : "HNBaseDataModel.relatives.name",
      "short" : "成員姓名",
      "definition" : "成員姓名",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Name')",
        "comment" : "來源欄位／題目：Relatives.Name"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.relationship",
      "path" : "HNBaseDataModel.relatives.relationship",
      "short" : "關係",
      "definition" : "關係",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship')",
        "comment" : "來源欄位／題目：Relatives.Relationship"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.relationship.value",
      "path" : "HNBaseDataModel.relatives.relationship.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9570830f5a60"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').item.where(linkId='Relatives.Relationship.Value')",
        "comment" : "來源欄位／題目：Relatives.Relationship.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.relationship.other",
      "path" : "HNBaseDataModel.relatives.relationship.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').item.where(linkId='Relatives.Relationship.Other')",
        "comment" : "來源欄位／題目：Relatives.Relationship.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.careTime",
      "path" : "HNBaseDataModel.relatives.careTime",
      "short" : "主要照顧時間",
      "definition" : "主要照顧時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime')",
        "comment" : "來源欄位／題目：Relatives.CareTime"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.careTime.value",
      "path" : "HNBaseDataModel.relatives.careTime.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a946985c2125"
      },
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').item.where(linkId='Relatives.CareTime.Value')",
        "comment" : "來源欄位／題目：Relatives.CareTime.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.careTime.other",
      "path" : "HNBaseDataModel.relatives.careTime.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').item.where(linkId='Relatives.CareTime.Other')",
        "comment" : "來源欄位／題目：Relatives.CareTime.Other"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel1",
      "path" : "HNBaseDataModel.relatives.tel1",
      "short" : "電話1",
      "definition" : "電話1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1')",
        "comment" : "來源欄位／題目：Relatives.Tel1"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel1.value",
      "path" : "HNBaseDataModel.relatives.tel1.value",
      "short" : "電話號碼",
      "definition" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1').item.where(linkId='Relatives.Tel1.Value')",
        "comment" : "來源欄位／題目：Relatives.Tel1.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel1.remark",
      "path" : "HNBaseDataModel.relatives.tel1.remark",
      "short" : "聯絡時間與說明",
      "definition" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1').item.where(linkId='Relatives.Tel1.Remark')",
        "comment" : "來源欄位／題目：Relatives.Tel1.Remark"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel2",
      "path" : "HNBaseDataModel.relatives.tel2",
      "short" : "電話2",
      "definition" : "電話2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2')",
        "comment" : "來源欄位／題目：Relatives.Tel2"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel2.value",
      "path" : "HNBaseDataModel.relatives.tel2.value",
      "short" : "電話號碼",
      "definition" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2').item.where(linkId='Relatives.Tel2.Value')",
        "comment" : "來源欄位／題目：Relatives.Tel2.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel2.remark",
      "path" : "HNBaseDataModel.relatives.tel2.remark",
      "short" : "聯絡時間與說明",
      "definition" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2').item.where(linkId='Relatives.Tel2.Remark')",
        "comment" : "來源欄位／題目：Relatives.Tel2.Remark"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel3",
      "path" : "HNBaseDataModel.relatives.tel3",
      "short" : "電話3",
      "definition" : "電話3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3')",
        "comment" : "來源欄位／題目：Relatives.Tel3"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel3.value",
      "path" : "HNBaseDataModel.relatives.tel3.value",
      "short" : "電話號碼",
      "definition" : "電話號碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3').item.where(linkId='Relatives.Tel3.Value')",
        "comment" : "來源欄位／題目：Relatives.Tel3.Value"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.tel3.remark",
      "path" : "HNBaseDataModel.relatives.tel3.remark",
      "short" : "聯絡時間與說明",
      "definition" : "聯絡時間與說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3').item.where(linkId='Relatives.Tel3.Remark')",
        "comment" : "來源欄位／題目：Relatives.Tel3.Remark"
      }]
    },
    {
      "id" : "HNBaseDataModel.relatives.careRemark",
      "path" : "HNBaseDataModel.relatives.careRemark",
      "short" : "照護備註",
      "definition" : "照護備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-basedata-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Relatives').item.where(linkId='Relatives.CareRemark')",
        "comment" : "來源欄位／題目：Relatives.CareRemark"
      }]
    }]
  }
}

```
