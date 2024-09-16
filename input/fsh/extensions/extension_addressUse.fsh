Alias: $AddressUseVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC

Extension: ExtAddressUseTWLTC
Id: ExtAddressUse-TWLTC
Title: "住民地址用途"
Description: "表示住民地址的用途，例如：現居地址、戶籍地址等。此地址用途與 Address.use 不同，Address.use 表示家用或工作地點，例如：billing、home、work 等。而此 Extension 表示住民實際居住地址的利用情況，例如：現居地址、戶籍地址等。"
Context: Address 

* extension 0..0
* value[x] only CodeableConcept
* value[x] 1..1 MS
* value[x] ^short = "住民地址用途"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "住民地址用途"
* valueCodeableConcept from $AddressUseVS-TWLTC (required)
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "住民地址用途代碼"
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/AddressUseCS-TWLTC"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code ^short = "住民地址用途代碼。[應填入 current / residential]"