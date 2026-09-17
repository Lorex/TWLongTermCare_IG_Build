# 居家護理－介接作業代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－介接作業代碼**

## CodeSystem: 居家護理－介接作業代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hn-workflow | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNWorkflowCS |
| *Other Identifiers:*OID:2.25.233044287078495270027959925539980032688 | |

 
居家護理 API 作業名稱及本 IG 的更新指示。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [居家護理－API 作業值集](ValueSet-hn-api.md)
* [居家護理－共照名單種類](ValueSet-hn-collection.md)
* [居家護理－共照名單更新方式](ValueSet-hn-update-action.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hn-workflow",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.233044287078495270027959925539980032688"
  }],
  "version" : "1.1.0",
  "name" : "HNWorkflowCS",
  "title" : "居家護理－介接作業代碼",
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
  "description" : "居家護理 API 作業名稱及本 IG 的更新指示。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 31,
  "concept" : [{
    "code" : "BaseData",
    "display" : "個案基本資料"
  },
  {
    "code" : "Evaluation",
    "display" : "全人評估"
  },
  {
    "code" : "CaseSummary",
    "display" : "需求摘要"
  },
  {
    "code" : "CarePlan",
    "display" : "照護計畫"
  },
  {
    "code" : "CareRecord",
    "display" : "照護紀錄"
  },
  {
    "code" : "CaseDesc",
    "display" : "共照紀錄"
  },
  {
    "code" : "StaffEgy",
    "display" : "人員緊急事件"
  },
  {
    "code" : "CaseClose",
    "display" : "個案結案"
  },
  {
    "code" : "CarePlanClose",
    "display" : "照護計畫結案"
  },
  {
    "code" : "VitalSign",
    "display" : "生命徵象"
  },
  {
    "code" : "GetLog",
    "display" : "依日期查詢處理結果"
  },
  {
    "code" : "GetLogByTicket",
    "display" : "依追蹤碼查詢處理結果"
  },
  {
    "code" : "Medicals",
    "display" : "共照醫事人員名單"
  },
  {
    "code" : "Relatives",
    "display" : "共照親友名單"
  },
  {
    "code" : "preserve",
    "display" : "保留原名單"
  },
  {
    "code" : "replace",
    "display" : "取代名單"
  },
  {
    "code" : "clear",
    "display" : "清空名單"
  },
  {
    "code" : "uploaded",
    "display" : "已上傳，等待排程匯入"
  },
  {
    "code" : "care-goal",
    "display" : "個別照護目標"
  },
  {
    "code" : "wound",
    "display" : "傷口紀錄"
  },
  {
    "code" : "wound-category",
    "display" : "傷口分類"
  },
  {
    "code" : "wound-level",
    "display" : "傷口等級"
  },
  {
    "code" : "length",
    "display" : "長度"
  },
  {
    "code" : "width",
    "display" : "寬度"
  },
  {
    "code" : "depth",
    "display" : "深度"
  },
  {
    "code" : "start-date",
    "display" : "查詢起始日"
  },
  {
    "code" : "end-date",
    "display" : "查詢結束日"
  },
  {
    "code" : "ticket",
    "display" : "追蹤碼"
  },
  {
    "code" : "response-code",
    "display" : "回覆代碼"
  },
  {
    "code" : "response-message",
    "display" : "回覆訊息"
  },
  {
    "code" : "source-form",
    "display" : "來源表單"
  }]
}

```
