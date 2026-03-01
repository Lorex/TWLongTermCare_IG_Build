Alias: $TWCoreCarePlan = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore

Profile: LTCCarePlanPayload
Parent: $TWCoreCarePlan
Id: LTC-CarePlan-Payload
Title: "長照 SDK－照顧計畫（不含輔具）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長照 SDK 回傳之照顧計畫，包含服務項目代碼、金額、數量及頻率等資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"
* ^version = "0.1.0"
* ^status = #draft
* status 1..1 MS
* intent 1..1 MS
* intent = #plan
* subject 1..1 MS
* subject only Reference(LTCPatient)
* period 0..1 MS
* activity 1..* MS
* activity.detail 1..1 MS
* activity.detail.code 1..1 MS 
// from VS_TW_LTC_ServiceItem (required)
* activity.detail.quantity 0..1
* activity.detail.scheduled[x] only Timing or string
* activity.detail.scheduledTiming.repeat.count 0..1
* activity.detail.extension contains
    ExtTWLTCUnitPrice named unitPrice 0..1
