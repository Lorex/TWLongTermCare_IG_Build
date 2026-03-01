# 臺灣 2023 年中文版 ICD-10-PCS-F 值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臺灣 2023 年中文版 ICD-10-PCS-F 值集**

## ValueSet: 臺灣 2023 年中文版 ICD-10-PCS-F 值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/ICD-10-PCS-2023-TW-F-VS | *Version*:1.0.0 |
| Active as of 2024-06-04 | *Computable Name*:ICD10PCS2023TWFVS |

 
臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 **References** 

* [運動處方－服務請求](StructureDefinition-PASportServiceRequest.md)

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
  "id" : "ICD-10-PCS-2023-TW-F-VS",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/ICD-10-PCS-2023-TW-F-VS",
  "version" : "1.0.0",
  "name" : "ICD10PCS2023TWFVS",
  "title" : "臺灣 2023 年中文版 ICD-10-PCS-F 值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-04",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS"
    }]
  }
}

```
