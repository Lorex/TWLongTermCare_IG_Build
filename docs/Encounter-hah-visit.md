# 在宅急症實地訪視範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症實地訪視範例**

## Example Encounter: 在宅急症實地訪視範例

Profile: [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.md)

**在宅急症－訪視方式**: in-person

**status**: Finished

**class**: [ActCode: HH](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-HH) (home health)

**type**: 訪視

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**episodeOfCare**: [EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --> 2026-09-05 12:00:00+0800](EpisodeOfCare-hah-episode.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) |

**period**: 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800

### Locations

| | |
| :--- | :--- |
| - | **Location** |
| * | [Location 王測試居住地](Location-hah-location.md) |

**serviceProvider**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)

**partOf**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --> 2026-09-05 12:00:00+0800](Encounter-hah-admission.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "hah-visit",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode",
    "valueCode" : "in-person"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "HH"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "visit"
    }]
  }],
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "episodeOfCare" : [{
    "reference" : "EpisodeOfCare/hah-episode"
  }],
  "participant" : [{
    "individual" : {
      "reference" : "Practitioner/hah-practitioner"
    }
  }],
  "period" : {
    "start" : "2026-09-01T09:00:00+08:00",
    "end" : "2026-09-01T10:00:00+08:00"
  },
  "location" : [{
    "location" : {
      "reference" : "Location/hah-location"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/hah-organization"
  },
  "partOf" : {
    "reference" : "Encounter/hah-admission"
  }
}

```
