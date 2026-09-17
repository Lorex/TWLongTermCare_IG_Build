# 居家護理－個案結案邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－個案結案邏輯模型**

## Logical Model: 居家護理－個案結案邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCaseCloseModel |

 
描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－個案結案 API 邏輯模型](StructureDefinition-HNCaseCloseAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCaseCloseModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCaseCloseModel.csv), [Excel](StructureDefinition-HNCaseCloseModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCaseCloseModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseModel",
  "version" : "1.1.0",
  "name" : "HNCaseCloseModel",
  "title" : "居家護理－個案結案邏輯模型",
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
  "description" : "描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-caseclose-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseResponse",
    "name" : "居家護理－個案結案欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCaseCloseModel",
      "path" : "HNCaseCloseModel",
      "short" : "居家護理－個案結案邏輯模型",
      "definition" : "描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNCaseCloseModel.caseID",
      "path" : "HNCaseCloseModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNCaseCloseModel.endDate",
      "path" : "HNCaseCloseModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNCaseCloseModel.date",
      "path" : "HNCaseCloseModel.date",
      "short" : "結案日期",
      "definition" : "結案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNCaseCloseModel.userID",
      "path" : "HNCaseCloseModel.userID",
      "short" : "結案護理人員身分證字號",
      "definition" : "結案護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='UserID')",
        "comment" : "來源欄位／題目：UserID"
      }]
    },
    {
      "id" : "HNCaseCloseModel.reason",
      "path" : "HNCaseCloseModel.reason",
      "short" : "結案原因",
      "definition" : "結案原因",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Reason')",
        "comment" : "來源欄位／題目：Reason"
      }]
    },
    {
      "id" : "HNCaseCloseModel.reason.value",
      "path" : "HNCaseCloseModel.reason.value",
      "short" : "選項",
      "definition" : "選項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-75dc5876369b"
      },
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Reason').item.where(linkId='Reason.Value')",
        "comment" : "來源欄位／題目：Reason.Value"
      }]
    },
    {
      "id" : "HNCaseCloseModel.reason.other",
      "path" : "HNCaseCloseModel.reason.other",
      "short" : "補充說明",
      "definition" : "補充說明。選擇其他時應填寫說明。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-caseclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Reason').item.where(linkId='Reason.Other')",
        "comment" : "來源欄位／題目：Reason.Other"
      }]
    }]
  }
}

```
