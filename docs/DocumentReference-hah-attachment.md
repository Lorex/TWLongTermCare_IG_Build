# 在宅急症同意文件附件範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症同意文件附件範例**

## Example DocumentReference: 在宅急症同意文件附件範例

Profile: [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.md)

**status**: Current

**type**: 在宅照護同意文件

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**date**: 2026-09-01 08:30:00+0800

**author**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Data** | **Title** |
| * | text/plain | `RXhhbXBsZSBvbmx5` | 合成同意文件 |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --> 2026-09-05 12:00:00+0800](Encounter-hah-admission.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "hah-attachment",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"]
  },
  "status" : "current",
  "type" : {
    "text" : "在宅照護同意文件"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "date" : "2026-09-01T08:30:00+08:00",
  "author" : [{
    "reference" : "Practitioner/hah-practitioner"
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "text/plain",
      "data" : "RXhhbXBsZSBvbmx5",
      "title" : "合成同意文件"
    }
  }],
  "context" : {
    "encounter" : [{
      "reference" : "Encounter/hah-admission"
    }]
  }
}

```
