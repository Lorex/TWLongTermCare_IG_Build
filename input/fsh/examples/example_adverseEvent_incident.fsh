Instance: ltc-adverse-event-incident-example
InstanceOf: LTCAdverseEvent
Title: "長期照顧異常事件範例－SDK 異常服務通報（跌倒）"
Description: "展示 SDK 異常服務通報場景：電話通報跌倒事件，包含異常類別、通報方式、多段文字描述及關聯案件"
Usage: #example

* identifier.use = #official
* identifier.system = "http://ltc-ig.fhir.tw/adverse-event"
* identifier.value = "AE-SDK-2025-001"

* actuality = #actual

// 異常類別：照顧意外事件
* event.coding[+] = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-category#careacc "照顧意外事件"

* subject = Reference(Patient/ex-pt)
* date = "2025-10-01T10:20:00+08:00"
* recordedDate = "2025-10-01T10:35:00+08:00"

// 發生地點
* location = Reference(ltc-location-example)

// 涉入者（通報服務員）
* contributor[+] = Reference(Practitioner/ex-prac)

// 通報方式：電話
* extension[notifMethod][+].valueCodeableConcept = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod#phone "電話"

// 多段文字描述
* extension[description][+].extension[textType].valueCodeableConcept = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype#desc "事件描述"
* extension[description][=].extension[text].valueString = "10:20 於浴室滑倒，家屬協助起身。"

* extension[description][+].extension[textType].valueCodeableConcept = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype#postprocess "事件發生後處理過程詳述"
* extension[description][=].extension[text].valueString = "檢查擦傷，無明顯腫脹；已冰敷觀察中。"

* extension[description][+].extension[textType].valueCodeableConcept = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype#advice "檢討及改善建議"
* extension[description][=].extension[text].valueString = "建議持續觀察 48 小時，必要時就醫。已通知個管與居服單位追蹤。"

// 關聯案件
* extension[about][+].valueReference = Reference(ex-case-cs100)
