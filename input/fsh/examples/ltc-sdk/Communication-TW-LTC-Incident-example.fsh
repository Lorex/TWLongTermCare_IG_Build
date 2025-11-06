Instance: Communication-TW-LTC-Incident-example
InstanceOf: Communication-TW-LTC-Incident
Title: "長照 SDK－異常服務紀錄－例"
Description: "示例：電話通報跌倒事件"
* status = #completed
* subject = Reference(Patient/ex-pt)
* sender = Reference(Practitioner/ex-prac)
* recipient[+] = Reference(Organization/ex-org)
* sent = "2025-10-01T10:35:00+08:00"

/* ✅ 這裡一定要用 CodeSystem#code，而非 ValueSet */
* reasonCode[+] = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-category#careacc "照顧意外事件"
* medium[+]     = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notification-method#phone "電話"

* payload[+].contentString = "10:20 於浴室滑倒，家屬協助起身。"
* payload[+].contentString = "檢查擦傷，無明顯腫脹；已冰敷觀察中。"
* payload[+].contentString = "建議持續觀察 48 小時，必要時就醫。"
* payload[+].contentString = "已通知個管與居服單位追蹤。"


// Instance: Communication-TW-LTC-Incident-example
// InstanceOf: Communication-TW-LTC-Incident
// Title: "長照 SDK－異常服務紀錄－例"
// Description: "示例：電話通報跌倒事件"
// * status = #completed
// * subject = Reference(Patient/ex-pt)
// * sender = Reference(Practitioner/ex-prac)
// * recipient[+] = Reference(Organization/ex-org)
// * sent = "2025-10-01T10:35:00+08:00"
// * reasonCode[+] = VS_TW_LTC_Incident_Category#fall "跌倒"
// * medium[+] = VS_TW_LTC_Incident_NotificationMethod#phone "電話"
// * payload[+].contentString = "10:20 於浴室滑倒，家屬協助起身。"
// * payload[+].contentString = "檢查擦傷，無明顯腫脹；已冰敷觀察中。"
// * payload[+].contentString = "建議持續觀察 48 小時，必要時就醫。"
// * payload[+].contentString = "已通知個管與居服單位追蹤。"
// Instance: ex-incident-001
// InstanceOf: Communication-TW-LTC-Incident
// Title: "示例－異常服務紀錄（送醫 + 電話通報）"
// Usage: #example
// * status = #completed
// * subject = Reference(Patient/ex-pt)
// * sender = Reference(Practitioner/ex-prac)
// * recipient[0] = Reference(Organization/ex-org)
// * sent = "2025-11-05T10:30:00+08:00"

// // 發生日期與地點
// * extension[occurred].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-occurreddatetime"
// * extension[occurred].valueDateTime = "2025-11-05T09:50:00+08:00"
// * extension[place].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-location"
// * extension[place].valueString = "個案住家客廳"

// // 異常類別：送醫事件 + 照顧意外事件
// * reasonCode[0] = CS_TW_LTC_Incident_Category#hospitalize "送醫事件"
// * reasonCode[+] = CS_TW_LTC_Incident_Category#careacc "照顧意外事件"

// // 通報方式：電話 + 機構
// * extension[method][0].url = "http://hl7.org/fhir/StructureDefinition/communication-method"
// * extension[method][=].valueCodeableConcept = CS_TW_LTC_Incident_NotificationMethod#phone "電話"
// * extension[method][+].url = "http://hl7.org/fhir/StructureDefinition/communication-method"
// * extension[method][=].valueCodeableConcept = CS_TW_LTC_Incident_NotificationMethod#org "機構"

// // 文字區塊
// * payload[0].contentString = "巡視時發現個案暈眩跌坐於地，評估後建議送醫。"
// * payload[0].extension[textType].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-texttype"
// * payload[0].extension[textType].valueCodeableConcept = CS_TW_LTC_Incident_TextType#desc

// * payload[+].contentString = "09:45 個案訴暈眩，09:50 跌坐，無外傷；照服員評估生命徵象後聯繫機構。"
// * payload[=].extension[textType].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-texttype"
// * payload[=].extension[textType].valueCodeableConcept = CS_TW_LTC_Incident_TextType#process

// * payload[+].contentString = "10:05 家屬同意送醫；10:20 救護車抵達，送往市立醫院急診，已完成通報。"
// * payload[=].extension[textType].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-texttype"
// * payload[=].extension[textType].valueCodeableConcept = CS_TW_LTC_Incident_TextType#postprocess

// * payload[+].contentString = "建議於動線處增設止滑墊；觀察近期是否有姿勢性低血壓。"
// * payload[=].extension[textType].url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-texttype"
// * payload[=].extension[textType].valueCodeableConcept = CS_TW_LTC_Incident_TextType#advice

// // 關聯案件或計畫（如有）
// * about[0] = Reference(EpisodeOfCare/ex-case)
// * about[+] = Reference(CarePlan/ex-plan)
