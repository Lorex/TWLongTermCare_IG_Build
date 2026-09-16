// 長照支付審查－分案審核明細
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1

Profile: LTCClaimResponseFeeAudit
Parent: ClaimResponse
Id: LTCClaimResponseFeeAudit
Title: "長照支付審查－分案審核明細"
Description: "此 ClaimResponse 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述一個核銷案號的審核結果。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每份 ClaimResponse 填寫一個核銷案號的審核結果，包含總表版次、審核意見、各項金額、通過與未通過的服務紀錄，以及 A 碼加成資料。相關統計資料與清冊下載網址可一併填寫。"

// ---------------------------------------------------------------
// 一、基本欄位
// ---------------------------------------------------------------
* status 1..1 MS
* status = #active
* status ^short = "審核明細的狀態。[應填入 active]"

* type 1..1 MS
* type = $ClaimType#professional
* type ^short = "核銷申報的類別。[應填入 professional]"

* use 1..1 MS
* use = #claim
* use ^short = "申報單的用途。[應填入 claim]"

* patient 1..1 MS
* patient only Reference(LTCPatient)
* patient ^short = "本分案的個案。[應填入對應 Patient 的 Reference]"
* patient ^definition = "應參照符合 LTCPatient 的個案資料。如本核銷案號包含多位個案，此處填入代表個案或分案受理的個案；各筆服務紀錄的個案資料應依該筆紀錄填寫。"

* created 1..1 MS
* created ^short = "總表版次的產生時間。[應填入日期時間]"
* created ^definition = "應填入此版總表產生的日期與時間，例如 2026-09-17T09:30:00+08:00。"

* insurer 1..1 MS
* insurer only Reference(LTCOrganization)
* insurer ^short = "受理本分案的縣市主管機關。[應填入對應 Organization 的 Reference]"
* insurer ^definition = "應參照符合 LTCOrganization 的主管機關資料。"

* outcome 1..1 MS
* outcome ^short = "審核處理結果。[應填入以下字串之一：queued | complete | error | partial]"

* disposition 0..1 MS
* disposition ^short = "承辦人員的審核意見。[應填入最長 4000 個字元的字串]"

* requestor 0..1 MS
* requestor ^short = "提出申報的服務提供單位或人員。[應填入對應 Organization、Practitioner 或 PractitionerRole 的 Reference]"
* requestor ^definition = "應填入負責提出申報的服務提供方。審核承辦人員的姓名或代號應填在審核摘要的承辦人員欄位。"

// ---------------------------------------------------------------
// 二、分案資料識別碼
// ---------------------------------------------------------------
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier ^short = "分案資料的識別碼，包含核銷案號、總表版次、簽證編號與支審年月。"
* identifier contains
    caseNo 1..1 MS and
    docVer 0..1 MS and
    accNum 0..1 MS and
    yyyymm 0..1 MS

* identifier[caseNo] ^short = "核銷案號。[應填入 Identifier]"
* identifier[caseNo].system 1..1 MS
* identifier[caseNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/case-no"
* identifier[caseNo].value 1..1 MS
* identifier[caseNo].value ^short = "核銷案號。[應填入最長 30 個字元的字串]"

* identifier[docVer] ^short = "總表版次。[應填入 Identifier]"
* identifier[docVer].system 1..1 MS
* identifier[docVer].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver"
* identifier[docVer].value 1..1 MS
* identifier[docVer].value ^short = "總表版次。[應填入最長 15 個字元的字串]"

* identifier[accNum] ^short = "簽證編號。[應填入 Identifier]"
* identifier[accNum].system 1..1 MS
* identifier[accNum].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/acc-num"
* identifier[accNum].value 1..1 MS
* identifier[accNum].value ^short = "簽證編號。[應填入最長 20 個字元的字串]"

* identifier[yyyymm] ^short = "支審年月。[應填入 Identifier]"
* identifier[yyyymm].system 1..1 MS
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1 MS
* identifier[yyyymm].value ^short = "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM]"

// ---------------------------------------------------------------
// 三、分案金額
// ---------------------------------------------------------------
* total 0..* MS
* total ^short = "本分案的各項金額"
* total ^definition = "每類金額分別填寫一筆。category 填入金額類別：submitted 申請核銷、approveFee 核定、aSvcFee 政策鼓勵、incInAcc 核增、decInAcc 核減、tempPaymentFee 暫付。amount 填入該類別的新臺幣金額。"
* total.category 1..1 MS
* total.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* total.category ^short = "金額的類別，用以區分申請核銷、核定、政策鼓勵、核增、核減與暫付金額。"
* total.amount 1..1 MS
* total.amount ^short = "金額的內容。[應填入新臺幣金額，幣別為 TWD]"

// ---------------------------------------------------------------
// 四、審核通過服務記錄
// ---------------------------------------------------------------
* item 0..* MS
* item ^short = "審核通過的服務紀錄，每筆服務紀錄應分別填寫。"
* item ^definition = "每筆審核通過的服務紀錄分別填寫，筆數應與審核摘要的核定服務紀錄數一致。通過與未通過的紀錄筆數合計，應等於本分案申請的服務紀錄總筆數。"
* item.itemSequence 1..1 MS
* item.itemSequence ^short = "審核通過的服務紀錄序號。[應依序填入 1、2、3 等整數]"
* item.itemSequence ^definition = "應填入本份審核結果內的紀錄序號。服務紀錄識別碼另填在該筆紀錄的 recordRef Extension。"
* item.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 1..1 MS
* item.extension[recordRef] ^short = "審核通過的服務紀錄識別資料"
* item.extension[recordRef] ^definition = "應填入該筆服務紀錄的識別碼，並可續填來源系統與申報交易序號。識別碼應與原申報 Claim 的服務紀錄識別碼相同。"
* item.noteNumber 0..* MS
* item.noteNumber ^short = "審核附註的編號。[應填入 processNote.number 的內容]"
* item.adjudication 1..* MS
* item.adjudication ^short = "服務紀錄的核定金額明細，至少應包含單價與自付額。"
* item.adjudication.category 1..1 MS
* item.adjudication.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* item.adjudication.category ^short = "金額的類別。[單價填入 price，自付額填入 copayment]"
* item.adjudication.amount 0..1 MS
* item.adjudication.amount ^short = "金額的內容。[應填入新臺幣金額，幣別為 TWD]"

// ---------------------------------------------------------------
// 五、A 碼加成資料
// ---------------------------------------------------------------
* addItem 0..* MS
* addItem ^short = "A 碼加成的服務資料"
* addItem ^definition = "應填入審核後另行加計的政策鼓勵給付項目，每筆加成分別填寫。"
* addItem.itemSequence 0..* MS
* addItem.itemSequence ^short = "原申報服務明細的序號。[如需填寫，應填入 1]"
* addItem.itemSequence ^definition = "每筆申報 Claim 僅有一筆服務明細，因此填入 1。加成所依據的服務紀錄，應另在 recordRef Extension 填寫識別資料。"
* addItem.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 0..1 MS
* addItem.extension[recordRef] ^short = "加成所對應的服務紀錄識別資料"
* addItem.extension[recordRef] ^definition = "應填入加成所依據的審核通過服務紀錄識別碼，並可續填該紀錄的來源系統。"
* addItem.productOrService 1..1 MS
* addItem.productOrService from VS_TW_LTC_ServiceItem (extensible)
* addItem.productOrService ^short = "A 碼加成的給付項目。[應填入最長 10 個字元的代碼，例如 AA05]"
* addItem.adjudication 1..* MS
* addItem.adjudication ^short = "A 碼加成的金額明細，至少應包含單價。"
* addItem.adjudication.category 1..1 MS
* addItem.adjudication.category from VS_TW_LTC_FeeAuditAdjudication (extensible)
* addItem.adjudication.category ^short = "金額的類別。[單價填入 price]"
* addItem.adjudication.amount 0..1 MS
* addItem.adjudication.amount ^short = "金額的內容。[應填入新臺幣金額，幣別為 TWD]"

// ---------------------------------------------------------------
// 六、錯誤服務記錄
// ---------------------------------------------------------------
* error 0..* MS
* error ^short = "審核未通過的服務紀錄及錯誤內容"
* error ^definition = "每筆審核未通過的服務紀錄分別填寫，並提供錯誤代碼與原因。"
* error.itemSequence 0..1 MS
* error.itemSequence ^short = "錯誤服務紀錄的序號。[應填入正整數]"
* error.itemSequence ^definition = "應填入本份審核結果內的紀錄序號。服務紀錄識別碼另填在該筆紀錄的 recordRef Extension。"
* error.extension contains
    ExtTWLTCFeeAuditRecordRef named recordRef 0..1 MS
* error.extension[recordRef] ^short = "錯誤服務紀錄的識別資料"
* error.extension[recordRef] ^definition = "應填入發生錯誤的服務紀錄識別碼，並可續填來源系統與申報交易序號。"
* error.code 1..1 MS
* error.code from VS_TW_LTC_FeeAuditErrorCode (extensible)
* error.code ^short = "檢核錯誤代碼。[應填入 5 個字元的代碼]"
* error.code ^definition = "應在 coding 填入支付審查錯誤代碼，在 text 填入錯誤原因，錯誤原因最長 200 個字元。"

// ---------------------------------------------------------------
// 七、審核附註
// ---------------------------------------------------------------
* processNote 0..* MS
* processNote ^short = "審核結果的附註，例如核增或核減原因。"
* processNote ^definition = "核增或核減原因應分別填寫附註，並給予編號，供服務紀錄的 noteNumber 引用。"
* processNote.number 1..1 MS
* processNote.number ^short = "審核附註的編號。[應填入正整數，供服務紀錄的 noteNumber 引用]"
* processNote.text 1..1 MS
* processNote.text ^short = "審核附註的內容"

// ---------------------------------------------------------------
// 八、總表與清冊下載路徑
// ---------------------------------------------------------------
* extension contains
    ExtTWLTCFeeAuditDocUrl named docUrl 0..* MS and
    ExtTWLTCFeeAuditAuditSummary named auditSummary 0..1 MS
* extension[docUrl] ^short = "總表與清冊的下載路徑，如有多份文件，則分別填寫。"
* extension[docUrl] ^definition = "每份文件應填寫文件類別與下載網址。文件類別填在 docType 子項目，網址填在 url 子項目。可提供總表、暫付總表、服務清冊、A 碼清冊與未通過申請清冊，含各類 Excel 檔。"
* extension[auditSummary] ^short = "分案的統計資料與承辦人員資訊"
* extension[auditSummary] ^definition = "應依審核結果填寫服務紀錄總筆數、個案數、核定個案數與核定服務紀錄數。如有暫付申請或已處理的申報交易，則續填暫付狀態與交易序號。承辦人員填入姓名或代號。"
