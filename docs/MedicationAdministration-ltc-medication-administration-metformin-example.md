# 糖尿病藥物給藥範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **糖尿病藥物給藥範例**

## Example MedicationAdministration: 糖尿病藥物給藥範例

Profile: [長期照顧－用藥資料](StructureDefinition-LTCMedicationAdministration.md)

**status**: Completed

**medication**: Product containing benethamine penicillin (medicinal product)

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:00:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md) |

**note**: @2024-01-15 08:00:00+0800

> 

住民按時服藥，無不良反應


### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Dose** |
| * | 口服 | 500 mg (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "ltc-medication-administration-metformin-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCMedicationAdministration"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "323402006",
      "display" : "Product containing benethamine penicillin (medicinal product)"
    }],
    "text" : "Product containing benethamine penicillin (medicinal product)"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00+08:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
    }
  }],
  "note" : [{
    "time" : "2024-01-15T08:00:00+08:00",
    "text" : "住民按時服藥，無不良反應"
  }],
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "26643006",
        "display" : "Oral route"
      }],
      "text" : "口服"
    },
    "dose" : {
      "value" : 500,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
