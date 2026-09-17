# 居家護理－評估項目選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－評估項目選項**

## ValueSet: 居家護理－評估項目選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-14764e5914f7 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS14764e5914f7 |
| *Other Identifiers:*OID:2.25.104709048415922433631427692989887298839 | |

 
限定評估項目可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-14764e5914f7",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-14764e5914f7",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.104709048415922433631427692989887298839"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS14764e5914f7",
  "title" : "居家護理－評估項目選項",
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
  "description" : "限定評估項目可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "ce8063e431aad"
      },
      {
        "code" : "cd6687f5fb129"
      },
      {
        "code" : "cd4934d8ce2de"
      },
      {
        "code" : "c25f5ce57a190"
      },
      {
        "code" : "cacdc83c7ceaa"
      },
      {
        "code" : "ca65e2f92bc87"
      },
      {
        "code" : "c1f62d5ab53f4"
      },
      {
        "code" : "c573b5aebc3ab"
      },
      {
        "code" : "c07b8cf7319e0"
      },
      {
        "code" : "cf3ae7f0612a5"
      },
      {
        "code" : "c7b12280a50f7"
      },
      {
        "code" : "c74589863d05e"
      },
      {
        "code" : "ce34fedc379d6"
      },
      {
        "code" : "c8bedffecdec4"
      },
      {
        "code" : "c5c5c4d0317d5"
      },
      {
        "code" : "c1af45c99b952"
      },
      {
        "code" : "c640f388bb065"
      }]
    }]
  }
}

```
