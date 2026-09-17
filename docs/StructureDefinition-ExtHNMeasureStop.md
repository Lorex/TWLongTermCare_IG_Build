# 居家護理－措施停止資訊 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－措施停止資訊**

## Extension: 居家護理－措施停止資訊 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMeasureStop | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtHNMeasureStop |

措施停止時填入停止日期、原因與護理人員。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [居家護理－照護計畫](StructureDefinition-HNCarePlan.md)
* Examples for this Extension: [Bundle/hn-careplan-transaction-example](Bundle-hn-careplan-transaction-example.md) and [CarePlan/hn-careplan-example](CarePlan-hn-careplan-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHNMeasureStop.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHNMeasureStop.csv), [Excel](StructureDefinition-ExtHNMeasureStop.xlsx), [Schematron](StructureDefinition-ExtHNMeasureStop.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHNMeasureStop",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMeasureStop",
  "version" : "1.1.0",
  "name" : "ExtHNMeasureStop",
  "title" : "居家護理－措施停止資訊",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "措施停止時填入停止日期、原因與護理人員。",
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
    "expression" : "CarePlan.activity"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "居家護理－措施停止資訊",
      "definition" : "措施停止時填入停止日期、原因與護理人員。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 3
    },
    {
      "id" : "Extension.extension:date",
      "path" : "Extension.extension",
      "sliceName" : "date",
      "short" : "停止日期",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:date.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:date.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "date"
    },
    {
      "id" : "Extension.extension:date.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "short" : "停止原因",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:nurse",
      "path" : "Extension.extension",
      "sliceName" : "nurse",
      "short" : "停止護理人員。[應填入對應的 Practitioner]",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:nurse.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:nurse.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "nurse"
    },
    {
      "id" : "Extension.extension:nurse.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMeasureStop"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
