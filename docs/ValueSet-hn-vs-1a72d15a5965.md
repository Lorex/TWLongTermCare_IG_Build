# 居家護理－肌力-輔具多選選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－肌力-輔具多選選項**

## ValueSet: 居家護理－肌力-輔具多選選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-1a72d15a5965 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS1a72d15a5965 |
| *Other Identifiers:*OID:2.25.139177464520617106912554017088892473991 | |

 
限定肌力-輔具多選可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－身體評估評估邏輯模型](StructureDefinition-HNBodyEvaluationsModel.md)
* [居家護理－身體評估評估表單](StructureDefinition-HNBodyEvaluationsResponse.md)
* [居家護理－身體評估評估](Questionnaire-hn-bodyevaluations.md)

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
  "id" : "hn-vs-1a72d15a5965",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1a72d15a5965",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.139177464520617106912554017088892473991"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS1a72d15a5965",
  "title" : "居家護理－肌力-輔具多選選項",
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
  "description" : "限定肌力-輔具多選可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c458c1b3f5400"
      },
      {
        "code" : "cf5666fdcb9f5"
      },
      {
        "code" : "c15d9537f30c5"
      },
      {
        "code" : "c3713fbd1eab6"
      },
      {
        "code" : "cdedd098c67a2"
      },
      {
        "code" : "c814c71301f87"
      },
      {
        "code" : "cf4b0febe61c7"
      },
      {
        "code" : "ca6e34556b927"
      },
      {
        "code" : "c53d3e902cac8"
      },
      {
        "code" : "c429a85c8dc24"
      },
      {
        "code" : "c941052c654d3"
      },
      {
        "code" : "cd570d30795d4"
      },
      {
        "code" : "c21f603932a02"
      },
      {
        "code" : "c92001a651577"
      },
      {
        "code" : "cd2909f1647e7"
      }]
    }]
  }
}

```
