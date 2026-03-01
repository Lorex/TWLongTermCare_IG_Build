# 長照 CS100－異常事件（AdverseEvent）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－異常事件（AdverseEvent）範例**

## Example AdverseEvent: 長照 CS100－異常事件（AdverseEvent）範例

Profile: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)

> **長期照顧－異常事件文字描述**
* textType: 事件描述
* text: 巡視時發現個案暈眩跌坐於地，已聯繫家屬與機構。

**identifier**: `http://ltc-ig.fhir.tw/adverse-event`/AE-CS100-2025-001 (use: official, )

**actuality**: Adverse Event

**event**: 照顧意外事件

**subject**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**date**: 2025-11-05 10:20:00+0800

**recordedDate**: 2025-11-05 10:30:00+0800



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "ltc-adverseevent-cs100-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "textType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype",
          "code" : "desc",
          "display" : "事件描述"
        }]
      }
    },
    {
      "url" : "text",
      "valueString" : "巡視時發現個案暈眩跌坐於地，已聯繫家屬與機構。"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
  }],
  "identifier" : {
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/adverse-event",
    "value" : "AE-CS100-2025-001"
  },
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-category",
      "code" : "careacc",
      "display" : "照顧意外事件"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "date" : "2025-11-05T10:20:00+08:00",
  "recordedDate" : "2025-11-05T10:30:00+08:00"
}

```
