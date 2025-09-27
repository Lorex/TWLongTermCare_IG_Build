Alias: $TWCoreLocation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore

Profile: LTCLocation
Parent: $TWCoreLocation
Id: Location-twltc
Title: "長期照顧－個案位置監測"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。"

* . ^short = "個案位置監測的資訊"

* status 1..1 MS
* status ^short = "位置記錄的狀態"
* status = #active

* name 1..1 MS
* name ^short = "個案所在的地點名稱"
* name ^definition = "個案所在的地點名稱，例如：日照中心、家裡、公園等"

* description 0..1 MS
* description ^short = "位置描述"
* description ^definition = "位置的詳細描述資訊"

* mode 0..1 MS
* mode ^short = "位置模式"
* mode = #instance

* type 1..1 MS
* type ^short = "位置類型"
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code 1..1 MS
* type.coding.code = #PTRES "Patient's Residence"
* type.coding.display 1..1 MS
* type.coding.display = "Patient's Residence"

* telecom 0..* MS
* telecom ^short = "位置相關的聯絡方式"

* address 0..1 MS
* address ^short = "位置的地址資訊"
* address.text 0..1 MS
* address.text ^short = "地址的文字表述"

* position 0..1 MS
* position ^short = "位置的經緯度座標"
* position.longitude 1..1 MS
* position.longitude ^short = "經度座標"
* position.longitude ^definition = "GPS 經度座標，以十進位度數格式表示"
* position.latitude 1..1 MS
* position.latitude ^short = "緯度座標"
* position.latitude ^definition = "GPS 緯度座標，以十進位度數格式表示"
* position.altitude 0..1 MS
* position.altitude ^short = "海拔高度"
* position.altitude ^definition = "位置的海拔高度，以公尺為單位"

* partOf 0..1 MS
* partOf ^short = "此位置所屬的上層位置"
* partOf.reference 1..1 MS
* partOf.reference ^short = "上層位置的參考"

// Example
Instance: ltc-location-example
InstanceOf: LTCLocation
Title: "長期照顧個案位置監測範例"
Description: "一個長期照顧個案位置監測的範例，展示如何使用 LTCLocation Profile"
Usage: #example

* status = #active
* name = "新北市私立安康老人長期照顧中心（養護型）"
* description = "失智症個案陳明輝目前所在的日照中心"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PTRES "Patient's Residence"

* address.use = #work
* address.type = #physical
* address.text = "新北市中和區安康路二段123號"

* position.longitude = 121.5089
* position.latitude = 24.9936
* position.altitude = 25.5