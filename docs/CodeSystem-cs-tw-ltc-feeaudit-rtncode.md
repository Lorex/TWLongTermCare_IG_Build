# 支付審查－API 回覆結果代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－API 回覆結果代碼**

## CodeSystem: 支付審查－API 回覆結果代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-rtncode | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditRtnCode |
| *Other Identifiers:*OID:2.25.323019679525679610215400809518030217916 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式中「rtncode－回覆結果代碼」之代碼，用於表示支付審核系統對服務提供單位所送 API 請求之處理結果，包含成功回傳、參數檢核錯誤、權限與流量限制及系統異常等情形。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－API 回覆結果代碼](ValueSet-vs-tw-ltc-feeaudit-rtncode.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-rtncode",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-rtncode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.323019679525679610215400809518030217916"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditRtnCode",
  "title" : "支付審查－API 回覆結果代碼",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式中「rtncode－回覆結果代碼」之代碼，用於表示支付審核系統對服務提供單位所送 API 請求之處理結果，包含成功回傳、參數檢核錯誤、權限與流量限制及系統異常等情形。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [{
    "code" : "0",
    "display" : "成功回傳"
  },
  {
    "code" : "1",
    "display" : "Request 輸入參數錯誤"
  },
  {
    "code" : "2",
    "display" : "所屬申報縣市尚未開放支付審查系統"
  },
  {
    "code" : "3",
    "display" : "查無服務提供單位資料"
  },
  {
    "code" : "4",
    "display" : "申報年月錯誤"
  },
  {
    "code" : "5",
    "display" : "查無服務提供單位 hash 資料"
  },
  {
    "code" : "6",
    "display" : "交易序號重複"
  },
  {
    "code" : "7",
    "display" : "校驗碼檢驗錯誤"
  },
  {
    "code" : "8",
    "display" : "超出傳輸筆數"
  },
  {
    "code" : "9",
    "display" : "不允許撤回申請服務紀錄"
  },
  {
    "code" : "11",
    "display" : "無申請服務紀錄可撤回"
  },
  {
    "code" : "12",
    "display" : "無效的 IP"
  },
  {
    "code" : "13",
    "display" : "IP 不在設定範圍內"
  },
  {
    "code" : "14",
    "display" : "申報費用單位非特約機構"
  },
  {
    "code" : "20",
    "display" : "無訪問權限"
  },
  {
    "code" : "25",
    "display" : "執行頻率限制"
  },
  {
    "code" : "30",
    "display" : "輸入參數錯誤"
  },
  {
    "code" : "40",
    "display" : "查無資料"
  },
  {
    "code" : "50",
    "display" : "DB 錯誤"
  },
  {
    "code" : "90",
    "display" : "發生無法預期錯誤"
  }]
}

```
