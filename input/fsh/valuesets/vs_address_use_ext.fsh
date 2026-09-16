ValueSet: AddressUseVSTWLTC
Id: AddressUseVS-TWLTC
Title: "地址用途擴展值集"
Description: "地址的用途，新增戶籍地與現居地等代碼"

//* ^url = "http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.74479291720515125532267282249642267508"

* ^version = "2024-08-22"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-22"

// * include codes from system http://hl7.org/fhir/address-use
* include codes from system http://ltc-ig.fhir.tw/CodeSystem/AddressUseCS-TWLTC