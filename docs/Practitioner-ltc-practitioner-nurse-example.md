# 長期照顧護理師範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧護理師範例**

## Example Practitioner: 長期照顧護理師範例

Profile: [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md)

**identifier**: Provider Number/N123456789 (use: official, )

**active**: true

**name**: 王美玲(Official)

**telecom**: ph: 02-29412345(Work), [meiling.wang@ltc-center.tw](mailto:meiling.wang@ltc-center.tw)

**gender**: Female

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | `http://example.org/fhir/NamingSystem/nursing-license`/護理執照123456 | Registered nurse |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ltc-practitioner-nurse-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider Number"
      }]
    },
    "system" : "http://example.org/fhir/NamingSystem/practitioner-id",
    "value" : "N123456789"
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
    "value" : "02-29412345",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "meiling.wang@ltc-center.tw",
    "use" : "work"
  }],
  "gender" : "female",
  "qualification" : [{
    "identifier" : [{
      "system" : "http://example.org/fhir/NamingSystem/nursing-license",
      "value" : "護理執照123456"
    }],
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "224535009",
        "display" : "Registered nurse"
      }]
    }
  }]
}

```
