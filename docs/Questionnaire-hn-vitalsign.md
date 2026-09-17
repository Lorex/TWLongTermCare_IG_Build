# 居家護理－生命徵象問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－生命徵象問卷**

## Questionnaire: 居家護理－生命徵象問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-vitalsign | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNVitalSignQuestionnaire |

 
V5.0.16 生命徵象的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-vitalsign",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-vitalsign",
  "version" : "1.1.0",
  "name" : "HNVitalSignQuestionnaire",
  "title" : "居家護理－生命徵象",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-08",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "V5.0.16 生命徵象的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "CaseID",
    "text" : "個案身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "EndDate",
    "text" : "收案日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "RecordDate",
    "text" : "量測日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "RecordTime",
    "text" : "量測時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Temperature",
    "text" : "體溫",
    "type" : "decimal",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Pulse",
    "text" : "脈搏",
    "type" : "integer",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Respiration",
    "text" : "呼吸",
    "type" : "integer",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "BloodPressure1",
    "text" : "收縮壓",
    "type" : "integer",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "BloodPressure2",
    "text" : "舒張壓",
    "type" : "integer",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "BloodGlucose",
    "text" : "血糖",
    "type" : "integer",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BloodOxygen",
    "text" : "血氧",
    "type" : "integer",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "CreateID",
    "text" : "照護人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  }]
}

```
