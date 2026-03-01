# 長期照顧－異常事件通報方式 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－異常事件通報方式**

## Extension: 長期照顧－異常事件通報方式 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:ExtTWLTCAdverseEventNotifMethod |

記錄異常事件的通報方式（如電話、機構通報、LINE 等）

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md)
* Examples for this Extension: [AdverseEvent/ltc-adverse-event-incident-example](AdverseEvent-ltc-adverse-event-incident-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.csv), [Excel](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-AdverseEvent-NotifMethod",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod",
  "version" : "1.0.0",
  "name" : "ExtTWLTCAdverseEventNotifMethod",
  "title" : "長期照顧－異常事件通報方式",
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
  "description" : "記錄異常事件的通報方式（如電話、機構通報、LINE 等）",
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
      "short" : "長期照顧－異常事件通報方式",
      "definition" : "記錄異常事件的通報方式（如電話、機構通報、LINE 等）"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-incident-notifmethod"
      }
    }]
  }
}

```
