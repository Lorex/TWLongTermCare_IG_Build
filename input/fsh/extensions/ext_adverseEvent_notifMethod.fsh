Extension: ExtTWLTCAdverseEventNotifMethod
Id: Ext-TW-LTC-AdverseEvent-NotifMethod
Title: "長期照顧－異常事件通報方式"
Description: "記錄異常事件的通報方式（如電話、機構通報、LINE 等）"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "AdverseEvent"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from VS_TW_LTC_Incident_NotificationMethod (required)
