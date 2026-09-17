Extension: ExtHAHEpisode
Id: ExtHAHEpisode
Title: "在宅急症－療程關聯"
Description: "參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。"
Context: CarePlan, Goal, QuestionnaireResponse, Consent
* ^status = #draft
* value[x] only Reference(HAHEpisodeOfCare)
* valueReference 1..1

Extension: ExtHAHOutcome
Id: ExtHAHOutcome
Title: "在宅急症－療程結束原因"
Description: "療程結束時填入原因。其他原因應另填文字說明。"
Context: EpisodeOfCare
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from HAHOutcomeVS (required)
* valueCodeableConcept obeys hah-outcome-other

Extension: ExtHAHVisitMode
Id: ExtHAHVisitMode
Title: "在宅急症－訪視方式"
Description: "填入此次訪視為實地、視訊或電話評估。"
Context: Encounter
* ^status = #draft
* value[x] only code
* valueCode 1..1
* valueCode from HAHVisitModeVS (required)

Invariant: hah-outcome-other
Description: "結束原因為其他時應填寫文字說明。"
Severity: #error
Expression: "coding.where(system='http://ltc-ig.fhir.tw/CodeSystem/hah-outcome' and code='other').exists() implies text.exists()"
