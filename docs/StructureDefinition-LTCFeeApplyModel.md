# 長照支付審查－服務記錄申報邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務記錄申報邏輯模型**

## Logical Model: 長照支付審查－服務記錄申報邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeApplyModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCFeeApplyModel |

 
此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCFeeApplyModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCFeeApplyModel.csv), [Excel](StructureDefinition-LTCFeeApplyModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCFeeApplyModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeApplyModel",
  "version" : "1.1.0",
  "name" : "LTCFeeApplyModel",
  "title" : "長照支付審查－服務記錄申報邏輯模型",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LTCFeeApplyModelMapping",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply",
    "name" : "長照支付審查－服務記錄申報邏輯模型對應",
    "comment" : "此對應說明「長照支付審查－服務記錄申報邏輯模型 (LTCFeeApplyModel)」各欄位與 FHIR 資源之對應關係，目標 Profile 為 LTCClaimFeeApply（Claim）。對應原則：識別性欄位對應至 Claim.identifier 之具名切片；個案對應至 Claim.patient；照顧組合代碼、服務期間、費用類別、單價與數量對應至 Claim.item；照顧服務員對應至 Claim.careTeam.provider；各支付碼特化欄位則以 Claim.supportingInfo 之具名切片承載，並以 supportingInfo.category 之代碼（取自 CS_TW_LTC_FeeAuditSupportingInfo）區分。須留意 FHIR R4 之 Claim.supportingInfo.value[x] 僅允許 boolean、string、Quantity、Attachment 與 Reference，不含 CodeableConcept，故代碼型欄位一律落在 supportingInfo.code（該切片之 value[x] 已收緊為 0..0）。批次表頭（apply_info）之欄位屬 Bundle 層級，不落在單一 Claim，另於下方標註。"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeApplyModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCFeeApplyModel",
      "path" : "LTCFeeApplyModel",
      "short" : "長照支付審查－服務記錄申報邏輯模型",
      "definition" : "此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。"
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo",
      "path" : "LTCFeeApplyModel.applyInfo",
      "short" : "申報資料",
      "definition" : "服務記錄申報之申報資料本體 (apply_info)，單筆物件，包含本次申報批次的表頭資訊與其下的個案服務紀錄集合。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim",
        "comment" : "申報資料整體對應至一次申報交易，於 FHIR 中以 LTCBundleFeeApply 打包多個 LTCClaimFeeApply"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.writeoffYyyymm",
      "path" : "LTCFeeApplyModel.applyInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "本次申報所屬之支付審核年月，字串長度 6，格式為 yyyyMM（例如 201901）。必填欄位。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月（yyyyMM），複寫於本批次內每一筆 Claim 之 identifier[yyyymm]"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.transNo",
      "path" : "LTCFeeApplyModel.applyInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次申報之交易序號，字串長度 10，由服務提供單位自訂且於同一支審年月內唯一；同一個月可多次執行服務紀錄申報。必填欄位。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no').value",
        "comment" : "交易序號，落於 Bundle.identifier.value，並複寫於本批次內每一筆 Claim 之 identifier[transNo]"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.records",
      "path" : "LTCFeeApplyModel.applyInfo.records",
      "short" : "服務記錄筆數",
      "definition" : "本次申報所傳送的個案服務紀錄總筆數，數值型態，應與 caseSvcRecords 實際筆數一致。必填欄位。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim",
        "comment" : "服務記錄筆數，為統計值；等於 LTCBundleFeeApply 中 entry[claim] 之筆數（Bundle.entry.resource.ofType(Claim).count()），本 IG 不另設欄位"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.amount",
      "path" : "LTCFeeApplyModel.applyInfo.amount",
      "short" : "服務紀錄金額",
      "definition" : "本次申報所傳送之服務紀錄總金額，數值型態。非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.total",
        "comment" : "服務紀錄金額，為統計值；等於本批次內各 Claim.total.value 之合計，本 IG 不另設欄位"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.cases",
      "path" : "LTCFeeApplyModel.applyInfo.cases",
      "short" : "申請個案數",
      "definition" : "本次申報所涵蓋之申請個案數（不重複個案人數），數值型態。必填欄位。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.patient",
        "comment" : "申請個案數，為統計值；等於本批次內不重複 Claim.patient 之數量，本 IG 不另設欄位"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords",
      "short" : "個案服務紀錄",
      "definition" : "個案服務紀錄 (case_svc_records)，多筆物件；每個交易序號每次申報最多 5000 筆。該服務記錄之案件若已執行「申報確認通知」，則不允許再執行服務紀錄申報。必填欄位。",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim",
        "comment" : "每筆個案服務紀錄對應一個 LTCClaimFeeApply (Claim) 實例"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.objid",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.objid",
      "short" : "識別碼",
      "definition" : "服務紀錄之唯一識別碼，字串長度 20，由服務提供單位系統產生。申報之識別碼不存在時，於支審系統新增服務紀錄；識別碼已存在時，則更新支審系統之服務紀錄。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid').value",
        "comment" : "服務紀錄唯一識別碼"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.idn",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.idn",
      "short" : "個案身分證字號",
      "definition" : "接受服務之個案（長照需要者）身分證字號，字串長度 10。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.patient",
        "comment" : "以 Reference(LTCPatient) 指向個案，個案身分證字號記錄於 Patient.identifier.value"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcDt",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcDt",
      "short" : "服務日期",
      "definition" : "提供服務之日期，原始格式為字串長度 8 之 yyyyMMdd。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.start",
        "comment" : "服務日期，與起始時段組成服務期間起點"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcEndDt",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcEndDt",
      "short" : "服務結束日期",
      "definition" : "服務結束之日期，原始格式為字串長度 8 之 yyyyMMdd；空白時表示與服務日期 (svcDt) 為同一日。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.end",
        "comment" : "服務結束日期，空白時與服務日期同日"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.govItemCd",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.govItemCd",
      "short" : "照顧組合代碼",
      "definition" : "政府核定之照顧組合（支付）代碼，字串長度 10；A 單位服務紀錄請輸入 AA00。此欄位決定其他欄位之條件必填規則（詳見表1: 支付碼必填欄位一覽表）。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.productOrService",
        "comment" : "照顧組合代碼，取值自 VS_TW_LTC_ServiceItem；A 單位個案管理服務紀錄填 AA00"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcFeeTp",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcFeeTp",
      "short" : "服務類別",
      "definition" : "服務之費用類別，字串長度 1；1:補助、2:自費。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.category",
        "comment" : "服務類別（1:補助、2:自費），取值自 VS_TW_LTC_FeeAuditFeeType"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.price",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.price",
      "short" : "單價",
      "definition" : "該筆服務之單價，數值型態。表1 條件必填：申報 BD03、DA01 為必填；申報 AA00、B 碼、G 碼、SC 碼、C 碼、AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.unitPrice",
        "comment" : "單價"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.amount",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.amount",
      "short" : "數量",
      "definition" : "該筆服務之申報數量，數值型態。表1 中各支付碼皆為必填。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.quantity",
        "comment" : "數量"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo1",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo1",
      "short" : "照顧服務員身分證字號1",
      "definition" : "提供服務之第 1 位照顧服務員身分證字號，字串長度 40。表1 條件必填：申報 AA00、B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.careTeam.where(sequence=1).provider",
        "comment" : "照顧服務員1，以 Reference(Practitioner) 表示，身分證字號記錄於 Practitioner.identifier.value"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo2",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo2",
      "short" : "照顧服務員身分證字號2",
      "definition" : "提供服務之第 2 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.careTeam.where(sequence=2).provider",
        "comment" : "照顧服務員2"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo3",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo3",
      "short" : "照顧服務員身分證字號3",
      "definition" : "提供服務之第 3 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.careTeam.where(sequence=3).provider",
        "comment" : "照顧服務員3"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo4",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo4",
      "short" : "照顧服務員身分證字號4",
      "definition" : "提供服務之第 4 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.careTeam.where(sequence=4).provider",
        "comment" : "照顧服務員4"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo5",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUserNo5",
      "short" : "照顧服務員身分證字號5",
      "definition" : "提供服務之第 5 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.careTeam.where(sequence=5).provider",
        "comment" : "照顧服務員5"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.startHh",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.startHh",
      "short" : "起始時段-小時",
      "definition" : "服務起始時間之小時，字串長度 2，採 24 小時制，不足兩碼補 0（9 應填 09）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.start",
        "comment" : "起始時段-小時，與服務日期組成服務期間起點時間"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.startMm",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.startMm",
      "short" : "起始時段-分鐘",
      "definition" : "服務起始時間之分鐘，字串長度 2，不足兩碼補 0（5 應填 05）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.start",
        "comment" : "起始時段-分鐘，與服務日期組成服務期間起點時間"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.endHh",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.endHh",
      "short" : "結束時段-小時",
      "definition" : "服務結束時間之小時，字串長度 2，採 24 小時制，不足兩碼補 0（9 應填 09）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.end",
        "comment" : "結束時段-小時，與服務結束日期組成服務期間終點時間"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.endMm",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.endMm",
      "short" : "結束時段-分鐘",
      "definition" : "服務結束時間之分鐘，字串長度 2，不足兩碼補 0（5 應填 05）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.item.servicedPeriod.end",
        "comment" : "結束時段-分鐘，與服務結束日期組成服務期間終點時間"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.remark",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.remark",
      "short" : "備註",
      "definition" : "該筆服務紀錄之備註說明，字串長度 4000。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='remark').valueString",
        "comment" : "備註，supportingInfo.category 代碼為 remark"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcItem",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcItem",
      "short" : "服務項目",
      "definition" : "個案管理服務之服務項目，字串長度 20；1.電訪、2.家訪、3.與案家討論服務內容調整、4.接受申訴、5.照會或連結至服務提供單位、9.其他；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為必填、申報 AA03 為必填（填寫 C 碼服務）；申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcItem').code",
        "comment" : "服務項目，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcItem；原始電文之複選（以「|」分隔）表達為多個同 category 之 supportingInfo 切片實例"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcItemOther",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcItemOther",
      "short" : "服務項目-其他",
      "definition" : "當服務項目 (svcItem) 選填「9.其他」時之補充說明，字串長度 255。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcItemOther').valueString",
        "comment" : "服務項目-其他，supportingInfo.category 代碼為 svcItemOther"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPeople",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPeople",
      "short" : "服務對象",
      "definition" : "個案管理服務之服務對象，字串長度 10；1.服務使用者、2.家庭照顧者；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcPeople').code",
        "comment" : "服務對象，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcPeople；複選時表達為多個切片實例"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcContent",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcContent",
      "short" : "服務內容",
      "definition" : "個案管理服務之服務內容描述，字串長度 4000。表1 條件必填：申報 AA00 為必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcContent').valueString",
        "comment" : "服務內容，supportingInfo.category 代碼為 svcContent"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPoint",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPoint",
      "short" : "服務重點",
      "definition" : "個案管理服務之服務重點，字串長度 20；1.追蹤長照需要者與各項服務之連結情形、2.計畫與內容異動討論、3.協助長照需要者或其家屬其他資源連結、4.接受長照需要者及其家屬有關長照服務諮詢與處理、5.接受申訴、9.其他；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcPoint').code",
        "comment" : "服務重點，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcPoint；複選時表達為多個切片實例"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPointOther",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcPointOther",
      "short" : "服務重點-其他",
      "definition" : "當服務重點 (svcPoint) 選填「9.其他」時之補充說明，字串長度 255。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcPointOther').valueString",
        "comment" : "服務重點-其他，supportingInfo.category 代碼為 svcPointOther"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcTrace",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcTrace",
      "short" : "追蹤服務適應與介入情形",
      "definition" : "個案管理服務中追蹤長照需要者服務適應與介入情形之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcTrace').valueString",
        "comment" : "追蹤服務適應與介入情形，supportingInfo.category 代碼為 svcTrace"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcGoal",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcGoal",
      "short" : "各項服務目標及整體計畫目標達成情形",
      "definition" : "個案管理服務中各項服務目標及整體照顧計畫目標達成情形之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcGoal').valueString",
        "comment" : "各項服務目標及整體計畫目標達成情形，supportingInfo.category 代碼為 svcGoal"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcSuitable",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcSuitable",
      "short" : "整體計畫的適切性及需求異動",
      "definition" : "個案管理服務中整體照顧計畫適切性評估及需求異動之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcSuitable').valueString",
        "comment" : "整體計畫的適切性及需求異動，supportingInfo.category 代碼為 svcSuitable"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUnit",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svcUnit",
      "short" : "提供專業服務單位",
      "definition" : "提供專業服務之 C 單位（特約服務單位）之單位代碼，字串長度 20。表1 條件必填：申報 AA03 為必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svcUnit').valueString",
        "comment" : "提供專業服務單位，內容為 C 單位之單位代碼（長度 20），以字串承載；supportingInfo.category 代碼為 svcUnit"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccGoalType",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccGoalType",
      "short" : "專業服務復能目標達成情形",
      "definition" : "專業服務復能目標之達成情形，字串長度 1；1.尚未滿 1 照顧組合之次數、2.已滿 1 照顧組合之次數且已達目標、3.已滿 1 照顧組合之次數但尚未達目標、4.未滿 1 照顧組合之次數且已達目標、5.未滿 1 照顧組合之次數但尚未達目標。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svccGoalType').code",
        "comment" : "專業服務復能目標達成情形，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvccGoalType"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccGoal",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccGoal",
      "short" : "專業服務復能目標",
      "definition" : "專業服務所設定之復能目標描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svccGoal').valueString",
        "comment" : "專業服務復能目標，supportingInfo.category 代碼為 svccGoal"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccContentTarget",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccContentTarget",
      "short" : "專業服務指導對象",
      "definition" : "專業服務指導之對象描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svccContentTarget').valueString",
        "comment" : "專業服務指導對象，supportingInfo.category 代碼為 svccContentTarget"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccContent",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccContent",
      "short" : "專業服務服務內容",
      "definition" : "專業服務實際提供之服務內容描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svccContent').valueString",
        "comment" : "專業服務服務內容，supportingInfo.category 代碼為 svccContent"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccSuggest",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.svccSuggest",
      "short" : "專業服務指導建議摘要",
      "definition" : "專業服務指導之建議摘要，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='svccSuggest').valueString",
        "comment" : "專業服務指導建議摘要，supportingInfo.category 代碼為 svccSuggest"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addr1",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addr1",
      "short" : "出發地",
      "definition" : "交通接送之出發地地址或地點名稱，字串長度 40。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定（適用 113 年 6 月 1 日後服務紀錄），出發地 (addr1)、出發地-緯度 (addrlat1)、出發地-經度 (addrlng1) 需至少填寫一個欄位；已填寫出發地者可不必再填寫出發地經緯度。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference",
        "comment" : "出發地，以 Reference(LTCLocationFeeAuditPlace) 表示，地點名稱或地址記錄於 Location.name／Location.address；supportingInfo.category 代碼為 addrFrom"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addr2",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addr2",
      "short" : "目的地",
      "definition" : "交通接送之目的地地址或地點名稱，字串長度 40。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定（適用 113 年 6 月 1 日後服務紀錄），目的地 (addr2)、目的地-緯度 (addrlat2)、目的地-經度 (addrlng2) 需至少填寫一個欄位；已填寫目的地者可不必再填寫目的地經緯度。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference",
        "comment" : "目的地，以 Reference(LTCLocationFeeAuditPlace) 表示，地點名稱或地址記錄於 Location.name／Location.address；supportingInfo.category 代碼為 addrTo"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlat1",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlat1",
      "short" : "出發地-緯度",
      "definition" : "交通接送出發地之緯度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，出發地-緯度與出發地-經度同時填寫時，可不必再填寫出發地 (addr1)。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference",
        "comment" : "出發地-緯度，記錄於出發地 Location 之 position.latitude"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlng1",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlng1",
      "short" : "出發地-經度",
      "definition" : "交通接送出發地之經度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，出發地-緯度與出發地-經度同時填寫時，可不必再填寫出發地 (addr1)。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference",
        "comment" : "出發地-經度，記錄於出發地 Location 之 position.longitude"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlat2",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlat2",
      "short" : "目的地-緯度",
      "definition" : "交通接送目的地之緯度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，目的地-緯度與目的地-經度同時填寫時，可不必再填寫目的地 (addr2)。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference",
        "comment" : "目的地-緯度，記錄於目的地 Location 之 position.latitude"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlng2",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.addrlng2",
      "short" : "目的地-經度",
      "definition" : "交通接送目的地之經度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，目的地-緯度與目的地-經度同時填寫時，可不必再填寫目的地 (addr2)。其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference",
        "comment" : "目的地-經度，記錄於目的地 Location 之 position.longitude"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.milage",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.milage",
      "short" : "里程數",
      "definition" : "交通接送之行駛里程數，數值型態。表1 條件必填：申報 BD03、DA01 為必填（v2.2.1 起調整為必填欄位，適用 113 年 6 月 1 日後服務紀錄）；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='milage').valueQuantity",
        "comment" : "里程數，建議單位為公里（km）；supportingInfo.category 代碼為 milage"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.carNo",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.carNo",
      "short" : "車號",
      "definition" : "交通接送使用車輛之車牌號碼，字串長度 10。表1 條件必填：申報 BD03、DA01 為必填（v2.2.1 起調整為必填欄位，適用 113 年 6 月 1 日後服務紀錄）；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='carNo').valueString",
        "comment" : "車號，supportingInfo.category 代碼為 carNo"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.driver",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.driver",
      "short" : "駕駛員",
      "definition" : "交通接送之駕駛員姓名，字串長度 20。表1 條件必填：申報 BD03、DA01 為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='driver').valueString",
        "comment" : "駕駛員，supportingInfo.category 代碼為 driver"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.bd03Type",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.bd03Type",
      "short" : "社區式服務交通接送(BD03)服務使用類型",
      "definition" : "社區式服務交通接送之服務使用類型，字串長度 1；1.社區式長照機構、2.社區服務據點（不含身障類）、3.輔具中心、4.身障日間照顧服務，預設為 1。表1 條件必填：申報 BD03 為必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='bd03Type').code",
        "comment" : "社區式服務交通接送服務使用類型，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditBD03Type"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.lastSvc",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.lastSvc",
      "short" : "臨終日照顧",
      "definition" : "是否為臨終日照顧，字串長度 1；Y:是、N:否，預設為 N。表1 中為非必填欄位。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='lastSvc').valueBoolean",
        "comment" : "臨終日照顧（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 lastSvc"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.missedVisit",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.missedVisit",
      "short" : "訪視/服務未遇",
      "definition" : "本次訪視或服務是否未遇個案，字串長度 1；Y.未遇、N.正常，預設為 N。表1 中預設為 N。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='missedVisit').valueBoolean",
        "comment" : "訪視/服務未遇（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 missedVisit"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyCovid19",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyCovid19",
      "short" : "是否為陪同施打COVID-19疫苗",
      "definition" : "本次服務是否為陪同施打 COVID-19 疫苗，字串長度 1；Y.陪同、N.未陪同，預設為 N。表1 條件必填：僅開放 BA13、BA13a 申報（B 碼）且為非必填；其餘支付碼不填。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='applyCovid19').valueBoolean",
        "comment" : "是否為陪同施打 COVID-19 疫苗（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyCovid19"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyAa03",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyAa03",
      "short" : "是否申報AA03",
      "definition" : "是否一併申報 AA03（專業服務），字串長度 20；Y:是、N:否，預設為 N。表1 中為非必填欄位，預設為 N。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='applyAA03').valueBoolean",
        "comment" : "是否申報 AA03（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyAA03（大小寫須完全相符，該代碼系統為 case sensitive）"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyAa09",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.applyAa09",
      "short" : "是否申報AA09",
      "definition" : "是否一併申報 AA09，字串長度 20；Y:是、N:否，預設為 Y。表1 中預設為 Y。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='applyAA09').valueBoolean",
        "comment" : "是否申報 AA09（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyAA09（大小寫須完全相符）"
      }]
    },
    {
      "id" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.aa10Status",
      "path" : "LTCFeeApplyModel.applyInfo.caseSvcRecords.aa10Status",
      "short" : "AA10申報狀態",
      "definition" : "AA10 之申報狀態，字串長度 1；0.未申報、1.申請待確認、2.確認為非緊急服務、3.確認為緊急服務，預設為 0。表1 中預設為 0。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeApplyModelMapping",
        "map" : "Claim.supportingInfo.where(category.coding.code='aa10Status').code",
        "comment" : "AA10 申報狀態，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditAA10Status"
      }]
    }]
  }
}

```
