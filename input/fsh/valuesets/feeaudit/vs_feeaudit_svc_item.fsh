ValueSet: VS_TW_LTC_FeeAuditSvcItem
Id: vs-tw-ltc-feeaudit-svc-item
Title: "支付審查－服務項目"
Description: "此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item），申報 AA00 必填寫。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.6311796706610641527872246543598030895"

* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-svc-item"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* include codes from system CS_TW_LTC_FeeAuditSvcItem
