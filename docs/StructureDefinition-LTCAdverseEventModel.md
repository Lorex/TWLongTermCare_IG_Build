# 異常事件警報邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **異常事件警報邏輯模型**

## Logical Model: 異常事件警報邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCAdverseEventModel | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCAdverseEventModel |

 
此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCAdverseEventModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCAdverseEventModel.csv), [Excel](StructureDefinition-LTCAdverseEventModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCAdverseEventModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCAdverseEventModel",
  "version" : "1.0.0",
  "name" : "LTCAdverseEventModel",
  "title" : "異常事件警報邏輯模型",
  "status" : "active",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc",
    "name" : "異常事件警報邏輯模型到AdverseEvent Profile映射",
    "comment" : "此映射定義如何將異常事件警報邏輯模型轉換為LTCAdverseEvent Profile"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCAdverseEventModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCAdverseEventModel",
      "path" : "LTCAdverseEventModel",
      "short" : "異常事件警報邏輯模型",
      "definition" : "此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。",
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.identifier",
      "path" : "LTCAdverseEventModel.identifier",
      "short" : "異常事件識別碼",
      "definition" : "異常事件警報的唯一識別碼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.identifier.identifierValue",
      "path" : "LTCAdverseEventModel.identifier.identifierValue",
      "short" : "識別碼值",
      "definition" : "異常事件警報的唯一識別碼值",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.identifier.value"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.identifier.identifierSystem",
      "path" : "LTCAdverseEventModel.identifier.identifierSystem",
      "short" : "識別碼系統",
      "definition" : "異常事件警報識別碼的系統識別符",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.identifier.system"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.identifier.identifierUse",
      "path" : "LTCAdverseEventModel.identifier.identifierUse",
      "short" : "識別碼用途",
      "definition" : "識別碼的用途，通常為 official",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.identifier.use"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.actuality",
      "path" : "LTCAdverseEventModel.actuality",
      "short" : "異常事件實際性",
      "definition" : "異常事件的實際性 (實際的異常：actual / 潛在的異常：potential)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.actuality"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.event",
      "path" : "LTCAdverseEventModel.event",
      "short" : "異常事件類型",
      "definition" : "異常事件的具體類型",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.event.eventText",
      "path" : "LTCAdverseEventModel.event.eventText",
      "short" : "事件類型描述",
      "definition" : "異常事件類型的描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.event.text"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.subject",
      "path" : "LTCAdverseEventModel.subject",
      "short" : "個案資訊",
      "definition" : "發生異常事件的個案資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.subject.subjectReference",
      "path" : "LTCAdverseEventModel.subject.subjectReference",
      "short" : "個案參考",
      "definition" : "對個案資源的參考",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.subject.reference"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.date",
      "path" : "LTCAdverseEventModel.date",
      "short" : "異常事件發生時間",
      "definition" : "異常事件實際發生的日期和時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.date"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.detected",
      "path" : "LTCAdverseEventModel.detected",
      "short" : "異常事件偵測時間",
      "definition" : "異常事件被系統偵測到的時間",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.detected"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.recordedDate",
      "path" : "LTCAdverseEventModel.recordedDate",
      "short" : "異常事件記錄時間",
      "definition" : "異常事件被記錄到系統的時間",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.recordedDate"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.resultingCondition",
      "path" : "LTCAdverseEventModel.resultingCondition",
      "short" : "結果狀況",
      "definition" : "異常事件導致的結果狀況",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.resultingCondition.conditionReference",
      "path" : "LTCAdverseEventModel.resultingCondition.conditionReference",
      "short" : "狀況參考",
      "definition" : "對結果狀況資源的參考",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.resultingCondition.reference"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.location",
      "path" : "LTCAdverseEventModel.location",
      "short" : "位置資訊",
      "definition" : "異常事件發生的位置資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.location.locationReference",
      "path" : "LTCAdverseEventModel.location.locationReference",
      "short" : "位置參考",
      "definition" : "對位置資源的參考",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.location.reference"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.seriousness",
      "path" : "LTCAdverseEventModel.seriousness",
      "short" : "臨床嚴重程度",
      "definition" : "異常事件的臨床嚴重程度，指臨床上會對患者造成生命威脅或導致患者長期失能的風險程度",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.seriousness"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.severity",
      "path" : "LTCAdverseEventModel.severity",
      "short" : "嚴重程度分級",
      "definition" : "異常事件本身的嚴重程度（輕微、中度、重度）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.severity"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.outcome",
      "path" : "LTCAdverseEventModel.outcome",
      "short" : "異常事件結果",
      "definition" : "異常事件的最終結果",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.outcome"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.recorder",
      "path" : "LTCAdverseEventModel.recorder",
      "short" : "記錄者資訊",
      "definition" : "記錄異常事件的人員資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.recorder.recorderReference",
      "path" : "LTCAdverseEventModel.recorder.recorderReference",
      "short" : "記錄者參考",
      "definition" : "對記錄者資源的參考",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.recorder.reference"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.contributor",
      "path" : "LTCAdverseEventModel.contributor",
      "short" : "涉及者資訊",
      "definition" : "涉及此異常事件的人員或設備",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCAdverseEventModel.contributor.contributorReference",
      "path" : "LTCAdverseEventModel.contributor.contributorReference",
      "short" : "涉及者參考",
      "definition" : "對涉及者資源的參考",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCAdverseEventModelToLTCAdverseEvent",
        "map" : "AdverseEvent.contributor.reference"
      }]
    }]
  }
}

```
