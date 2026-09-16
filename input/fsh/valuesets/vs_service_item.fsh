ValueSet: VS_TW_LTC_ServiceItem
Id: vs-tw-ltc-service-item
Title: "臺灣長照服務項目"
Description: "此 ValueSet 涵蓋臺灣長照 2.0 給付之所有服務項目代碼，適用於長照服務之申請、核定與使用紀錄，包含照顧組合、專業服務、交通接送、喘息服務等項目。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.23077688075140443200708783698200494020"

* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* include codes from system CS_TW_LTC_ServiceItem
