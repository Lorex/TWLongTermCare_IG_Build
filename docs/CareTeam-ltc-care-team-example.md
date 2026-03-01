# 長期照顧團隊範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧團隊範例**

## Example CareTeam: 長期照顧團隊範例

Profile: [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md)

**status**: Active

**name**: 陳明慧照顧團隊

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**period**: 2024-01-01 --> (ongoing)

> **participant****role**: Registered nurse**member**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)**period**: 2024-01-01 --> (ongoing)

> **participant****role**: Caregiver**member**: [RelatedPerson 陳志強](RelatedPerson-ltc-related-person-primary-caregiver-example.md)**period**: 2024-01-01 --> (ongoing)

**managingOrganization**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "ltc-care-team-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
  },
  "status" : "active",
  "name" : "陳明慧照顧團隊",
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "period" : {
    "start" : "2024-01-01"
  },
  "participant" : [{
    "role" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "224535009",
        "display" : "Registered nurse"
      }]
    }],
    "member" : {
      "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
    },
    "period" : {
      "start" : "2024-01-01"
    }
  },
  {
    "role" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "133932002",
        "display" : "Caregiver"
      }]
    }],
    "member" : {
      "reference" : "RelatedPerson/ltc-related-person-primary-caregiver-example"
    },
    "period" : {
      "start" : "2024-01-01"
    }
  }],
  "managingOrganization" : [{
    "reference" : "Organization/ltc-organization-example"
  }]
}

```
