# 關係類型擴展值集 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **關係類型擴展值集**

## ValueSet: 關係類型擴展值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/RelationshipTypeVS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-09-02 | *Computable Name*:RelationshipTypeVSTWLTC |

 
關係人與個案的關係類型擴展代碼值集，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼 

 **References** 

* [長期照顧－關係人](StructureDefinition-LTCRelatedPerson.md)

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
  "id" : "RelationshipTypeVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/RelationshipTypeVS-TWLTC",
  "version" : "0.4.1",
  "name" : "RelationshipTypeVSTWLTC",
  "title" : "關係類型擴展值集",
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
  "description" : "關係人與個案的關係類型擴展代碼值集，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0131"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "version" : "3.0.0",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "_PersonalRelationshipRoleType"
      }]
    },
    {
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/RelationshipTypeCS-TWLTC"
    }]
  }
}

```
