CodeSystem: RelationshipTypeCSTWLTC
Id: RelationshipTypeCS-TWLTC
Title: "關係類型擴展代碼"
Description: "關係人與個案的關係類型擴展代碼，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼"

//* ^url = "http://ltc-ig.fhir.tw/CodeSystem/RelationshipTypeCS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.155919568510096440474798289764101128839"

* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^date = "2024-09-02"

* #GDAUINLAW "孫媳婦" "孫媳婦"
* #GSONINLAW "孫女婿" "孫女婿"
* #CGIVERDOM "聘用看護-本國籍" "聘用看護-本國籍"
* #CGIVERFOR "聘用看護-外國籍" "聘用看護-外國籍"