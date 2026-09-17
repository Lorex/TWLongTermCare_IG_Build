# 居家護理生命徵象與血糖集合範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理生命徵象與血糖集合範例**

## Example Bundle: 居家護理生命徵象與血糖集合範例



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "hn-vital-bundle-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignsBundle"]
  },
  "type" : "collection",
  "entry" : [{
    "fullUrl" : "https://example.org/fhir/Observation/hn-vital-signs-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-vital-signs-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-vital-signs-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-vital-signs-example</b></p><a name=\"hn-vital-signs-example\"> </a><a name=\"hchn-vital-signs-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HNVitalSigns.html\">居家護理－生命徵象</a></p></div><p><b>居家護理－收案關聯</b>: <a href=\"EpisodeOfCare-hn-episode-example.html\">EpisodeOfCare: extension = -&gt;Response to Questionnaire '-&gt;居家護理－個案基本資料' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --&gt; (ongoing)</a></p><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85353-1}\">Vital signs, weight, height, head circumference, oxygen saturation and BMI panel</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-hn-temperature-example.html\">Observation Body temperature</a></li><li><a href=\"Observation-hn-pulse-example.html\">Observation Heart rate</a></li><li><a href=\"Observation-hn-respiration-example.html\">Observation Respiratory rate</a></li><li><a href=\"Observation-hn-bloodpressure-example.html\">Observation Blood pressure panel with all children optional</a></li><li><a href=\"Observation-hn-oxygen-example.html\">Observation Oxygen saturation in Arterial blood</a></li></ul></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
        "valueReference" : {
          "reference" : "EpisodeOfCare/hn-episode-example"
        }
      },
      {
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85353-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "hasMember" : [{
        "reference" : "Observation/hn-temperature-example"
      },
      {
        "reference" : "Observation/hn-pulse-example"
      },
      {
        "reference" : "Observation/hn-respiration-example"
      },
      {
        "reference" : "Observation/hn-bloodpressure-example"
      },
      {
        "reference" : "Observation/hn-oxygen-example"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-glucose-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-glucose-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGlucose"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-glucose-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-glucose-example</b></p><a name=\"hn-glucose-example\"> </a><a name=\"hchn-glucose-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationGlucose.html\">基礎生理量測－血糖</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2339-0}\">Glucose [Mass/volume] in blood</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>value</b>: 120 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2339-0",
          "display" : "Glucose [Mass/volume] in blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "valueQuantity" : {
        "value" : 120,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-temperature-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-temperature-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-temperature-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-temperature-example</b></p><a name=\"hn-temperature-example\"> </a><a name=\"hchn-temperature-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationBodyTemperature.html\">基礎生理量測－體溫</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8310-5}\">Body temperature</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>value</b>: 36.5 Cel<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeCel = 'Cel')</span></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8310-5",
          "display" : "Body temperature"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "valueQuantity" : {
        "value" : 36.5,
        "unit" : "Cel",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-pulse-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-pulse-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-pulse-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-pulse-example</b></p><a name=\"hn-pulse-example\"> </a><a name=\"hchn-pulse-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationHeartRate.html\">基礎生理量測－心率</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8867-4}\">Heart rate</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>value</b>: 77 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8867-4",
          "display" : "Heart rate"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "valueQuantity" : {
        "value" : 77,
        "unit" : "/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-respiration-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-respiration-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-respiration-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-respiration-example</b></p><a name=\"hn-respiration-example\"> </a><a name=\"hchn-respiration-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationRespiratoryRate.html\">基礎生理量測－呼吸速率</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 9279-1}\">Respiratory rate</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>value</b>: 16 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "9279-1",
          "display" : "Respiratory rate"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "valueQuantity" : {
        "value" : 16,
        "unit" : "/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-bloodpressure-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-bloodpressure-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-bloodpressure-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-bloodpressure-example</b></p><a name=\"hn-bloodpressure-example\"> </a><a name=\"hchn-bloodpressure-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationBloodPressure.html\">基礎生理量測－血壓</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8480-6}\">Systolic blood pressure</span></p><p><b>value</b>: 112 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8462-4}\">Diastolic blood pressure</span></p><p><b>value</b>: 73 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8480-6"
          }]
        },
        "valueQuantity" : {
          "value" : 112,
          "unit" : "mm[Hg]",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8462-4"
          }]
        },
        "valueQuantity" : {
          "value" : 73,
          "unit" : "mm[Hg]",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hn-oxygen-example",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hn-oxygen-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationPeripheralOxygenSaturation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hn-oxygen-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hn-oxygen-example</b></p><a name=\"hn-oxygen-example\"> </a><a name=\"hchn-oxygen-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationPeripheralOxygenSaturation.html\">基礎生理量測－脈搏血氧飽和度</a></p></div><p><b>居家護理－來源表單</b>: <a href=\"QuestionnaireResponse-hn-vitalsign-example.html\">Response to Questionnaire '-&gt;居家護理－生命徵象' about '-&gt;陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2708-6}\">Oxygen saturation in Arterial blood</span></p><p><b>subject</b>: <a href=\"Patient-hn-patient-example.html\">陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)</a></p><p><b>effective</b>: 2025-12-08 09:00:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hn-nurse-example.html\">Practitioner 王美玲</a></p><p><b>value</b>: 98 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
        "valueReference" : {
          "reference" : "QuestionnaireResponse/hn-vitalsign-example"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2708-6",
          "display" : "Oxygen saturation in Arterial blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/hn-patient-example"
      },
      "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hn-nurse-example"
      }],
      "valueQuantity" : {
        "value" : 98,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  }]
}

```
