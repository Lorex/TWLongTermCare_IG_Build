Profile: ClaimResponse_TW_LTC_Export
Parent: ClaimResponse
Id: ClaimResponse_TW_LTC_Export
Title: "長照 SDK－照管全量匯出（ClaimResponse）"
Description: "審核/核定與檢核錯誤承載（含民國年月、錯誤訊息）。"
* status 1..1
* outcome 1..1
* disposition 0..1
* error 0..*
* extension contains
    Ext_TW_LTC_Export_Error named errorMessage 0..* and
    Ext_TW_LTC_Export_YYYMM_ROC named yyyymm 0..1 and
    Ext_TW_LTC_Export_Unit named unit 0..*
