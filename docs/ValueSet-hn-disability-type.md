# 居家護理－身障類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－身障類別**

## ValueSet: 居家護理－身障類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-disability-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNDisabilityTypeVS |
| *Other Identifiers:*OID:2.25.57490884695334546608865020451243411787 | |

 
重用長照新制身心障礙類型代碼，限居護 V5.0.16 的第一至第八類。 

 **References** 

* [居家護理－個案基本資料邏輯模型](StructureDefinition-HNBaseDataModel.md)
* [居家護理－個案基本資料表單](StructureDefinition-HNBaseDataResponse.md)
* [居家護理－個案基本資料](Questionnaire-hn-basedata.md)

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
  "id" : "hn-disability-type",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-disability-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.57490884695334546608865020451243411787"
  }],
  "version" : "1.1.0",
  "name" : "HNDisabilityTypeVS",
  "title" : "居家護理－身障類別",
  "status" : "active",
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
  "description" : "重用長照新制身心障礙類型代碼，限居護 V5.0.16 的第一至第八類。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC",
      "concept" : [{
        "code" : "01"
      },
      {
        "code" : "02"
      },
      {
        "code" : "03"
      },
      {
        "code" : "04"
      },
      {
        "code" : "05"
      },
      {
        "code" : "06"
      },
      {
        "code" : "07"
      },
      {
        "code" : "08"
      }]
    }]
  }
}

```
