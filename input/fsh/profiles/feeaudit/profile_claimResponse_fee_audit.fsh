// 長照支付審查－分案審核明細
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢 (……/appResultQuery)，回覆明細 Response.result

Profile: LTCClaimResponseFeeAudit
Parent: ClaimResponse
Id: LTCClaimResponseFeeAudit
Title: "長照支付審查－分案審核明細"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）所回覆之單一核銷案號分案審核明細。一份 ClaimResponse 代表一個核銷案號（case_no）之審核結果，內容包含核銷案號、總表版次與版次時間、承辦人員與承辦審核意見、申請核銷金額、核定金額、政策鼓勵金額、核增／核減金額與原因、暫付申請狀態與分案暫付金額、各式總表與清冊下載路徑、審核通過服務記錄（approve_records）、A 碼加成資料區（a_svc_records）以及錯誤服務記錄（err_records）。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"
* ^version = "0.1.0"
* ^status = #draft

// ---------------------------------------------------------------
// 一、基本欄位
// ---------------------------------------------------------------
* status 1..1 MS
* status = #active
* status ^short = "資源狀態，分案審核明細固定為 active（有效）"

* type 1..1 MS
* type = $ClaimType#professional
* type ^short = "核銷申報類別，長照支付審查固定為 professional（專業服務申報）"

* use 1..1 MS
* use = #claim
* use ^short = "申報用途，分案審核明細固定為 claim（費用申報核銷）"

* patient 1..1 MS
* patient only Reference(LTCPatient)
* patient ^short = "本分案所對應之服務對象（個案）；FHIR R4 基底 ClaimResponse.patient 為必填 1..1，故本 Profile 無法放寬為 0..1。若一個核銷案號涵蓋多位個案（cases 個案數 > 1），請以代表個案或分案受理之個案填入，實際個案數另以審核通過服務記錄逐筆表達"

* created 1..1 MS
* created ^short = "版次時間（ver_dt），總表版次之產生時間，原電文格式為 yyyyMMddhhmmss，於本 Profile 以 dateTime 表達"

* insurer 1..1 MS
* insurer only Reference(LTCOrganization)
* insurer ^short = "支付審查之保險人／給付機關，即受理本分案之縣市主管機關（city_cd 縣市代碼）"

* outcome 1..1 MS
* outcome ^short = "審核處理結果。[應填入以下字串之一：queued | complete | error | partial]"

* disposition 0..1 MS
* disposition ^short = "承辦審核意見（audit_reason），長度上限 4000"

* requestor 0..1 MS
* requestor ^short = "提出本次申報之服務提供方（FHIR R4 定義：The provider which is responsible for the claim）。承辦人員（audit_man）為審查機關之審核承辦人，語意方向相反，不得填於本元素，應以 extension[auditSummary].auditMan 表達。"

// ---------------------------------------------------------------
// 二、業務識別碼（以 identifier slicing 承載，不使用 Extension）
// ---------------------------------------------------------------
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier ^short = "分案審核明細之業務識別碼，包含核銷案號、總表版次、簽證編號與支審年月"
* identifier contains
    caseNo 1..1 MS and
    docVer 0..1 MS and
    accNum 0..1 MS and
    yyyymm 0..1 MS

* identifier[caseNo] ^short = "核銷案號（case_no），長度上限 30"
* identifier[caseNo].system 1..1 MS
* identifier[caseNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/case-no"
* identifier[caseNo].value 1..1 MS
* identifier[caseNo].value ^short = "核銷案號值"

* identifier[docVer] ^short = "總表版次（doc_ver），長度上限 15"
* identifier[docVer].system 1..1 MS
* identifier[docVer].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver"
* identifier[docVer].value 1..1 MS
* identifier[docVer].value ^short = "總表版次值"

* identifier[accNum] ^short = "簽證編號（acc_num），長度上限 20"
* identifier[accNum].system 1..1 MS
* identifier[accNum].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/acc-num"
* identifier[accNum].value 1..1 MS
* identifier[accNum].value ^short = "簽證編號值"

* identifier[yyyymm] ^short = "支審年月（writeoff_yyyymm），格式 yyyyMM，長度 6"
* identifier[yyyymm].system 1..1 MS
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1 MS
* identifier[yyyymm].value ^short = "支審年月值，格式 yyyyMM"

// ---------------------------------------------------------------
// 三、分案層級金額（total）
// ---------------------------------------------------------------
* total 0..* MS
* total ^short = "分案層級之各項金額。以 total.category 區分：申請核銷金額（amount，submitted）、核定金額（approve_fee，approveFee）、政策鼓勵金額（a_svc_fee，aSvcFee）、核增金額（inc_in_acc，incInAcc）、核減金額（dec_in_acc，decInAcc）、分案暫付金額（temp_payment_fee，tempPaymentFee，有申請暫付才顯示）"
* total.category 1..1 MS
* total.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* total.category ^short = "金額類別代碼，用以區分申請核銷金額、核定金額、政策鼓勵金額、核增金額、核減金額與分案暫付金額"
* total.amount 1..1 MS
* total.amount ^short = "該類別之金額，幣別為新臺幣（TWD）"

// ---------------------------------------------------------------
// 四、審核通過服務記錄（approve_records）
// ---------------------------------------------------------------
* item 0..* MS
* item ^short = "審核通過服務記錄（approve_records），逐筆對應一筆通過審核之服務紀錄。本元素之筆數等於核定服務記錄數（approve_record_count）；服務記錄筆數（records，即本分案申請之總筆數）則須合計本元素與 ClaimResponse.error（err_records）之筆數，另亦得以 extension[auditSummary].records 明示"
* item.itemSequence 1..1 MS
* item.itemSequence ^short = "審核通過服務記錄於本資源內之流水序號（1、2、3……）。FHIR R4 此元素之原始語意為指向 ClaimResponse.request 所參照之單一 Claim 內的 item.sequence；惟本模組一份 ClaimResponse 涵蓋多筆各自獨立之服務紀錄申報（LTCClaimFeeApply，其 item.sequence 固定為 1），且未定義 request，故本序號僅供本資源內部引用（例如 addItem 之對照說明），不具跨 Claim 之指向能力。實際服務記錄一律以 extension[recordRef].objid 識別。"
* item.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 1..1 MS
* item.extension[recordRef] ^short = "該筆審核通過服務記錄之識別資訊：識別碼（objid）、來源系統別（source_system）與交易序號（trans_no）"
* item.noteNumber 0..* MS
* item.noteNumber ^short = "指向 ClaimResponse.processNote.number 之編號，用以補充該筆服務記錄之審核附註文字"
* item.adjudication 1..* MS
* item.adjudication ^short = "該筆服務記錄之核定金額明細，至少包含單價（price）與自付額（copayment）"
* item.adjudication.category 1..1 MS
* item.adjudication.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* item.adjudication.category ^short = "金額類別代碼。[單價填入 price；自付額填入 copayment]"
* item.adjudication.amount 0..1 MS
* item.adjudication.amount ^short = "該類別之金額，幣別為新臺幣（TWD）"

// ---------------------------------------------------------------
// 五、A 碼加成資料區（a_svc_records）
// ---------------------------------------------------------------
* addItem 0..* MS
* addItem ^short = "A 碼加成資料區（a_svc_records），為審查機關於審核後另行加計之政策鼓勵給付項目，非由服務單位原申報"
* addItem.itemSequence 0..* MS
* addItem.itemSequence ^short = "FHIR R4 定義為「本服務項目所欲取代之原申請單（Claim）項目序號」。本模組每筆服務紀錄申報（LTCClaimFeeApply）僅一個 item 且 item.sequence 固定為 1，故本元素僅能填 1，不具區辨力。所加成之審核通過服務記錄（ref_objid、ref_source_system）一律以 addItem.extension[recordRef] 識別。"
* addItem.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 0..1 MS
* addItem.extension[recordRef] ^short = "所加成之審核通過服務記錄之識別資訊：識別碼（ref_objid）與來源系統別（ref_source_system）"
* addItem.productOrService 1..1 MS
* addItem.productOrService from VS_TW_LTC_ServiceItem (extensible)
* addItem.productOrService ^short = "A 碼加成之給付項目代碼（a_gov_item_cd），長度上限 10，如 AA05"
* addItem.adjudication 1..* MS
* addItem.adjudication ^short = "A 碼加成之金額明細，至少包含單價（price）"
* addItem.adjudication.category 1..1 MS
* addItem.adjudication.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* addItem.adjudication.category ^short = "金額類別代碼。[單價填入 price]"
* addItem.adjudication.amount 0..1 MS
* addItem.adjudication.amount ^short = "該類別之金額，幣別為新臺幣（TWD）"

// ---------------------------------------------------------------
// 六、錯誤服務記錄（err_records）
// ---------------------------------------------------------------
* error 0..* MS
* error ^short = "錯誤服務記錄（err_records），逐筆對應一筆審核不通過之服務紀錄及其檢核錯誤"
* error.itemSequence 0..1 MS
* error.itemSequence ^short = "錯誤服務記錄於本資源內之流水序號。同 item.itemSequence，本序號不具跨 Claim 之指向能力；實際服務記錄一律以 error.extension[recordRef].objid 識別。"
* error.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 0..1 MS
* error.extension[recordRef] ^short = "該筆錯誤服務記錄之識別資訊：識別碼（objid）、來源系統別（source_system）與交易序號（trans_no）"
* error.code 1..1 MS
* error.code from VS_TW_LTC_FeeAuditErrorCode (extensible)
* error.code ^short = "檢核錯誤代碼（err_code），長度 5；錯誤原因（err_message，長度上限 200）以 error.code.text 表達"

// ---------------------------------------------------------------
// 七、審核附註（核增原因、核減原因、暫付申請狀態）
// ---------------------------------------------------------------
* processNote 0..* MS
* processNote ^short = "審核附註，用以承載核增原因（inc_in_reason）與核減原因（dec_in_reason）等自由文字說明；亦供 item.noteNumber 或 addItem.noteNumber 引用。統計值、暫付申請狀態、分案已處理之單號與承辦人員請改以 extension[auditSummary] 承載，服務記錄識別碼請改以 extension[recordRef] 承載，以確保可運算性"
* processNote.number 1..1 MS
* processNote.number ^short = "附註編號，供 ClaimResponse.item.noteNumber 或 ClaimResponse.addItem.noteNumber 引用"
* processNote.text 1..1 MS
* processNote.text ^short = "附註內容，如核增原因、核減原因、暫付申請狀態或服務記錄識別資訊"

// ---------------------------------------------------------------
// 八、總表與清冊下載路徑
// ---------------------------------------------------------------
* extension contains
    ExtTWLTCFeeAuditDocUrl named docUrl 0..* MS and
    ExtTWLTCFeeAuditAuditSummary named auditSummary 0..1 MS
* extension[docUrl] ^short = "總表與清冊下載路徑，逐份文件一筆，涵蓋暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）與申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）"
* extension[auditSummary] ^short = "分案審核統計與承辦資訊：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos）與承辦人員（audit_man）"
