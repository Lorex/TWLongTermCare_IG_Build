# 一組生命徵象檢驗檢查範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **一組生命徵象檢驗檢查範例**

## Example Observation: 一組生命徵象檢驗檢查範例

Profile: [長期照顧－一組生命徵象檢驗檢查](StructureDefinition-LTCObservationVitalSignsPanel.md)

**status**: Final

**category**: Vital Signs

**code**: 一組生命徵象檢驗檢查

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:00:00+0800

**performer**: [Practitioner 王醫師](Practitioner-ltc-practitioner-physician-aa12-example.md)

**note**: @2024-01-15 08:00:00+0800

> 

生命徵象檢查完成，各項指標均在正常範圍內


**hasMember**: [Observation Blood pressure panel with all children optional](Observation-ltc-observation-blood-pressure-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ltc-observation-vital-signs-panel-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSignsPanel"]
  },
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
      "code" : "85353-1",
      "display" : "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
    }],
    "text" : "一組生命徵象檢驗檢查"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-physician-aa12-example"
  }],
  "note" : [{
    "time" : "2024-01-15T08:00:00+08:00",
    "text" : "生命徵象檢查完成，各項指標均在正常範圍內"
  }],
  "hasMember" : [{
    "reference" : "Observation/ltc-observation-blood-pressure-example"
  }]
}

```
