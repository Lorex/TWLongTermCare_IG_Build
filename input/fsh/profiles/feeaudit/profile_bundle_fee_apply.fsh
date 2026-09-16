Profile: LTCBundleFeeApply
Parent: Bundle
Id: LTCBundleFeeApply
Title: "長照支付審查－服務記錄申報文件打包"
Description: "此 Bundle 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一次申報交易的資料打包結構。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每份 Bundle 放入同一次申報交易的服務紀錄，以及相關的個案、服務單位、照顧服務員與地點資料。每筆服務紀錄應有唯一的識別碼；更新紀錄時應使用原有的識別碼。"

* . ^short = "服務記錄申報資料"

// --- Bundle 基本欄位 ---
* type 1..1 MS
* type = #collection
* type ^short = "Bundle 的類型。[應填入 collection]"

* identifier 0..1 MS
* identifier ^short = "本次申報交易的序號。[應填入 Identifier]"
* identifier.system 1..1 MS
* identifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier.system ^short = "交易序號的識別碼系統"
* identifier.value 1..1 MS
* identifier.value ^short = "交易序號。[應填入最長 10 個字元的字串]"

* timestamp 0..1 MS
* timestamp ^short = "本次申報的日期與時間。[應填入包含時區的日期時間]"
* timestamp ^definition = "應填入送出本次申報的日期與時間，包含秒數及時區，例如 2026-09-17T09:30:00+08:00。"

// 申報資料
* entry 1..* MS
* entry ^short = "本次申報的資料，個案服務紀錄最多可放入 5000 筆。"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    claim 1..* MS and
    patient 1..* MS and
    organization 1..1 MS and
    practitioner 0..* MS and
    location 0..* MS

* entry[claim].resource 1..1 MS
* entry[claim].resource ^short = "個案服務紀錄。[應填入符合 LTCClaimFeeApply 的 Claim]"
* entry[claim] ^short = "個案服務紀錄。[應填入對應的 Claim]"
* entry[claim] ^definition = "每筆服務紀錄分別填寫一筆 Claim。同一次交易最多申報 5000 筆。"
* entry[claim].resource only LTCClaimFeeApply

* entry[patient].resource 1..1 MS
* entry[patient].resource ^short = "個案基本資料。[應填入符合 LTCPatient 的 Patient]"
* entry[patient] ^short = "個案基本資料。[應填入對應的 Patient]"
* entry[patient] ^definition = "應填入接受服務的個案資料，供服務紀錄參照。"
* entry[patient].resource only LTCPatient

* entry[organization].resource 1..1 MS
* entry[organization].resource ^short = "申報單位。[應填入符合 LTCOrganization 的 Organization]"
* entry[organization] ^short = "申報單位。[應填入對應的 Organization]"
* entry[organization] ^definition = "應填入提出申報的服務提供單位資料。"
* entry[organization].resource only LTCOrganization

* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource ^short = "照顧服務員。[應填入符合 LTCPractitioner 的 Practitioner]"
* entry[practitioner] ^short = "照顧服務員。[應填入對應的 Practitioner]"
* entry[practitioner] ^definition = "應填入實際提供服務的照顧服務員資料，每位照顧服務員分別填寫。"
* entry[practitioner].resource only LTCPractitioner

* entry[location].resource 1..1 MS
* entry[location].resource ^short = "交通接送的出發地或目的地。[應填入符合 LTCLocationFeeAuditPlace 的 Location]"
* entry[location] ^short = "交通接送的出發地或目的地。[應填入對應的 Location]"
* entry[location] ^definition = "申報 BD03、DA01 時，應分別填寫出發地與目的地的資料。"
* entry[location].resource only LTCLocationFeeAuditPlace
