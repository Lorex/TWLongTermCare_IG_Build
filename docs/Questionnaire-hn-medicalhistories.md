# 居家護理－疾病史評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－疾病史評估問卷**

## Questionnaire: 居家護理－疾病史評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-medicalhistories | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNMedicalHistoriesQuestionnaire |

 
V5.0.16 疾病史評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-medicalhistories",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-medicalhistories",
  "version" : "1.1.0",
  "name" : "HNMedicalHistoriesQuestionnaire",
  "title" : "居家護理－疾病史評估",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-08",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "V5.0.16 疾病史評估的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "Date",
    "text" : "紀錄日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "NurseID",
    "text" : "護理人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "AnsOther_1",
    "text" : "主要診斷",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "AnsOther_2",
    "text" : "次要診斷",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "MedicalHistoryQuestions",
    "text" : "評估項目",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "MedicalHistoryQuestions.q32e5fad7",
      "text" : "心臟問題(只包含心臟)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q32e5fad7.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q32e5fad7.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.qbeda0dd8",
      "text" : "周邊血管系統問題(包括高血壓)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.qbeda0dd8.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.qbeda0dd8.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q628b2adc",
      "text" : "造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q628b2adc.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q628b2adc.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q7e61f4f9",
      "text" : "呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q7e61f4f9.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q7e61f4f9.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q958e3479",
      "text" : "眼耳鼻喉問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q958e3479.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q958e3479.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q5713fd48",
      "text" : "上消化道問題(食道、胃、十二指腸)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q5713fd48.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q5713fd48.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q486b7939",
      "text" : "下消化道問題(小腸、大腸、直腸)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q486b7939.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q486b7939.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.qb7ad0283",
      "text" : "肝膽胰臟問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.qb7ad0283.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.qb7ad0283.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.qc62d7017",
      "text" : "腎臟問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.qc62d7017.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.qc62d7017.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.qa92ba1d3",
      "text" : "其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.qa92ba1d3.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.qa92ba1d3.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q48138ed7",
      "text" : "肌肉骨骼皮膚問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q48138ed7.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q48138ed7.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q24f8809f",
      "text" : "神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q24f8809f.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q24f8809f.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.qe34cc85c",
      "text" : "內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.qe34cc85c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.qe34cc85c.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "MedicalHistoryQuestions.q2c808271",
      "text" : "情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "MedicalHistoryQuestions.q2c808271.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      },
      {
        "linkId" : "MedicalHistoryQuestions.q2c808271.Statement",
        "text" : "備註",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    }]
  },
  {
    "linkId" : "IsTemporary",
    "text" : "是否暫存",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  }]
}

```
