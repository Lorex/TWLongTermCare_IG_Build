# 轉介單申請服務種類代碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單申請服務種類代碼**

## CodeSystem: 轉介單申請服務種類代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-25 | *Computable Name*:ReferralCarePlanCSTWLTC |

 
用於表述個案欲申請的服務項目。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralCarePlanVSTWLTC](ValueSet-ReferralCarePlanVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ReferralCarePlanCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC",
  "version" : "0.4.1",
  "name" : "ReferralCarePlanCSTWLTC",
  "title" : "轉介單申請服務種類代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-25",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於表述個案欲申請的服務項目。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 23,
  "concept" : [{
    "code" : "care-service-home",
    "display" : "照顧服務－居家服務",
    "definition" : "個案欲申請照顧服務－居家服務。"
  },
  {
    "code" : "care-service-day",
    "display" : "照顧服務－日間照顧",
    "definition" : "個案欲申請照顧服務－日間照顧。"
  },
  {
    "code" : "care-service-family",
    "display" : "照顧服務－家庭托顧",
    "definition" : "個案欲申請照顧服務－家庭托顧。"
  },
  {
    "code" : "scmf-home",
    "display" : "小規模多機能－居家服務",
    "definition" : "個案欲申請小規模多機能－居家服務。"
  },
  {
    "code" : "scmf-day",
    "display" : "小規模多機能－日間照顧",
    "definition" : "個案欲申請小規模多機能－日間照顧。"
  },
  {
    "code" : "scmf-overnight",
    "display" : "小規模多機能－夜素",
    "definition" : "個案欲申請小規模多機能－夜宿"
  },
  {
    "code" : "assistive-device-and-environment-improvement",
    "display" : "輔具購買及住宅無障礙環境改善服務",
    "definition" : "個案欲申請輔具購買及住宅無障礙環境改善服務。"
  },
  {
    "code" : "shared-dementia-care",
    "display" : "失智共照",
    "definition" : "個案欲申請失智共照。"
  },
  {
    "code" : "preventive-disability-care",
    "display" : "預防及延緩失能照護",
    "definition" : "個案欲申請預防及延緩失能照護。"
  },
  {
    "code" : "respite-service-home",
    "display" : "喘息服務－居家",
    "definition" : "個案欲申請喘息服務－居家。"
  },
  {
    "code" : "respite-service-organization",
    "display" : "喘息服務－機構",
    "definition" : "個案欲申請喘息服務－機構。"
  },
  {
    "code" : "transportation",
    "display" : "交通接送服務",
    "definition" : "個案欲申請交通接送服務。"
  },
  {
    "code" : "catering",
    "display" : "老人餐飲服務",
    "definition" : "個案欲申請老人餐飲服務。"
  },
  {
    "code" : "holistic-community-care",
    "display" : "社區整體照顧模式",
    "definition" : "個案欲申請社區整體照顧模式。"
  },
  {
    "code" : "home-swallowing",
    "display" : "居家吞嚥",
    "definition" : "個案欲申請居家吞嚥。"
  },
  {
    "code" : "home-breathing",
    "display" : "居家呼吸",
    "definition" : "個案欲申請居家呼吸。"
  },
  {
    "code" : "home-care",
    "display" : "居家護理",
    "definition" : "個案欲申請居家護理。"
  },
  {
    "code" : "home-nutrition",
    "display" : "居家營養",
    "definition" : "個案欲申請居家營養。"
  },
  {
    "code" : "home-physics",
    "display" : "居家物理",
    "definition" : "個案欲申請居家物理。"
  },
  {
    "code" : "home-functions",
    "display" : "居家職能",
    "definition" : "個案欲申請居家職能。"
  },
  {
    "code" : "home-physicial",
    "display" : "居家醫師",
    "definition" : "個案欲申請居家醫師。"
  },
  {
    "code" : "instutional-placement",
    "display" : "機構安置",
    "definition" : "個案欲申請機構安置。"
  },
  {
    "code" : "other",
    "display" : "其他",
    "definition" : "個案欲申請其他服務。"
  }]
}

```
