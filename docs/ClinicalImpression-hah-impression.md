# 在宅急症臨床評估範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症臨床評估範例**

## Example ClinicalImpression: 在宅急症臨床評估範例

Profile: [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.md)

**status**: Completed

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**effective**: 2026-09-01 09:30:00+0800

**date**: 2026-09-01 09:35:00+0800

**assessor**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**problem**: [Condition ](Condition-hah-condition.md)

**summary**: 已完成本次病情與居家照護需求評估，後續依照護計畫追蹤。

**supportingInfo**: 

* [Observation Body temperature](Observation-hah-temperature.md)
* [Diagnostic Report for '' for '->王測試 Male, DoB: 1945-03-15 ( Provider number)'](DiagnosticReport-hah-report.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "hah-impression",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression"]
  },
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "effectiveDateTime" : "2026-09-01T09:30:00+08:00",
  "date" : "2026-09-01T09:35:00+08:00",
  "assessor" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "problem" : [{
    "reference" : "Condition/hah-condition"
  }],
  "summary" : "已完成本次病情與居家照護需求評估，後續依照護計畫追蹤。",
  "supportingInfo" : [{
    "reference" : "Observation/hah-temperature"
  },
  {
    "reference" : "DiagnosticReport/hah-report"
  }]
}

```
