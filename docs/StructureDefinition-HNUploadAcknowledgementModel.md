# 居家護理－上傳接收回覆邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－上傳接收回覆邏輯模型**

## Logical Model: 居家護理－上傳接收回覆邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNUploadAcknowledgementModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNUploadAcknowledgementModel |

 
描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNUploadAcknowledgementModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNUploadAcknowledgementModel.csv), [Excel](StructureDefinition-HNUploadAcknowledgementModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNUploadAcknowledgementModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNUploadAcknowledgementModel",
  "version" : "1.1.0",
  "name" : "HNUploadAcknowledgementModel",
  "title" : "居家護理－上傳接收回覆邏輯模型",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-upload-acknowledgement",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask",
    "name" : "居家護理－接收訊息對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNUploadAcknowledgementModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNUploadAcknowledgementModel",
      "path" : "HNUploadAcknowledgementModel",
      "short" : "居家護理－上傳接收回覆邏輯模型",
      "definition" : "描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。"
    },
    {
      "id" : "HNUploadAcknowledgementModel.code",
      "path" : "HNUploadAcknowledgementModel.code",
      "short" : "接收代碼",
      "definition" : "成功回覆為 200。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "patternInteger" : 200,
      "mapping" : [{
        "identity" : "hn-upload-acknowledgement",
        "map" : "Task.output.where(type.coding.code='response-code').valueInteger",
        "comment" : "來源 code。"
      }]
    },
    {
      "id" : "HNUploadAcknowledgementModel.message",
      "path" : "HNUploadAcknowledgementModel.message",
      "short" : "接收訊息",
      "definition" : "成功範例為 Success.，保留收到的文字。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-upload-acknowledgement",
        "map" : "Task.output.where(type.coding.code='response-message').valueString",
        "comment" : "來源 message。"
      }]
    }]
  }
}

```
