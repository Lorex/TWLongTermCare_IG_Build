// 長照支付審查－交通接送起訖地（Location）
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報（……/FeeApply）
//           出發地 addr1／出發地經緯度 addrlat1、addrlng1
//           目的地 addr2／目的地經緯度 addrlat2、addrlng2
//
// 設計說明：
//   本 IG 既有的 LTCLocation（Location-twltc）是為「失智症個案位置監測」設計，
//   其 type.coding 已固定為 v3-RoleCode#PTRES（Patient's Residence，個案住所），
//   無法表達醫院、機構、社區服務據點等非住家之交通接送目的地。
//   故另立本 Profile 供交通接送（BD03、DA01）之起訖地使用，type 不設固定值，
//   由實作者依實際地點性質（住家 PTRES、醫院 HOSP、社區式長照機構 CSC 等）填寫。

Profile: LTCLocationFeeAuditPlace
Parent: $TWCoreLocation
Id: LTCLocationFeeAuditPlace
Title: "長照支付審查－交通接送起訖地"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現長照支付審查「服務記錄申報（FeeApply）」中交通接送（照顧組合代碼 BD03、DA01）之出發地（addr1）與目的地（addr2），並以 Location.position 承載其緯度（addrlat1／addrlat2）與經度（addrlng1／addrlng2）。與本 IG 既有之 LTCLocation（個案位置監測，type 固定為個案住所 PTRES）不同，本 Profile 之 type 不設固定值，得依實際地點性質填寫住家、醫院、社區式長照機構等地點類型，以正確表達交通接送之起訖地語意。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"
* ^version = "0.1.0"
* ^status = #draft

* . ^short = "交通接送之出發地或目的地"

* status 0..1 MS
* status ^short = "地點狀態，交通接送起訖地一般填 active"

* name 1..1 MS
* name ^short = "地點名稱，對應規格書欄位 addr1（出發地）或 addr2（目的地）之名稱，例如「個案住家」、「亞東醫院」"

* description 0..1 MS
* description ^short = "地點之補充說明"

* mode 0..1 MS
* mode ^short = "地點模式，指涉特定地點時填 instance"

* type 0..1 MS
* type ^short = "地點類型，依實際地點性質填寫（例如個案住所 PTRES、醫院 HOSP、社區式長照機構）；本 Profile 不設固定值，以免將非住家之目的地誤標為個案住所"

* address 0..1 MS
* address ^short = "地點之地址；規格書之 addr1／addr2 為長度 40 之地址或地點名稱字串，得填於 address.text"
* address.text 0..1 MS
* address.text ^short = "地址之文字表述"

* position 0..1 MS
* position ^short = "地點之經緯度座標，對應規格書欄位 addrlat1／addrlng1（出發地）或 addrlat2／addrlng2（目的地）"
* position.longitude 1..1 MS
* position.longitude ^short = "經度座標（addrlng1／addrlng2），以十進位度數格式表示"
* position.latitude 1..1 MS
* position.latitude ^short = "緯度座標（addrlat1／addrlat2），以十進位度數格式表示"
