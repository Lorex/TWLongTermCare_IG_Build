CodeSystem: CS_TW_LTC_FeeAuditSvcPeople
Id: cs-tw-ltc-feeaudit-svc-people
Title: "支付審查－服務對象"
Description: "支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people）代碼，申報 AA00 必填寫，可複選（原始電文以「|」分隔多個選項）。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.5260566181961141365521171980732386299"

* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-people"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #1 "服務使用者"
* #2 "家庭照顧者"
