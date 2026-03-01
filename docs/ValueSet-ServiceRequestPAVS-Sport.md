# 身體活動量測-適用運動處方之服務請求代碼值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-適用運動處方之服務請求代碼值集**

## ValueSet: 身體活動量測-適用運動處方之服務請求代碼值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/ServiceRequestPAVS-Sport | *Version*:1.0.0 |
| Active as of 2024-06-04 | *Computable Name*:ServiceRequestPAVSSport |

 
適用運動處方之服務請求代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 **References** 

* [運動處方－服務請求](StructureDefinition-PASportServiceRequest.md)

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
  "id" : "ServiceRequestPAVS-Sport",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/ServiceRequestPAVS-Sport",
  "version" : "1.0.0",
  "name" : "ServiceRequestPAVSSport",
  "title" : "身體活動量測-適用運動處方之服務請求代碼值集",
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
  "description" : "適用運動處方之服務請求代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "819961005",
        "display" : "PA guidance"
      },
      {
        "code" : "398636004",
        "display" : "PA assessment"
      },
      {
        "code" : "390893007",
        "display" : "Referral to physical activity program"
      },
      {
        "code" : "426866005",
        "display" : "Determination of phyisical activity tolerance"
      },
      {
        "code" : "229095001",
        "display" : "Exercise class"
      },
      {
        "code" : "229065009",
        "display" : "Exercise therapy"
      }]
    }]
  }
}

```
