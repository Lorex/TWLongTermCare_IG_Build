# 長期照顧－異常事件文字描述 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－異常事件文字描述**

## Extension: 長期照顧－異常事件文字描述 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:ExtTWLTCAdverseEventDescription |

記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)
* Examples for this Extension: [AdverseEvent/ltc-adverse-event-incident-example](AdverseEvent-ltc-adverse-event-incident-example.md) and [AdverseEvent/ltc-adverseevent-cs100-example](AdverseEvent-ltc-adverseevent-cs100-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.csv), [Excel](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-AdverseEvent-Description",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description",
  "version" : "1.0.0",
  "name" : "ExtTWLTCAdverseEventDescription",
  "title" : "長期照顧－異常事件文字描述",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "AdverseEvent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長期照顧－異常事件文字描述",
      "definition" : "記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:textType",
      "path" : "Extension.extension",
      "sliceName" : "textType",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:textType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:textType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "textType"
    },
    {
      "id" : "Extension.extension:textType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-incident-texttype"
      }
    },
    {
      "id" : "Extension.extension:text",
      "path" : "Extension.extension",
      "sliceName" : "text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:text.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:text.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "text"
    },
    {
      "id" : "Extension.extension:text.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
