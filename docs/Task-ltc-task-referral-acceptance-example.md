# 轉介確認任務範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介確認任務範例**

## Example Task: 轉介確認任務範例

Profile: [長期照顧－任務管理](StructureDefinition-LTCTask.md)

**status**: Accepted

**intent**: order

**code**: 轉介確認

**focus**: [Bundle: identifier = http://ltc-ig.fhir.tw/bundle-id#referral-bundle-001; type = document; timestamp = 2024-01-20 09:00:00+0800](Bundle-ltc-bundle-referral-example.md)

**for**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**authoredOn**: 2024-02-01 09:00:00+0800

**requester**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**owner**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

已確認收案，將於 2024-02-05 進行入住評估。




## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-referral-acceptance-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTask"]
  },
  "status" : "accepted",
  "intent" : "order",
  "code" : {
    "text" : "轉介確認"
  },
  "focus" : {
    "reference" : "Bundle/ltc-bundle-referral-example"
  },
  "for" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "authoredOn" : "2024-02-01T09:00:00+08:00",
  "requester" : {
    "reference" : "Practitioner/ltc-practitioner-example"
  },
  "owner" : {
    "reference" : "Organization/ltc-organization-example"
  },
  "note" : [{
    "text" : "已確認收案，將於 2024-02-05 進行入住評估。"
  }]
}

```
