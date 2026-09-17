# 長照支付審查－交通接送起訖地 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－交通接送起訖地**

## Resource Profile: 長照支付審查－交通接送起訖地 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCLocationFeeAuditPlace |

 
此 Location 以衛生福利部支付審核系統的交通接送資料為基礎，用以表述個案接送的出發地、目的地及經緯度。 

 
用於 BD03、DA01 交通接送服務。每筆 Location 填寫一個出發地或目的地，可為住家、醫院、機構或社區服務據點。 

**Usages:**

* Use this Profile: [長照支付審查－服務記錄申報文件打包](StructureDefinition-LTCBundleFeeApply.md)
* Refer to this Profile: [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md)
* Examples for this Profile: [個案住家](Location-ltc-location-feeapply-home-example.md) and [亞東醫院](Location-ltc-location-feeapply-hospital-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCLocationFeeAuditPlace.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCLocationFeeAuditPlace.csv), [Excel](StructureDefinition-LTCLocationFeeAuditPlace.xlsx), [Schematron](StructureDefinition-LTCLocationFeeAuditPlace.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCLocationFeeAuditPlace",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace",
  "version" : "1.1.0",
  "name" : "LTCLocationFeeAuditPlace",
  "title" : "長照支付審查－交通接送起訖地",
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
  "description" : "此 Location 以衛生福利部支付審核系統的交通接送資料為基礎，用以表述個案接送的出發地、目的地及經緯度。",
  "purpose" : "用於 BD03、DA01 交通接送服務。每筆 Location 填寫一個出發地或目的地，可為住家、醫院、機構或社區服務據點。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location",
      "short" : "交通接送的出發地或目的地"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "short" : "地點的使用狀態，一般填入 active。"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "地點名稱。[應填入實際地點的名稱，例如個案住家、亞東醫院]",
      "definition" : "應填寫可辨識接送地點的名稱。"
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "short" : "地點的補充說明",
      "mustSupport" : true
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "short" : "地點模式，如為特定地點，則填入 instance。",
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "地點類型，應依實際地點填寫住家、醫院或社區式長照機構等類型。",
      "definition" : "應依實際地點選擇類型代碼。例如個案住家可使用 PTRES，醫院可使用 HOSP。",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "short" : "地點地址。[應填入 Address]",
      "definition" : "應填寫此地點的實際地址，完整地址文字填入 address.text。"
    },
    {
      "id" : "Location.address.text",
      "path" : "Location.address.text",
      "short" : "完整地址。[應填入包含縣市、鄉鎮市區與門牌的地址文字]",
      "mustSupport" : true
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "short" : "地點的經緯度",
      "definition" : "應同時填寫經度與緯度，使用十進位度數。",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "short" : "地點的經度。[應填入十進位度數]",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "short" : "地點的緯度。[應填入十進位度數]",
      "mustSupport" : true
    }]
  }
}

```
