# 居家護理－生命徵象邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－生命徵象邏輯模型**

## Logical Model: 居家護理－生命徵象邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNVitalSignModel |

 
描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－生命徵象 API 邏輯模型](StructureDefinition-HNVitalSignAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNVitalSignModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNVitalSignModel.csv), [Excel](StructureDefinition-HNVitalSignModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNVitalSignModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignModel",
  "version" : "1.1.0",
  "name" : "HNVitalSignModel",
  "title" : "居家護理－生命徵象邏輯模型",
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
  "description" : "描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-vitalsign-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignResponse",
    "name" : "居家護理－生命徵象欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNVitalSignModel",
      "path" : "HNVitalSignModel",
      "short" : "居家護理－生命徵象邏輯模型",
      "definition" : "描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNVitalSignModel.caseID",
      "path" : "HNVitalSignModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNVitalSignModel.endDate",
      "path" : "HNVitalSignModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNVitalSignModel.recordDate",
      "path" : "HNVitalSignModel.recordDate",
      "short" : "量測日期",
      "definition" : "量測日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='RecordDate')",
        "comment" : "來源欄位／題目：RecordDate"
      }]
    },
    {
      "id" : "HNVitalSignModel.recordTime",
      "path" : "HNVitalSignModel.recordTime",
      "short" : "量測時間",
      "definition" : "量測時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }],
      "mapping" : [{
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='RecordTime')",
        "comment" : "來源欄位／題目：RecordTime"
      }]
    },
    {
      "id" : "HNVitalSignModel.temperature",
      "path" : "HNVitalSignModel.temperature",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Temperature')",
        "comment" : "來源欄位／題目：Temperature"
      }]
    },
    {
      "id" : "HNVitalSignModel.pulse",
      "path" : "HNVitalSignModel.pulse",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Pulse')",
        "comment" : "來源欄位／題目：Pulse"
      }]
    },
    {
      "id" : "HNVitalSignModel.respiration",
      "path" : "HNVitalSignModel.respiration",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Respiration')",
        "comment" : "來源欄位／題目：Respiration"
      }]
    },
    {
      "id" : "HNVitalSignModel.bloodPressure1",
      "path" : "HNVitalSignModel.bloodPressure1",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BloodPressure1')",
        "comment" : "來源欄位／題目：BloodPressure1"
      }]
    },
    {
      "id" : "HNVitalSignModel.bloodPressure2",
      "path" : "HNVitalSignModel.bloodPressure2",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BloodPressure2')",
        "comment" : "來源欄位／題目：BloodPressure2"
      }]
    },
    {
      "id" : "HNVitalSignModel.bloodGlucose",
      "path" : "HNVitalSignModel.bloodGlucose",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BloodGlucose')",
        "comment" : "來源欄位／題目：BloodGlucose"
      }]
    },
    {
      "id" : "HNVitalSignModel.bloodOxygen",
      "path" : "HNVitalSignModel.bloodOxygen",
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
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BloodOxygen')",
        "comment" : "來源欄位／題目：BloodOxygen"
      }]
    },
    {
      "id" : "HNVitalSignModel.createID",
      "path" : "HNVitalSignModel.createID",
      "short" : "照護人員身分證字號",
      "definition" : "照護人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-vitalsign-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CreateID')",
        "comment" : "來源欄位／題目：CreateID"
      }]
    }]
  }
}

```
