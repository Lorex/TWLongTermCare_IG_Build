# 身體活動量測-暫用代碼值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-暫用代碼值集**

## ValueSet: 身體活動量測-暫用代碼值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/TempCodeVS-Sport | *Version*:1.0.0 |
| Active as of 2024-06-04 | *Computable Name*:TempCodeVSSport |

 
身體活動量測暫時使用的代碼，目前無官方代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合官方代碼更新。 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "TempCodeVS-Sport",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/TempCodeVS-Sport",
  "version" : "1.0.0",
  "name" : "TempCodeVSSport",
  "title" : "身體活動量測-暫用代碼值集",
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
  "description" : "身體活動量測暫時使用的代碼，目前無官方代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合官方代碼更新。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
    }]
  }
}

```
