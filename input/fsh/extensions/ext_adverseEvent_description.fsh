Extension: ExtTWLTCAdverseEventDescription
Id: Ext-TW-LTC-AdverseEvent-Description
Title: "長期照顧－異常事件文字描述"
Description: "記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "AdverseEvent"
* extension contains
    textType 1..1 MS and
    text 1..1 MS
* extension[textType].value[x] only CodeableConcept
* extension[textType].valueCodeableConcept from VS_TW_LTC_Incident_TextType (required)
* extension[text].value[x] only string
* extension[text].valueString 1..1 MS
