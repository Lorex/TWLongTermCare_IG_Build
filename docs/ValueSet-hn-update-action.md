# 居家護理－共照名單更新方式 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－共照名單更新方式**

## ValueSet: 居家護理－共照名單更新方式 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-update-action | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNUpdateActionVS |
| *Other Identifiers:*OID:2.25.206248524088810760731602015317753358895 | |

 
區分未填或 null 的保留、非空陣列的取代及空陣列的清空。 

 **References** 

* [居家護理－共照團隊更新指示](StructureDefinition-ExtHNCollectionUpdate.md)

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
  "id" : "hn-update-action",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-update-action",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.206248524088810760731602015317753358895"
  }],
  "version" : "1.1.0",
  "name" : "HNUpdateActionVS",
  "title" : "居家護理－共照名單更新方式",
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
  "description" : "區分未填或 null 的保留、非空陣列的取代及空陣列的清空。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "concept" : [{
        "code" : "preserve"
      },
      {
        "code" : "replace"
      },
      {
        "code" : "clear"
      }]
    }]
  }
}

```
