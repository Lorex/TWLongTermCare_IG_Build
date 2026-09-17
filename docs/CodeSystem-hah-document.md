# 在宅急症－摘要種類與章節代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－摘要種類與章節代碼**

## CodeSystem: 在宅急症－摘要種類與章節代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hah-document | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHDocumentCS |

 
本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [在宅急症－摘要章節值集](ValueSet-hah-section.md)
* [在宅急症－摘要種類值集](ValueSet-hah-summary-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hah-document",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
  "version" : "1.1.0",
  "name" : "HAHDocumentCS",
  "title" : "在宅急症－摘要種類與章節代碼",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "discharge-summary",
    "display" : "結案摘要",
    "definition" : "整理完成或結束本次療程的照護經過。"
  },
  {
    "code" : "transfer-summary",
    "display" : "轉銜摘要",
    "definition" : "提供接續照護所需的臨床資訊。"
  },
  {
    "code" : "course",
    "display" : "照護經過",
    "definition" : "收案原因、療程、訪視與評估摘要。"
  },
  {
    "code" : "problems",
    "display" : "診斷與問題",
    "definition" : "本次診斷與仍需處理的問題。"
  },
  {
    "code" : "allergies",
    "display" : "過敏資訊",
    "definition" : "已知過敏、已確認無過敏或資料缺少的情況。"
  },
  {
    "code" : "medications",
    "display" : "用藥",
    "definition" : "處方、實際給藥與接續用藥資訊。"
  },
  {
    "code" : "results",
    "display" : "檢驗與量測",
    "definition" : "與交接有關的檢驗與生命徵象。"
  },
  {
    "code" : "care",
    "display" : "照護與處置",
    "definition" : "照護計畫、目標、管路及已執行處置。"
  },
  {
    "code" : "follow-up",
    "display" : "後續照護",
    "definition" : "未完成事項、轉介與聯絡窗口。"
  }]
}

```
