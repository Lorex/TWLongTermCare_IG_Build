# 長期照護醫師意見書問卷範例 (AA12) - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護醫師意見書問卷範例 (AA12)**

## Questionnaire: 長期照護醫師意見書問卷範例 (AA12) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-aa12-example | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:AA12 |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#AA12 | |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-aa12-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-aa12-example",
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "AA12"
  }],
  "version" : "1.0.0",
  "name" : "AA12",
  "title" : "長期照護醫師意見書 (AA12)",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "applicant-reference",
    "prefix" : "申請者",
    "text" : "申請者（Patient Resource ID）",
    "type" : "reference",
    "required" : true
  },
  {
    "linkId" : "physician-reference",
    "prefix" : "開立醫師",
    "text" : "開立醫師（PractitionerRole Resource ID）",
    "type" : "reference",
    "required" : true
  },
  {
    "linkId" : "institution-reference",
    "prefix" : "醫療機構",
    "text" : "醫療機構（Organization Resource ID）",
    "type" : "reference",
    "required" : true
  },
  {
    "linkId" : "last-consultation-date",
    "prefix" : "最近一次診察日期",
    "text" : "最近一次診察日期",
    "type" : "date",
    "required" : true
  },
  {
    "linkId" : "opinion-count",
    "prefix" : "製作意見書次數",
    "text" : "製作意見書次數",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueString" : "初次"
    },
    {
      "valueString" : "二次以上"
    }]
  },
  {
    "linkId" : "previous-opinion-date",
    "prefix" : "前次意見書日期",
    "text" : "前次意見書日期",
    "type" : "date"
  },
  {
    "linkId" : "consultation-departments",
    "prefix" : "目前診察科別",
    "text" : "目前診察科別",
    "type" : "choice",
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "419192003",
        "display" : "Internal medicine"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394609007",
        "display" : "General surgery"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394591006",
        "display" : "Neurology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394587001",
        "display" : "Psychiatry"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "24241000087106",
        "display" : "General orthopedic specialty"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "419772000",
        "display" : "Family practice"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394582007",
        "display" : "Dermatology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394612005",
        "display" : "Urology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394585009",
        "display" : "Obstetrics and gynecology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394594003",
        "display" : "Ophthalmology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "418960008",
        "display" : "Otolaryngology"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "394602003",
        "display" : "Rehabilitation specialty"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "722163006",
        "display" : "Dentistry"
      }
    }]
  },
  {
    "linkId" : "disease-name",
    "prefix" : "診斷疾病名稱",
    "text" : "診斷疾病名稱",
    "type" : "string",
    "required" : true,
    "repeats" : true
  },
  {
    "linkId" : "disease-icd",
    "prefix" : "ICD代碼",
    "text" : "ICD代碼",
    "type" : "string",
    "repeats" : true
  },
  {
    "linkId" : "disease-onset",
    "prefix" : "發病日期",
    "text" : "發病日期",
    "type" : "date",
    "required" : true,
    "repeats" : true
  },
  {
    "linkId" : "condition-status",
    "prefix" : "病情狀態",
    "text" : "病情狀態",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active",
        "display" : "Active"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "recurrence",
        "display" : "Recurrence"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "unknown",
        "display" : "Unknown"
      }
    }]
  },
  {
    "linkId" : "unstable-reason",
    "prefix" : "不穩定狀態說明",
    "text" : "不穩定狀態說明",
    "type" : "text"
  },
  {
    "linkId" : "recent-treatment",
    "prefix" : "近期治療",
    "text" : "過去7日內接受的治療",
    "type" : "choice",
    "repeats" : true,
    "answerOption" : [{
      "valueString" : "點滴"
    },
    {
      "valueString" : "靜脈注射"
    },
    {
      "valueString" : "血液透析"
    },
    {
      "valueString" : "腹膜透析"
    },
    {
      "valueString" : "人工肛門"
    },
    {
      "valueString" : "氧氣療法"
    },
    {
      "valueString" : "人工呼吸器"
    },
    {
      "valueString" : "氣切"
    },
    {
      "valueString" : "疼痛治療"
    },
    {
      "valueString" : "鼻胃管"
    },
    {
      "valueString" : "胃腸造口"
    },
    {
      "valueString" : "導尿管"
    },
    {
      "valueString" : "物理治療"
    },
    {
      "valueString" : "職能治療"
    },
    {
      "valueString" : "語言治療"
    },
    {
      "valueString" : "監測器"
    },
    {
      "valueString" : "褥瘡處理"
    }]
  },
  {
    "linkId" : "other-treatment",
    "prefix" : "其他重要治療",
    "text" : "其他重要治療",
    "type" : "string"
  },
  {
    "linkId" : "care-precautions",
    "prefix" : "照顧應注意事項",
    "text" : "照顧應注意事項及處置方法",
    "type" : "choice",
    "repeats" : true,
    "answerOption" : [{
      "valueString" : "尿失禁"
    },
    {
      "valueString" : "跌倒•骨折"
    },
    {
      "valueString" : "移動力減低"
    },
    {
      "valueString" : "壓力性損傷處理"
    },
    {
      "valueString" : "心臟功能下降"
    },
    {
      "valueString" : "肺部功能下降"
    },
    {
      "valueString" : "社交退縮"
    },
    {
      "valueString" : "做事情失去興趣或樂趣"
    },
    {
      "valueString" : "遊走"
    },
    {
      "valueString" : "咀嚼吞嚥障礙"
    },
    {
      "valueString" : "脫水"
    },
    {
      "valueString" : "容易罹患感染症"
    },
    {
      "valueString" : "疼痛"
    }]
  },
  {
    "linkId" : "other-precautions",
    "prefix" : "其他注意事項",
    "text" : "其他注意事項",
    "type" : "string"
  },
  {
    "linkId" : "treatment-suggestions",
    "prefix" : "處置建議",
    "text" : "處置建議",
    "type" : "text"
  },
  {
    "linkId" : "recommended-services",
    "prefix" : "建議介入之醫事照護服務",
    "text" : "建議介入之醫事照護服務",
    "type" : "choice",
    "repeats" : true,
    "answerOption" : [{
      "valueString" : "IADLs復能照護一居家"
    },
    {
      "valueString" : "ADLs復能照護一居家"
    },
    {
      "valueString" : "進食與吞嚥照護"
    },
    {
      "valueString" : "IADLs復能照護—社區"
    },
    {
      "valueString" : "ADLs復能照護—社區"
    },
    {
      "valueString" : "困擾行為照護"
    }]
  },
  {
    "linkId" : "other-services",
    "prefix" : "其他醫事照護服務",
    "text" : "其他醫事照護服務",
    "type" : "string"
  },
  {
    "linkId" : "six-month-impact",
    "prefix" : "最近六個月內可能影響長照服務使用狀況",
    "text" : "最近六個月內可能影響長照服務使用狀況及如何照顧特殊疾病的方法",
    "type" : "text"
  },
  {
    "linkId" : "infectious-disease",
    "prefix" : "罹患感染症",
    "text" : "罹患感染症",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "valueString" : "無"
    },
    {
      "valueString" : "有"
    },
    {
      "valueString" : "不清楚"
    }]
  },
  {
    "linkId" : "infectious-disease-name",
    "prefix" : "感染症病名",
    "text" : "感染症病名",
    "type" : "string"
  },
  {
    "linkId" : "isolation-required",
    "prefix" : "是否需要隔離",
    "text" : "是否需要隔離",
    "type" : "boolean"
  },
  {
    "linkId" : "isolation-type",
    "prefix" : "隔離類型",
    "text" : "隔離類型",
    "type" : "choice",
    "repeats" : true,
    "answerOption" : [{
      "valueString" : "接觸隔離"
    },
    {
      "valueString" : "飛沫隔離"
    },
    {
      "valueString" : "空氣隔離"
    }]
  },
  {
    "linkId" : "physical-mental-status",
    "prefix" : "身心狀態或特殊需要註記事項",
    "text" : "身心狀態或特殊需要註記事項",
    "type" : "text"
  }]
}

```
