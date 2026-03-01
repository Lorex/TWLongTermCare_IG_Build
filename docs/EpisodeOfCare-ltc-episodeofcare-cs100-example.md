# 長照 CS100－長照案件（EpisodeOfCare）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－長照案件（EpisodeOfCare）範例**

## Example EpisodeOfCare: 長照 CS100－長照案件（EpisodeOfCare）範例

Profile: [長照案件（CS100 專用版）](StructureDefinition-LTC-EpisodeOfCare-CS100.md)

**identifier**: `https://ltc-ig.fhir.tw/identifier/cs100/case-id`/CASE-00001

**status**: Active

**patient**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**managingOrganization**: [Organization 某某長照管理中心](Organization-ltc-organization-cs100-example.md)

**period**: 2025-10-01 --> (ongoing)

**careManager**: [Practitioner 張個管](Practitioner-ltc-practitioner-cs100-example.md)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "ltc-episodeofcare-cs100-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100"]
  },
  "identifier" : [{
    "system" : "https://ltc-ig.fhir.tw/identifier/cs100/case-id",
    "value" : "CASE-00001"
  }],
  "status" : "active",
  "patient" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "managingOrganization" : {
    "reference" : "Organization/ltc-organization-cs100-example"
  },
  "period" : {
    "start" : "2025-10-01"
  },
  "careManager" : {
    "reference" : "Practitioner/ltc-practitioner-cs100-example"
  }
}

```
