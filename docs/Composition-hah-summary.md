# 在宅急症結案摘要範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症結案摘要範例**

## Example Composition: 在宅急症結案摘要範例

Profile: [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)

**status**: Final

**type**: 結案摘要

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --> 2026-09-05 12:00:00+0800](Encounter-hah-admission.md)

**date**: 2026-09-05 12:00:00+0800

**author**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**title**: 王測試在宅急症結案摘要

**custodian**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "hah-summary",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
      "code" : "discharge-summary"
    }]
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-admission"
  },
  "date" : "2026-09-05T12:00:00+08:00",
  "author" : [{
    "reference" : "Practitioner/hah-practitioner"
  }],
  "title" : "王測試在宅急症結案摘要",
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次在宅照護完成；包含實地與視訊訪視。</p></div>"
    },
    "entry" : [{
      "reference" : "EpisodeOfCare/hah-episode"
    },
    {
      "reference" : "Encounter/hah-admission"
    },
    {
      "reference" : "Encounter/hah-visit"
    },
    {
      "reference" : "Encounter/hah-video-visit"
    },
    {
      "reference" : "ClinicalImpression/hah-impression"
    },
    {
      "reference" : "QuestionnaireResponse/hah-assessment"
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>呼吸道感染，療程結束時已解除。</p></div>"
    },
    "entry" : [{
      "reference" : "Condition/hah-condition"
    }]
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已記錄青黴素過敏及皮疹反應。</p></div>"
    },
    "entry" : [{
      "reference" : "AllergyIntolerance/hah-allergy"
    }]
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>示範輸注與取消給藥；不是臨床處方建議。</p></div>"
    },
    "entry" : [{
      "reference" : "MedicationRequest/hah-medication-order"
    },
    {
      "reference" : "MedicationAdministration/hah-infusion"
    },
    {
      "reference" : "MedicationAdministration/hah-medication-not-done"
    }]
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附體溫與血糖檢驗。</p></div>"
    },
    "entry" : [{
      "reference" : "Observation/hah-temperature"
    },
    {
      "reference" : "DiagnosticReport/hah-report"
    }]
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附照護目標、計畫、衛教、同意及設備。</p></div>"
    },
    "entry" : [{
      "reference" : "CarePlan/hah-plan"
    },
    {
      "reference" : "Goal/hah-goal"
    },
    {
      "reference" : "Procedure/hah-procedure"
    },
    {
      "reference" : "Consent/hah-consent"
    },
    {
      "reference" : "Device/hah-device"
    }]
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
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已完成本次會診與檢驗工作；後續回診資訊尚未提供。</p></div>"
    },
    "entry" : [{
      "reference" : "ServiceRequest/hah-consult-request"
    },
    {
      "reference" : "ServiceRequest/hah-lab-request"
    },
    {
      "reference" : "Task/hah-task"
    },
    {
      "reference" : "Communication/hah-communication"
    },
    {
      "reference" : "DocumentReference/hah-attachment"
    }]
  }]
}

```
