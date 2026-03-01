# 長照 SDK－個案（Patient）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－個案（Patient）範例**

## Example Patient: 長照 SDK－個案（Patient）範例

Profile: [長期照顧－住民基本資料](StructureDefinition-LTCPatient.md)

王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))

-------

| | |
| :--- | :--- |
| Contact Detail | * ph: 0912345678
* 台北市中山區中山北路100號(home)
 |
| Next-of-Kin: | * 王大明
* ph: 0987654321
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ltc-patient-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://example.org/mrn",
    "value" : "A0001"
  }],
  "name" : [{
    "use" : "usual",
    "text" : "王小明"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0912345678"
  }],
  "gender" : "male",
  "birthDate" : "1950-01-01",
  "address" : [{
    "use" : "home",
    "text" : "台北市中山區中山北路100號"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N",
        "display" : "Next-of-Kin"
      }]
    }],
    "name" : {
      "text" : "王大明"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "0987654321"
    }]
  }]
}

```
