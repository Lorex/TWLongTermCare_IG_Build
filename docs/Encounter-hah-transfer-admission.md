# 在宅急症轉院整段照護範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症轉院整段照護範例**

## Example Encounter: 在宅急症轉院整段照護範例

Profile: [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.md)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: 在宅急症照護

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**episodeOfCare**: [EpisodeOfCare: extension = 轉急診或住院; identifier = https://example.org/hah/episodes#HAH-20260910-002; status = finished; type = 在宅急症照護; period = 2026-09-10 08:00:00+0800 --> 2026-09-11 10:00:00+0800](EpisodeOfCare-hah-transfer-episode.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) |

**period**: 2026-09-10 08:00:00+0800 --> 2026-09-11 10:00:00+0800

### Hospitalizations

| | | |
| :--- | :--- | :--- |
| - | **Destination** | **DischargeDisposition** |
| * | [Organization 轉院接收示範醫院](Organization-hah-receiving-hospital.md) | Other healthcare facility |

**serviceProvider**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "hah-transfer-admission",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "acute-home"
    }]
  }],
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "episodeOfCare" : [{
    "reference" : "EpisodeOfCare/hah-transfer-episode"
  }],
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/hah-practitioner"
    }
  }],
  "period" : {
    "start" : "2026-09-10T08:00:00+08:00",
    "end" : "2026-09-11T10:00:00+08:00"
  },
  "hospitalization" : {
    "destination" : {
      "reference" : "Organization/hah-receiving-hospital"
    },
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition",
        "code" : "other-hcf"
      }]
    }
  },
  "serviceProvider" : {
    "reference" : "Organization/hah-organization"
  }
}

```
