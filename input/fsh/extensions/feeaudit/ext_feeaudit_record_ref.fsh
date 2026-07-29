// 長照支付審查－服務記錄識別資訊
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢 (……/appResultQuery) 回覆明細
//           approve_records（source_system、objid、trans_no）
//           err_records（source_system、objid、trans_no）
//           a_svc_records（ref_source_system、ref_objid）
//
// 設計說明：
//   FHIR R4 之 ClaimResponse.item.itemSequence、error.itemSequence 與
//   addItem.itemSequence 均為 positiveInt，且其語意是「指向 ClaimResponse.request
//   所參照之單一 Claim 內的 item.sequence」。本模組一份 ClaimResponse 代表一個核銷
//   案號、涵蓋多筆各自獨立的服務紀錄申報（LTCClaimFeeApply，其 item.sequence 固定
//   為 1），故 itemSequence 無法承載長度 20 之字串識別碼（objid），也無法在跨 Claim
//   的情境下唯一指向某一筆服務紀錄。因此另立本 Extension 以結構化方式承載服務記錄
//   之識別資訊，取代原先僅以 processNote 自由文字記載之作法。

Extension: ExtTWLTCFeeAuditRecordRef
Id: Ext-TW-LTC-FeeAudit-RecordRef
Title: "長照支付審查－服務記錄識別資訊"
Description: "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse.item"
* ^context[+].type = #element
* ^context[=].expression = "ClaimResponse.error"
* ^context[+].type = #element
* ^context[=].expression = "ClaimResponse.addItem"

* extension contains
    objid 1..1 MS and
    sourceSystem 0..1 MS and
    transNo 0..1 MS

* extension[objid] ^short = "服務記錄識別碼（objid；於 addItem 為 ref_objid），長度上限 20，對應該筆服務紀錄申報（LTCClaimFeeApply）之 identifier[objid].value"
* extension[objid].value[x] 1..1 MS
* extension[objid].value[x] only string
* extension[objid].value[x] ^short = "服務記錄識別碼值，例如 882601915"

* extension[sourceSystem] ^short = "來源系統別（source_system；於 addItem 為 ref_source_system），長度上限 20"
* extension[sourceSystem].value[x] 1..1 MS
* extension[sourceSystem].value[x] only string
* extension[sourceSystem].value[x] ^short = "來源系統別值，例如 TranCareCenter"

* extension[transNo] ^short = "該筆服務記錄申報時之交易序號（trans_no），長度上限 10"
* extension[transNo].value[x] 1..1 MS
* extension[transNo].value[x] only string
* extension[transNo].value[x] ^short = "交易序號值，例如 A123456789"
