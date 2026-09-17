# 居家護理－傷口等級 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－傷口等級**

## ValueSet: 居家護理－傷口等級 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-wound-level | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNWoundLevelVS |
| *Other Identifiers:*OID:2.25.184139835234128943076056409263447446053 | |

 
V5.0.16 傷口等級；依分類選擇等級。 

 **References** 

* [居家護理－傷口紀錄](StructureDefinition-HNWound.md)

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
  "id" : "hn-wound-level",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-wound-level",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.184139835234128943076056409263447446053"
  }],
  "version" : "1.1.0",
  "name" : "HNWoundLevelVS",
  "title" : "居家護理－傷口等級",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "V5.0.16 傷口等級；依分類選擇等級。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cd2309630a543"
      },
      {
        "code" : "c02aab4358253"
      },
      {
        "code" : "cccd9b119924f"
      },
      {
        "code" : "cb77fa71e8c7f"
      },
      {
        "code" : "cecf422c03011"
      },
      {
        "code" : "c6210bfc58f77"
      },
      {
        "code" : "ccf3d835a3018"
      },
      {
        "code" : "ce33cd81b67cc"
      },
      {
        "code" : "c7259a0720e42"
      },
      {
        "code" : "c5c19c5dfd9c3"
      }]
    }]
  }
}

```
