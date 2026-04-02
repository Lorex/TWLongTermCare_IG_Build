# 個案位置監測邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案位置監測邏輯模型**

## Logical Model: 個案位置監測邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationModel | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCLocationModel |

 
此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCLocationModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCLocationModel.csv), [Excel](StructureDefinition-LTCLocationModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCLocationModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationModel",
  "version" : "1.0.0",
  "name" : "LTCLocationModel",
  "title" : "個案位置監測邏輯模型",
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
  "description" : "此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LTCLocationModelToLTCLocation",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc",
    "name" : "個案位置監測邏輯模型到Location Profile映射",
    "comment" : "此映射定義如何將個案位置監測邏輯模型轉換為LTCLocation Profile"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCLocationModel",
      "path" : "LTCLocationModel",
      "short" : "個案位置監測邏輯模型",
      "definition" : "此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。",
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location"
      }]
    },
    {
      "id" : "LTCLocationModel.location",
      "path" : "LTCLocationModel.location",
      "short" : "位置基本資料",
      "definition" : "個案所在位置的基本資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCLocationModel.location.locationName",
      "path" : "LTCLocationModel.location.locationName",
      "short" : "地點名稱",
      "definition" : "個案所在的地點名稱，例如：日照中心、家裡、公園等",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.name"
      }]
    },
    {
      "id" : "LTCLocationModel.location.locationDescription",
      "path" : "LTCLocationModel.location.locationDescription",
      "short" : "位置描述",
      "definition" : "位置的詳細描述資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.description"
      }]
    },
    {
      "id" : "LTCLocationModel.location.locationType",
      "path" : "LTCLocationModel.location.locationType",
      "short" : "位置類型",
      "definition" : "位置的類型分類",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.type"
      }]
    },
    {
      "id" : "LTCLocationModel.coordinates",
      "path" : "LTCLocationModel.coordinates",
      "short" : "座標資訊",
      "definition" : "位置的經緯度座標資訊",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCLocationModel.coordinates.longitude",
      "path" : "LTCLocationModel.coordinates.longitude",
      "short" : "經度座標",
      "definition" : "GPS 經度座標，以十進位度數格式表示",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.position.longitude"
      }]
    },
    {
      "id" : "LTCLocationModel.coordinates.latitude",
      "path" : "LTCLocationModel.coordinates.latitude",
      "short" : "緯度座標",
      "definition" : "GPS 緯度座標，以十進位度數格式表示",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.position.latitude"
      }]
    },
    {
      "id" : "LTCLocationModel.coordinates.altitude",
      "path" : "LTCLocationModel.coordinates.altitude",
      "short" : "海拔高度",
      "definition" : "位置的海拔高度，以公尺為單位",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.position.altitude"
      }]
    },
    {
      "id" : "LTCLocationModel.telecom",
      "path" : "LTCLocationModel.telecom",
      "short" : "聯絡資訊",
      "definition" : "位置相關的聯絡方式",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.telecom"
      }]
    },
    {
      "id" : "LTCLocationModel.address",
      "path" : "LTCLocationModel.address",
      "short" : "地址資訊",
      "definition" : "位置的地址相關資訊",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCLocationModel.address.addressText",
      "path" : "LTCLocationModel.address.addressText",
      "short" : "地址文字描述",
      "definition" : "地址的完整文字描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.address.text"
      }]
    },
    {
      "id" : "LTCLocationModel.hierarchy",
      "path" : "LTCLocationModel.hierarchy",
      "short" : "層級關係",
      "definition" : "位置在組織架構中的層級關係",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCLocationModel.hierarchy.parentLocationReference",
      "path" : "LTCLocationModel.hierarchy.parentLocationReference",
      "short" : "上層位置參考",
      "definition" : "對上層位置資源的參考",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCLocationModelToLTCLocation",
        "map" : "Location.partOf.reference"
      }]
    }]
  }
}

```
