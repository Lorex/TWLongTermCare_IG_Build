# 長照醫事人員範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照醫事人員範例**

## Example Practitioner: 長照醫事人員範例

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: Medical License number/KMD12345 (use: official, )

**active**: true

**name**: 王美玲(Official)

**telecom**: ph: 02-87654321(Work), [meiling.wang@ltc-hospital.tw](mailto:meiling.wang@ltc-hospital.tw)

**address**: 台北市大安區復興南路二段201號(work)

**gender**: Female

**birthDate**: 1975-06-10



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ltc-practitioner-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MD"
      }]
    },
    "system" : "http://example.org/fhir/NamingSystem/hospital-license",
    "value" : "KMD12345"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "王美玲",
    "family" : "王",
    "given" : ["美玲"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-87654321",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "meiling.wang@ltc-hospital.tw",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "text" : "台北市大安區復興南路二段201號",
    "line" : ["復興南路二段201號"],
    "city" : "台北市",
    "district" : "大安區",
    "postalCode" : "106",
    "country" : "TW"
  }],
  "gender" : "female",
  "birthDate" : "1975-06-10"
}

```
