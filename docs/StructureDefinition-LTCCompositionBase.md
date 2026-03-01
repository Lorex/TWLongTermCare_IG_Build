# 長期照顧－文件組成基礎 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－文件組成基礎**

## Resource Profile: 長期照顧－文件組成基礎 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCCompositionBase |

 
此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。 

**Usages:**

* Derived from this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md), [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md) and [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCompositionBase)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCompositionBase.csv), [Excel](StructureDefinition-LTCCompositionBase.xlsx), [Schematron](StructureDefinition-LTCCompositionBase.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCompositionBase",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase",
  "version" : "1.0.0",
  "name" : "LTCCompositionBase",
  "title" : "長期照顧－文件組成基礎",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Composition-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "min" : 1
    }]
  }
}

```
