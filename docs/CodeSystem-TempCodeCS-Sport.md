# 身體活動量測-暫用代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-暫用代碼**

## CodeSystem: 身體活動量測-暫用代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport | *Version*:1.0.0 |
| Active as of 2024-05-14 | *Computable Name*:TempCodeCSSport |

 
身體活動量測暫時使用的代碼，目前無官方代碼。本 CodeSystem 繼承自身體活動量測 IG，後續將配合官方代碼更新。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TempCodeVSSport](ValueSet-TempCodeVS-Sport.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "TempCodeCS-Sport",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
  "version" : "1.0.0",
  "name" : "TempCodeCSSport",
  "title" : "身體活動量測-暫用代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-05-14",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "身體活動量測暫時使用的代碼，目前無官方代碼。本 CodeSystem 繼承自身體活動量測 IG，後續將配合官方代碼更新。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [{
    "code" : "PhysicalActivity",
    "display" : "Physical Activity",
    "definition" : "Physical Activity"
  },
  {
    "code" : "BCA",
    "display" : "Body Composition Analysis",
    "definition" : "Body Composition Analysis"
  },
  {
    "code" : "Protein",
    "display" : "蛋白質重",
    "definition" : "蛋白質重"
  },
  {
    "code" : "FFMI",
    "display" : "無脂肪質量指數",
    "definition" : "無脂肪質量指數"
  },
  {
    "code" : "VFI",
    "display" : "內臟脂肪指數",
    "definition" : "內臟脂肪指數"
  },
  {
    "code" : "Mineral",
    "display" : "礦物質重",
    "definition" : "礦物質重"
  },
  {
    "code" : "BodyAge",
    "display" : "體內年齡",
    "definition" : "體內年齡"
  },
  {
    "code" : "WHR",
    "display" : "腰臀圍比",
    "definition" : "腰臀圍比"
  },
  {
    "code" : "ObesityDegree",
    "display" : "肥胖度",
    "definition" : "肥胖度"
  },
  {
    "code" : "DLM",
    "display" : "除脂乾物重",
    "definition" : "除脂乾物重"
  },
  {
    "code" : "ICW",
    "display" : "細胞內水分",
    "definition" : "細胞內水分"
  },
  {
    "code" : "ECW",
    "display" : "細胞外水分",
    "definition" : "細胞外水分"
  },
  {
    "code" : "SMM",
    "display" : "骨骼肌重",
    "definition" : "骨骼肌重"
  },
  {
    "code" : "SMI",
    "display" : "肌肉質量指數",
    "definition" : "肌肉質量指數"
  },
  {
    "code" : "BodyCellMass",
    "display" : "細胞量",
    "definition" : "細胞量"
  },
  {
    "code" : "SLM",
    "display" : "肌肉量",
    "definition" : "肌肉量"
  },
  {
    "code" : "ECWRatio",
    "display" : "水腫指數",
    "definition" : "水腫指數"
  }]
}

```
