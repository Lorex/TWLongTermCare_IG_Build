# 長期照顧－個案位置監測 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－個案位置監測**

## Resource Profile: 長期照顧－個案位置監測 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCLocation |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。 

**Usages:**

* Refer to this Profile: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)
* Examples for this Profile: [新北市私立安康老人長期照顧中心（養護型）](Location-ltc-location-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Location-twltc)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Location-twltc.csv), [Excel](StructureDefinition-Location-twltc.xlsx), [Schematron](StructureDefinition-Location-twltc.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Location-twltc",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc",
  "version" : "1.0.0",
  "name" : "LTCLocation",
  "title" : "長期照顧－個案位置監測",
  "status" : "active",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。",
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
      "short" : "個案位置監測的資訊"
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "short" : "位置記錄的狀態",
      "min" : 1,
      "patternCode" : "active"
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "個案所在的地點名稱",
      "definition" : "個案所在的地點名稱，例如：日照中心、家裡、公園等"
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "short" : "位置描述",
      "definition" : "位置的詳細描述資訊",
      "mustSupport" : true
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "short" : "位置模式",
      "patternCode" : "instance",
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "short" : "位置類型",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.type.coding",
      "path" : "Location.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type.coding.system",
      "path" : "Location.type.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
    },
    {
      "id" : "Location.type.coding.code",
      "path" : "Location.type.coding.code",
      "min" : 1,
      "patternCode" : "PTRES"
    },
    {
      "id" : "Location.type.coding.display",
      "path" : "Location.type.coding.display",
      "min" : 1,
      "patternString" : "Patient's Residence"
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "short" : "位置相關的聯絡方式"
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "short" : "位置的地址資訊"
    },
    {
      "id" : "Location.address.text",
      "path" : "Location.address.text",
      "mustSupport" : true
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "short" : "位置的經緯度座標",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.longitude",
      "path" : "Location.position.longitude",
      "short" : "經度座標",
      "definition" : "GPS 經度座標，以十進位度數格式表示",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.latitude",
      "path" : "Location.position.latitude",
      "short" : "緯度座標",
      "definition" : "GPS 緯度座標，以十進位度數格式表示",
      "mustSupport" : true
    },
    {
      "id" : "Location.position.altitude",
      "path" : "Location.position.altitude",
      "short" : "海拔高度",
      "definition" : "位置的海拔高度，以公尺為單位",
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "此位置所屬的上層位置",
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf.reference",
      "path" : "Location.partOf.reference",
      "short" : "上層位置的參考",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
