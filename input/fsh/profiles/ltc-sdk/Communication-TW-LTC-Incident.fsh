Profile: CommunicationTWLTCIncident
Parent: Communication
Id: Communication-TW-LTC-Incident
Title: "長照 SDK－異常服務紀錄（Incident Report）"
Description: "個案異動通報：突發狀況、暫停/恢復的事件紀錄；對應表單欄位。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Communication-TW-LTC-Incident"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "LTC SDK Working Group"

/* ===== Must Support 基本欄位 ===== */
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/event-status (required)
* category 0..* MS
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* sender 0..1 MS
* sender only Reference(TWCorePractitionerRole or TWCorePractitioner)
* recipient 0..* MS
* recipient only Reference(TWCoreOrganization or TWCorePractitionerRole or TWCorePractitioner)
* sent 1..1 MS
* note 0..* MS

/* ===== 綁定：異常類別、通報方式 ===== */
* reasonCode 1..* MS
* reasonCode from VS_TW_LTC_Incident_Category (required)

* medium 0..* MS
* medium from VS_TW_LTC_Incident_NotificationMethod (required)

/* ===== Payload：多段描述 ===== */
* payload 1..* MS
* payload.content[x] only string

/* ===== 額外關聯 ===== */
* about 0..* MS
* about only Reference(EpisodeOfCare or CarePlan)

/* ===== Mapping（移除 payload[index]，改通用描述）===== */
Mapping: form
Id: form
Title: "UI 表單對應"
Source: Communication-TW-LTC-Incident
* subject -> "個案（個案＊）"
* sender  -> "服務員（編號/姓名）"
* reasonCode -> "異常類別（多選）"
* medium -> "通報方式（多選）"
* payload.contentString -> "事件描述 / 詳述 / 處理 / 建議"
* about -> "關聯案件/計畫"
* sent -> "通報時間"

// Profile: Communication_TW_LTC_Incident
// Parent: Communication
// Id: Communication-TW-LTC-Incident
// Title: "長照 SDK－異常服務紀錄（Incident Report）"
// Description: "個案異動通報：突發狀況、暫停/恢復的事件紀錄；對應表單欄位。"
// * ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Communication-TW-LTC-Incident"
// * ^version = "0.1.0"
// * ^status = #draft
// * ^publisher = "LTC SDK Working Group"

// // ===== Must Support 與基本欄位 =====
// * status 1..1 MS
// * status from http://hl7.org/fhir/ValueSet/event-status (required) // in-progress | completed | on-hold | entered-in-error
// * category 0..* MS
// * subject 1..1 MS
// * subject only Reference(TWCorePatient)
// * sender 0..1 MS
// * sender only Reference(TWCorePractitionerRole or TWCorePractitioner)
// * recipient 0..* MS
// * recipient only Reference(TWCoreOrganization or TWCorePractitionerRole or TWCorePractitioner)
// * sent 1..1 MS                       // 通報時間（表單未標＊可視需求改 0..1）
// * note 0..* MS

// // ===== 綁定：異常類別、通報方式 =====
// * reasonCode 1..* MS                  // 異常類別
// * reasonCode from VS_TW_LTC_Incident_Category (required)

// * extension 0..* MS
// * extension contains
//     Ext_TW_LTC_Incident_OccurredDateTime named occurred 0..1 MS and
//     Ext_TW_LTC_Incident_Location        named place    0..1 MS and
//     Ext_TW_LTC_Incident_Party           named party    0..* MS and
//     // http://hl7.org/fhir/StructureDefinition/communication-method named method 0..* MS // 官方 extension：表示通訊方式
// // 由於官方 communication-method 是 CodeableConcept，我們綁定到通報方式 VS
// * extension[method].value[x] only CodeableConcept
// * extension[method].valueCodeableConcept from VS_TW_LTC_Incident_NotificationMethod (required)

// // ===== 文字區塊：用 payload String + 自家 textType 標記 =====
// * payload 1..* MS
// * payload.content[x] only string
// * payload.extension 1..* MS
// * payload.extension contains Ext_TW_LTC_Incident_TextType named textType 1..1 MS

// // ===== 額外關聯（可連到 EpisodeOfCare / CarePlan）=====
// * about 0..* MS
// * about only Reference(EpisodeOfCare or CarePlan)

// // ===== 驗證規則 =====
// Invariant: ltc-incident-has-desc
// Description: "至少應包含一段『事件描述』的 payload"
// Severity: #error
// Expression: "payload.where(extension.where(url='{{CanonicalBase}}/StructureDefinition/ext-tw-ltc-incident-texttype').value.as(CodeableConcept).coding.code='desc').exists()"
// // * obeys ltc-incident-has-desc

// Invariant: ltc-incident-other-needs-text
// Description: "若異常類別或通報方式包含『其他』，建議提供補充文字（payload.advice 或 note）。"
// Severity: #warning
// Expression: "(reasonCode.coding.code = 'other' or extension.where(url='http://hl7.org/fhir/StructureDefinition/communication-method').value.as(CodeableConcept).coding.code='other') implies (payload.exists() or note.exists())"
// // * obeys ltc-incident-other-needs-text

// // ===== Mapping（對應表單欄位）=====
// Mapping: form
// Id: form
// Title: "UI 表單對應"
// Source: Communication-TW-LTC-Incident
// * subject -> "個案（個案＊）"
// * sender  -> "服務員（編號/姓名）"
// * extension[occurred] -> "發生日期（＊）"
// * extension[place]    -> "發生地點"
// * reasonCode          -> "異常類別（多選）"
// * extension[method]   -> "通報方式（多選）"
// * payload[textType=desc].contentString        -> "事件描述＊（單行）"
// * payload[textType=process].contentString     -> "事件發生過程詳述（多行）"
// * payload[textType=postprocess].contentString -> "事件發生後處理過程詳述（多行）"
// * payload[textType=advice].contentString      -> "檢討及改善建議（多行）"
// * about -> "關聯案件/計畫"
// * sent  -> "通報時間"
