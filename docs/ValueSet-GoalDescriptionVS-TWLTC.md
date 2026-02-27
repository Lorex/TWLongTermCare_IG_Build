# 照顧目標描述值集 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧目標描述值集**

## ValueSet: 照顧目標描述值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/GoalDescriptionVS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-25 | *Computable Name*:GoalDescriptionVSTWLTC |

 
照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集比照 US Core Goal Profile 中的 description 元素定義，引用 SNOMED CT 與 LOINC 等術語系統。 

 **References** 

* [長期照顧－照顧目標](StructureDefinition-LTCGoal.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "version" : "0.4.1",
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
  "description" : "照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集比照 US Core Goal Profile 中的 description 元素定義，引用 SNOMED CT 與 LOINC 等術語系統。",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct"
    },
    {
      "system" : "http://loinc.org"
    }]
  }
}

```
