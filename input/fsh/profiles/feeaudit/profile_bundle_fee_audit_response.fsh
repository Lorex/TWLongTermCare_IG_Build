Profile: LTCBundleFeeAuditResponse
Parent: Bundle
Id: LTCBundleFeeAuditResponse
Title: "長照支付審查－分案審核明細回覆打包"
Description: "此 Bundle 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述單一核銷案號的審核明細回覆結構。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每份 Bundle 放入一個核銷案號的審核明細，包含核定金額、服務紀錄及相關清冊。如有檢核錯誤，則一併填入錯誤訊息。"

* type 1..1 MS
* type ^short = "Bundle 的類型。[應填入 searchset]"
* type = #searchset

* total 0..1 MS
* total ^short = "查詢結果總筆數。[應填入非負整數]"

* entry 1..* MS
* entry ^short = "審核明細回覆的內容，至少應包含一筆分案審核明細。"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    claimResponse 1..1 MS and
    operationOutcome 0..* MS

* entry[claimResponse] ^short = "分案審核明細。[應填入對應的 ClaimResponse]"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource ^definition = "應填入本核銷案號的審核結果。"
* entry[claimResponse].resource ^short = "分案審核明細。[應填入符合 LTCClaimResponseFeeAudit 的 ClaimResponse]"
* entry[claimResponse].resource only LTCClaimResponseFeeAudit

* entry[operationOutcome] ^short = "服務紀錄的檢核錯誤訊息。[應填入對應的 OperationOutcome]"
* entry[operationOutcome].resource 1..1 MS
* entry[operationOutcome].resource ^short = "服務紀錄的檢核錯誤訊息。[應填入符合 LTCOperationOutcomeFeeAudit 的 OperationOutcome]"
* entry[operationOutcome].resource ^definition = "應填入錯誤代碼、錯誤原因及發生錯誤的服務紀錄。"
* entry[operationOutcome].resource only LTCOperationOutcomeFeeAudit
