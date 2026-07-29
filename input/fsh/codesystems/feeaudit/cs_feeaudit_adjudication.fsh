CodeSystem: CS_TW_LTC_FeeAuditAdjudication
Id: cs-tw-ltc-feeaudit-adjudication
Title: "支付審查－核定金額類別"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項金額欄位之類別代碼，供 ClaimResponse.total.category 與 ClaimResponse.item.adjudication.category 使用。其中核定金額（approveFee）、核增金額（incInAcc）、核減金額（decInAcc）、政策鼓勵金額（aSvcFee）、分案暫付金額（tempPaymentFee）為長照支付審查特有、國際標準無對應者；申請核銷金額（submitted）、自付額（copayment）與單價（price）則與 HL7 標準代碼系統 http://terminology.hl7.org/CodeSystem/adjudication 之 submitted、copay、eligible 語意相近，本 CodeSystem 為保持同一組金額類別代碼之一致性而一併收錄，實作者於跨國情境交換時得改用該標準代碼。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #approveFee "核定金額"
* #incInAcc "核增金額"
* #decInAcc "核減金額"
* #copayment "自付額" "個案就該筆服務所應自行負擔之金額（copayment）。語意等同 HL7 標準代碼 http://terminology.hl7.org/CodeSystem/adjudication#copay。"
* #aSvcFee "政策鼓勵金額"
* #tempPaymentFee "分案暫付金額"
* #price "單價"
* #submitted "申請核銷金額" "服務單位就本分案所申請核銷之總金額（amount）。語意等同 HL7 標準代碼 http://terminology.hl7.org/CodeSystem/adjudication#submitted。"
