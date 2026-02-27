Profile: LTCAdverseEvent
Parent: AdverseEvent
Id: AdverseEvent-twltc
Title: "長期照顧－異常事件警報"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現失智症個案異常事件警報的資料，包括事件類型、嚴重程度、發生時間、位置等資訊。"

* . ^short = "異常事件警報的資訊"

* identifier 0..1 MS
* identifier ^short = "異常事件警報的唯一識別碼"
* identifier.value 1..1 MS
* identifier.value ^short = "異常事件警報的唯一識別碼值"
* identifier.system 1..1 MS
* identifier.system ^short = "異常事件警報識別碼的系統識別符"
* identifier.use 0..1 MS
* identifier.use = #official

* actuality 1..1 MS
* actuality ^short = "異常事件的實際性 (實際的異常：actual / 潛在的異常：potential)"

* event 0..1 MS
* event ^short = "異常事件類型"
* event.text 1..1 MS
* event.text ^short = "異常事件類型的描述"

* subject 1..1 MS
* subject ^short = "發生異常事件的個案"
* subject.reference 1..1 MS
* subject.reference ^short = "個案的參考"
* subject only Reference(LTCPatient)

* date 1..1 MS
* date ^short = "異常事件實際發生的日期時間"
* date ^definition = "異常事件實際發生的具體日期和時間"

* detected 0..1 MS
* detected ^short = "異常事件被偵測到的日期時間"
* detected ^definition = "異常事件被系統偵測到的具體日期和時間"

* recordedDate 1..1 MS
* recordedDate ^short = "異常事件被記錄的日期時間"
* recordedDate ^definition = "異常事件被記錄到系統的具體日期和時間"

* resultingCondition 0..* MS
* resultingCondition ^short = "異常事件導致的結果狀況"
* resultingCondition.reference 1..1 MS
* resultingCondition.reference ^short = "結果狀況的參考 [應填入 Condition Resource ID]"
* resultingCondition only Reference(Condition)

* location 0..1 MS
* location ^short = "異常事件發生的位置"
* location.reference 1..1 MS
* location.reference ^short = "位置的參考 [應填入 Location Resource ID]"
* location only Reference(LTCLocation)

* seriousness 0..1 MS
* seriousness ^short = "異常事件的臨床嚴重程度，指臨床上會對患者造成生命威脅或導致患者長期失能的風險程度"

* severity 0..1 MS
* severity ^short = "異常事件本身的嚴重程度（輕微、中度、重度）"

* outcome 0..1 MS
* outcome ^short = "異常事件的處理結果"

* recorder 0..1 MS
* recorder ^short = "記錄異常事件的人員"

* contributor 0..1 MS
* contributor ^short = "涉及此異常事件的人員或設備"


// Example
Instance: ltc-adverse-event-example
InstanceOf: LTCAdverseEvent
Title: "長期照顧異常事件警報範例"
Description: "一個長期照顧異常事件警報的範例，展示如何使用 LTCAdverseEvent Profile"
Usage: #example

* identifier.use = #official
* identifier.system = "http://ltc-ig.fhir.tw/adverse-event"
* identifier.value = "AE-2024-001"

* actuality = #actual
* event.text = "離開安全區域"

* subject = Reference(ltc-patient-chen-ming-hui)
* date = "2024-01-15T14:30:00+08:00"
* detected = "2024-01-15T14:32:00+08:00"
* recordedDate = "2024-01-15T14:35:00+08:00"

* location = Reference(ltc-location-example)
* seriousness = http://terminology.hl7.org/CodeSystem/adverse-event-seriousness#serious "Serious"
* severity = http://terminology.hl7.org/CodeSystem/adverse-event-severity#moderate "Moderate"
* outcome = http://terminology.hl7.org/CodeSystem/adverse-event-outcome#recovering "Recovering"

* recorder = Reference(ltc-practitioner-example)