# 居家護理－項目分類選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－項目分類選項**

## ValueSet: 居家護理－項目分類選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-0a65df60cccf | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS0a65df60cccf |
| *Other Identifiers:*OID:2.25.325336354892396014835711230814890522188 | |

 
限定項目分類可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-0a65df60cccf",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0a65df60cccf",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.325336354892396014835711230814890522188"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS0a65df60cccf",
  "title" : "居家護理－項目分類選項",
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
  "description" : "限定項目分類可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c70b9a6df0e03"
      },
      {
        "code" : "c346355f74901"
      },
      {
        "code" : "c3ca3480ba9d0"
      }]
    }]
  }
}

```
