ValueSet: ConditionSeverityVSTWLTC
Id: ConditionSeverityVS-TWLTC
Title: "疾病嚴重度擴展值集"
Description: "用以表述疾病嚴重度之擴展值集，包含疾病嚴重度之描述內容。配合身心障礙手冊障礙程度分級，包含輕度、中度、重度、極重度等代碼。"

* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.290717288293434558866263121671520644301"

* ^version = "2024-08-25"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-25"

* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity

* $SNOMEDCT#442452003