// 長照支付審查－分案審核明細邏輯模型
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢 (……/appResultQuery)

Logical: LTCFeeAuditDetailModel
Id: LTCFeeAuditDetailModel
Title: "長照支付審查－分案審核明細邏輯模型"
Description: "此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditDetailModel"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false

// ---------------------------------------------------------------
// (三) 傳送資料 app_result_query_info
// ---------------------------------------------------------------
* queryInfo 1..1 BackboneElement "查詢輸入資訊" "分案審核明細查詢的傳送資料（app_result_query_info），單筆物件"
  * writeoffYyyymm 1..1 string "支審年月" "支付審查年月，格式 yyyyMM，長度 6（writeoff_yyyymm）"
  * transNo 1..1 string "交易序號" "本次查詢的交易序號，長度 10（trans_no）"
  * queryType 1..1 string "查詢類別" "查詢類別，長度 1，固定值：B，代表分案審核明細查詢（query_type）"
  * cityCd 1..1 string "縣市代碼" "受理案件之縣市代碼，長度 5（city_cd）"
  * caseNo 1..1 string "核銷案號" "欲查詢明細之核銷案號，長度 30（case_no）"

// ---------------------------------------------------------------
// (四) 回覆明細 Response.result
// ---------------------------------------------------------------
* auditResult 1..1 BackboneElement "分案審核明細" "分案審核明細查詢的回覆內容（Response.result）"
  * caseNo 1..1 string "核銷案號" "本分案之核銷案號，長度 30（case_no）"
  * records 0..1 integer "服務記錄筆數" "本分案申請之服務記錄總筆數（records），為審核通過服務記錄（approve_records）與錯誤服務記錄（err_records）之筆數合計"
  * cases 0..1 integer "個案數" "本分案申請之個案數（cases）"
  * amount 0..1 decimal "申請核銷金額" "本分案申請核銷之總金額（amount）"
  * auditMan 0..1 string "承辦人員" "承辦審核之人員姓名，長度 10（audit_man）"
  * auditReason 0..1 string "承辦審核意見" "承辦人員之審核意見說明，長度 4000（audit_reason）"
  * docVer 0..1 string "總表版次" "核銷總表之版次，長度 15（doc_ver）"
  * verDt 0..1 string "版次時間" "總表版次產生時間，格式 yyyyMMddhhmmss，長度 14（ver_dt）"
  * approveCaseNum 0..1 integer "核定個案數" "審核核定通過之個案數（approve_case_num）"
  * approveRecordCount 0..1 integer "核定服務記錄數" "審核核定通過之服務記錄筆數（approve_record_count）"
  * approveFee 0..1 decimal "核定金額" "審核核定之給付金額（approve_fee）"
  * aSvcFee 0..1 decimal "政策鼓勵金額" "A 碼加成之政策鼓勵給付金額（a_svc_fee）"
  * tempPaymentStatus 0..1 string "暫付申請狀態" "暫付申請之處理狀態，長度 15，有申請暫付才顯示（temp_payment_status）"
  * tempPaymentFee 0..1 decimal "分案暫付金額" "本分案之暫付金額，有申請暫付才顯示（temp_payment_fee）"
  * tempPaymentDocUrl 0..1 url "暫付總表下載路徑" "暫付總表檔案之下載路徑，長度 200（temp_payment_doc_url）"
  * caseSummaryNoticeUrl 0..1 url "總表下載路徑" "核銷總表檔案之下載路徑，長度 200（case_summary_notice_url）"
  * caseSvcListUrl 0..1 url "清冊路徑" "服務記錄清冊之下載路徑，長度 200（case_svc_list_url）"
  * caseSvcListExcelUrl 0..1 url "清冊 EXCEL 下載路徑" "服務記錄清冊 EXCEL 檔之下載路徑，長度 200（case_svc_list_excel_url）"
  * caseASvcListUrl 0..1 url "A 碼清冊路徑" "A 碼加成清冊之下載路徑，長度 200（case_a_svc_list_url）"
  * caseASvcListExcelUrl 0..1 url "A 碼清冊 EXCEL 下載路徑" "A 碼加成清冊 EXCEL 檔之下載路徑，長度 200（case_a_svc_list_excel_url）"
  * caseErrListUrl 0..1 url "申請記錄不通過清冊路徑" "申請記錄審核不通過清冊之下載路徑，長度 200（case_err_list_url）"
  * caseErrListExcelUrl 0..1 url "申請記錄不通過 EXCEL 清冊路徑" "申請記錄審核不通過清冊 EXCEL 檔之下載路徑，長度 200（case_err_list_excel_url）"
  * transNos 0..* string "分案已處理之單號" "本分案已處理之申請單單號陣列（trans_nos）"
  * incInAcc 0..1 decimal "核增金額" "審核後核增之金額（inc_in_acc）"
  * incInReason 0..1 string "核增原因" "核增金額之原因說明，長度 4000（inc_in_reason）"
  * decInAcc 0..1 decimal "核減金額" "審核後核減之金額（dec_in_acc）"
  * decInReason 0..1 string "核減原因" "核減金額之原因說明，長度 4000（dec_in_reason）"

  // 審核通過服務記錄 approve_records（多筆）
  * approveRecords 0..* BackboneElement "審核通過服務記錄" "審核通過之服務記錄明細，多筆（approve_records）"
    * sourceSystem 0..1 string "來源系統別" "服務記錄之來源系統別，長度 20（source_system）"
    * objid 0..1 string "識別碼" "服務記錄之識別碼，長度 20（objid）"
    * transNo 0..1 string "交易序號" "服務記錄申報時之交易序號，長度 10（trans_no）"
    * price 0..1 decimal "單價" "該筆服務記錄之核定單價（price）"
    * copayment 0..1 decimal "自付額" "該筆服務記錄之個案自付額（copayment）"

  // 錯誤服務記錄 err_records（多筆）
  * errRecords 0..* BackboneElement "錯誤服務記錄" "審核不通過（錯誤）之服務記錄明細，多筆（err_records）"
    * sourceSystem 0..1 string "來源系統別" "服務記錄之來源系統別，長度 20（source_system）"
    * objid 0..1 string "識別碼" "服務記錄之識別碼，長度 20（objid）"
    * transNo 0..1 string "交易序號" "服務記錄申報時之交易序號，長度 10（trans_no）"
    * errCode 0..1 string "錯誤碼" "審核不通過之錯誤代碼，長度 5（err_code）"
    * errMessage 0..1 string "錯誤原因" "審核不通過之錯誤原因說明，長度 200（err_message）"

  // A 碼加成資料區 a_svc_records（多筆）
  * aSvcRecords 0..* BackboneElement "A 碼加成資料區" "A 碼加成（政策鼓勵）之給付明細，多筆（a_svc_records）"
    * refSourceSystem 0..1 string "審核通過服務記錄來源系統別" "所加成之審核通過服務記錄來源系統別，長度 20（ref_source_system）"
    * refObjid 0..1 string "審核通過服務記錄識別碼" "所加成之審核通過服務記錄識別碼，長度 20（ref_objid）"
    * aGovItemCd 0..1 string "A 碼" "A 碼加成之給付項目代碼，長度 10（a_gov_item_cd）"
    * price 0..1 decimal "單價" "該筆 A 碼加成之單價（price）"


// ---------------------------------------------------------------
// Mapping：分案審核明細邏輯模型 → LTCClaimResponseFeeAudit (ClaimResponse)
// ---------------------------------------------------------------
Mapping: LTCFeeAuditDetailModelMapping
Id: LTCFeeAuditDetailModelMapping
Title: "長照支付審查－分案審核明細邏輯模型對應"
Description: "此對應說明長照支付審查分案審核明細邏輯模型與 LTCClaimResponseFeeAudit (ClaimResponse) Profile 之欄位對應關係。對應原則：識別性欄位落於 ClaimResponse.identifier 之具名切片；分案層級之各項金額一律落於 ClaimResponse.total（以 total.category 區分，取值自 VS_TW_LTC_FeeAuditAdjudication），逐筆服務記錄之金額才落於 item.adjudication；分案層級之統計值、暫付申請狀態、分案已處理之單號與承辦人員落於 extension[auditSummary]；每筆服務記錄之識別碼（objid）、來源系統別（source_system）與交易序號（trans_no）落於各該 item／error／addItem 之 extension[recordRef]（因 ClaimResponse 之各 itemSequence 於 FHIR R4 為 positiveInt，無法承載長度 20 之字串識別碼）。"
Source: LTCFeeAuditDetailModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"

* -> "ClaimResponse" "分案審核明細整體對應至 ClaimResponse"

// 查詢輸入資訊（(查詢B) 之傳送資料；本身非回覆內容，僅標示其值於回覆資源中之落點）
* queryInfo.writeoffYyyymm -> "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月（yyyyMM）"
* queryInfo.transNo -> "ClaimResponse" "本次查詢之交易序號，屬傳輸層查詢參數，不落於回覆之 ClaimResponse"
* queryInfo.queryType -> "ClaimResponse" "查詢類別固定值 B，屬傳輸層查詢參數，不落於回覆之 ClaimResponse"
* queryInfo.cityCd -> "ClaimResponse.insurer" "縣市代碼，以 Reference(LTCOrganization) 指向受理本分案之縣市主管機關，代碼記錄於 Organization.identifier.value"
* queryInfo.caseNo -> "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/case-no').value" "核銷案號"

// 分案審核明細（表頭）
* auditResult.caseNo -> "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/case-no').value" "核銷案號，以 identifier[caseNo] 切片表達"
* auditResult.records -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('records').valueInteger" "服務記錄筆數；亦等於 ClaimResponse.item 與 ClaimResponse.error 之筆數合計"
* auditResult.cases -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('cases').valueInteger" "個案數"
* auditResult.amount -> "ClaimResponse.total.where(category.coding.code='submitted').amount" "申請核銷金額，落於分案層級之 total，category 為 submitted"
* auditResult.auditMan -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('auditMan').valueString" "承辦人員；不可使用 ClaimResponse.requestor，該元素於 FHIR R4 之語意為提出申報之服務提供方，與審查機關之承辦人語意方向相反"
* auditResult.auditReason -> "ClaimResponse.disposition" "承辦審核意見"
* auditResult.docVer -> "ClaimResponse.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver').value" "總表版次，以 identifier[docVer] 切片表達"
* auditResult.verDt -> "ClaimResponse.created" "版次時間（yyyyMMddhhmmss），以 dateTime 表達"
* auditResult.approveCaseNum -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('approveCaseNum').valueInteger" "核定個案數"
* auditResult.approveRecordCount -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('approveRecordCount').valueInteger" "核定服務記錄數；亦等於 ClaimResponse.item 之筆數"
* auditResult.approveFee -> "ClaimResponse.total.where(category.coding.code='approveFee').amount" "核定金額，屬分案層級金額，落於 total"
* auditResult.aSvcFee -> "ClaimResponse.total.where(category.coding.code='aSvcFee').amount" "政策鼓勵金額，屬分案層級金額，落於 total"
* auditResult.tempPaymentStatus -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('tempPaymentStatus').valueString" "暫付申請狀態，有申請暫付才顯示"
* auditResult.tempPaymentFee -> "ClaimResponse.total.where(category.coding.code='tempPaymentFee').amount" "分案暫付金額，屬分案層級金額，落於 total"
* auditResult.incInAcc -> "ClaimResponse.total.where(category.coding.code='incInAcc').amount" "核增金額，屬分案層級金額，落於 total"
* auditResult.incInReason -> "ClaimResponse.processNote.text" "核增原因，以審核附註之自由文字表達"
* auditResult.decInAcc -> "ClaimResponse.total.where(category.coding.code='decInAcc').amount" "核減金額，屬分案層級金額，落於 total"
* auditResult.decInReason -> "ClaimResponse.processNote.text" "核減原因，以審核附註之自由文字表達"
* auditResult.transNos -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary').extension('transNo').valueString" "分案已處理之申請單單號，為多筆字串，逐筆各為一個子擴充實例；不可使用 ClaimResponse.request，該元素於 FHIR R4 為 0..1 Reference"

// 各項文件下載路徑（Extension: ExtTWLTCFeeAuditDocUrl，docType 區分文件類別）
* auditResult.tempPaymentDocUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='tempPaymentDoc').extension('url').valueUrl" "暫付總表下載路徑"
* auditResult.caseSummaryNoticeUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSummaryNotice').extension('url').valueUrl" "總表下載路徑"
* auditResult.caseSvcListUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSvcList').extension('url').valueUrl" "清冊路徑"
* auditResult.caseSvcListExcelUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseSvcListExcel').extension('url').valueUrl" "清冊 EXCEL 下載路徑"
* auditResult.caseASvcListUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseASvcList').extension('url').valueUrl" "A 碼清冊路徑"
* auditResult.caseASvcListExcelUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseASvcListExcel').extension('url').valueUrl" "A 碼清冊 EXCEL 下載路徑"
* auditResult.caseErrListUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseErrList').extension('url').valueUrl" "申請記錄不通過清冊路徑"
* auditResult.caseErrListExcelUrl -> "ClaimResponse.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl').where(extension('docType').valueCodeableConcept.coding.code='caseErrListExcel').extension('url').valueUrl" "申請記錄不通過 EXCEL 清冊路徑"

// 審核通過服務記錄
* auditResult.approveRecords -> "ClaimResponse.item" "審核通過服務記錄，逐筆對應 ClaimResponse.item；item.itemSequence 僅為本資源內之流水序號"
* auditResult.approveRecords.sourceSystem -> "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString" "來源系統別"
* auditResult.approveRecords.objid -> "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString" "服務記錄識別碼；不可使用 item.itemSequence，該元素於 FHIR R4 為 positiveInt"
* auditResult.approveRecords.transNo -> "ClaimResponse.item.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('transNo').valueString" "交易序號"
* auditResult.approveRecords.price -> "ClaimResponse.item.adjudication.where(category.coding.code='price').amount" "單價，屬逐筆服務記錄之金額，落於 item.adjudication"
* auditResult.approveRecords.copayment -> "ClaimResponse.item.adjudication.where(category.coding.code='copayment').amount" "自付額，屬逐筆服務記錄之金額，落於 item.adjudication"

// 錯誤服務記錄
* auditResult.errRecords -> "ClaimResponse.error" "錯誤服務記錄，逐筆對應 ClaimResponse.error；若該筆之 err_code／err_message 為空而無法填入 error.code（1..1 且綁定錯誤代碼值集），得改以隨附之 LTCOperationOutcomeFeeAudit 表達"
* auditResult.errRecords.sourceSystem -> "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString" "來源系統別"
* auditResult.errRecords.objid -> "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString" "服務記錄識別碼；不可使用 error.itemSequence，該元素於 FHIR R4 為 positiveInt"
* auditResult.errRecords.transNo -> "ClaimResponse.error.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('transNo').valueString" "交易序號"
* auditResult.errRecords.errCode -> "ClaimResponse.error.code.coding.code" "錯誤碼"
* auditResult.errRecords.errMessage -> "ClaimResponse.error.code.text" "錯誤原因"

// A 碼加成資料區
* auditResult.aSvcRecords -> "ClaimResponse.addItem" "A 碼加成資料，逐筆對應 ClaimResponse.addItem"
* auditResult.aSvcRecords.refSourceSystem -> "ClaimResponse.addItem.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('sourceSystem').valueString" "所加成之審核通過服務記錄來源系統別"
* auditResult.aSvcRecords.refObjid -> "ClaimResponse.addItem.extension('http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef').extension('objid').valueString" "所加成之審核通過服務記錄識別碼；不可使用 addItem.itemSequence，該元素於 FHIR R4 為 positiveInt 且語意上指向原申請單之項目序號"
* auditResult.aSvcRecords.aGovItemCd -> "ClaimResponse.addItem.productOrService" "A 碼加成之給付項目代碼"
* auditResult.aSvcRecords.price -> "ClaimResponse.addItem.adjudication.where(category.coding.code='price').amount" "單價，落於 addItem.adjudication"
