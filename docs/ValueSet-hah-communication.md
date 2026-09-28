# 在宅急症－溝通類型值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－溝通類型值集**

## ValueSet: 在宅急症－溝通類型值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hah-communication | *Version*:1.1.0 |
| Draft as of 2026-09-29 | *Computable Name*:HAHCommunicationVS |
| *Other Identifiers:*OID:2.25.112052472932450985590316396611346414886 | |

 
區分照會、交班與衛教內容。 

 **References** 

* [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md)

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
  "id" : "hah-communication",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hah-communication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.112052472932450985590316396611346414886"
  }],
  "version" : "1.1.0",
  "name" : "HAHCommunicationVS",
  "title" : "在宅急症－溝通類型值集",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-29T04:34:44+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "區分照會、交班與衛教內容。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "concept" : [{
        "code" : "consultation"
      },
      {
        "code" : "handover"
      },
      {
        "code" : "education"
      }]
    }]
  }
}

```
