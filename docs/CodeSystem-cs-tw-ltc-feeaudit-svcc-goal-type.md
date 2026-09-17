# 支付審查－專業服務復能目標達成情形 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－專業服務復能目標達成情形**

## CodeSystem: 支付審查－專業服務復能目標達成情形 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svcc-goal-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditSvccGoalType |
| *Other Identifiers:*OID:2.25.137889511918632381226502387061814940877 | |

 
支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type）代碼，申報 C 碼（專業服務）時填寫，單選。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－專業服務復能目標達成情形](ValueSet-vs-tw-ltc-feeaudit-svcc-goal-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-svcc-goal-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svcc-goal-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.137889511918632381226502387061814940877"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditSvccGoalType",
  "title" : "支付審查－專業服務復能目標達成情形",
  "status" : "active",
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
  "description" : "支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type）代碼，申報 C 碼（專業服務）時填寫，單選。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "1",
    "display" : "尚未滿1照顧組合之次數"
  },
  {
    "code" : "2",
    "display" : "已滿1照顧組合之次數，且已達目標"
  },
  {
    "code" : "3",
    "display" : "已滿1照顧組合之次數，但尚未達目標"
  },
  {
    "code" : "4",
    "display" : "未滿1照顧組合之次數，且已達目標"
  },
  {
    "code" : "5",
    "display" : "未滿1照顧組合之次數，但尚未達目標"
  }]
}

```
