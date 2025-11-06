Profile: CarePlan_TW_LTC_Plan_SDK
Parent: CarePlan
Id: CarePlan-TW-LTC-Plan-SDK
Title: "長照 SDK－照顧計畫（不含輔具）"
Description: "對應 SDK r4：服務項目代碼/名稱、金額、數量、頻率/次數等。金流總覽仍以 CER 呈現。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/CarePlan-TW-LTC-Plan-SDK"
* ^version = "0.1.0"
* ^status = #draft
* status 1..1 MS
* intent 1..1 MS
* intent = #plan
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* period 0..1 MS
* activity 1..* MS
* activity.detail 1..1 MS
* activity.detail.code 1..1 MS 
// from VS_TW_LTC_ServiceItem_SDK (required)
* activity.detail.quantity 0..1
* activity.detail.scheduled[x] only Timing
* activity.detail.scheduledTiming.repeat.count 0..1
* activity.detail.extension contains
    Ext_TW_LTC_UnitPrice_SDK named unitPrice 0..1 and
    Ext_TW_LTC_FrequencyLabel_SDK named freqLabel 0..1
