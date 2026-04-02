# 長照轉介服務請求範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照轉介服務請求範例**

## Example ServiceRequest: 長照轉介服務請求範例

Profile: [長期照顧－服務請求](StructureDefinition-LTCServiceRequest.md)

**status**: Active

**intent**: Order

**category**: Patient referral

**code**: 轉介至日間照護中心

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**authoredOn**: 2024-01-20 14:30:00+0800

**requester**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**performer**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**reasonCode**: 失智症照護需求

**note**: 

> 

個案因失智症需轉介至日間照護中心接受日間照護服務，含認知訓練與生活照顧。




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "ltc-servicerequest-referral-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCServiceRequest"]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "3457005",
      "display" : "Patient referral"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "306206005",
      "display" : "Referral to service"
    }],
    "text" : "轉介至日間照護中心"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "authoredOn" : "2024-01-20T14:30:00+08:00",
  "requester" : {
    "reference" : "Practitioner/ltc-practitioner-example"
  },
  "performer" : [{
    "reference" : "Organization/ltc-organization-example"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "26929004",
      "display" : "Alzheimer's disease"
    }],
    "text" : "失智症照護需求"
  }],
  "note" : [{
    "text" : "個案因失智症需轉介至日間照護中心接受日間照護服務，含認知訓練與生活照顧。"
  }]
}

```
