# CMS評估個案範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CMS評估個案範例**

## Example Patient: CMS評估個案範例

Profile: [照顧管理評估量表－個案基本資料](StructureDefinition-LTCPatientCMS.md)

陳明華(official) Female, DoB: 1945-08-15 ( National Person Identifier (TWN): A123456789 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Marital Status: | Married |
| Other Id: | Provider number/LTC-12345 (use: official, ) | | |
| Contact Detail | * ph: 02-12345678(Home)
* 台北市信義區信義路五段7號(home)
 | | |
| Emergency Contact: | * 陳建國(Official)
* ph: 0912-345-678(Mobile)
 | | |
| [個案身分別](StructureDefinition-ExtPatientIdentity-TWLTC.md) | 一般戶 | | |
| [長照機構住民教育程度](StructureDefinition-ExtPatientEducationStatus-TWLTC.md) | 國小 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ltc-patient-cms-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC",
        "code" : "elementary",
        "display" : "國小"
      }]
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC",
        "code" : "1",
        "display" : "一般戶"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider number"
      }]
    },
    "system" : "http://ltc-hospital.tw",
    "value" : "LTC-12345"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NNxxx",
        "display" : "National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code"
      }],
      "text" : "National Person Identifier (TWN)"
    },
    "system" : "http://www.moi.gov.tw",
    "value" : "A123456789"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "陳明華",
    "family" : "陳",
    "given" : ["明華"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-12345678",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1945-08-15",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "text" : "台北市信義區信義路五段7號",
    "line" : ["信義路五段7號"],
    "city" : "台北市",
    "district" : "信義區",
    "postalCode" : "110",
    "country" : "TW"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "C",
        "display" : "Emergency Contact"
      }]
    }],
    "name" : {
      "use" : "official",
      "text" : "陳建國",
      "family" : "陳",
      "given" : ["建國"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "0912-345-678",
      "use" : "mobile"
    }]
  }]
}

```
