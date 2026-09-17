Profile: HNVitalSigns
Parent: http://hl7.org/fhir/StructureDefinition/vitalspanel
Id: HNVitalSigns
Title: "居家護理－生命徵象"
Description: "沿用 FHIR R4 生命徵象量測組，以 hasMember 連結既有體溫、心率、呼吸、血壓與血氧 Profile；血糖以既有血糖 Profile 與共同來源表單串聯。"
* code = $LOINC#85353-1
* subject 1..1 MS
* subject only Reference(HNPatient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] 0..0
* extension contains
    ExtHNEpisode named episode 1..1 MS and
    ExtHNSourceForm named sourceForm 1..1 MS
* component 0..0
* hasMember 4..5 MS
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains
    temperature 1..1 MS and
    pulse 1..1 MS and
    respiration 1..1 MS and
    bloodPressure 1..1 MS and
    oxygen 0..1 MS
* hasMember[temperature] only Reference(PASportObservationBodyTemperature)
* hasMember[pulse] only Reference(PASportObservationHeartRate)
* hasMember[respiration] only Reference(PASportObservationRespiratoryRate)
* hasMember[bloodPressure] only Reference(PASportObservationBloodPressure)
* hasMember[oxygen] only Reference(PASportObservationPeripheralOxygenSaturation)

Profile: HNWound
Parent: $TWCoreSimpleObservation
Id: HNWound
Title: "居家護理－傷口紀錄"
Description: "每個傷口建立一筆紀錄。沿用 TW Core 簡易觀察，因既有壓傷 Condition 不適用失禁性皮膚炎及其他傷口。原規範未明訂尺寸單位，不從來源數字推定單位。"
* code = HNWorkflowCS#wound
* category[twcore] 1..1 MS
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* subject 1..1 MS
* subject only Reference(HNPatient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* bodySite 1..1 MS
* bodySite.text 1..1
* value[x] 0..0
* extension contains
    ExtHNEpisode named episode 1..1 MS and
    ExtHNSourceForm named sourceForm 1..1 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    category 1..1 MS and
    level 0..1 MS and
    length 1..1 MS and
    width 1..1 MS and
    depth 1..1 MS
* component[category].code.coding 1..1
* component[category].code = HNWorkflowCS#wound-category
* component[category].value[x] only CodeableConcept
* component[category].valueCodeableConcept 1..1
* component[category].valueCodeableConcept.coding 1..1
* component[category].valueCodeableConcept from HNWoundCategoryVS (required)
* component[level].code.coding 1..1
* component[level].code = HNWorkflowCS#wound-level
* component[level].value[x] only CodeableConcept
* component[level].valueCodeableConcept 1..1
* component[level].valueCodeableConcept.coding 1..1
* component[level].valueCodeableConcept from HNWoundLevelVS (required)
* obeys hn-wound-stage and hn-wound-dermatitis and hn-wound-other and hn-wound-size
* component[length].code.coding 1..1
* component[length].code = HNWorkflowCS#length
* component[length].value[x] only Quantity
* component[length].valueQuantity.value 1..1
* component[length].valueQuantity.value ^minValueDecimal = 0
* component[length].dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* component[width].code.coding 1..1
* component[width].code = HNWorkflowCS#width
* component[width].value[x] only Quantity
* component[width].valueQuantity.value 1..1
* component[width].valueQuantity.value ^minValueDecimal = 0
* component[width].dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* component[depth].code.coding 1..1
* component[depth].code = HNWorkflowCS#depth
* component[depth].value[x] only Quantity
* component[depth].valueQuantity.value 1..1
* component[depth].valueQuantity.value ^minValueDecimal = 0
* component[depth].dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)

Invariant: hn-wound-stage
Description: "壓傷應填入對應的分期。"
Severity: #error
Expression: "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='c7ead2b329689').exists() implies (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.code.count()=1 and (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cd2309630a543').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c02aab4358253').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cccd9b119924f').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cb77fa71e8c7f').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cecf422c03011').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c6210bfc58f77').exists()))"

Invariant: hn-wound-dermatitis
Description: "失禁性皮膚炎應填入 1A、1B、2A 或 2B。"
Severity: #error
Expression: "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='cc7a2787e9f48').exists() implies (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.code.count()=1 and (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='ccf3d835a3018').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='ce33cd81b67cc').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c7259a0720e42').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c5c19c5dfd9c3').exists()))"

Invariant: hn-wound-other
Description: "其他傷口應省略等級並填寫說明。"
Severity: #error
Expression: "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='cd2909f1647e7').exists() implies (component.where(code.coding.where(code='wound-level').exists()).empty() and note.text.exists())"

Invariant: hn-wound-size
Description: "只有無法分期的壓傷可以缺少尺寸；缺值時須填入缺值原因。"
Severity: #error
Expression: "component.where(code.coding.where(code='length').exists() or code.coding.where(code='width').exists() or code.coding.where(code='depth').exists()).all(value.exists() or (dataAbsentReason.exists() and %resource.component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='c7ead2b329689').exists() and %resource.component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cecf422c03011').exists()))"
