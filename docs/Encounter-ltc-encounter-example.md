# 長期照顧就醫紀錄範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧就醫紀錄範例**

## Example Encounter: 長期照顧就醫紀錄範例

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**period**: 2024-01-10 09:00:00+0800 --> 2024-01-10 11:30:00+0800

**reasonCode**: 糖尿病追蹤檢查

**serviceProvider**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ltc-encounter-example",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "period" : {
    "start" : "2024-01-10T09:00:00+08:00",
    "end" : "2024-01-10T11:30:00+08:00"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Diabetes mellitus type 2"
    }],
    "text" : "糖尿病追蹤檢查"
  }],
  "serviceProvider" : {
    "reference" : "Organization/ltc-organization-example"
  }
}

```
