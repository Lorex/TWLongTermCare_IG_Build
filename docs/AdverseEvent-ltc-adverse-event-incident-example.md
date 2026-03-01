# 長期照顧異常事件範例－SDK 異常服務通報（跌倒） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧異常事件範例－SDK 異常服務通報（跌倒）**

## Example AdverseEvent: 長期照顧異常事件範例－SDK 異常服務通報（跌倒）

Profile: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)

**長期照顧－異常事件通報方式**: 電話

> **長期照顧－異常事件文字描述**
* textType: 事件描述
* text: 10:20 於浴室滑倒，家屬協助起身。

> **長期照顧－異常事件文字描述**
* textType: 事件發生後處理過程詳述
* text: 檢查擦傷，無明顯腫脹；已冰敷觀察中。

> **長期照顧－異常事件文字描述**
* textType: 檢討及改善建議
* text: 建議持續觀察 48 小時，必要時就醫。已通知個管與居服單位追蹤。

**長期照顧－異常事件關聯案件**: [EpisodeOfCare: identifier = https://ltc-ig.fhir.tw/identifier/cs100/case-id#CASE-00001; status = active; period = 2025-10-01 --> (ongoing)](EpisodeOfCare-ltc-episodeofcare-cs100-example.md)

**identifier**: `http://ltc-ig.fhir.tw/adverse-event`/AE-SDK-2025-001 (use: official, )

**actuality**: Adverse Event

**event**: 照顧意外事件

**subject**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**date**: 2025-10-01 10:20:00+0800

**recordedDate**: 2025-10-01 10:35:00+0800

**location**: [Location 新北市私立安康老人長期照顧中心（養護型）](Location-ltc-location-example.md)

**contributor**: [Practitioner 張個管](Practitioner-ltc-practitioner-cs100-example.md)



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "ltc-adverse-event-incident-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod",
        "code" : "phone",
        "display" : "電話"
      }]
    }
  },
  {
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
      "valueString" : "10:20 於浴室滑倒，家屬協助起身。"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
  },
  {
    "extension" : [{
      "url" : "textType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype",
          "code" : "postprocess",
          "display" : "事件發生後處理過程詳述"
        }]
      }
    },
    {
      "url" : "text",
      "valueString" : "檢查擦傷，無明顯腫脹；已冰敷觀察中。"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
  },
  {
    "extension" : [{
      "url" : "textType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype",
          "code" : "advice",
          "display" : "檢討及改善建議"
        }]
      }
    },
    {
      "url" : "text",
      "valueString" : "建議持續觀察 48 小時，必要時就醫。已通知個管與居服單位追蹤。"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-About",
    "valueReference" : {
      "reference" : "EpisodeOfCare/ltc-episodeofcare-cs100-example"
    }
  }],
  "identifier" : {
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/adverse-event",
    "value" : "AE-SDK-2025-001"
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
  "date" : "2025-10-01T10:20:00+08:00",
  "recordedDate" : "2025-10-01T10:35:00+08:00",
  "location" : {
    "reference" : "Location/ltc-location-example"
  },
  "contributor" : [{
    "reference" : "Practitioner/ltc-practitioner-cs100-example"
  }]
}

```
