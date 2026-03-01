# 個案身分別值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身分別值集**

## ValueSet: 個案身分別值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-09-02 | *Computable Name*:PatientIdentityVSTWLTC |

 
個案身分別的值集 

 **References** 

* [個案身分別](StructureDefinition-ExtPatientIdentity-TWLTC.md)

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
  "id" : "PatientIdentityVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC",
  "version" : "1.0.0",
  "name" : "PatientIdentityVSTWLTC",
  "title" : "個案身分別值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-02",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "個案身分別的值集",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC"
    }]
  }
}

```
