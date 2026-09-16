// 長照支付審查－交通接送起訖地（Location）
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報（……/FeeApply）
//
// 交通接送地點可為住家、醫院或機構，類型應依實際地點填寫。

Profile: LTCLocationFeeAuditPlace
Parent: $TWCoreLocation
Id: LTCLocationFeeAuditPlace
Title: "長照支付審查－交通接送起訖地"
Description: "此 Location 以衛生福利部支付審核系統的交通接送資料為基礎，用以表述個案接送的出發地、目的地及經緯度。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "用於 BD03、DA01 交通接送服務。每筆 Location 填寫一個出發地或目的地，可為住家、醫院、機構或社區服務據點。"

* . ^short = "交通接送的出發地或目的地"

* status 0..1 MS
* status ^short = "地點的使用狀態，一般填入 active。"

* name 1..1 MS
* name ^short = "地點名稱。[應填入實際地點的名稱，例如個案住家、亞東醫院]"
* name ^definition = "應填寫可辨識接送地點的名稱。"

* description 0..1 MS
* description ^short = "地點的補充說明"

* mode 0..1 MS
* mode ^short = "地點模式，如為特定地點，則填入 instance。"

* type 0..1 MS
* type ^short = "地點類型，應依實際地點填寫住家、醫院或社區式長照機構等類型。"
* type ^definition = "應依實際地點選擇類型代碼。例如個案住家可使用 PTRES，醫院可使用 HOSP。"

* address 0..1 MS
* address ^short = "地點地址。[應填入 Address]"
* address ^definition = "應填寫此地點的實際地址，完整地址文字填入 address.text。"
* address.text 0..1 MS
* address.text ^short = "完整地址。[應填入包含縣市、鄉鎮市區與門牌的地址文字]"

* position 0..1 MS
* position ^short = "地點的經緯度"
* position ^definition = "應同時填寫經度與緯度，使用十進位度數。"
* position.longitude 1..1 MS
* position.longitude ^short = "地點的經度。[應填入十進位度數]"
* position.latitude 1..1 MS
* position.latitude ^short = "地點的緯度。[應填入十進位度數]"
