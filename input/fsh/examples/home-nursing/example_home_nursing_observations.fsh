Instance: hn-vital-signs-example
InstanceOf: HNVitalSigns
Title: "居家護理生命徵象資源範例"
Description: "同一次量測的生命徵象，血糖重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-vitalsign-example)

* hasMember[temperature] = Reference(hn-temperature-example)
* hasMember[pulse] = Reference(hn-pulse-example)
* hasMember[respiration] = Reference(hn-respiration-example)
* hasMember[bloodPressure] = Reference(hn-bloodpressure-example)
* hasMember[oxygen] = Reference(hn-oxygen-example)

Instance: hn-glucose-example
InstanceOf: PASportObservationGlucose
Title: "居家護理血糖範例"
Description: "沿用既有血糖 Profile，數值以 mg/dL 表達。"
Usage: #example
* status = #final
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* valueQuantity.value = 120
* valueQuantity.unit = "mg/dL"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)

Instance: hn-wound-pressure-example
InstanceOf: HNWound
Title: "居家護理壓傷範例"
Description: "示範 V5.0.16 分類與等級的搭配。"
Usage: #example
* status = #final
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* bodySite.text = "右小腿"
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-carerecord-wounds-example)
* component[category].valueCodeableConcept = HNAnswerCS#c7ead2b329689 "壓傷"
* component[level].valueCodeableConcept = HNAnswerCS#cecf422c03011 "無法分期"
* component[length].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* component[width].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* component[depth].dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown

Instance: hn-wound-iad-example
InstanceOf: HNWound
Title: "居家護理失禁性皮膚炎範例"
Description: "示範 V5.0.16 分類與等級的搭配。"
Usage: #example
* status = #final
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* bodySite.text = "會陰"
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-carerecord-wounds-example)
* component[category].valueCodeableConcept = HNAnswerCS#cc7a2787e9f48 "失禁性皮膚炎"
* component[level].valueCodeableConcept = HNAnswerCS#ccf3d835a3018 "1A"
* component[length].valueQuantity.value = 1.0
* component[width].valueQuantity.value = 1.0
* component[depth].valueQuantity.value = 1.0

Instance: hn-wound-other-example
InstanceOf: HNWound
Title: "居家護理其他範例"
Description: "示範 V5.0.16 分類與等級的搭配。"
Usage: #example
* status = #final
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* bodySite.text = "左手背"
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-carerecord-wounds-example)
* component[category].valueCodeableConcept = HNAnswerCS#cd2909f1647e7 "其他"
* component[length].valueQuantity.value = 1.0
* component[width].valueQuantity.value = 1.0
* component[depth].valueQuantity.value = 1.0
* note.text = "外傷傷口"

Instance: hn-temperature-example
InstanceOf: PASportObservationBodyTemperature
Title: "居家護理－體溫量測範例"
Description: "直接重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)
* valueQuantity.value = 36.5
* valueQuantity.unit = "Cel"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

Instance: hn-pulse-example
InstanceOf: PASportObservationHeartRate
Title: "居家護理－脈搏量測範例"
Description: "直接重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)
* valueQuantity.value = 77
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

Instance: hn-respiration-example
InstanceOf: PASportObservationRespiratoryRate
Title: "居家護理－呼吸量測範例"
Description: "直接重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)
* valueQuantity.value = 16
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

Instance: hn-bloodpressure-example
InstanceOf: PASportObservationBloodPressure
Title: "居家護理－血壓量測範例"
Description: "直接重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)
* component[SystolicBP].valueQuantity.value = 112
* component[SystolicBP].valueQuantity.unit = "mm[Hg]"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #mm[Hg]
* component[DiastolicBP].valueQuantity.value = 73
* component[DiastolicBP].valueQuantity.unit = "mm[Hg]"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #mm[Hg]

Instance: hn-oxygen-example
InstanceOf: PASportObservationPeripheralOxygenSaturation
Title: "居家護理－血氧量測範例"
Description: "直接重用既有基礎生理量測 Profile。"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* subject = Reference(hn-patient-example)
* performer = Reference(hn-nurse-example)
* effectiveDateTime = "2025-12-08T09:00:00+08:00"
* extension[0].url = Canonical(ExtHNSourceForm)
* extension[0].valueReference = Reference(hn-vitalsign-example)
* valueQuantity.value = 98
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
