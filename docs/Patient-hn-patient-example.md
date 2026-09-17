# 居家護理個案範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理個案範例**

## Example Patient: 居家護理個案範例

Profile: [居家護理－個案](StructureDefinition-HNPatient.md)

陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)

-------

| | |
| :--- | :--- |
| Other Id: | Provider number/HN0001 |
| Contact Detail | * ph: 02-23456789
* 臺北市中正區測試路1號(home)
 |
| Next-of-Kin: | * 林淑芬
* ph: 02-23456789
 |
| Links: | * Managing Organization: [Organization 示範居家護理所](Organization-hn-organization-example.md)
 |
| [居家護理－來源表單](StructureDefinition-ExtHNSourceForm.md) | [Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-basedata-example.md) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "hn-patient-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-basedata-example"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NNxxx"
      }]
    },
    "system" : "http://www.moi.gov.tw",
    "value" : "A123456789"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://example.org/home-nursing/patients",
    "value" : "HN0001"
  }],
  "name" : [{
    "use" : "usual",
    "text" : "陳明慧"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-23456789"
  }],
  "gender" : "male",
  "birthDate" : "1945-03-15",
  "address" : [{
    "use" : "home",
    "text" : "臺北市中正區測試路1號",
    "line" : ["測試路1號"],
    "city" : "中正區",
    "state" : "臺北市"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N"
      }],
      "text" : "配偶"
    }],
    "name" : {
      "text" : "林淑芬"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "02-23456789"
    }]
  }],
  "managingOrganization" : {
    "reference" : "Organization/hn-organization-example"
  }
}

```
