# 在宅急症轉院摘要範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症轉院摘要範例**

## Example Composition: 在宅急症轉院摘要範例

Profile: [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)

**status**: Final

**type**: 轉銜摘要

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-10 08:00:00+0800 --> 2026-09-11 10:00:00+0800](Encounter-hah-transfer-admission.md)

**date**: 2026-09-11 10:00:00+0800

**author**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**title**: 王測試在宅急症轉院摘要

**custodian**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "hah-transfer-summary",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
      "code" : "transfer-summary"
    }]
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-transfer-admission"
  },
  "date" : "2026-09-11T10:00:00+08:00",
  "author" : [{
    "reference" : "Practitioner/hah-practitioner"
  }],
  "title" : "王測試在宅急症轉院摘要",
  "custodian" : {
    "reference" : "Organization/hah-organization"
  },
  "section" : [{
    "title" : "療程經過",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "course"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次療程已轉出，接收醫院就醫結果尚未提供。</p></div>"
    },
    "entry" : [{
      "reference" : "EpisodeOfCare/hah-transfer-episode"
    },
    {
      "reference" : "Encounter/hah-transfer-admission"
    }]
  },
  {
    "title" : "診斷與問題",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "problems"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
    }
  },
  {
    "title" : "過敏資訊",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "allergies"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
    }
  },
  {
    "title" : "藥物與給藥",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "medications"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
    }
  },
  {
    "title" : "檢查結果",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "results"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
    }
  },
  {
    "title" : "照護計畫與措施",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "care"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次轉院摘要未提供此項資料，交班時須確認。</p></div>"
    }
  },
  {
    "title" : "後續照護與交班",
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
        "code" : "follow-up"
      }]
    },
    "text" : {
      "status" : "additional",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>轉院申請已建立；請接收機構續行評估。</p></div>"
    },
    "entry" : [{
      "reference" : "ServiceRequest/hah-transfer-request"
    }]
  }]
}

```
