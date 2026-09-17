# 居家護理－使用資源多選選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－使用資源多選選項**

## ValueSet: 居家護理－使用資源多選選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-38762eb1c742 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS38762eb1c742 |
| *Other Identifiers:*OID:2.25.96562761045375509397463580250518048188 | |

 
限定使用資源多選可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-38762eb1c742",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-38762eb1c742",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.96562761045375509397463580250518048188"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS38762eb1c742",
  "title" : "居家護理－使用資源多選選項",
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
  "description" : "限定使用資源多選可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cb2751adaa344"
      },
      {
        "code" : "ce926adb863f1"
      },
      {
        "code" : "c6ff7408b28f0"
      },
      {
        "code" : "c34f73a0c941a"
      },
      {
        "code" : "cbc85eb82d450"
      },
      {
        "code" : "c54708c819f65"
      },
      {
        "code" : "ca20cf6c11392"
      },
      {
        "code" : "c30813b489d49"
      },
      {
        "code" : "c13c119791c13"
      },
      {
        "code" : "c628236a53410"
      }]
    }]
  }
}

```
