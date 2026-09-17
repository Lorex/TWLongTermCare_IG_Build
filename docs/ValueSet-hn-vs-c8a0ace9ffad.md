# 居家護理－服務項目多選選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－服務項目多選選項**

## ValueSet: 居家護理－服務項目多選選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8a0ace9ffad | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSc8a0ace9ffad |
| *Other Identifiers:*OID:2.25.128695279898115277698479217947213958035 | |

 
限定服務項目多選可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－照護紀錄邏輯模型](StructureDefinition-HNCareRecordModel.md)
* [居家護理－照護紀錄表單](StructureDefinition-HNCareRecordResponse.md)
* [居家護理－照護紀錄](Questionnaire-hn-carerecord.md)

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
  "id" : "hn-vs-c8a0ace9ffad",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c8a0ace9ffad",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.128695279898115277698479217947213958035"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSc8a0ace9ffad",
  "title" : "居家護理－服務項目多選選項",
  "status" : "draft",
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
  "description" : "限定服務項目多選可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c75c48f3c1a0a"
      },
      {
        "code" : "ca4415547bb26"
      },
      {
        "code" : "cdd4b50600e96"
      },
      {
        "code" : "c1115f9d55e53"
      },
      {
        "code" : "c90120f8197cb"
      },
      {
        "code" : "ca0728ddb3a5f"
      },
      {
        "code" : "cd99cc6673c7d"
      },
      {
        "code" : "c257a803fa29a"
      },
      {
        "code" : "c05d9e5e465d1"
      },
      {
        "code" : "cd52e59c38c49"
      },
      {
        "code" : "c0c6bdf754005"
      },
      {
        "code" : "c4cd9b35ac51a"
      }]
    }]
  }
}

```
