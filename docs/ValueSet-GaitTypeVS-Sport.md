# 身體活動量測-步態分析值集 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-步態分析值集**

## ValueSet: 身體活動量測-步態分析值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/GaitTypeVS-Sport | *Version*:0.4.1 |
| Active as of 2024-06-04 | *Computable Name*:GaitTypeVSSport |

 
用於描述步態（walking gait）時腳的着地位置和運動模式。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 **References** 

* [穿戴裝置－步態分析](StructureDefinition-PASportObservationGaitType.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "GaitTypeVS-Sport",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/GaitTypeVS-Sport",
  "version" : "0.4.1",
  "name" : "GaitTypeVSSport",
  "title" : "身體活動量測-步態分析值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-04",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於描述步態（walking gait）時腳的着地位置和運動模式。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "8117002",
        "display" : "Gait normal"
      },
      {
        "code" : "264739002",
        "display" : "Medial rotation - action"
      },
      {
        "code" : "264730003",
        "display" : "Lateral rotation - action"
      }]
    }]
  }
}

```
