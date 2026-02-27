Logical: LTCLocationModel
Id: LTCLocationModel
Title: "個案位置監測邏輯模型"
Description: "此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。"

* location 1..1 BackboneElement "位置基本資料" "個案所在位置的基本資訊"
  * locationName 1..1 string "地點名稱" "個案所在的地點名稱，例如：日照中心、家裡、公園等"
  * locationDescription 0..1 string "位置描述" "位置的詳細描述資訊"
  * locationType 1..1 code "位置類型" "位置的類型分類"

* coordinates 1..1 BackboneElement "座標資訊" "位置的經緯度座標資訊"
  * longitude 1..1 decimal "經度座標" "GPS 經度座標，以十進位度數格式表示"
  * latitude 1..1 decimal "緯度座標" "GPS 緯度座標，以十進位度數格式表示"
  * altitude 0..1 decimal "海拔高度" "位置的海拔高度，以公尺為單位"

* telecom 0..* BackboneElement "聯絡資訊" "位置相關的聯絡方式"

* address 0..1 BackboneElement "地址資訊" "位置的地址相關資訊"
  * addressText 0..1 string "地址文字描述" "地址的完整文字描述"

* hierarchy 0..1 BackboneElement "層級關係" "位置在組織架構中的層級關係"
  * parentLocationReference 0..1 string "上層位置參考" "對上層位置資源的參考"


Mapping: LTCLocationModelToLTCLocation
Id: LTCLocationModelToLTCLocation
Title: "個案位置監測邏輯模型到Location Profile映射"
Description: "此映射定義如何將個案位置監測邏輯模型轉換為LTCLocation Profile"
Source: LTCLocationModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"

// 位置基本資料映射
* -> "Location"
* location.locationName -> "Location.name"
* location.locationDescription -> "Location.description"
* location.locationType -> "Location.type"

* coordinates.longitude -> "Location.position.longitude"
* coordinates.latitude -> "Location.position.latitude"
* coordinates.altitude -> "Location.position.altitude"

* address.addressText -> "Location.address.text"

* telecom -> "Location.telecom"

* hierarchy.parentLocationReference -> "Location.partOf.reference"