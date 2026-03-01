# 運動治療服務請求範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動治療服務請求範例**

## Example ServiceRequest: 運動治療服務請求範例

Profile: [運動處方－服務請求](StructureDefinition-PASportServiceRequest.md)

**identifier**: `http://ltc-ig.fhir.tw/servicerequest-id`/SR-SPORT-2024-001

**status**: Active

**intent**: Order

**category**: Physical Activity

**code**: 申請個人化運動治療計畫，包含步行訓練、平衡訓練及肌力強化運動

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**authoredOn**: 2024-01-15 10:00:00+0800

**requester**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**performerType**: Physiotherapist

**reasonCode**: Alzheimer's disease

**reasonReference**: [Condition Stretching exercises](Condition-pasport-condition-exercise-history-example.md)

**supportingInfo**: [Observation Heart rate](Observation-pasport-observation-heart-rate-example.md)

**note**: @2024-01-15 10:00:00+0800

> 

患者因認知功能輕度下降，建議透過規律運動改善體能及認知功能。需要專業物理治療師指導，設計適合的運動計畫。


**patientInstruction**: 請於每週二、四、六上午9:00-10:00參加運動治療課程，穿著合適運動鞋及寬鬆衣物



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "pasport-servicerequest-exercise-therapy-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportServiceRequest"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/servicerequest-id",
    "value" : "SR-SPORT-2024-001"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "code" : "PhysicalActivity",
      "display" : "Physical Activity"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "229070002",
      "display" : "Stretching exercises"
    }],
    "text" : "申請個人化運動治療計畫，包含步行訓練、平衡訓練及肌力強化運動"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "authoredOn" : "2024-01-15T10:00:00+08:00",
  "requester" : {
    "reference" : "Practitioner/ltc-practitioner-example"
  },
  "performerType" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "36682004",
      "display" : "Physiotherapist"
    }]
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "26929004",
      "display" : "Alzheimer's disease"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/pasport-condition-exercise-history-example"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/pasport-observation-heart-rate-example"
  }],
  "note" : [{
    "time" : "2024-01-15T10:00:00+08:00",
    "text" : "患者因認知功能輕度下降，建議透過規律運動改善體能及認知功能。需要專業物理治療師指導，設計適合的運動計畫。"
  }],
  "patientInstruction" : "請於每週二、四、六上午9:00-10:00參加運動治療課程，穿著合適運動鞋及寬鬆衣物"
}

```
