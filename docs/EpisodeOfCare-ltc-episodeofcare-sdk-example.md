# 長照 SDK－長照案件（EpisodeOfCare）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－長照案件（EpisodeOfCare）範例**

## Example EpisodeOfCare: 長照 SDK－長照案件（EpisodeOfCare）範例

Profile: [長照 SDK－長照案件](StructureDefinition-LTC-EpisodeOfCare-Payload.md)

**identifier**: `https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial`/123456789

**status**: Active

**patient**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**managingOrganization**: [Organization OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)

**period**: 2025-01-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "ltc-episodeofcare-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload"]
  },
  "identifier" : [{
    "system" : "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial",
    "value" : "123456789"
  }],
  "status" : "active",
  "patient" : {
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "managingOrganization" : {
    "reference" : "Organization/ltc-organization-sdk-example"
  },
  "period" : {
    "start" : "2025-01-01"
  }
}

```
