# 臺灣長照服務項目 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臺灣長照服務項目**

## ValueSet: 臺灣長照服務項目 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:VS_TW_LTC_ServiceItem |

 
此 ValueSet 涵蓋臺灣長照 2.0 給付之所有服務項目代碼，適用於長照服務之申請、核定與使用紀錄，包含照顧組合、專業服務、交通接送、喘息服務等項目。 

 **References** 

* [長照 SDK－照管全量匯出（Claim）](StructureDefinition-LTC-Claim-Export.md)
* [長照 SDK－服務活動紀錄（SERVICE_A）](StructureDefinition-LTC-Communication-ServiceA.md)
* [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md)
* [長期照顧－服務請求](StructureDefinition-LTCServiceRequest.md)

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
  "id" : "vs-tw-ltc-service-item",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item",
  "version" : "1.0.0",
  "name" : "VS_TW_LTC_ServiceItem",
  "title" : "臺灣長照服務項目",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 ValueSet 涵蓋臺灣長照 2.0 給付之所有服務項目代碼，適用於長照服務之申請、核定與使用紀錄，包含照顧組合、專業服務、交通接送、喘息服務等項目。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item"
    }]
  }
}

```
