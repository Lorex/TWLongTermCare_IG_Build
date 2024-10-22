Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $TreadmillTypeVS = http://ltc-ig.fhir.tw/ValueSet/TreadmillTypeVS-Sport

Profile: PASportObservationTreadmill
Parent: $TWCoreSimpleObservation
Id: PASportObservationTreadmill
Title: "運動項目－跑步機"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之跑步機資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #activity
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Activity"
* code 1..1 MS
* code from $TreadmillTypeVS (required)
* subject 1..1 MS
* subject ^short = "量測對象"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "量測對象。[應輸入 Patient Resource ID]"
* performer 0..1
* performer ^short = "量測人員"
* performer only Reference(LTCPractitioner)
* performer.reference 1..1 MS
* performer.reference ^short = "量測人員。[應輸入 Practitioner Resource ID]"

* component 4..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component ^slicing.description = "跑步機應紀錄跑步時間、跑步距離、消耗總卡路里、跑步速度等資料，另最大心率、平均心率、坡度等資料為選擇性填寫，故此 Resource 至少有 4 個 component"
* component ^slicing.ordered = false
* component contains
    Duration 1..1 MS and
    Distance 1..1 MS and
    Calories 1..1 MS and
    Speed 1..1 MS and
    MaxHeart 0..1 MS and
    MeanHeart 0..1 MS and
    Gradient 0..1 MS
* component[Duration] ^short = "跑步時間"
* component[Duration].code 1..1 MS
* component[Duration].code ^short = "跑步時間代碼"
* component[Duration].code.coding 1..1 MS
* component[Duration].code.coding.system 1..1 MS
* component[Duration].code.coding.system = $LOINC
* component[Duration].code.coding.code 1..1 MS
* component[Duration].code.coding.code = #55411-3
* component[Duration].code.coding.display 1..1 MS
* component[Duration].code.coding.display = "Exercise duration"
* component[Duration].valueQuantity 0..1 MS
* component[Duration].valueQuantity.value 1..1 MS
* component[Duration].valueQuantity.unit 1..1 MS
* component[Duration].valueQuantity.system 1..1 MS
* component[Duration].valueQuantity.system = "http://unitsofmeasure.org"
* component[Duration].valueQuantity.code 1..1 MS
* component[Duration].valueQuantity.code = #min

* component[Distance] ^short = "跑步距離"
* component[Distance].code 1..1 MS
* component[Distance].code ^short = "跑步距離代碼"
* component[Distance].code.coding 1..1 MS
* component[Distance].code.coding.system 1..1 MS
* component[Distance].code.coding.system = $LOINC
* component[Distance].code.coding.code 1..1 MS
* component[Distance].code.coding.code = #55412-1
* component[Distance].code.coding.display 1..1 MS
* component[Distance].code.coding.display = "Exercise distance unspecified time"
* component[Distance].valueQuantity 0..1 MS
* component[Distance].valueQuantity.value 1..1 MS
* component[Distance].valueQuantity.unit 1..1 MS
* component[Distance].valueQuantity.system 1..1 MS
* component[Distance].valueQuantity.system = "http://unitsofmeasure.org"
* component[Distance].valueQuantity.code 1..1 MS
* component[Distance].valueQuantity.code = #km

* component[Calories] ^short = "消耗總卡路里"
* component[Calories].code 1..1 MS
* component[Calories].code ^short = "消耗總卡路里代碼"
* component[Calories].code.coding 1..1 MS
* component[Calories].code.coding.system 1..1 MS
* component[Calories].code.coding.system = $LOINC
* component[Calories].code.coding.code 1..1 MS
* component[Calories].code.coding.code = #55421-2
* component[Calories].code.coding.display 1..1 MS
* component[Calories].code.coding.display = "Calories burned Machine estimate"
* component[Calories].valueQuantity 0..1 MS
* component[Calories].valueQuantity.value 1..1 MS
* component[Calories].valueQuantity.unit 1..1 MS
* component[Calories].valueQuantity.system 1..1 MS
* component[Calories].valueQuantity.system = "http://unitsofmeasure.org"
* component[Calories].valueQuantity.code 1..1 MS
* component[Calories].valueQuantity.code = #kcal

* component[Speed] ^short = "跑步速度"
* component[Speed].code 1..1 MS
* component[Speed].code ^short = "跑步速度代碼"
* component[Speed].code.coding 1..1 MS
* component[Speed].code.coding.system 1..1 MS
* component[Speed].code.coding.system = $SNOMEDCT
* component[Speed].code.coding.code 1..1 MS
* component[Speed].code.coding.code = #252141006
* component[Speed].code.coding.display 1..1 MS
* component[Speed].code.coding.display = "Treadmill speed achieved"
* component[Speed].valueQuantity 0..1 MS
* component[Speed].valueQuantity.value 1..1 MS
* component[Speed].valueQuantity.unit 1..1 MS
* component[Speed].valueQuantity.system 1..1 MS
* component[Speed].valueQuantity.system = "http://unitsofmeasure.org"
* component[Speed].valueQuantity.code 1..1 MS
* component[Speed].valueQuantity.code = #km/h

* component[MaxHeart] ^short = "最大心率"
* component[MaxHeart].code 1..1 MS
* component[MaxHeart].code ^short = "最大心率代碼"
* component[MaxHeart].code.coding 1..1 MS
* component[MaxHeart].code.coding.system 1..1 MS
* component[MaxHeart].code.coding.system = $LOINC
* component[MaxHeart].code.coding.code 1..1 MS
* component[MaxHeart].code.coding.code = #101692-2
* component[MaxHeart].code.coding.display 1..1 MS
* component[MaxHeart].code.coding.display = "Maximum heart rate"
* component[MaxHeart].valueQuantity 0..1 MS
* component[MaxHeart].valueQuantity.value 1..1 MS
* component[MaxHeart].valueQuantity.unit 1..1 MS
* component[MaxHeart].valueQuantity.system 1..1 MS
* component[MaxHeart].valueQuantity.system = "http://unitsofmeasure.org"
* component[MaxHeart].valueQuantity.code 1..1 MS
* component[MaxHeart].valueQuantity.code = #/min

* component[MeanHeart] ^short = "平均心率"
* component[MeanHeart].code 1..1 MS
* component[MeanHeart].code ^short = "平均心率代碼"
* component[MeanHeart].code.coding 1..1 MS
* component[MeanHeart].code.coding.system 1..1 MS
* component[MeanHeart].code.coding.system = $LOINC
* component[MeanHeart].code.coding.code 1..1 MS
* component[MeanHeart].code.coding.code = #103205-1
* component[MeanHeart].code.coding.display 1..1 MS
* component[MeanHeart].code.coding.display = "Average heart rate"
* component[MeanHeart].valueQuantity 0..1 MS
* component[MeanHeart].valueQuantity.value 1..1 MS
* component[MeanHeart].valueQuantity.unit 1..1 MS
* component[MeanHeart].valueQuantity.system 1..1 MS
* component[MeanHeart].valueQuantity.system = "http://unitsofmeasure.org"
* component[MeanHeart].valueQuantity.code 1..1 MS
* component[MeanHeart].valueQuantity.code = #/min

* component[Gradient] ^short = "坡度"
* component[Gradient].code 1..1 MS
* component[Gradient].code ^short = "坡度代碼"
* component[Gradient].code.coding 1..1 MS
* component[Gradient].code.coding.system 1..1 MS
* component[Gradient].code.coding.system = $SNOMEDCT
* component[Gradient].code.coding.code 1..1 MS
* component[Gradient].code.coding.code = #252140007
* component[Gradient].code.coding.display 1..1 MS
* component[Gradient].code.coding.display = "Treadmill gradient achieved"
* component[Gradient].valueQuantity 0..1 MS
* component[Gradient].valueQuantity.value 1..1 MS
* component[Gradient].valueQuantity.unit 1..1 MS
* component[Gradient].valueQuantity.system 1..1 MS
* component[Gradient].valueQuantity.system = "http://unitsofmeasure.org"
* component[Gradient].valueQuantity.code 1..1 MS
* component[Gradient].valueQuantity.code = #%
