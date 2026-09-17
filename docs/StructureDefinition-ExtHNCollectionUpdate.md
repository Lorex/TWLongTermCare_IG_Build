# 居家護理－共照團隊更新指示 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－共照團隊更新指示**

## Extension: 居家護理－共照團隊更新指示 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtHNCollectionUpdate |

記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [居家護理－介接作業](StructureDefinition-HNAPITask.md)
* Examples for this Extension: [Task/hn-upload-task-example](Task-hn-upload-task-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHNCollectionUpdate.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHNCollectionUpdate.csv), [Excel](StructureDefinition-ExtHNCollectionUpdate.xlsx), [Schematron](StructureDefinition-ExtHNCollectionUpdate.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHNCollectionUpdate",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate",
  "version" : "1.1.0",
  "name" : "ExtHNCollectionUpdate",
  "title" : "居家護理－共照團隊更新指示",
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
  "description" : "記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。",
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
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "居家護理－共照團隊更新指示",
      "definition" : "記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:collection",
      "path" : "Extension.extension",
      "sliceName" : "collection",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:collection.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:collection.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "collection"
    },
    {
      "id" : "Extension.extension:collection.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-collection"
      }
    },
    {
      "id" : "Extension.extension:action",
      "path" : "Extension.extension",
      "sliceName" : "action",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:action.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:action.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "action"
    },
    {
      "id" : "Extension.extension:action.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-update-action"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNCollectionUpdate"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
