# 長照支付審查－縣市主管機關（Organization）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－縣市主管機關（Organization）範例**

## Example Organization: 長照支付審查－縣市主管機關（Organization）範例

Profile: [長期照顧－機構](StructureDefinition-Organization-twltc.md)

**identifier**: Provider Number/65000 (use: official, )

**active**: true

**type**: Government

**name**: 新北市政府衛生局

**telecom**: ph: 02-22577155(Work)

**address**: 新北市板橋區英士路192之1號(work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ltc-organization-feeaudit-authority-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
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
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/city-cd",
    "value" : "65000"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "govt",
      "display" : "Government"
    }]
  }],
  "name" : "新北市政府衛生局",
  "telecom" : [{
    "system" : "phone",
    "value" : "02-22577155",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "新北市板橋區英士路192之1號",
    "line" : ["英士路192之1號"],
    "city" : "板橋區",
    "state" : "新北市",
    "postalCode" : "22054",
    "country" : "TW"
  }]
}

```
