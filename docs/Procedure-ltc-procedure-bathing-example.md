# 沐浴協助範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **沐浴協助範例**

## Example Procedure: 沐浴協助範例

Profile: [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md)

**status**: Completed

**code**: 沐浴/擦澡

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**performed**: 2024-01-15 14:30:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md) |

**note**: @2024-01-15 14:30:00+0800

> 

住民配合度良好，無特殊狀況




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ltc-procedure-bathing-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCProcedureCareActivity"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
      "code" : "BA07",
      "display" : "協助沐浴及洗頭"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "60369001",
      "display" : "Bathing patient"
    }],
    "text" : "沐浴/擦澡"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "performedDateTime" : "2024-01-15T14:30:00+08:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
    }
  }],
  "note" : [{
    "time" : "2024-01-15T14:30:00+08:00",
    "text" : "住民配合度良好，無特殊狀況"
  }]
}

```
