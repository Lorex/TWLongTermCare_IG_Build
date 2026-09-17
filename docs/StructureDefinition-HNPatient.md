# 居家護理－個案 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－個案**

## Resource Profile: 居家護理－個案 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNPatient | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNPatient |

 
沿用長照個案基本資料。機構另配發住民識別碼，來源表單記錄居護社會背景與共照名單。 

**Usages:**

* Refer to this Profile: [居家護理－照護計畫](StructureDefinition-HNCarePlan.md), [居家護理－共照紀錄](StructureDefinition-HNCommunication.md), [居家護理－收案歷程](StructureDefinition-HNEpisodeOfCare.md), [居家護理－照護目標](StructureDefinition-HNGoal.md)... Show 2 more, [居家護理－生命徵象](StructureDefinition-HNVitalSigns.md) and [居家護理－傷口紀錄](StructureDefinition-HNWound.md)
* Examples for this Profile: [Patient/hn-patient-example](Patient-hn-patient-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNPatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNPatient.csv), [Excel](StructureDefinition-HNPatient.xlsx), [Schematron](StructureDefinition-HNPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNPatient",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPatient",
  "version" : "1.1.0",
  "name" : "HNPatient",
  "title" : "居家護理－個案",
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
  "description" : "沿用長照個案基本資料。機構另配發住民識別碼，來源表單記錄居護社會背景與共照名單。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 1
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:sourceForm",
      "path" : "Patient.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 2
    },
    {
      "id" : "Patient.identifier:idCardNumber",
      "path" : "Patient.identifier",
      "sliceName" : "idCardNumber",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:member",
      "path" : "Patient.identifier",
      "sliceName" : "member",
      "short" : "機構配發的個案識別碼。[可依機構規則以身分證字號建立，system 應填機構的識別命名空間]"
    }]
  }
}

```
