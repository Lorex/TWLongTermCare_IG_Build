# 跌倒紀錄結果值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **跌倒紀錄結果值集**

## ValueSet: 跌倒紀錄結果值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/FallHistoryResultVS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-10-20 | *Computable Name*:FallHistoryResultVSTWLTC |

 
紀錄住民跌倒的偵測結果。 

 **References** 

* [安全防護－跌倒紀錄](StructureDefinition-LTCObservationFallingHistory.md)

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
  "id" : "FallHistoryResultVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/FallHistoryResultVS-TWLTC",
  "version" : "1.0.0",
  "name" : "FallHistoryResultVSTWLTC",
  "title" : "跌倒紀錄結果值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-10-20",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "紀錄住民跌倒的偵測結果。",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA19655-2",
        "display" : "Not observed"
      },
      {
        "code" : "LA33635-6",
        "display" : "Observed"
      }]
    }]
  }
}

```
