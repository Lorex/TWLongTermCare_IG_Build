# 在宅急症照會回覆範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症照會回覆範例**

## Example Communication: 在宅急症照會回覆範例

Profile: [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md)

**basedOn**: [ServiceRequest 專科照會](ServiceRequest-hah-consult-request.md)

**status**: Completed

**category**: 專科照會

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**sent**: 2026-09-01 10:00:00+0800

**recipient**: [CareTeam: status = inactive](CareTeam-hah-team.md)

**sender**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | 已回覆本次照會，請依照護計畫持續追蹤。 |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "hah-communication",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCommunication"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/hah-consult-request"
  }],
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "consultation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "sent" : "2026-09-01T10:00:00+08:00",
  "recipient" : [{
    "reference" : "CareTeam/hah-team"
  }],
  "sender" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "payload" : [{
    "contentString" : "已回覆本次照會，請依照護計畫持續追蹤。"
  }]
}

```
