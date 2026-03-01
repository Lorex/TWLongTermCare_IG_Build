# 轉介個案範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介個案範例**

## Example Patient: 轉介個案範例

Profile: [轉介單－個案基本資料](StructureDefinition-LTCPatientReferral.md)

李秀芳(official) Female, DoB: 1950-03-22 ( National Person Identifier (TWN): B987654321 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Marital Status: | Widowed |
| Other Id: | Provider number/REF-98765 (use: official, ) | | |
| Contact Detail | * ph: 07-98765432(Home)
* 高雄市前鎮區成功二路25號(home)
 | | |
| Next-of-Kin: | * 李志明(Official)
* ph: 0923-456-789(Mobile)
 | | |
| [長照機構住民經濟狀況](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md) | 勉持 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ltc-patient-referral-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC",
        "code" : "barely-maintain",
        "display" : "勉持"
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
    "system" : "http://ltc-referral-center.tw",
    "value" : "REF-98765"
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
    "value" : "B987654321"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "李秀芳",
    "family" : "李",
    "given" : ["秀芳"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "07-98765432",
    "use" : "home"
  }],
  "gender" : "female",
  "birthDate" : "1950-03-22",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "text" : "高雄市前鎮區成功二路25號",
    "line" : ["成功二路25號"],
    "city" : "高雄市",
    "district" : "前鎮區",
    "postalCode" : "806",
    "country" : "TW"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "W",
      "display" : "Widowed"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "N",
        "display" : "Next-of-Kin"
      }]
    }],
    "name" : {
      "use" : "official",
      "text" : "李志明",
      "family" : "李",
      "given" : ["志明"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "0923-456-789",
      "use" : "mobile"
    }]
  }]
}

```
