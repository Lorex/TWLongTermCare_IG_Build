Profile: LTCBundleFeeAuditStatus
Parent: Bundle
Id: LTCBundleFeeAuditStatus
Title: "長照支付審查－分案審核狀態回覆打包"
Description: "此 Bundle 以衛生福利部支付審核系統的服務單位各分案審核狀態查詢結果為基礎，用以表述申報交易與分案審核狀態的回覆結構。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditStatus"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每份 Bundle 放入查詢到的交易任務及分案審核狀態。如有分案異常或服務紀錄刪除失敗，則一併填入錯誤訊息。"

* type 1..1 MS
* type ^short = "Bundle 的類型。[應填入 searchset]"
* type = #searchset

* total 0..1 MS
* total ^short = "查詢結果總筆數。[應填入非負整數]"

* entry 1..* MS
* entry ^short = "審核狀態回覆的內容，至少應包含一筆交易單處理狀態。"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    task 1..* MS and
    operationOutcome 0..* MS

* entry[task] ^short = "交易任務與分案審核狀態。[應填入對應的 Task]"
* entry[task].resource 1..1 MS
* entry[task].resource ^short = "交易任務與分案審核狀態。[應填入符合 LTCTaskFeeAudit 的 Task]"
* entry[task].resource ^definition = "應填入交易任務的類型、處理狀態與分案核銷狀況，每筆任務分別填寫。"
* entry[task].resource only LTCTaskFeeAudit

* entry[operationOutcome] ^short = "分案異常或服務紀錄刪除失敗的訊息。[應填入對應的 OperationOutcome]"
* entry[operationOutcome].resource 1..1 MS
* entry[operationOutcome].resource ^short = "分案異常或服務紀錄刪除失敗的訊息。[應填入符合 LTCOperationOutcomeFeeAudit 的 OperationOutcome]"
* entry[operationOutcome].resource ^definition = "應填入失敗的原因、錯誤代碼及相關服務紀錄。"
* entry[operationOutcome].resource only LTCOperationOutcomeFeeAudit
