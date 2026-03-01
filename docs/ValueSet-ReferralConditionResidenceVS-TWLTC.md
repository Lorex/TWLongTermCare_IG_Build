# 居住狀況值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居住狀況值集**

## ValueSet: 居住狀況值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/ReferralConditionResidenceVS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionResidenceVSTWLTC |

 
個案的居住狀況 

 **References** 

* [長期照顧－居住狀況](StructureDefinition-LTCConditionResidence.md)

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
  "id" : "ReferralConditionResidenceVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionResidenceVS-TWLTC",
  "version" : "1.0.0",
  "name" : "ReferralConditionResidenceVSTWLTC",
  "title" : "居住狀況值集",
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
  "description" : "個案的居住狀況",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC"
    }]
  }
}

```
