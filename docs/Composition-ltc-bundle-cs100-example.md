# 長照 CS100－個案總查詢（Composition）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－個案總查詢（Composition）範例**

## Example Composition: 長照 CS100－個案總查詢（Composition）範例

Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)

**identifier**: `https://ltc-ig.fhir.tw/identifier/cs100/report-id`/CS-20251106-0001

**status**: Final

**type**: Progress note

**date**: 2025-11-06 12:00:00+0800

**author**: [Practitioner 張個管](Practitioner-ltc-practitioner-cs100-example.md)

**title**: CS100 個案總查詢 - 王小明



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "ltc-bundle-cs100-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Composition-CS100"]
  },
  "identifier" : {
    "system" : "https://ltc-ig.fhir.tw/identifier/cs100/report-id",
    "value" : "CS-20251106-0001"
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11506-3",
      "display" : "Progress note"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "date" : "2025-11-06T12:00:00+08:00",
  "author" : [{
    "reference" : "Practitioner/ltc-practitioner-cs100-example"
  }],
  "title" : "CS100 個案總查詢 - 王小明",
  "section" : [{
    "title" : "CS100-個案基本",
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8716-3",
        "display" : "Vital signs note"
      }]
    },
    "entry" : [{
      "reference" : "Patient/ltc-patient-cs100-example"
    }]
  },
  {
    "title" : "CS100-案件資訊",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
        "code" : "case",
        "display" : "案件資訊"
      }]
    },
    "entry" : [{
      "reference" : "EpisodeOfCare/ltc-episodeofcare-cs100-example"
    }]
  },
  {
    "title" : "CS100-評估核定摘要",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
        "code" : "assessment",
        "display" : "評估核定摘要"
      }]
    },
    "entry" : [{
      "reference" : "Observation/ltc-observation-assessment-cs100-example"
    }]
  },
  {
    "title" : "CS100-照顧計畫",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
        "code" : "careplan",
        "display" : "照顧計畫"
      }]
    },
    "entry" : [{
      "reference" : "CarePlan/ltc-careplan-cs100-example"
    }]
  },
  {
    "title" : "CS100-核定額度",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
        "code" : "eligibility",
        "display" : "核定額度"
      }]
    },
    "entry" : [{
      "reference" : "CoverageEligibilityResponse/ltc-coverageeligibilityresponse-cs100-example"
    }]
  },
  {
    "title" : "CS100-近期異動/通報",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
        "code" : "incidents",
        "display" : "近期異動/通報"
      }]
    },
    "entry" : [{
      "reference" : "AdverseEvent/ltc-adverseevent-cs100-example"
    }]
  }]
}

```
