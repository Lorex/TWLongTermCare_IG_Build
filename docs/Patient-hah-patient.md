# 在宅急症個案範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症個案範例**

## Example Patient: 在宅急症個案範例

Profile: [在宅急症－個案](StructureDefinition-HAHPatient.md)

王測試 Male, DoB: 1945-03-15 ( Provider number)

-------

| | |
| :--- | :--- |
| Other Id: | National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code/A123456789 |
| Contact Detail | * ph: 02-00000000
* 臺北市中正區測試路1號(home)
 |
| Emergency Contact: | * 王家屬
* ph: 02-00000001
 |
| Links: | * Managing Organization: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hah-patient",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://example.org/hah/patients",
    "value" : "HAH0001"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NNxxx"
      }]
    },
    "system" : "http://www.moi.gov.tw",
    "value" : "A123456789"
  }],
  "name" : [{
    "use" : "usual",
    "text" : "王測試"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-00000000"
  }],
  "gender" : "male",
  "birthDate" : "1945-03-15",
  "address" : [{
    "use" : "home",
    "text" : "臺北市中正區測試路1號"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "C"
      }]
    }],
    "name" : {
      "text" : "王家屬"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "02-00000001"
    }]
  }],
  "managingOrganization" : {
    "reference" : "Organization/hah-organization"
  }
}

```
