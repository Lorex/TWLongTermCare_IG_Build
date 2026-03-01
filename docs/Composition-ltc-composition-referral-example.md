# 轉介單文件架構範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單文件架構範例**

## Example Composition: 轉介單文件架構範例

Profile: [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)

**status**: Final

**type**: 長期照顧管理中心個案服務初篩表/轉介單

**date**: 2024-01-20 09:00:00+0800

**author**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**title**: 陳明慧女士長期照顧服務轉介單



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "ltc-composition-referral-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11488-4",
      "display" : "Consult note"
    }],
    "text" : "長期照顧管理中心個案服務初篩表/轉介單"
  },
  "subject" : {
    "reference" : "http://ltc-ig.fhir.tw/Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "date" : "2024-01-20T09:00:00+08:00",
  "author" : [{
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  }],
  "title" : "陳明慧女士長期照顧服務轉介單",
  "section" : [{
    "title" : "個案基本資料",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Patient/ltc-patient-referral-chen-ming-hui-example"
    }]
  },
  {
    "title" : "身心障礙手冊",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-referral-example"
    },
    {
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-type-limb-referral-example"
    }]
  },
  {
    "title" : "管路",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-tube-nasogastric-example"
    }]
  },
  {
    "title" : "壓傷",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-crush-stage2-example"
    }]
  },
  {
    "title" : "居住狀況",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-residence-not-alone-example"
    }]
  },
  {
    "title" : "看護",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-caregiver-family-referral-example"
    }]
  },
  {
    "title" : "疾病狀況",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-diabetes-example"
    }]
  },
  {
    "title" : "案主(家)主要問題及需求",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-need-assistance-example"
    }]
  },
  {
    "title" : "欲申請服務之種類",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/CarePlan/ltc-careplan-referral-home-service-example"
    }]
  },
  {
    "title" : "ADL 失能項目評估",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-adl-referral-example"
    }]
  },
  {
    "title" : "IADL 失能項目評估",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-iadl-referral-example"
    }]
  },
  {
    "title" : "長者衰弱評估",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-sof-example"
    }]
  },
  {
    "title" : "照顧者評估",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-referral-example"
    }]
  },
  {
    "title" : "出入院情形",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Encounter/ltc-encounter-example"
    }]
  },
  {
    "title" : "填表者/轉介者資訊及簽名欄",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Practitioner/ltc-practitioner-nurse-example"
    }]
  },
  {
    "title" : "填表單位資訊",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Organization/ltc-organization-example"
    }]
  },
  {
    "title" : "關係人",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/RelatedPerson/ltc-related-person-primary-caregiver-referral-example"
    }]
  }]
}

```
