# 長照－照管電訪活動（Communication）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－照管電訪活動（Communication）範例**

## Example Communication: 長照－照管電訪活動（Communication）範例

Profile: [長照 SDK－服務活動紀錄（SERVICE_A）](StructureDefinition-LTC-Communication-ServiceA.md)

**長照 SDK－案件編號（CASENO）**: 106305420

**status**: Completed

**category**: 電話訪視/關懷

**subject**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**topic**: 照顧管理

**sent**: 2025-07-14 10:30:00+0800

**note**: 

> 

評估人員：吳麗竹；提醒：下週安排家訪。




## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "ltc-communication-servicea-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
    "valueString" : "106305420"
  }],
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-activity",
      "code" : "TEL"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "topic" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
      "code" : "AA02"
    }]
  },
  "sent" : "2025-07-14T10:30:00+08:00",
  "note" : [{
    "text" : "評估人員：吳麗竹；提醒：下週安排家訪。"
  }]
}

```
