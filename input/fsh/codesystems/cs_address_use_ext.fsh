CodeSystem: AddressUseCSTWLTC
Id: AddressUseCS-TWLTC
Title: "地址用途擴展識別碼"
Description: "地址用途的擴展識別碼，新增戶籍地與現居地等代碼"

//* ^url = "http://ltc-ig.fhir.tw/CodeSystem/AddressUseCS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.334065826872561756677495657084642957579"

* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^date = "2024-08-22"

* #current "現居地址" "該人員目前居住的地址。"
* #residential "戶籍地址" "該人員戶籍所在地址。"