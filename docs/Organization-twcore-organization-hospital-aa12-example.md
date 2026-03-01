# 長期照護醫師意見書醫院範例 (AA12) - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護醫師意見書醫院範例 (AA12)**

## Example Organization: 長期照護醫師意見書醫院範例 (AA12)

Profile: [TW Core Organization](https://twcore.mohw.gov.tw/ig/twcore/0.3.2/StructureDefinition-Organization-twcore.html)

**identifier**: `https://www.nhi.gov.tw`/1234567890 (use: official, ), `https://www.mohw.gov.tw`/HOSP001 (use: official, )

**type**: Healthcare Provider

**name**: 台北市立聯合醫院

**telecom**: ph: 02-25553000(Work), [info@tpech.gov.tw](mailto:info@tpech.gov.tw)

**address**: 台北市大同區鄭州路145號

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Name** | **Telecom** |
| * | Administrative | 行政部門 | ph: 02-25553000(Work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "twcore-organization-hospital-aa12-example",
  "meta" : {
    "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.nhi.gov.tw",
    "value" : "1234567890"
  },
  {
    "use" : "official",
    "system" : "https://www.mohw.gov.tw",
    "value" : "HOSP001"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }]
  }],
  "name" : "台北市立聯合醫院",
  "telecom" : [{
    "system" : "phone",
    "value" : "02-25553000",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "info@tpech.gov.tw",
    "use" : "work"
  }],
  "address" : [{
    "text" : "台北市大同區鄭州路145號",
    "line" : ["鄭州路145號"],
    "city" : "台北市",
    "district" : "大同區",
    "postalCode" : "103",
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
      "text" : "行政部門"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "02-25553000",
      "use" : "work"
    }]
  }]
}

```
