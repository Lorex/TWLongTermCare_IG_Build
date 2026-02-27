Logical: LTCAdverseEventModel
Id: LTCAdverseEventModel
Title: "異常事件警報邏輯模型"
Description: "此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。"

* identifier 1..1 BackboneElement "異常事件識別碼" "異常事件警報的唯一識別碼"
  * identifierValue 1..1 string "識別碼值" "異常事件警報的唯一識別碼值"
  * identifierSystem 1..1 string "識別碼系統" "異常事件警報識別碼的系統識別符"
  * identifierUse 0..1 code "識別碼用途" "識別碼的用途，通常為 official"

* actuality 1..1 code "異常事件實際性" "異常事件的實際性 (實際的異常：actual / 潛在的異常：potential)"

* event 0..1 BackboneElement "異常事件類型" "異常事件的具體類型"
  * eventText 1..1 string "事件類型描述" "異常事件類型的描述"

* subject 1..1 BackboneElement "個案資訊" "發生異常事件的個案資訊"
  * subjectReference 1..1 string "個案參考" "對個案資源的參考"

* date 1..1 dateTime "異常事件發生時間" "異常事件實際發生的日期和時間"

* detected 0..1 dateTime "異常事件偵測時間" "異常事件被系統偵測到的時間"

* recordedDate 0..1 dateTime "異常事件記錄時間" "異常事件被記錄到系統的時間"

* resultingCondition 0..* BackboneElement "結果狀況" "異常事件導致的結果狀況"
  * conditionReference 1..1 string "狀況參考" "對結果狀況資源的參考"

* location 0..1 BackboneElement "位置資訊" "異常事件發生的位置資訊"
  * locationReference 1..1 string "位置參考" "對位置資源的參考"

* seriousness 0..1 code "臨床嚴重程度" "異常事件的臨床嚴重程度，指臨床上會對患者造成生命威脅或導致患者長期失能的風險程度"

* severity 0..1 code "嚴重程度分級" "異常事件本身的嚴重程度（輕微、中度、重度）"

* outcome 0..1 code "異常事件結果" "異常事件的最終結果"

* recorder 0..1 BackboneElement "記錄者資訊" "記錄異常事件的人員資訊"
  * recorderReference 0..1 string "記錄者參考" "對記錄者資源的參考"

* contributor 0..1 BackboneElement "涉及者資訊" "涉及此異常事件的人員或設備"
  * contributorReference 0..1 string "涉及者參考" "對涉及者資源的參考"


Mapping: LTCAdverseEventModelToLTCAdverseEvent
Id: LTCAdverseEventModelToLTCAdverseEvent
Title: "異常事件警報邏輯模型到AdverseEvent Profile映射"
Description: "此映射定義如何將異常事件警報邏輯模型轉換為LTCAdverseEvent Profile"
Source: LTCAdverseEventModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"

// 異常事件基本資料映射
* -> "AdverseEvent"
* identifier.identifierValue -> "AdverseEvent.identifier.value"
* identifier.identifierSystem -> "AdverseEvent.identifier.system"
* identifier.identifierUse -> "AdverseEvent.identifier.use"
* actuality -> "AdverseEvent.actuality"
* event.eventText -> "AdverseEvent.event.text"

// 個案資訊映射
* subject.subjectReference -> "AdverseEvent.subject.reference"

// 時間資訊映射
* date -> "AdverseEvent.date"
* detected -> "AdverseEvent.detected"
* recordedDate -> "AdverseEvent.recordedDate"

// 結果狀況映射
* resultingCondition.conditionReference -> "AdverseEvent.resultingCondition.reference"

// 位置資訊映射
* location.locationReference -> "AdverseEvent.location.reference"

// 嚴重程度映射
* seriousness -> "AdverseEvent.seriousness"
* severity -> "AdverseEvent.severity"

// 結果資訊映射
* outcome -> "AdverseEvent.outcome"

// 記錄者資訊映射
* recorder.recorderReference -> "AdverseEvent.recorder.reference"

// 涉及者資訊映射
* contributor.contributorReference -> "AdverseEvent.contributor.reference"