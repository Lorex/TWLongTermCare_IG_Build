# 照顧目標描述值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧目標描述值集**

## ValueSet: 照顧目標描述值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/GoalDescriptionVS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:GoalDescriptionVSTWLTC |

 
照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集列舉臺灣長期照顧情境常用之 SNOMED CT 照顧目標代碼，綁定強度為 extensible，實作者可依需求使用其他 SNOMED CT 或 LOINC 代碼。 

 **References** 

* [長期照顧－照顧目標](StructureDefinition-LTCGoal.md)

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
  "id" : "GoalDescriptionVS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/GoalDescriptionVS-TWLTC",
  "version" : "1.0.0",
  "name" : "GoalDescriptionVSTWLTC",
  "title" : "照顧目標描述值集",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-25",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集列舉臺灣長期照顧情境常用之 SNOMED CT 照顧目標代碼，綁定強度為 extensible，實作者可依需求使用其他 SNOMED CT 或 LOINC 代碼。",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "710950005",
        "display" : "Advancing mobility"
      },
      {
        "code" : "370885003",
        "display" : "Manage activities of daily living (ADLS)"
      },
      {
        "code" : "386373004",
        "display" : "Nutrition therapy"
      },
      {
        "code" : "718361005",
        "display" : "Weight management program"
      },
      {
        "code" : "278414003",
        "display" : "Pain management"
      },
      {
        "code" : "386296001",
        "display" : "Fall prevention"
      },
      {
        "code" : "702474001",
        "display" : "Cognitive rehabilitation therapy"
      },
      {
        "code" : "5154007",
        "display" : "Speech therapy"
      },
      {
        "code" : "385942004",
        "display" : "Wound care management"
      },
      {
        "code" : "710054004",
        "display" : "Maintaining skin integrity"
      },
      {
        "code" : "385991005",
        "display" : "Wellness promotion"
      },
      {
        "code" : "182832007",
        "display" : "Drug administration"
      },
      {
        "code" : "430193006",
        "display" : "Medication reconciliation"
      },
      {
        "code" : "133921002",
        "display" : "Emotional support"
      },
      {
        "code" : "129008009",
        "display" : "Bowel control"
      }]
    }]
  }
}

```
