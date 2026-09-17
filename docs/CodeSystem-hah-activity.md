# 在宅急症－照護活動代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護活動代碼**

## CodeSystem: 在宅急症－照護活動代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hah-activity | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHActivityCS |

 
本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [在宅急症－溝通類型值集](ValueSet-hah-communication.md)
* [在宅急症－服務項目值集](ValueSet-hah-service.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hah-activity",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
  "version" : "1.1.0",
  "name" : "HAHActivityCS",
  "title" : "在宅急症－照護活動代碼",
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
  "description" : "本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "acute-home",
    "display" : "在宅急症照護",
    "definition" : "於個案居住地提供的一次急症照護療程。"
  },
  {
    "code" : "visit",
    "display" : "訪視",
    "definition" : "排定或提供一次照護訪視。"
  },
  {
    "code" : "consultation",
    "display" : "專科照會",
    "definition" : "請求其他專業人員評估並回覆。"
  },
  {
    "code" : "referral",
    "display" : "轉介",
    "definition" : "請求另一個機構接續照護。"
  },
  {
    "code" : "laboratory",
    "display" : "檢驗",
    "definition" : "請求檢體檢驗或現場檢測。"
  },
  {
    "code" : "nursing",
    "display" : "護理處置",
    "definition" : "請求或執行護理處置。"
  },
  {
    "code" : "medicine-delivery",
    "display" : "送藥",
    "definition" : "配送或代領藥物，不代表完成給藥。"
  },
  {
    "code" : "handover",
    "display" : "交班",
    "definition" : "傳遞照護重點與待辦事項。"
  },
  {
    "code" : "education",
    "display" : "衛教",
    "definition" : "提供個案或照顧者照護指導。"
  },
  {
    "code" : "care-goal",
    "display" : "個別照護目標",
    "definition" : "無適切標準概念時，以完整文字敘述個別照護目標。"
  }]
}

```
