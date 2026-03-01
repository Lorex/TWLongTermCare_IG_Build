# 長照 CS100－照顧計畫（CarePlan）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－照顧計畫（CarePlan）範例**

## Example CarePlan: 長照 CS100－照顧計畫（CarePlan）範例

Profile: [長照 SDK－照顧計畫（不含輔具）](StructureDefinition-LTC-CarePlan-Payload.md)

**status**: Active

**intent**: Plan

**category**: Assessment and Plan of Treatment

**subject**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**period**: 2025-10-10 --> (ongoing)

**supportingInfo**: [CoverageEligibilityResponse: status = active; purpose = benefits; created = 2025-10-05 10:00:00+0800; outcome = complete](CoverageEligibilityResponse-ltc-coverageeligibilityresponse-cs100-example.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Scheduled[x]** |
| * | 陪同外出 | Scheduled | 8 per 1 week |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ltc-careplan-cs100-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
      "code" : "assess-plan"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "period" : {
    "start" : "2025-10-10"
  },
  "supportingInfo" : [{
    "reference" : "CoverageEligibilityResponse/ltc-coverageeligibilityresponse-cs100-example"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
          "code" : "BA13",
          "display" : "陪同外出"
        }]
      },
      "status" : "scheduled",
      "scheduledTiming" : {
        "repeat" : {
          "frequency" : 8,
          "period" : 1,
          "periodUnit" : "wk"
        }
      }
    }
  }]
}

```
