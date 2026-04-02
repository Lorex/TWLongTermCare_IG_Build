# 長照 SDK－異常紀錄－通報方式 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－異常紀錄－通報方式**

## ValueSet: 長照 SDK－異常紀錄－通報方式 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-incident-notifmethod | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:VS_TW_LTC_Incident_NotificationMethod |

 
此 ValueSet 用於表示長照 SDK 異常紀錄的通報方式。 

 **References** 

* [長期照顧－異常事件通報方式](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.md)

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
  "id" : "vs-tw-ltc-incident-notifmethod",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-incident-notifmethod",
  "version" : "1.0.0",
  "name" : "VS_TW_LTC_Incident_NotificationMethod",
  "title" : "長照 SDK－異常紀錄－通報方式",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 ValueSet 用於表示長照 SDK 異常紀錄的通報方式。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod"
    }]
  }
}

```
