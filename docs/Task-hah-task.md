# 在宅急症工作完成範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症工作完成範例**

## Example Task: 在宅急症工作完成範例

Profile: [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)

**status**: Completed

**intent**: order

**code**: 檢驗

**focus**: [ServiceRequest ](ServiceRequest-hah-lab-request.md)

**for**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**executionPeriod**: 2026-09-01 09:10:00+0800 --> 2026-09-01 09:20:00+0800

**authoredOn**: 2026-09-01 09:05:00+0800

**requester**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**owner**: [CareTeam: status = inactive](CareTeam-hah-team.md)

**location**: [Location 王測試居住地](Location-hah-location.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Period** |
| * | 2026-09-01 09:05:00+0800 --> 2026-09-01 10:00:00+0800 |

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 檢驗報告 | [Diagnostic Report for '' for '->王測試 Male, DoB: 1945-03-15 ( Provider number)'](DiagnosticReport-hah-report.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "hah-task",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"]
  },
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "laboratory"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/hah-lab-request"
  },
  "for" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "executionPeriod" : {
    "start" : "2026-09-01T09:10:00+08:00",
    "end" : "2026-09-01T09:20:00+08:00"
  },
  "authoredOn" : "2026-09-01T09:05:00+08:00",
  "requester" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "owner" : {
    "reference" : "CareTeam/hah-team"
  },
  "location" : {
    "reference" : "Location/hah-location"
  },
  "restriction" : {
    "period" : {
      "start" : "2026-09-01T09:05:00+08:00",
      "end" : "2026-09-01T10:00:00+08:00"
    }
  },
  "output" : [{
    "type" : {
      "text" : "檢驗報告"
    },
    "valueReference" : {
      "reference" : "DiagnosticReport/hah-report"
    }
  }]
}

```
