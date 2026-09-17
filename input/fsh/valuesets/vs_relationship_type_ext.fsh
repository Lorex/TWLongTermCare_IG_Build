ValueSet: RelationshipTypeVSTWLTC
Id: RelationshipTypeVS-TWLTC
Title: "關係類型擴展值集"
Description: "關係人與個案的關係類型擴展代碼值集，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼"

//* ^url = "http://ltc-ig.fhir.tw/ValueSet/RelationshipTypeVS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.201597545885992489564101901823159969635"

* ^version = "2024-09-02"
* ^status = #active
* ^experimental = false
* ^date = "2024-09-02"

* include codes from system http://terminology.hl7.org/CodeSystem/v2-0131|3.0.0
* include codes from system http://terminology.hl7.org/CodeSystem/v3-RoleCode|3.0.0 where concept is-a "_PersonalRelationshipRoleType"
* include codes from system http://ltc-ig.fhir.tw/CodeSystem/RelationshipTypeCS-TWLTC