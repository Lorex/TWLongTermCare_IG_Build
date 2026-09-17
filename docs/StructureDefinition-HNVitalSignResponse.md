# 居家護理－生命徵象表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－生命徵象表單**

## Resource Profile: 居家護理－生命徵象表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNVitalSignResponse |

 
記錄生命徵象的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-vitalsign-example](QuestionnaireResponse-hn-vitalsign-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNVitalSignResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNVitalSignResponse.csv), [Excel](StructureDefinition-HNVitalSignResponse.xlsx), [Schematron](StructureDefinition-HNVitalSignResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNVitalSignResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignResponse",
  "version" : "1.1.0",
  "name" : "HNVitalSignResponse",
  "title" : "居家護理－生命徵象表單",
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
  "description" : "記錄生命徵象的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-vitalsign"
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
      "min" : 10
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
      "id" : "QuestionnaireResponse.item:RecordDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "RecordDate",
      "short" : "量測日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:RecordDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "RecordDate"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:RecordDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordTime",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "RecordTime",
      "short" : "量測時間",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:RecordTime.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "RecordTime"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordTime.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:RecordTime.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:RecordTime.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Temperature",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Temperature",
      "short" : "體溫",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Temperature.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Temperature"
    },
    {
      "id" : "QuestionnaireResponse.item:Temperature.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Temperature.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "maxValueDecimal" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:Temperature.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Pulse",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Pulse",
      "short" : "脈搏",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Pulse.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Pulse"
    },
    {
      "id" : "QuestionnaireResponse.item:Pulse.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Pulse.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:Pulse.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Respiration",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Respiration",
      "short" : "呼吸",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Respiration.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Respiration"
    },
    {
      "id" : "QuestionnaireResponse.item:Respiration.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Respiration.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:Respiration.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BloodPressure1",
      "short" : "收縮壓",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BloodPressure1"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure1.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BloodPressure2",
      "short" : "舒張壓",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BloodPressure2"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:BloodPressure2.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodGlucose",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BloodGlucose",
      "short" : "血糖",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BloodGlucose.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BloodGlucose"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodGlucose.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodGlucose.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 999
    },
    {
      "id" : "QuestionnaireResponse.item:BloodGlucose.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodOxygen",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BloodOxygen",
      "short" : "血氧",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BloodOxygen.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BloodOxygen"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodOxygen.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BloodOxygen.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "minValueInteger" : 0,
      "maxValueInteger" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BloodOxygen.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:CreateID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CreateID",
      "short" : "照護人員身分證字號",
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
