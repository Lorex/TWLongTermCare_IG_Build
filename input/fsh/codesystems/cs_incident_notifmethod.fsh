CodeSystem: CS_TW_LTC_Incident_NotificationMethod
Id: cs-tw-ltc-incident-notifmethod
Title: "長照 SDK－異常紀錄－通報方式"
Description: "表單『通報方式』多選。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.258319038068702686220303557239347690932"

* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #phone     "電話"
* #inperson  "當面"
* #fax       "傳真"
* #org       "機構"
* #family    "家屬"
* #cgportal  "CG通報"
* #other     "其他"
