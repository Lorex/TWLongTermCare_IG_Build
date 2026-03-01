# 長期照顧機構範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧機構範例**

## Example Organization: 長期照顧機構範例

Profile: [長期照顧－機構](StructureDefinition-Organization-twltc.md)

**identifier**: Provider Number/0131060029 (use: usual, )

**active**: true

**type**: Healthcare Provider

**name**: 新北市私立安康老人長期照顧中心（養護型）

**telecom**: ph: 02-29412345(Work), fax: 02-29412346(Work)

**address**: 新北市中和區安康路二段123號(work)

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Administrative | 志明 王 (Official) | ph: 02-29412345(Work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ltc-organization-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
  },
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider Number"
      }]
    },
    "system" : "http://www.moi.gov.tw",
    "value" : "0131060029"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "新北市私立安康老人長期照顧中心（養護型）",
  "telecom" : [{
    "system" : "phone",
    "value" : "02-29412345",
    "use" : "work"
  },
  {
    "system" : "fax",
    "value" : "02-29412346",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "physical",
    "text" : "新北市中和區安康路二段123號",
    "line" : ["安康路二段123號"],
    "city" : "中和區",
    "state" : "新北市",
    "postalCode" : "23511",
    "country" : "TW"
  }],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN",
        "display" : "Administrative"
      }]
    },
    "name" : {
      "use" : "official",
      "family" : "王",
      "given" : ["志明"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "02-29412345",
      "use" : "work"
    }]
  }]
}

```
