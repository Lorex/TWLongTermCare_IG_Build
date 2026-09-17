# 在宅急症檢驗報告範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症檢驗報告範例**

## Example DiagnosticReport: 在宅急症檢驗報告範例

Profile: [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.md)

## 血糖檢驗報告 

| | |
| :--- | :--- |
| Subject | 王測試 Male, DoB: 1945-03-15 ( Provider number) |
| Relevant Time | 2026-09-01 09:10:00+0800 |
| Reported | 2026-09-01 09:20:00+0800 |
| Performer | [Organization 在宅急症示範醫療機構](Organization-hah-organization.md) |

**Report Details**

* **Code**: [Glucose [Mass/volume] in Blood](Observation-hah-glucose.md)
  * **Value**: 110 mg/dL (Details: UCUM codemg/dL = 'mg/dL')
  * **Flags**: Final



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "hah-report",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDiagnosticReport"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/hah-lab-request"
  }],
  "status" : "final",
  "code" : {
    "text" : "血糖檢驗報告"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "effectiveDateTime" : "2026-09-01T09:10:00+08:00",
  "issued" : "2026-09-01T09:20:00+08:00",
  "performer" : [{
    "reference" : "Organization/hah-organization"
  }],
  "specimen" : [{
    "reference" : "Specimen/hah-specimen"
  }],
  "result" : [{
    "reference" : "Observation/hah-glucose"
  }]
}

```
