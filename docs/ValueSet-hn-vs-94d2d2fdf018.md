# 居家護理－成員職稱選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－成員職稱選項**

## ValueSet: 居家護理－成員職稱選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS94d2d2fdf018 |
| *Other Identifiers:*OID:2.25.275963709798283800578874629056141892968 | |

 
限定成員職稱可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－個案基本資料邏輯模型](StructureDefinition-HNBaseDataModel.md)
* [居家護理－個案基本資料表單](StructureDefinition-HNBaseDataResponse.md)
* [居家護理－共照紀錄邏輯模型](StructureDefinition-HNCaseDescModel.md)
* [居家護理－共照紀錄表單](StructureDefinition-HNCaseDescResponse.md)
* [居家護理－人員緊急事件邏輯模型](StructureDefinition-HNStaffEgyModel.md)
* [居家護理－人員緊急事件表單](StructureDefinition-HNStaffEgyResponse.md)
* [居家護理－個案基本資料](Questionnaire-hn-basedata.md)
* [居家護理－共照紀錄](Questionnaire-hn-casedesc.md)
* [居家護理－人員緊急事件](Questionnaire-hn-staffegy.md)

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
  "id" : "hn-vs-94d2d2fdf018",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.275963709798283800578874629056141892968"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS94d2d2fdf018",
  "title" : "居家護理－成員職稱選項",
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
  "description" : "限定成員職稱可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cdbb50d002e8b"
      },
      {
        "code" : "c42a9e6281134"
      },
      {
        "code" : "ce70a1b18458c"
      },
      {
        "code" : "cf74516e0ba71"
      },
      {
        "code" : "c032e0e09efd1"
      },
      {
        "code" : "c192b1414974a"
      },
      {
        "code" : "cf6f0f7ec65fc"
      },
      {
        "code" : "c7c8ab802b036"
      },
      {
        "code" : "c066339cf4516"
      },
      {
        "code" : "c23efed3f713d"
      },
      {
        "code" : "c54feffad30a8"
      },
      {
        "code" : "c71a5d100aada"
      },
      {
        "code" : "cd2909f1647e7"
      }]
    }]
  }
}

```
