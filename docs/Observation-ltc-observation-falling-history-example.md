# 跌倒紀錄範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **跌倒紀錄範例**

## Example Observation: 跌倒紀錄範例

Profile: [安全防護－跌倒紀錄](StructureDefinition-LTCObservationFallingHistory.md)

**status**: Final

**category**: Survey

**code**: History of Falls

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-10 14:30:00+0800

**performer**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**value**: 發生跌倒

**note**: @2024-01-10 14:30:00+0800

> 

住民在浴室滑倒，當時地面濕滑，已加強防滑措施並提醒住民注意安全


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Severity | Mild |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ltc-observation-falling-history-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationFallingHistory"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101440-6",
      "display" : "History of Falls"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-10T14:30:00+08:00",
  "performer" : [{
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA33635-6",
      "display" : "Observed"
    }],
    "text" : "發生跌倒"
  },
  "note" : [{
    "time" : "2024-01-10T14:30:00+08:00",
    "text" : "住民在浴室滑倒，當時地面濕滑，已加強防滑措施並提醒住民注意安全"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "246112005",
        "display" : "Severity"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "255604002",
        "display" : "Mild"
      }]
    }
  }]
}

```
