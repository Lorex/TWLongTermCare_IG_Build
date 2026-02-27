# 壓傷狀況值集 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **壓傷狀況值集**

## ValueSet: 壓傷狀況值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionCrushVSTWLTC |

 
個案壓傷的狀況 

 **References** 

* [長期照顧－壓傷狀況](StructureDefinition-LTCConditionCrush.md)

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
  "id" : "ReferralConditionCrushVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC",
  "version" : "0.4.1",
  "name" : "ReferralConditionCrushVSTWLTC",
  "title" : "壓傷狀況值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-25",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "個案壓傷的狀況",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
    }]
  }
}

```
