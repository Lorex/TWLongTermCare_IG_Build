Extension:  ExtRelatedPersonIsPrimaryTWLTC
Id: ExtRelatedPersonIsPrimary-TWLTC
Title: "是否為主要照顧者"
Description: "此 Extension 用以表述關係人是否為主要照顧者。"
Context: RelatedPerson

//* ^url = "http://ltc-ig.fhir.tw/StructureDefinition-ExtensionRelatedPersonIsPrimary-TWLTC"
* ^version = "2024-09-02"
* ^status = #active
* ^context.type = #element
* ^context.expression = "RelatedPerson"

* value[x] 1..1 MS
* value[x] only boolean
* value[x] ^short = "是否為主要照顧者"
* valueBoolean 1..1 MS
* valueBoolean ^short = "是否為主要照顧者 [ true: 是 / false: 否，該關係人為次要照顧者 ]"
