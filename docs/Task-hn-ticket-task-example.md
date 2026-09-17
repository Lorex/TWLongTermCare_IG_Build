# 居家護理依追蹤碼查詢範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理依追蹤碼查詢範例**

## Example Task: 居家護理依追蹤碼查詢範例

Profile: [居家護理－介接作業](StructureDefinition-HNAPITask.md)

**status**: Requested

**intent**: order

**code**: 依追蹤碼查詢處理結果

**requester**: [Organization 示範居家護理所](Organization-hn-organization-example.md)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 追蹤碼 | 00123456 |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "hn-ticket-task-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"]
  },
  "status" : "requested",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "GetLogByTicket"
    }]
  },
  "requester" : {
    "reference" : "Organization/hn-organization-example"
  },
  "input" : [{
    "type" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "ticket"
      }]
    },
    "valueString" : "00123456"
  }]
}

```
