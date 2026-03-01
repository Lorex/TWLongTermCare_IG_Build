# 主要照顧者範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **主要照顧者範例**

## Example RelatedPerson: 主要照顧者範例

Profile: [長期照顧－關係人](StructureDefinition-LTCRelatedPerson.md)

**是否為主要照顧者**: true

**active**: true

**patient**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-cms-chen-ming-hui-example.md)

**relationship**: child

**name**: 陳志強

**telecom**: ph: 0987654321(Mobile), ph: 02-27031234(Home)

**gender**: Male

**address**: 台北市大安區仁愛路三段55號8樓(home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "ltc-related-person-primary-caregiver-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC",
    "valueBoolean" : true
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/ltc-patient-cms-chen-ming-hui-example"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "CHILD",
      "display" : "child"
    }]
  }],
  "name" : [{
    "use" : "usual",
    "text" : "陳志強",
    "family" : "陳",
    "given" : ["志強"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "0987654321",
    "use" : "mobile"
  },
  {
    "system" : "phone",
    "value" : "02-27031234",
    "use" : "home"
  }],
  "gender" : "male",
  "address" : [{
    "use" : "home",
    "text" : "台北市大安區仁愛路三段55號8樓",
    "line" : ["仁愛路三段55號8樓"],
    "city" : "大安區",
    "state" : "台北市",
    "postalCode" : "10657",
    "country" : "TW"
  }]
}

```
