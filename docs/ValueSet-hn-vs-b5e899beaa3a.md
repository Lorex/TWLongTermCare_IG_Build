# 居家護理－排尿型態多選選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－排尿型態多選選項**

## ValueSet: 居家護理－排尿型態多選選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-b5e899beaa3a | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSb5e899beaa3a |
| *Other Identifiers:*OID:2.25.114720051205992197828340677190764569942 | |

 
限定排尿型態多選可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-b5e899beaa3a",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b5e899beaa3a",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.114720051205992197828340677190764569942"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSb5e899beaa3a",
  "title" : "居家護理－排尿型態多選選項",
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
  "description" : "限定排尿型態多選可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cc3885f6022cd"
      },
      {
        "code" : "c0216f56bdce7"
      },
      {
        "code" : "c7d5bd44541a0"
      },
      {
        "code" : "c4b57f56e1701"
      },
      {
        "code" : "cc106599d8c6e"
      },
      {
        "code" : "c8c303353bc3c"
      },
      {
        "code" : "c5e756f7184f3"
      }]
    }]
  }
}

```
