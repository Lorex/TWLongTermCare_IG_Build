# 居家護理－生命徵象 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－生命徵象**

## Resource Profile: 居家護理－生命徵象 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNVitalSigns |

 
沿用 FHIR R4 生命徵象量測組，以 hasMember 連結既有體溫、心率、呼吸、血壓與血氧 Profile；血糖以既有血糖 Profile 與共同來源表單串聯。 

**Usages:**

* Use this Profile: [居家護理－生命徵象交換集合](StructureDefinition-HNVitalSignsBundle.md)
* Examples for this Profile: [Observation/hn-vital-signs-example](Observation-hn-vital-signs-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNVitalSigns.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNVitalSigns.csv), [Excel](StructureDefinition-HNVitalSigns.xlsx), [Schematron](StructureDefinition-HNVitalSigns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNVitalSigns",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns",
  "version" : "1.1.0",
  "name" : "HNVitalSigns",
  "title" : "居家護理－生命徵象",
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
  "description" : "沿用 FHIR R4 生命徵象量測組，以 hasMember 連結既有體溫、心率、呼吸、血壓與血氧 Profile；血糖以既有血糖 Profile 與共同來源表單串聯。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalspanel",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.extension:episode",
      "path" : "Observation.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:sourceForm",
      "path" : "Observation.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85353-1"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "closed"
      },
      "min" : 4,
      "max" : "5"
    },
    {
      "id" : "Observation.hasMember:temperature",
      "path" : "Observation.hasMember",
      "sliceName" : "temperature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember:pulse",
      "path" : "Observation.hasMember",
      "sliceName" : "pulse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember:respiration",
      "path" : "Observation.hasMember",
      "sliceName" : "respiration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember:bloodPressure",
      "path" : "Observation.hasMember",
      "sliceName" : "bloodPressure",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember:oxygen",
      "path" : "Observation.hasMember",
      "sliceName" : "oxygen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationPeripheralOxygenSaturation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "max" : "0"
    }]
  }
}

```
