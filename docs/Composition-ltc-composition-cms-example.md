# 照顧管理評估量表文件架構範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理評估量表文件架構範例**

## Example Composition: 照顧管理評估量表文件架構範例

Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md)

**status**: Final

**type**: 照顧管理評估量表

**date**: 2024-01-15 14:30:00+0800

**author**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**title**: 陳明慧女士照顧管理評估量表



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "ltc-composition-cms-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11503-0",
      "display" : "Medical records"
    }],
    "text" : "照顧管理評估量表"
  },
  "subject" : {
    "reference" : "http://ltc-ig.fhir.tw/Patient/ltc-patient-cms-chen-ming-hui-example"
  },
  "date" : "2024-01-15T14:30:00+08:00",
  "author" : [{
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  }],
  "title" : "陳明慧女士照顧管理評估量表",
  "section" : [{
    "title" : "A. 個案基本資料",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/Patient/ltc-patient-cms-chen-ming-hui-example"
    },
    {
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example"
    },
    {
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-type-limb-example"
    }]
  },
  {
    "title" : "B. 照顧者基本資料",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/RelatedPerson/ltc-related-person-primary-caregiver-example"
    },
    {
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example"
    },
    {
      "reference" : "http://ltc-ig.fhir.tw/Condition/ltc-condition-caregiver-family-example"
    }]
  },
  {
    "title" : "C. 個案溝通能力",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-communication-example"
    }]
  },
  {
    "title" : "D. 個案短期記憶力",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-memory-example"
    }]
  },
  {
    "title" : "E. 個案日常活動功能量表 (ADLs)",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-adl-example"
    }]
  },
  {
    "title" : "F. 個案工具性日常活動功能量表 (IADLs)",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-iadl-example"
    }]
  },
  {
    "title" : "G. 特殊複雜照護需要",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-special-care-example"
    }]
  },
  {
    "title" : "H. 居家環境與社會參與",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-society-example"
    }]
  },
  {
    "title" : "I. 情緒及行為型態",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-mental-example"
    }]
  },
  {
    "title" : "J. 主要照護者負荷",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-load-example"
    }]
  },
  {
    "title" : "K. 主要照護者工作與支持",
    "entry" : [{
      "reference" : "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-support-example"
    }]
  }]
}

```
