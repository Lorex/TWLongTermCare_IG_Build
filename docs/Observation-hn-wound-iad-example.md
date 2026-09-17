# 居家護理失禁性皮膚炎範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理失禁性皮膚炎範例**

## Example Observation: 居家護理失禁性皮膚炎範例

Profile: [居家護理－傷口紀錄](StructureDefinition-HNWound.md)

**居家護理－收案關聯**: [EpisodeOfCare: extension = ->Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --> (ongoing)](EpisodeOfCare-hn-episode-example.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－照護紀錄' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-carerecord-wounds-example.md)

**status**: Final

**category**: Exam

**code**: 傷口紀錄

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**effective**: 2025-12-08 09:00:00+0800

**performer**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

**bodySite**: 會陰

> **component****code**: 傷口分類**value**: 失禁性皮膚炎

> **component****code**: 長度**value**: 1

> **component****code**: 寬度**value**: 1

> **component****code**: 深度**value**: 1

> **component****code**: 傷口等級**value**: 1A



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hn-wound-iad-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNWound"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hn-episode-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-carerecord-wounds-example"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "wound"
    }]
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hn-nurse-example"
  }],
  "bodySite" : {
    "text" : "會陰"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "wound-category"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
        "code" : "cc7a2787e9f48",
        "display" : "失禁性皮膚炎"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "length"
      }]
    },
    "valueQuantity" : {
      "value" : 1
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "width"
      }]
    },
    "valueQuantity" : {
      "value" : 1
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "depth"
      }]
    },
    "valueQuantity" : {
      "value" : 1
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "wound-level"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
        "code" : "ccf3d835a3018",
        "display" : "1A"
      }]
    }
  }]
}

```
