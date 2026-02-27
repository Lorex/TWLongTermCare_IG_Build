# 照顧管理評估量表邏輯模型範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表邏輯模型範例**

## Example Binary: 照顧管理評估量表邏輯模型範例

This content is an example of the [照顧管理評估量表邏輯模型](StructureDefinition-LTCCMSModel.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://ltc-ig.fhir.tw/StructureDefinition/LTCCMSModel",
  "hospital": {
    "hospitalId": "1234567890",
    "hospitalName": "台北市立聯合醫院",
    "address": "台北市大同區鄭州路145號",
    "phone": "02-2555-3000",
    "email": "info@tpech.gov.tw"
  },
  "patient": {
    "patientId": "A123456789",
    "name": "陳明慧",
    "birthDate": "1955-03-15",
    "gender": "female",
    "address": "台北市大同區重慶北路三段22號",
    "phone": "0912-345-678",
    "disabilityStatus": true,
    "disabilityType": [
      "肢體障礙"
    ],
    "disabilityCode": [
      "G81.9"
    ]
  },
  "relatedPerson": {
    "primaryCaregiver": {
      "name": "陳大明",
      "relationship": "配偶",
      "phone": "0912-345-679",
      "disabilityStatus": false
    },
    "secondaryCaregiver": {
      "name": "陳小華",
      "relationship": "子女"
    }
  },
  "assessment": {
    "communication": {
      "understanding": 4,
      "expression": 3,
      "hearing": 2,
      "vision": 3
    },
    "memory": {
      "orientation": 3,
      "recall": 2,
      "attention": 3
    },
    "adl": {
      "bathing": 2,
      "dressing": 3,
      "toileting": 2,
      "transferring": 1,
      "continence": 2,
      "feeding": 3
    },
    "iadl": {
      "telephone": 1,
      "shopping": 1,
      "cooking": 1,
      "housekeeping": 1,
      "laundry": 1,
      "transportation": 1,
      "medication": 2,
      "finances": 1
    },
    "specialCare": {
      "tubeFeeding": false,
      "oxygenTherapy": false,
      "woundCare": true,
      "catheter": false,
      "tracheostomy": false
    },
    "society": {
      "homeEnvironment": "良好",
      "socialParticipation": "有限",
      "communityResources": "部分使用"
    },
    "mental": {
      "mood": "穩定",
      "behavior": "合作",
      "cognitive": "輕度認知障礙"
    },
    "caregiverLoad": {
      "physicalLoad": "中度",
      "emotionalLoad": "中度",
      "socialLoad": "輕度",
      "financialLoad": "輕度"
    },
    "caregiverSupport": {
      "workStatus": "全職工作",
      "supportNetwork": "有限",
      "respiteCare": "需要"
    }
  },
  "assessmentDate": "2024-01-15",
  "assessor": {
    "name": "李護理師",
    "license": "N123456789",
    "organization": "台北市立聯合醫院"
  }
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
