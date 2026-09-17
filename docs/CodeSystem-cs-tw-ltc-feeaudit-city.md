# 支付審查－縣市代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－縣市代碼**

## CodeSystem: 支付審查－縣市代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-city | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditCity |
| *Other Identifiers:*OID:2.25.324481967880524752564801350693465141904 | |

 
衛生福利部支付審核系統（照管平台）API 規格說明書 v2.2.1 之 city_cd（縣市名稱）代碼表，共 22 個直轄市、縣（市），用於標示分案、申請單與服務紀錄所屬之縣市。本代碼系統為支付審核系統專用代碼，與 TW Core IG 之郵遞區號代碼系統（TWPostalCode3／TWPostalCode5／TWPostalCode6，https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw 等）用途不同，郵遞區號用於表述地址之投遞區域，本代碼系統則用於表述支付審核業務之行政轄區歸屬，兩者不可互相替代。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－縣市代碼](ValueSet-vs-tw-ltc-feeaudit-city.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-city",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-city",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.324481967880524752564801350693465141904"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditCity",
  "title" : "支付審查－縣市代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "衛生福利部支付審核系統（照管平台）API 規格說明書 v2.2.1 之 city_cd（縣市名稱）代碼表，共 22 個直轄市、縣（市），用於標示分案、申請單與服務紀錄所屬之縣市。本代碼系統為支付審核系統專用代碼，與 TW Core IG 之郵遞區號代碼系統（TWPostalCode3／TWPostalCode5／TWPostalCode6，https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw 等）用途不同，郵遞區號用於表述地址之投遞區域，本代碼系統則用於表述支付審核業務之行政轄區歸屬，兩者不可互相替代。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 22,
  "concept" : [{
    "code" : "09007",
    "display" : "連江縣"
  },
  {
    "code" : "09020",
    "display" : "金門縣"
  },
  {
    "code" : "10002",
    "display" : "宜蘭縣"
  },
  {
    "code" : "10004",
    "display" : "新竹縣"
  },
  {
    "code" : "10005",
    "display" : "苗栗縣"
  },
  {
    "code" : "10007",
    "display" : "彰化縣"
  },
  {
    "code" : "10008",
    "display" : "南投縣"
  },
  {
    "code" : "10009",
    "display" : "雲林縣"
  },
  {
    "code" : "10010",
    "display" : "嘉義縣"
  },
  {
    "code" : "10013",
    "display" : "屏東縣"
  },
  {
    "code" : "10014",
    "display" : "臺東縣"
  },
  {
    "code" : "10015",
    "display" : "花蓮縣"
  },
  {
    "code" : "10016",
    "display" : "澎湖縣"
  },
  {
    "code" : "10017",
    "display" : "基隆市"
  },
  {
    "code" : "10018",
    "display" : "新竹市"
  },
  {
    "code" : "10020",
    "display" : "嘉義市"
  },
  {
    "code" : "63000",
    "display" : "臺北市"
  },
  {
    "code" : "64000",
    "display" : "高雄市"
  },
  {
    "code" : "65000",
    "display" : "新北市"
  },
  {
    "code" : "66000",
    "display" : "臺中市"
  },
  {
    "code" : "67000",
    "display" : "臺南市"
  },
  {
    "code" : "68000",
    "display" : "桃園市"
  }]
}

```
