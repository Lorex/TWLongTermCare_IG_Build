# 居家護理－簡易營養評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－簡易營養評估問卷**

## Questionnaire: 居家護理－簡易營養評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-mnasfs | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNMNASFsQuestionnaire |

 
V5.0.16 簡易營養評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-mnasfs",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-mnasfs",
  "version" : "1.1.0",
  "name" : "HNMNASFsQuestionnaire",
  "title" : "居家護理－簡易營養評估",
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
  "description" : "V5.0.16 簡易營養評估的問題結構與輸入型態。",
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
    "linkId" : "Questions",
    "text" : "評估項目",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Questions.q9eab1f0b",
      "text" : "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q9eab1f0b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cfb0b454818b"
      }]
    },
    {
      "linkId" : "Questions.qc9c61c04",
      "text" : "近三個月體重變化",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qc9c61c04.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bff7df80c996"
      }]
    },
    {
      "linkId" : "Questions.qb3e55f55",
      "text" : "行動力",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb3e55f55.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3baefb430e5b"
      }]
    },
    {
      "linkId" : "Questions.q99f746cb",
      "text" : "過去三個月內曾有精神性壓力或急性疾病發作？",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q99f746cb.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }]
    },
    {
      "linkId" : "Questions.qa4ab5839",
      "text" : "神經精神問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qa4ab5839.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5f4a5d3ebea4"
      }]
    },
    {
      "linkId" : "Questions.q6073598b",
      "text" : "身體質量指數(BMI)=體重(公斤)/身高(公尺)2",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q6073598b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b8e0b67e2012"
      }]
    },
    {
      "linkId" : "Questions.qd38a556c",
      "text" : "若BMI 無法取得，用小腿圍或臂中圍代替(公分)",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qd38a556c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5d29c89b2d60"
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
