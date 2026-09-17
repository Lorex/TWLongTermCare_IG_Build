# 長照支付審查－分案審核明細 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核明細**

## Resource Profile: 長照支付審查－分案審核明細 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCClaimResponseFeeAudit |

 
此 ClaimResponse 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述一個核銷案號的審核結果。 

 
每份 ClaimResponse 填寫一個核銷案號的審核結果，包含總表版次、審核意見、各項金額、通過與未通過的服務紀錄，以及 A 碼加成資料。相關統計資料與清冊下載網址可一併填寫。 

**Usages:**

* Use this Profile: [長照支付審查－分案審核明細回覆打包](StructureDefinition-LTCBundleFeeAuditResponse.md)
* Examples for this Profile: [ClaimResponse/ltc-claimresponse-feeaudit-example](ClaimResponse-ltc-claimresponse-feeaudit-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCClaimResponseFeeAudit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCClaimResponseFeeAudit.csv), [Excel](StructureDefinition-LTCClaimResponseFeeAudit.xlsx), [Schematron](StructureDefinition-LTCClaimResponseFeeAudit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCClaimResponseFeeAudit",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit",
  "version" : "1.1.0",
  "name" : "LTCClaimResponseFeeAudit",
  "title" : "長照支付審查－分案審核明細",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 ClaimResponse 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述一個核銷案號的審核結果。",
  "purpose" : "每份 ClaimResponse 填寫一個核銷案號的審核結果，包含總表版次、審核意見、各項金額、通過與未通過的服務紀錄，以及 A 碼加成資料。相關統計資料與清冊下載網址可一併填寫。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.extension:docUrl",
      "path" : "ClaimResponse.extension",
      "sliceName" : "docUrl",
      "short" : "總表與清冊的下載路徑，如有多份文件，則分別填寫。",
      "definition" : "每份文件應填寫文件類別與下載網址。文件類別填在 docType 子項目，網址填在 url 子項目。可提供總表、暫付總表、服務清冊、A 碼清冊與未通過申請清冊，含各類 Excel 檔。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.extension:auditSummary",
      "path" : "ClaimResponse.extension",
      "sliceName" : "auditSummary",
      "short" : "分案的統計資料與承辦人員資訊",
      "definition" : "應依審核結果填寫服務紀錄總筆數、個案數、核定個案數與核定服務紀錄數。如有暫付申請或已處理的申報交易，則續填暫付狀態與交易序號。承辦人員填入姓名或代號。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier",
      "path" : "ClaimResponse.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "分案資料的識別碼，包含核銷案號、總表版次、簽證編號與支審年月。",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:caseNo",
      "path" : "ClaimResponse.identifier",
      "sliceName" : "caseNo",
      "short" : "核銷案號。[應填入 Identifier]",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:caseNo.system",
      "path" : "ClaimResponse.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/case-no",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:caseNo.value",
      "path" : "ClaimResponse.identifier.value",
      "short" : "核銷案號。[應填入最長 30 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:docVer",
      "path" : "ClaimResponse.identifier",
      "sliceName" : "docVer",
      "short" : "總表版次。[應填入 Identifier]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:docVer.system",
      "path" : "ClaimResponse.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:docVer.value",
      "path" : "ClaimResponse.identifier.value",
      "short" : "總表版次。[應填入最長 15 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:accNum",
      "path" : "ClaimResponse.identifier",
      "sliceName" : "accNum",
      "short" : "簽證編號。[應填入 Identifier]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:accNum.system",
      "path" : "ClaimResponse.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/acc-num",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:accNum.value",
      "path" : "ClaimResponse.identifier.value",
      "short" : "簽證編號。[應填入最長 20 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm",
      "path" : "ClaimResponse.identifier",
      "sliceName" : "yyyymm",
      "short" : "支審年月。[應填入 Identifier]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm.system",
      "path" : "ClaimResponse.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm.value",
      "path" : "ClaimResponse.identifier.value",
      "short" : "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.status",
      "path" : "ClaimResponse.status",
      "short" : "審核明細的狀態。[應填入 active]",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.type",
      "path" : "ClaimResponse.type",
      "short" : "核銷申報的類別。[應填入 professional]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
          "code" : "professional"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.use",
      "path" : "ClaimResponse.use",
      "short" : "申報單的用途。[應填入 claim]",
      "patternCode" : "claim",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.patient",
      "path" : "ClaimResponse.patient",
      "short" : "本分案的個案。[應填入對應 Patient 的 Reference]",
      "definition" : "應參照符合 LTCPatient 的個案資料。如本核銷案號包含多位個案，此處填入代表個案或分案受理的個案；各筆服務紀錄的個案資料應依該筆紀錄填寫。",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.created",
      "path" : "ClaimResponse.created",
      "short" : "總表版次的產生時間。[應填入日期時間]",
      "definition" : "應填入此版總表產生的日期與時間，例如 2026-09-17T09:30:00+08:00。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.insurer",
      "path" : "ClaimResponse.insurer",
      "short" : "受理本分案的縣市主管機關。[應填入對應 Organization 的 Reference]",
      "definition" : "應參照符合 LTCOrganization 的主管機關資料。",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.requestor",
      "path" : "ClaimResponse.requestor",
      "short" : "提出申報的服務提供單位或人員。[應填入對應 Organization、Practitioner 或 PractitionerRole 的 Reference]",
      "definition" : "應填入負責提出申報的服務提供方。審核承辦人員的姓名或代號應填在審核摘要的承辦人員欄位。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.outcome",
      "path" : "ClaimResponse.outcome",
      "short" : "審核處理結果。[應填入以下字串之一：queued | complete | error | partial]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.disposition",
      "path" : "ClaimResponse.disposition",
      "short" : "承辦人員的審核意見。[應填入最長 4000 個字元的字串]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item",
      "path" : "ClaimResponse.item",
      "short" : "審核通過的服務紀錄，每筆服務紀錄應分別填寫。",
      "definition" : "每筆審核通過的服務紀錄分別填寫，筆數應與審核摘要的核定服務紀錄數一致。通過與未通過的紀錄筆數合計，應等於本分案申請的服務紀錄總筆數。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item.extension",
      "path" : "ClaimResponse.item.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ClaimResponse.item.extension:recordRef",
      "path" : "ClaimResponse.item.extension",
      "sliceName" : "recordRef",
      "short" : "審核通過的服務紀錄識別資料",
      "definition" : "應填入該筆服務紀錄的識別碼，並可續填來源系統與申報交易序號。識別碼應與原申報 Claim 的服務紀錄識別碼相同。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item.itemSequence",
      "path" : "ClaimResponse.item.itemSequence",
      "short" : "審核通過的服務紀錄序號。[應依序填入 1、2、3 等整數]",
      "definition" : "應填入本份審核結果內的紀錄序號。服務紀錄識別碼另填在該筆紀錄的 recordRef Extension。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item.noteNumber",
      "path" : "ClaimResponse.item.noteNumber",
      "short" : "審核附註的編號。[應填入 processNote.number 的內容]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item.adjudication",
      "path" : "ClaimResponse.item.adjudication",
      "short" : "服務紀錄的核定金額明細，至少應包含單價與自付額。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.item.adjudication.category",
      "path" : "ClaimResponse.item.adjudication.category",
      "short" : "金額的類別。[單價填入 price，自付額填入 copayment]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-adjudication"
      }
    },
    {
      "id" : "ClaimResponse.item.adjudication.amount",
      "path" : "ClaimResponse.item.adjudication.amount",
      "short" : "金額的內容。[應填入新臺幣金額，幣別為 TWD]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.addItem",
      "path" : "ClaimResponse.addItem",
      "short" : "A 碼加成的服務資料",
      "definition" : "應填入審核後另行加計的政策鼓勵給付項目，每筆加成分別填寫。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.addItem.extension",
      "path" : "ClaimResponse.addItem.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.addItem.extension:recordRef",
      "path" : "ClaimResponse.addItem.extension",
      "sliceName" : "recordRef",
      "short" : "加成所對應的服務紀錄識別資料",
      "definition" : "應填入加成所依據的審核通過服務紀錄識別碼，並可續填該紀錄的來源系統。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.addItem.itemSequence",
      "path" : "ClaimResponse.addItem.itemSequence",
      "short" : "原申報服務明細的序號。[如需填寫，應填入 1]",
      "definition" : "每筆申報 Claim 僅有一筆服務明細，因此填入 1。加成所依據的服務紀錄，應另在 recordRef Extension 填寫識別資料。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.addItem.productOrService",
      "path" : "ClaimResponse.addItem.productOrService",
      "short" : "A 碼加成的給付項目。[應填入最長 10 個字元的代碼，例如 AA05]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
      }
    },
    {
      "id" : "ClaimResponse.addItem.adjudication",
      "path" : "ClaimResponse.addItem.adjudication",
      "short" : "A 碼加成的金額明細，至少應包含單價。",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.addItem.adjudication.category",
      "path" : "ClaimResponse.addItem.adjudication.category",
      "short" : "金額的類別。[單價填入 price]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-adjudication"
      }
    },
    {
      "id" : "ClaimResponse.addItem.adjudication.amount",
      "path" : "ClaimResponse.addItem.adjudication.amount",
      "short" : "金額的內容。[應填入新臺幣金額，幣別為 TWD]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.total",
      "path" : "ClaimResponse.total",
      "short" : "本分案的各項金額",
      "definition" : "每類金額分別填寫一筆。category 填入金額類別：submitted 申請核銷、approveFee 核定、aSvcFee 政策鼓勵、incInAcc 核增、decInAcc 核減、tempPaymentFee 暫付。amount 填入該類別的新臺幣金額。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.total.category",
      "path" : "ClaimResponse.total.category",
      "short" : "金額的類別，用以區分申請核銷、核定、政策鼓勵、核增、核減與暫付金額。",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-adjudication"
      }
    },
    {
      "id" : "ClaimResponse.total.amount",
      "path" : "ClaimResponse.total.amount",
      "short" : "金額的內容。[應填入新臺幣金額，幣別為 TWD]",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.processNote",
      "path" : "ClaimResponse.processNote",
      "short" : "審核結果的附註，例如核增或核減原因。",
      "definition" : "核增或核減原因應分別填寫附註，並給予編號，供服務紀錄的 noteNumber 引用。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.processNote.number",
      "path" : "ClaimResponse.processNote.number",
      "short" : "審核附註的編號。[應填入正整數，供服務紀錄的 noteNumber 引用]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.processNote.text",
      "path" : "ClaimResponse.processNote.text",
      "short" : "審核附註的內容",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.error",
      "path" : "ClaimResponse.error",
      "short" : "審核未通過的服務紀錄及錯誤內容",
      "definition" : "每筆審核未通過的服務紀錄分別填寫，並提供錯誤代碼與原因。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.error.extension",
      "path" : "ClaimResponse.error.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.error.extension:recordRef",
      "path" : "ClaimResponse.error.extension",
      "sliceName" : "recordRef",
      "short" : "錯誤服務紀錄的識別資料",
      "definition" : "應填入發生錯誤的服務紀錄識別碼，並可續填來源系統與申報交易序號。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.error.itemSequence",
      "path" : "ClaimResponse.error.itemSequence",
      "short" : "錯誤服務紀錄的序號。[應填入正整數]",
      "definition" : "應填入本份審核結果內的紀錄序號。服務紀錄識別碼另填在該筆紀錄的 recordRef Extension。",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.error.code",
      "path" : "ClaimResponse.error.code",
      "short" : "檢核錯誤代碼。[應填入 5 個字元的代碼]",
      "definition" : "應在 coding 填入支付審查錯誤代碼，在 text 填入錯誤原因，錯誤原因最長 200 個字元。",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-error-code"
      }
    }]
  }
}

```
