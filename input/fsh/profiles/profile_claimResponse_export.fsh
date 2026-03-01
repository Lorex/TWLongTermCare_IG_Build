Profile: LTCClaimResponseExport
Parent: ClaimResponse
Id: LTC-ClaimResponse-Export
Title: "長照 SDK－照管全量匯出（ClaimResponse）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現長照照管全量匯出之審核結果與檢核錯誤資訊。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-ClaimResponse-Export"
* ^version = "0.1.0"
* ^status = #draft
* status 1..1
* outcome 1..1
* disposition 0..1
* error 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains yyyymm 0..1 MS
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
* identifier[yyyymm].value 1..1
* extension contains
    ExtTWLTCExportError named errorMessage 0..* and
    ExtTWLTCExportUnit named unit 0..*
