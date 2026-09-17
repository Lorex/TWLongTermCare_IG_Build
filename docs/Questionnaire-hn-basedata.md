# 居家護理－個案基本資料問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－個案基本資料問卷**

## Questionnaire: 居家護理－個案基本資料問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-basedata | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNBaseDataQuestionnaire |

 
V5.0.16 個案基本資料的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-basedata",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-basedata",
  "version" : "1.1.0",
  "name" : "HNBaseDataQuestionnaire",
  "title" : "居家護理－個案基本資料",
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
  "description" : "V5.0.16 個案基本資料的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "CaseID",
    "text" : "個案身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "EndDate",
    "text" : "收案日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "CaseSource",
    "text" : "收案來源",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "CaseSource.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef3233b113ad"
    },
    {
      "linkId" : "CaseSource.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "CaseName",
    "text" : "個案姓名",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 50
  },
  {
    "linkId" : "Sex",
    "text" : "性別",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Sex.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8f650cb37b1"
    },
    {
      "linkId" : "Sex.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "CaseType",
    "text" : "個案類型",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-082869c8d896"
  },
  {
    "linkId" : "Birthdate",
    "text" : "出生日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "PhoneNumber",
    "text" : "聯絡電話",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 30
  },
  {
    "linkId" : "Address",
    "text" : "居住地址",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Address.City",
      "text" : "縣市",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "Address.Area",
      "text" : "鄉鎮市區",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "Address.Lane",
      "text" : "街路門牌",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Education",
    "text" : "教育程度",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Education.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8bcd09f153b7"
    },
    {
      "linkId" : "Education.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Marriage",
    "text" : "婚姻狀況",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Marriage.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-924b837448d2"
    },
    {
      "linkId" : "Marriage.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Religion",
    "text" : "宗教信仰",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Religion.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f6130a2de850"
    },
    {
      "linkId" : "Religion.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "ExJob",
    "text" : "主要職業",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "ExJob.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9bf58092b1d4"
    },
    {
      "linkId" : "ExJob.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Economic",
    "text" : "家庭經濟狀況",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Economic.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4a8dcdb04d9b"
    },
    {
      "linkId" : "Economic.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "HasWelfare",
    "text" : "是否有福利",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
  },
  {
    "linkId" : "Welfare",
    "text" : "福利種類",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "Welfare.Values",
      "text" : "選項",
      "type" : "choice",
      "required" : false,
      "repeats" : true,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-40193bb109d6"
    },
    {
      "linkId" : "Welfare.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "Welfare.DisabilityType",
      "text" : "身障類別",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-disability-type"
    }]
  },
  {
    "linkId" : "CaregiverID",
    "text" : "主要照顧者關係",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-738f974cf008"
  },
  {
    "linkId" : "CaregiverName",
    "text" : "主要照顧者姓名",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 50
  },
  {
    "linkId" : "CaregiverAddress",
    "text" : "主要照顧者地址",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "CaregiverAddress.City",
      "text" : "縣市",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "CaregiverAddress.Area",
      "text" : "鄉鎮市區",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "CaregiverAddress.Lane",
      "text" : "街路門牌",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "CaregiverTel",
    "text" : "主要照顧者電話",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 20
  },
  {
    "linkId" : "EgyContactRelation",
    "text" : "緊急聯絡人關係",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2029890a4c12"
  },
  {
    "linkId" : "EgyContactName",
    "text" : "緊急聯絡人姓名",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 50
  },
  {
    "linkId" : "EgyContactTel1",
    "text" : "緊急聯絡電話一",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 30
  },
  {
    "linkId" : "EgyContactTel2",
    "text" : "緊急聯絡電話二",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 30
  },
  {
    "linkId" : "NurseID",
    "text" : "主責護理人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "DecisionMakerRelation",
    "text" : "主要醫療決定者關係",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "DecisionMakerRelation.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b63e1293c409"
    },
    {
      "linkId" : "DecisionMakerRelation.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "MEvent",
    "text" : "一年內是否發生重大事件",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
  },
  {
    "linkId" : "MEventItem",
    "text" : "重大事件項目",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "MEventItem.Values",
      "text" : "選項",
      "type" : "choice",
      "required" : false,
      "repeats" : true,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-fe3736bbd09e"
    },
    {
      "linkId" : "MEventItem.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "CaseDesc",
    "text" : "個案描述",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 1000
  },
  {
    "linkId" : "CreateID",
    "text" : "建立機構代碼",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "Medicals",
    "text" : "共照醫事人員",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "Medicals.Name",
      "text" : "成員姓名",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 50
    },
    {
      "linkId" : "Medicals.CareDate",
      "text" : "加入日期",
      "type" : "date",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "Medicals.IdNo",
      "text" : "成員身分證字號",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 10
    },
    {
      "linkId" : "Medicals.JobTitle",
      "text" : "成員職稱",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Medicals.JobTitle.Value",
        "text" : "選項",
        "type" : "choice",
        "required" : true,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018"
      },
      {
        "linkId" : "Medicals.JobTitle.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Medicals.Tel",
      "text" : "電話",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 30
    },
    {
      "linkId" : "Medicals.CareRemark",
      "text" : "照護備註",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 1000
    }]
  },
  {
    "linkId" : "Relatives",
    "text" : "共照親友",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "Relatives.Name",
      "text" : "成員姓名",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 50
    },
    {
      "linkId" : "Relatives.Relationship",
      "text" : "關係",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Relatives.Relationship.Value",
        "text" : "選項",
        "type" : "choice",
        "required" : true,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9570830f5a60"
      },
      {
        "linkId" : "Relatives.Relationship.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Relatives.CareTime",
      "text" : "主要照顧時間",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Relatives.CareTime.Value",
        "text" : "選項",
        "type" : "choice",
        "required" : true,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a946985c2125"
      },
      {
        "linkId" : "Relatives.CareTime.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Relatives.Tel1",
      "text" : "電話1",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Relatives.Tel1.Value",
        "text" : "電話號碼",
        "type" : "string",
        "required" : true,
        "repeats" : false,
        "maxLength" : 30
      },
      {
        "linkId" : "Relatives.Tel1.Remark",
        "text" : "聯絡時間與說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Relatives.Tel2",
      "text" : "電話2",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Relatives.Tel2.Value",
        "text" : "電話號碼",
        "type" : "string",
        "required" : true,
        "repeats" : false,
        "maxLength" : 30
      },
      {
        "linkId" : "Relatives.Tel2.Remark",
        "text" : "聯絡時間與說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Relatives.Tel3",
      "text" : "電話3",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Relatives.Tel3.Value",
        "text" : "電話號碼",
        "type" : "string",
        "required" : true,
        "repeats" : false,
        "maxLength" : 30
      },
      {
        "linkId" : "Relatives.Tel3.Remark",
        "text" : "聯絡時間與說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Relatives.CareRemark",
      "text" : "照護備註",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 1000
    }]
  }]
}

```
