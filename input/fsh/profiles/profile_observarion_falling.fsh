Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $TWCoreCategoryCodeVS = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw
Alias: $ObservationCategoryCS = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $LOINC = http://loinc.org
Alias: $FallHistoryResultVSTWLTC = http://ltc-ig.fhir.tw/ValueSet/FallHistoryResultVS-TWLTC

Profile: LTCObservationFallingHistory
Parent: $TWCoreSimpleObservation
Id: LTCObservationFallingHistory
Title: "安全防護－跌倒紀錄"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的跌倒紀錄。"

* code ^short = "跌倒紀錄的類型"
* subject ^short = "跌倒紀錄的對象"
* category ^short = "跌倒紀錄的類別"
* category from $TWCoreCategoryCodeVS (required)
* category.coding 1..1 MS
* category.coding ^patternCoding = $ObservationCategoryCS#survey
* code 1..1 MS
* code.coding 1..1 MS
* code.coding = $LOINC#101440-6 "History of Falls"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $FallHistoryResultVSTWLTC (required)
* valueCodeableConcept ^short = "跌倒紀錄結果（如果有偵測到跌倒，則填入 Observed）"
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "此跌倒紀錄發生的時間"

// Example
Instance: ltc-observation-falling-history-example
InstanceOf: LTCObservationFallingHistory
Title: "跌倒紀錄範例"
Description: "一個跌倒紀錄的範例，展示如何使用 LTCObservationFallingHistory Profile"
Usage: #example

* status = #final

* category.coding = $ObservationCategoryCS#survey

* code.coding = $LOINC#101440-6 "History of Falls"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-10T14:30:00+08:00"

* performer[0] = Reference(ltc-practitioner-role-nurse-example)

* valueCodeableConcept.coding.system = "http://loinc.org"
* valueCodeableConcept.coding.code = #LA33635-6
* valueCodeableConcept.coding.display = "Observed"
* valueCodeableConcept.text = "發生跌倒"

* note[0].time = "2024-01-10T14:30:00+08:00"
* note[0].text = "住民在浴室滑倒，當時地面濕滑，已加強防滑措施並提醒住民注意安全"

* component[0].code.coding.system = "http://snomed.info/sct"
* component[0].code.coding.code = #246112005
* component[0].code.coding.display = "Severity"
* component[0].valueCodeableConcept.coding.system = "http://snomed.info/sct"
* component[0].valueCodeableConcept.coding.code = #255604002
* component[0].valueCodeableConcept.coding.display = "Mild"
