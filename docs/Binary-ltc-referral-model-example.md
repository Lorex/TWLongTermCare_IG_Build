# 轉介單邏輯模型範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單邏輯模型範例**

## Example Binary: 轉介單邏輯模型範例

This content is an example of the [長期照顧管理中心個案服務初篩表/轉介單邏輯模型](StructureDefinition-LTCRferralModel.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://ltc-ig.fhir.tw/StructureDefinition/LTCRferralModel",
  "patient": {
    "patientId": "A123456789",
    "name": "陳明慧",
    "birthDate": "1955-03-15",
    "gender": "female",
    "address": "台北市大同區重慶北路三段22號",
    "phone": "0912-345-678",
    "emergencyContact": {
      "name": "陳大明",
      "relationship": "配偶",
      "phone": "0912-345-679"
    }
  },
  "disability": {
    "hasDisabilityCard": true,
    "disabilityType": [
      "肢體障礙"
    ],
    "disabilityCode": [
      "G81.9"
    ],
    "disabilityLevel": [
      "中度"
    ]
  },
  "medicalConditions": {
    "tubeStatus": {
      "hasTube": true,
      "tubeType": [
        "鼻胃管"
      ]
    },
    "crushStatus": {
      "hasCrush": true,
      "crushLocation": [
        "薦骨"
      ],
      "crushStage": [
        "第二期"
      ],
      "crushSize": [
        "3x4公分"
      ]
    }
  },
  "livingSituation": {
    "residenceType": "自宅",
    "livingAlone": false,
    "housingCondition": "良好",
    "accessibility": "部分無障礙"
  },
  "caregiverSituation": {
    "hasCaregiver": true,
    "caregiverType": "家屬",
    "caregiverNationality": "本國籍",
    "caregiverRelationship": "配偶",
    "caregiverWorkStatus": "退休"
  },
  "medicalHistory": {
    "primaryDiseases": [
      {
        "diseaseName": "糖尿病",
        "icd10Code": "E11.9",
        "diagnosisDate": "2020-01-15",
        "currentStatus": "控制良好"
      }
    ]
  },
  "needsAndProblems": {
    "primaryProblems": [
      {
        "problemDescription": "行動不便，需要協助日常生活",
        "problemCategory": "功能障礙"
      }
    ],
    "careNeeds": [
      {
        "needDescription": "居家服務、復健服務",
        "needPriority": "高"
      }
    ]
  },
  "requestedServices": [
    {
      "serviceType": "居家服務",
      "serviceDescription": "日常生活協助",
      "serviceFrequency": "每週3次",
      "serviceDuration": "6個月"
    }
  ],
  "functionalAssessment": {
    "adlAssessment": {
      "bathing": "需要協助",
      "dressing": "需要協助",
      "toileting": "需要協助",
      "transferring": "完全依賴",
      "continence": "需要協助",
      "feeding": "需要協助"
    },
    "iadlAssessment": {
      "telephone": "完全依賴",
      "shopping": "完全依賴",
      "cooking": "完全依賴",
      "housekeeping": "完全依賴",
      "laundry": "完全依賴",
      "transportation": "完全依賴",
      "medication": "需要協助",
      "finances": "完全依賴"
    },
    "sofAssessment": {
      "weightLoss": true,
      "exhaustion": true,
      "weakness": true,
      "slowWalking": true,
      "lowActivity": true
    },
    "caregiverAssessment": {
      "caregiverName": "陳大明",
      "caregiverRelationship": "配偶",
      "caregiverAge": "65歲",
      "caregiverHealth": "良好",
      "caregiverWorkStatus": "退休",
      "caregiverSupport": "有限"
    }
  },
  "hospitalizationInfo": {
    "admissionStatus": "門診",
    "hospitalName": "台北市立聯合醫院",
    "department": "復健科"
  },
  "referralInfo": {
    "referrerName": "李護理師",
    "referrerTitle": "護理師",
    "referrerLicense": "N123456789",
    "referrerPhone": "02-2555-3000",
    "referrerSignature": "李護理師"
  },
  "organizationInfo": {
    "organizationName": "台北市立聯合醫院",
    "organizationAddress": "台北市大同區鄭州路145號",
    "organizationPhone": "02-2555-3000",
    "organizationContact": "李護理師"
  },
  "submissionDate": "2024-01-20"
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
