ValueSet: ConditionDisabilityTypeVSTWLTC
Id: ConditionDisabilityTypeVS-TWLTC
Title: "身心障礙類型值集"
Description: "個案身心障礙類型"

//* ^url = "http://ltc-ig.fhir.tw/ValueSet-ConditionDisabilityTypeaVS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.321758608038491974232931062581721483610"

* ^version = "2024-08-25"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-25"

* include codes from system http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC
* include codes from system http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityLegacyTypeCS-TWLTC
