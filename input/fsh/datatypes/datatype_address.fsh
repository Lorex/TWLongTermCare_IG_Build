Alias: $TWCoreAddress = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Address-twcore
Alias: $AddressUseVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $ExtAddressUse-TWLTC = http://ltc-ig.fhir.tw/StructureDefinition/ExtAddressUse-TWLTC

Profile: Address
Parent: $TWCoreAddress
Id: Address-TWLTC
Title: "TWLTC Address"
Description: "適用於長照情境的地址"

* extension contains
    $ExtAddressUse-TWLTC named addressUse 1..1 MS
* extension[addressUse] ^short = "住民地址用途"