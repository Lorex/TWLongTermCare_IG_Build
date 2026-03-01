# 長期照顧－一組生命徵象檢驗檢查 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－一組生命徵象檢驗檢查**

## Resource Profile: 長期照顧－一組生命徵象檢驗檢查 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSignsPanel | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCObservationVitalSignsPanel |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的一組生命徵象檢驗檢查資料。 

**Usages:**

* Refer to this Profile: [長期照顧－一組生命徵象檢驗檢查](StructureDefinition-LTCObservationVitalSignsPanel.md)
* Examples for this Profile: [Observation/ltc-observation-vital-signs-panel-example](Observation-ltc-observation-vital-signs-panel-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCObservationVitalSignsPanel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCObservationVitalSignsPanel.csv), [Excel](StructureDefinition-LTCObservationVitalSignsPanel.xlsx), [Schematron](StructureDefinition-LTCObservationVitalSignsPanel.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCObservationVitalSignsPanel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSignsPanel",
  "version" : "0.4.1",
  "name" : "LTCObservationVitalSignsPanel",
  "title" : "長期照顧－一組生命徵象檢驗檢查",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的一組生命徵象檢驗檢查資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "一組生命徵象檢驗檢查"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "patternCode" : "85353-1"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "min" : 1,
      "patternString" : "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "量測對象",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "Observation.subject.reference",
      "path" : "Observation.subject.reference",
      "short" : "量測對象。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "量測人員",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "Observation.performer.reference",
      "path" : "Observation.performer.reference",
      "short" : "量測人員。[應輸入 Practitioner / PractitionerRole Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "生命徵象檢驗檢查的附註",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "生命徵象檢驗檢查的組成項目",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSigns",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSignsPanel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember.reference",
      "path" : "Observation.hasMember.reference",
      "short" : "生命徵象檢驗檢查的組成項目。[應輸入對應的 Observation Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
