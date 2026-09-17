# 居家護理－移動能力選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－移動能力選項**

## ValueSet: 居家護理－移動能力選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-f466b3393017 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSf466b3393017 |
| *Other Identifiers:*OID:2.25.80194301613835044317769621356286404946 | |

 
限定移動能力可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－壓力性損傷危險評估邏輯模型](StructureDefinition-HNPressureInjuriesModel.md)
* [居家護理－壓力性損傷危險評估表單](StructureDefinition-HNPressureInjuriesResponse.md)
* [居家護理－壓力性損傷危險評估](Questionnaire-hn-pressureinjuries.md)

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
  "id" : "hn-vs-f466b3393017",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f466b3393017",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.80194301613835044317769621356286404946"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSf466b3393017",
  "title" : "居家護理－移動能力選項",
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
  "description" : "限定移動能力可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cf5032b6ded5b"
      },
      {
        "code" : "cabee7305e9b2"
      },
      {
        "code" : "cae9019f3bca2"
      },
      {
        "code" : "ccf2fc613cb5e"
      }]
    }]
  }
}

```
