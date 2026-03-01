# 轉介單住民範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單住民範例**

## Example Patient: 轉介單住民範例

Profile: [轉介單－個案基本資料](StructureDefinition-LTCPatientReferral.md)

陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | Provider Number/R2024001 (use: official, ) |
| Alt. Name: | Chen Ming Hui(Official) |
| Contact Detail | * ph: 0912345678(Mobile)
* 新北市中和區安康路二段123號3樓301室(home)
* 台北市大安區和平東路二段76號2樓(billing)
 |
| Next-of-Kin: | * 陳志強
* ph: 0987654321(Mobile)
 |
| Links: | * Managing Organization: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)
 |
| [長照機構住民經濟狀況](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md) | 中產 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ltc-patient-referral-chen-ming-hui-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC",
        "code" : "middle-class",
        "display" : "中產"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider Number"
      }]
    },
    "system" : "http://www.ankang-ltc.tw",
    "value" : "R2024001"
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
    "text" : "Chen Ming Hui"
  },
  {
    "use" : "usual",
    "text" : "陳明慧"
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0912345678",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1945-03-15",
  "address" : [{
    "use" : "home",
    "text" : "新北市中和區安康路二段123號3樓301室",
    "line" : ["安康路二段123號3樓301室"],
    "city" : "中和區",
    "state" : "新北市",
    "postalCode" : "23511",
    "country" : "TW"
  },
  {
    "use" : "billing",
    "text" : "台北市大安區和平東路二段76號2樓",
    "line" : ["和平東路二段76號2樓"],
    "city" : "大安區",
    "state" : "台北市",
    "postalCode" : "10663",
    "country" : "TW"
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
      "use" : "usual",
      "text" : "陳志強"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "0987654321",
      "use" : "mobile"
    }]
  }],
  "managingOrganization" : {
    "reference" : "Organization/ltc-organization-example"
  }
}

```
