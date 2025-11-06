Profile: ClaimResponseTWLTCExport
Parent: ClaimResponse
Id: ClaimResponse-TW-LTC-Export
Title: "長照 SDK－照管全量匯出（ClaimResponse）"
Description: "審核/核定與檢核錯誤承載（含民國年月、錯誤訊息）。"
* status 1..1
* outcome 1..1
* disposition 0..1
* error 0..*
* extension contains
    ExtTWLTCExportError named errorMessage 0..* and
    ExtTWLTCExportYYYMMROC named yyyymm 0..1 and
    ExtTWLTCExportUnit named unit 0..*
