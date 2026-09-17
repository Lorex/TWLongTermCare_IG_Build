# 居家護理－腹部狀態選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－腹部狀態選項**

## ValueSet: 居家護理－腹部狀態選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-b42a51b1139e | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSb42a51b1139e |
| *Other Identifiers:*OID:2.25.79302898901089867588435424534799862661 | |

 
限定腹部狀態可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-b42a51b1139e",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b42a51b1139e",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.79302898901089867588435424534799862661"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSb42a51b1139e",
  "title" : "居家護理－腹部狀態選項",
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
  "description" : "限定腹部狀態可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c296de0e31f8c"
      },
      {
        "code" : "ca85280db9482"
      },
      {
        "code" : "c9b005f7023f9"
      },
      {
        "code" : "c9d5aa3c352e6"
      },
      {
        "code" : "cdedabc43f872"
      },
      {
        "code" : "c154756fb76ea"
      },
      {
        "code" : "c799f8af95dd4"
      },
      {
        "code" : "cd2909f1647e7"
      }]
    }]
  }
}

```
