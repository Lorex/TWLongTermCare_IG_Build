Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $TWCoreCategoryCodeVS = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw
Alias: $ObservationCategoryCS = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $LOINC = http://loinc.org
Alias: $FallHistoryResultVSTWLTC = http://ltc-ig.fhir.tw/ValueSet/FallHistoryResultVS-TWLTC

Profile: LTCObservationFallingHistory
Parent: $TWCoreSimpleObservation
Id: LTCObservationFallingHistory
Title: "TWLTC Observation Falling History"
Description: "長照機構住民跌倒紀錄"

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
