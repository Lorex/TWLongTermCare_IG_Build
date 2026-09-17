# 居家護理－照護紀錄問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護紀錄問卷**

## Questionnaire: 居家護理－照護紀錄問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-carerecord | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNCareRecordQuestionnaire |

 
V5.0.16 照護紀錄的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-carerecord",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-carerecord",
  "version" : "1.1.0",
  "name" : "HNCareRecordQuestionnaire",
  "title" : "居家護理－照護紀錄",
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
  "description" : "V5.0.16 照護紀錄的問題結構與輸入型態。",
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
    "linkId" : "Time",
    "text" : "照護開始時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Time2",
    "text" : "照護結束時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "RecordSource",
    "text" : "紀錄來源",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "RecordSource.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-04e9c37073f4"
    },
    {
      "linkId" : "RecordSource.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Height",
    "text" : "身高（公分）",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "Weight",
    "text" : "體重（公斤）",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BMI",
    "text" : "身體質量指數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "ArmW",
    "text" : "臂中圍（公分）",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "LegW",
    "text" : "小腿圍（公分）",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "Live",
    "text" : "居住所",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Live.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d93b34f7b736"
    },
    {
      "linkId" : "Live.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "LiveArea",
    "text" : "居住區域",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "LiveArea.City",
      "text" : "縣市",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "LiveArea.Area",
      "text" : "鄉鎮市區",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "UseResources",
    "text" : "使用資源",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "UseResources.Values",
      "text" : "選項",
      "type" : "choice",
      "required" : false,
      "repeats" : true,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-38762eb1c742"
    },
    {
      "linkId" : "UseResources.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "ServiceItems",
    "text" : "服務項目",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "ServiceItems.Values",
      "text" : "選項",
      "type" : "choice",
      "required" : false,
      "repeats" : true,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8a0ace9ffad"
    },
    {
      "linkId" : "ServiceItems.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "IsUnplanned",
    "text" : "是否非計畫性再住院",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  },
  {
    "linkId" : "Unplanned",
    "text" : "非計畫性再住院",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "Unplanned.Date",
      "text" : "發生日期",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "Unplanned.Time",
      "text" : "發生時段",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
    },
    {
      "linkId" : "Unplanned.Statement",
      "text" : "發生原因",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 2100
    }]
  },
  {
    "linkId" : "IsEmergency",
    "text" : "是否使用急診",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  },
  {
    "linkId" : "Emergency",
    "text" : "使用急診",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "Emergency.Date",
      "text" : "發生日期",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "Emergency.Time",
      "text" : "發生時段",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
    },
    {
      "linkId" : "Emergency.Statement",
      "text" : "發生原因",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 2100
    }]
  },
  {
    "linkId" : "IsSkinDamages",
    "text" : "是否皮膚損傷",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  },
  {
    "linkId" : "SkinDamages",
    "text" : "皮膚損傷",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "SkinDamages.Date",
      "text" : "發生日期",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "SkinDamages.Time",
      "text" : "發生時段",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
    },
    {
      "linkId" : "SkinDamages.Kind",
      "text" : "損傷類型",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "SkinDamages.Kind.Value",
        "text" : "選項",
        "type" : "choice",
        "required" : true,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b0ba220a4535"
      },
      {
        "linkId" : "SkinDamages.Kind.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "SkinDamages.Statement",
      "text" : "發生原因",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 2100
    }]
  },
  {
    "linkId" : "IsEmergencyEvents",
    "text" : "是否緊急事件",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  },
  {
    "linkId" : "EmergencyEvents",
    "text" : "緊急事件",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "EmergencyEvents.EmergencyType",
      "text" : "事件類型",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "EmergencyEvents.EmergencyType.Value",
        "text" : "選項",
        "type" : "choice",
        "required" : true,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-4abebe47a94c"
      },
      {
        "linkId" : "EmergencyEvents.EmergencyType.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "EmergencyEvents.Date",
      "text" : "發生日期",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "EmergencyEvents.Time",
      "text" : "發生時段",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7d118ae5ad21"
    },
    {
      "linkId" : "EmergencyEvents.Reason",
      "text" : "發生原因",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "EmergencyEvents.Description",
      "text" : "事件描述",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 200
    },
    {
      "linkId" : "EmergencyEvents.Process",
      "text" : "通報及處理過程",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 200
    },
    {
      "linkId" : "EmergencyEvents.Report",
      "text" : "檢討紀錄",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 200
    },
    {
      "linkId" : "EmergencyEvents.CreateID",
      "text" : "照護人員身分證字號",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 10
    }]
  },
  {
    "linkId" : "VitalSign",
    "text" : "生命徵象",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "VitalSign.Date",
      "text" : "量測日期",
      "type" : "date",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.Time",
      "text" : "量測時間",
      "type" : "time",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.Temperature",
      "text" : "體溫",
      "type" : "decimal",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.Pulse",
      "text" : "脈搏",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.Respiration",
      "text" : "呼吸",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.BloodPressure1",
      "text" : "收縮壓",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.BloodPressure2",
      "text" : "舒張壓",
      "type" : "integer",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.BloodGlucose",
      "text" : "血糖",
      "type" : "integer",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "VitalSign.BloodOxygen",
      "text" : "血氧",
      "type" : "integer",
      "required" : false,
      "repeats" : false
    }]
  },
  {
    "linkId" : "WoundRecords",
    "text" : "傷口紀錄",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "WoundRecords.Part",
      "text" : "傷口部位",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 10
    },
    {
      "linkId" : "WoundRecords.Length",
      "text" : "傷口長度",
      "type" : "decimal",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "WoundRecords.Width",
      "text" : "傷口寬度",
      "type" : "decimal",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "WoundRecords.Depth",
      "text" : "傷口深度",
      "type" : "decimal",
      "required" : false,
      "repeats" : false
    },
    {
      "linkId" : "WoundRecords.Category",
      "text" : "傷口分類",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ab16e9d81e7b"
    },
    {
      "linkId" : "WoundRecords.Level",
      "text" : "傷口等級",
      "type" : "choice",
      "required" : false,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-de533dbea66c"
    },
    {
      "linkId" : "WoundRecords.Statement",
      "text" : "傷口說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "FJMEvaluation",
    "text" : "足部護理評估狀態",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5154109e8985"
  },
  {
    "linkId" : "FJM",
    "text" : "足部護理",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "FJM.Item",
      "text" : "項目分類",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0a65df60cccf"
    },
    {
      "linkId" : "FJM.Question",
      "text" : "評估項目",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-14764e5914f7"
    },
    {
      "linkId" : "FJM.Answers",
      "text" : "答案",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "FJM.Answers.Values",
        "text" : "選項",
        "type" : "string",
        "required" : false,
        "repeats" : true,
        "maxLength" : 100
      },
      {
        "linkId" : "FJM.Answers.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "FJM.Answers.FJMList",
        "text" : "操作項目紀錄",
        "type" : "group",
        "required" : false,
        "repeats" : true,
        "item" : [{
          "linkId" : "FJM.Answers.FJMList.SubQuestion",
          "text" : "操作項目與流程",
          "type" : "choice",
          "required" : true,
          "repeats" : false,
          "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dfa44a5bba0b"
        },
        {
          "linkId" : "FJM.Answers.FJMList.SubAnswers",
          "text" : "有反應物",
          "type" : "choice",
          "required" : true,
          "repeats" : false,
          "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
        },
        {
          "linkId" : "FJM.Answers.FJMList.SubStatement",
          "text" : "觀察紀錄",
          "type" : "string",
          "required" : true,
          "repeats" : false,
          "maxLength" : 100
        }]
      },
      {
        "linkId" : "FJM.Answers.FJMVas",
        "text" : "疼痛量尺",
        "type" : "group",
        "required" : false,
        "repeats" : false,
        "item" : [{
          "linkId" : "FJM.Answers.FJMVas.Part",
          "text" : "疼痛部位",
          "type" : "string",
          "required" : true,
          "repeats" : false,
          "maxLength" : 100
        },
        {
          "linkId" : "FJM.Answers.FJMVas.Point",
          "text" : "疼痛程度",
          "type" : "integer",
          "required" : true,
          "repeats" : false
        }]
      }]
    },
    {
      "linkId" : "FJM.Statement",
      "text" : "主訴敘述",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 1000
    }]
  },
  {
    "linkId" : "Statement",
    "text" : "照護紀錄",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 1000
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
