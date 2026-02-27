# 長期照顧異常事件警報範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧異常事件警報範例**

## Example AdverseEvent: 長期照顧異常事件警報範例

Profile: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)

**identifier**: `http://ltc-ig.fhir.tw/adverse-event`/AE-2024-001 (use: official, )

**actuality**: Adverse Event

**event**: 離開安全區域

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**date**: 2024-01-15 14:30:00+0800

**detected**: 2024-01-15 14:32:00+0800

**recordedDate**: 2024-01-15 14:35:00+0800

**location**: [Location 新北市私立安康老人長期照顧中心（養護型）](Location-ltc-location-example.md)

**seriousness**: Serious

**severity**: Moderate

**outcome**: Recovering

**recorder**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "ltc-adverse-event-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"]
  },
  "identifier" : {
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/adverse-event",
    "value" : "AE-2024-001"
  },
  "actuality" : "actual",
  "event" : {
    "text" : "離開安全區域"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "date" : "2024-01-15T14:30:00+08:00",
  "detected" : "2024-01-15T14:32:00+08:00",
  "recordedDate" : "2024-01-15T14:35:00+08:00",
  "location" : {
    "reference" : "Location/ltc-location-example"
  },
  "seriousness" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
      "code" : "serious",
      "display" : "Serious"
    }]
  },
  "severity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-severity",
      "code" : "moderate",
      "display" : "Moderate"
    }]
  },
  "outcome" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-outcome",
      "code" : "recovering",
      "display" : "Recovering"
    }]
  },
  "recorder" : {
    "reference" : "Practitioner/ltc-practitioner-example"
  }
}

```
