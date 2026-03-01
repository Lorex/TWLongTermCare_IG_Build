# 長照 SDK－照顧計畫（CarePlan）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照顧計畫（CarePlan）範例**

## Example CarePlan: 長照 SDK－照顧計畫（CarePlan）範例

Profile: [長照 SDK－照顧計畫（不含輔具）](StructureDefinition-LTC-CarePlan-Payload.md)

**status**: Active

**intent**: Plan

**category**: Assessment and Plan of Treatment

**subject**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

> **activity**

### Details

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Code** | **Status** | **Scheduled[x]** | **Quantity** |
| * |  | 照顧計畫擬定與服務連結 | Scheduled | 每週 2 次（週二、週五） | 19 |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ltc-careplan-sdk-example",
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
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "activity" : [{
    "detail" : {
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice",
        "valueMoney" : {
          "value" : 195,
          "currency" : "TWD"
        }
      }],
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
          "code" : "AA01",
          "display" : "照顧計畫擬定與服務連結"
        }]
      },
      "status" : "scheduled",
      "scheduledString" : "每週 2 次（週二、週五）",
      "quantity" : {
        "value" : 19
      }
    }
  }]
}

```
