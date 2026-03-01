# 長期照護醫師意見書醫師範例 (AA12) - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護醫師意見書醫師範例 (AA12)**

## Example Practitioner: 長期照護醫師意見書醫師範例 (AA12)

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: `https://www.tph.mohw.gov.tw`/DR001234 (use: official, ), `http://www.immigration.gov.tw`/A123456789 (use: official, )

**name**: 王醫師

**telecom**: ph: 02-23123456(Work), [dr.wang@hospital.tw](mailto:dr.wang@hospital.tw)

**address**: 台北市中正區重慶南路一段122號

**gender**: Male

**birthDate**: 1975-06-15

### Qualifications

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Period** | **Issuer** |
| * | `https://www.mohw.gov.tw`/MD123456 | Doctor of Medicine | 2000-07-01 --> (ongoing) | 台灣大學醫學院 |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ltc-practitioner-physician-aa12-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.tph.mohw.gov.tw",
    "value" : "DR001234"
  },
  {
    "use" : "official",
    "system" : "http://www.immigration.gov.tw",
    "value" : "A123456789"
  }],
  "name" : [{
    "text" : "王醫師",
    "family" : "王",
    "given" : ["志明"],
    "prefix" : ["Dr."]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-23123456",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "dr.wang@hospital.tw",
    "use" : "work"
  }],
  "address" : [{
    "text" : "台北市中正區重慶南路一段122號",
    "line" : ["重慶南路一段122號"],
    "city" : "台北市",
    "district" : "中正區",
    "postalCode" : "100",
    "country" : "TW"
  }],
  "gender" : "male",
  "birthDate" : "1975-06-15",
  "qualification" : [{
    "identifier" : [{
      "system" : "https://www.mohw.gov.tw",
      "value" : "MD123456"
    }],
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
        "code" : "MD",
        "display" : "Doctor of Medicine"
      }]
    },
    "period" : {
      "start" : "2000-07-01"
    },
    "issuer" : {
      "display" : "台灣大學醫學院"
    }
  }]
}

```
