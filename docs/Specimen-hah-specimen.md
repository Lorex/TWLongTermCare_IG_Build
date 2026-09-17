# 在宅急症檢體範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症檢體範例**

## Example Specimen: 在宅急症檢體範例

Profile: [TW Core Specimen](https://twcore.mohw.gov.tw/ig/twcore/1.0.0/StructureDefinition-Specimen-twcore.html)

**identifier**: `https://example.org/specimens`/HAH-SPECIMEN-1

**type**: 血液

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) | 2026-09-01 09:10:00+0800 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "hah-specimen",
  "meta" : {
    "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore"]
  },
  "identifier" : [{
    "system" : "https://example.org/specimens",
    "value" : "HAH-SPECIMEN-1"
  }],
  "type" : {
    "text" : "血液"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/hah-practitioner"
    },
    "collectedDateTime" : "2026-09-01T09:10:00+08:00"
  }
}

```
