# 在宅急症－療程結束原因代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－療程結束原因代碼**

## CodeSystem: 在宅急症－療程結束原因代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hah-outcome | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHOutcomeCS |

 
區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [在宅急症－療程結束原因值集](ValueSet-hah-outcome.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hah-outcome",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hah-outcome",
  "version" : "1.1.0",
  "name" : "HAHOutcomeCS",
  "title" : "在宅急症－療程結束原因代碼",
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
  "description" : "區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "completed-treatment",
    "display" : "完成治療",
    "definition" : "已完成本次急症治療或病情改善而結束療程。"
  },
  {
    "code" : "hospital-transfer",
    "display" : "轉急診或住院",
    "definition" : "因需院內照護而結束本次在宅急症療程。"
  },
  {
    "code" : "provider-transfer",
    "display" : "轉其他團隊",
    "definition" : "由其他照護團隊接續服務。"
  },
  {
    "code" : "withdrawn",
    "display" : "退出照護",
    "definition" : "個案或代理人決定退出本次照護。"
  },
  {
    "code" : "death",
    "display" : "死亡",
    "definition" : "因個案死亡而結束療程；另於 Patient 記錄死亡資訊。"
  },
  {
    "code" : "other",
    "display" : "其他",
    "definition" : "須以文字補充結束原因。"
  }]
}

```
