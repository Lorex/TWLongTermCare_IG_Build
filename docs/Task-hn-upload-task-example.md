# 居家護理上傳已接收範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理上傳已接收範例**

## Example Task: 居家護理上傳已接收範例

Profile: [居家護理－介接作業](StructureDefinition-HNAPITask.md)

> **居家護理－共照團隊更新指示**
* collection: Medicals
* action: preserve

> **居家護理－共照團隊更新指示**
* collection: Relatives
* action: clear

**status**: Received

**businessStatus**: 已上傳，等待排程匯入

**intent**: order

**code**: 個案基本資料

**authoredOn**: 2025-12-08 09:00:00+0800

**requester**: [Organization 示範居家護理所](Organization-hn-organization-example.md)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 來源表單 | [Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-basedata-example.md) |

> **output****type**: 回覆代碼**value**: 200

> **output****type**: 回覆訊息**value**: Success.



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "hn-upload-task-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "collection",
      "valueCode" : "Medicals"
    },
    {
      "url" : "action",
      "valueCode" : "preserve"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate"
  },
  {
    "extension" : [{
      "url" : "collection",
      "valueCode" : "Relatives"
    },
    {
      "url" : "action",
      "valueCode" : "clear"
    }],
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate"
  }],
  "status" : "received",
  "businessStatus" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "uploaded"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "BaseData"
    }]
  },
  "authoredOn" : "2025-12-08T09:00:00+08:00",
  "requester" : {
    "reference" : "Organization/hn-organization-example"
  },
  "input" : [{
    "type" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "source-form"
      }]
    },
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-basedata-example"
    }
  }],
  "output" : [{
    "type" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "response-code"
      }]
    },
    "valueInteger" : 200
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "response-message"
      }]
    },
    "valueString" : "Success."
  }]
}

```
