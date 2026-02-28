# 照顧管理問卷 (AA02) - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧管理問卷 (AA02)**

## Questionnaire: 照顧管理問卷 (AA02) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa02-example | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:AA02 |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#AA02 | |

 
依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "questionnaire-aa02-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa02-example",
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "AA02"
  }],
  "version" : "0.4.1",
  "name" : "AA02",
  "title" : "照顧管理問卷 (AA02)",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。",
  "item" : [{
    "linkId" : "serviceAdaptation",
    "text" : "追蹤服務適應與介入情形",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "contactTime",
      "text" : "聯繫時間",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "contactTarget",
      "text" : "電訪對象",
      "type" : "string",
      "repeats" : true
    }]
  },
  {
    "linkId" : "approvedServices",
    "text" : "核定服務類別及頻率（填入最新一筆計劃核定碼別及各碼別適應情形）",
    "type" : "group",
    "item" : [{
      "linkId" : "homeServicePlan",
      "text" : "居家服務（應填寫碼別與服務單位）",
      "type" : "text",
      "repeats" : true
    },
    {
      "linkId" : "transportationPlan",
      "text" : "交通服務（金額/頻率/使用規劃）",
      "type" : "text"
    },
    {
      "linkId" : "professionalServicePlan",
      "text" : "專業服務（代碼/目標/對象/時間）",
      "type" : "text"
    },
    {
      "linkId" : "respitePlan",
      "text" : "喘息服務",
      "type" : "text"
    },
    {
      "linkId" : "assistiveDevicesPlan",
      "text" : "輔具服務（購置/租賃/品項）",
      "type" : "text"
    },
    {
      "linkId" : "otherReferralPlan",
      "text" : "其他轉介資源、服務（無論有無轉介皆須說明）",
      "type" : "text",
      "repeats" : true
    },
    {
      "linkId" : "closeCaseNote",
      "text" : "複評後無失能欲結案，已提供相對應之資源訊息",
      "type" : "text"
    }]
  },
  {
    "linkId" : "serviceUsageTracking",
    "text" : "各項服務目標及整體計畫目標達成情形",
    "type" : "group",
    "item" : [{
      "linkId" : "homeServiceTarget",
      "text" : "長照服務使用情形追蹤",
      "type" : "group",
      "item" : [{
        "linkId" : "homeServiceStatus",
        "text" : "居家服務",
        "type" : "text"
      },
      {
        "linkId" : "professionalServiceStatus",
        "text" : "專業服務",
        "type" : "text"
      },
      {
        "linkId" : "transportationServiceStatus",
        "text" : "交通服務",
        "type" : "text"
      },
      {
        "linkId" : "respiteServiceStatus",
        "text" : "喘息服務",
        "type" : "text"
      },
      {
        "linkId" : "assistiveDevicesStatus",
        "text" : "輔具服務",
        "type" : "text"
      },
      {
        "linkId" : "referralProgress",
        "text" : "轉介家照服務資源",
        "type" : "text"
      }]
    }]
  },
  {
    "linkId" : "planSuitabilityChange",
    "text" : "整體計畫的適切性及需求異動",
    "type" : "text"
  },
  {
    "linkId" : "otherHandling",
    "text" : "其他處理事項（服務諮詢、申訴處理）",
    "type" : "text"
  }]
}

```
