# 居家護理－生命徵象交換集合 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－生命徵象交換集合**

## Resource Profile: 居家護理－生命徵象交換集合 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignsBundle | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNVitalSignsBundle |

 
彙集同一次量測的生命徵象與血糖。量測組的 hasMember 限生命徵象 Profile，故以 Bundle 串聯既有血糖 Profile。 

**Usages:**

* Examples for this Profile: [Bundle/hn-vital-bundle-example](Bundle-hn-vital-bundle-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNVitalSignsBundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNVitalSignsBundle.csv), [Excel](StructureDefinition-HNVitalSignsBundle.xlsx), [Schematron](StructureDefinition-HNVitalSignsBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNVitalSignsBundle",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignsBundle",
  "version" : "1.1.0",
  "name" : "HNVitalSignsBundle",
  "title" : "居家護理－生命徵象交換集合",
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
  "description" : "彙集同一次量測的生命徵象與血糖。量測組的 hasMember 限生命徵象 Profile，故以 Bundle 串聯既有血糖 Profile。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "collection"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 5,
      "max" : "7",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:vitals",
      "path" : "Bundle.entry",
      "sliceName" : "vitals",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:vitals.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns"]
      }]
    },
    {
      "id" : "Bundle.entry:glucose",
      "path" : "Bundle.entry",
      "sliceName" : "glucose",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:glucose.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGlucose"]
      }]
    },
    {
      "id" : "Bundle.entry:temperature",
      "path" : "Bundle.entry",
      "sliceName" : "temperature",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:temperature.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"]
      }]
    },
    {
      "id" : "Bundle.entry:pulse",
      "path" : "Bundle.entry",
      "sliceName" : "pulse",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:pulse.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"]
      }]
    },
    {
      "id" : "Bundle.entry:respiration",
      "path" : "Bundle.entry",
      "sliceName" : "respiration",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:respiration.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"]
      }]
    },
    {
      "id" : "Bundle.entry:bloodPressure",
      "path" : "Bundle.entry",
      "sliceName" : "bloodPressure",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:bloodPressure.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"]
      }]
    },
    {
      "id" : "Bundle.entry:oxygen",
      "path" : "Bundle.entry",
      "sliceName" : "oxygen",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:oxygen.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Observation",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationPeripheralOxygenSaturation"]
      }]
    }]
  }
}

```
