# 長照支付審查－個案服務紀錄申報 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－個案服務紀錄申報**

## Resource Profile: 長照支付審查－個案服務紀錄申報 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCClaimFeeApply |

 
此 Claim 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一筆個案服務紀錄的申報內容。 

 
每筆 Claim 填寫一筆個案服務紀錄，包含接受服務的個案、服務單位、照顧服務員、服務時間及費用。同次交易的服務紀錄以 Bundle 打包，每次最多 5000 筆。應依照顧組合代碼填寫所需的補充資料。 

**Usages:**

* Use this Profile: [長照支付審查－服務記錄申報文件打包](StructureDefinition-LTCBundleFeeApply.md)
* Examples for this Profile: [Claim/ltc-claim-feeapply-aa00-example](Claim-ltc-claim-feeapply-aa00-example.md), [Claim/ltc-claim-feeapply-c-code-example](Claim-ltc-claim-feeapply-c-code-example.md) and [Claim/ltc-claim-feeapply-da01-example](Claim-ltc-claim-feeapply-da01-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCClaimFeeApply.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCClaimFeeApply.csv), [Excel](StructureDefinition-LTCClaimFeeApply.xlsx), [Schematron](StructureDefinition-LTCClaimFeeApply.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCClaimFeeApply",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply",
  "version" : "1.1.0",
  "name" : "LTCClaimFeeApply",
  "title" : "長照支付審查－個案服務紀錄申報",
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
  "description" : "此 Claim 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一筆個案服務紀錄的申報內容。",
  "purpose" : "每筆 Claim 填寫一筆個案服務紀錄，包含接受服務的個案、服務單位、照顧服務員、服務時間及費用。同次交易的服務紀錄以 Bundle 打包，每次最多 5000 筆。應依照顧組合代碼填寫所需的補充資料。",
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
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim",
      "constraint" : [{
        "key" : "ltc-feeaudit-1",
        "severity" : "warning",
        "human" : "申報照顧組合代碼 BD03 或 DA01（交通接送）時，應填寫里程數與車號。",
        "expression" : "item.productOrService.coding.where(code = 'BD03' or code = 'DA01').exists() implies (supportingInfo.category.coding.where(code = 'milage').exists() and supportingInfo.category.coding.where(code = 'carNo').exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
      },
      {
        "key" : "ltc-feeaudit-2",
        "severity" : "warning",
        "human" : "申報照顧組合代碼 BD03（社區式服務交通接送）時，應填寫服務使用類型。",
        "expression" : "item.productOrService.coding.where(code = 'BD03').exists() implies supportingInfo.category.coding.where(code = 'bd03Type').exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
      },
      {
        "key" : "ltc-feeaudit-3",
        "severity" : "warning",
        "human" : "申報照顧組合代碼 AA00（A 單位個案管理服務）時，應填寫服務項目、服務對象與服務內容。",
        "expression" : "item.productOrService.coding.where(code = 'AA00').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcPeople').exists() and supportingInfo.category.coding.where(code = 'svcContent').exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
      },
      {
        "key" : "ltc-feeaudit-4",
        "severity" : "warning",
        "human" : "申報照顧組合代碼 AA03（專業服務）時，應填寫服務項目與提供專業服務單位。",
        "expression" : "item.productOrService.coding.where(code = 'AA03').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcUnit').exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
      }]
    },
    {
      "id" : "Claim.identifier",
      "path" : "Claim.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "申報資料的識別碼",
      "definition" : "應分別填寫服務紀錄識別碼、所屬交易序號及支審年月。每項識別資料的 system 填入指定的識別碼系統，value 填入實際內容。",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:objid",
      "path" : "Claim.identifier",
      "sliceName" : "objid",
      "short" : "服務紀錄識別碼。[應填入 Identifier]",
      "definition" : "由服務提供單位的系統產生，應為全域唯一的識別碼。支審系統中沒有該識別碼時新增服務紀錄，已有該識別碼時更新紀錄。",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:objid.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/objid",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:objid.value",
      "path" : "Claim.identifier.value",
      "short" : "服務紀錄識別碼。[應填入最長 20 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:transNo",
      "path" : "Claim.identifier",
      "sliceName" : "transNo",
      "short" : "交易序號。[應填入 Identifier]",
      "definition" : "用以識別本筆服務紀錄所屬的申報交易。同一交易序號每次最多申報 5000 筆服務紀錄。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:transNo.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:transNo.value",
      "path" : "Claim.identifier.value",
      "short" : "交易序號。[應填入最長 10 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:yyyymm",
      "path" : "Claim.identifier",
      "sliceName" : "yyyymm",
      "short" : "支審年月。[應填入 Identifier]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:yyyymm.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:yyyymm.value",
      "path" : "Claim.identifier.value",
      "short" : "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM，例如 201901]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "short" : "申報單的狀態。[應填入 active]",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "short" : "申報單的類別。[應填入 professional]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type.coding",
      "path" : "Claim.type.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type.coding.system",
      "path" : "Claim.type.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type.coding.code",
      "path" : "Claim.type.coding.code",
      "min" : 1,
      "patternCode" : "professional",
      "mustSupport" : true
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "short" : "申報單的用途。[應填入 claim]",
      "patternCode" : "claim",
      "mustSupport" : true
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "short" : "接受服務的個案。[應填入對應 Patient 的 Reference]",
      "definition" : "應參照符合 LTCPatient 的個案資料。",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.created",
      "path" : "Claim.created",
      "short" : "申報單的建立時間。[應填入日期時間，例如 2026-09-17T09:30:00+08:00]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurer",
      "path" : "Claim.insurer",
      "short" : "受理審查的主管機關。[應填入對應 Organization 的 Reference]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "short" : "提出申報的特約服務單位。[應填入對應 Organization 的 Reference]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.priority",
      "path" : "Claim.priority",
      "short" : "申報處理的優先順序，長照申報一般填入 normal。"
    },
    {
      "id" : "Claim.careTeam",
      "path" : "Claim.careTeam",
      "short" : "提供服務的照顧服務員",
      "definition" : "每位照顧服務員分別填寫，序號由 1 起依序編列。申報 AA00、B 碼、G 碼、SC 碼、C 碼、BD03 或 DA01 時，應至少填寫第一位照顧服務員。",
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam.sequence",
      "path" : "Claim.careTeam.sequence",
      "short" : "照顧服務員的序號。[應依序填入 1 至 5 的整數]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.careTeam.provider",
      "path" : "Claim.careTeam.provider",
      "short" : "照顧服務員或服務提供者。[應填入對應 Practitioner、PractitionerRole 或 Organization 的 Reference]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo",
      "path" : "Claim.supportingInfo",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "category"
        }],
        "rules" : "open"
      },
      "short" : "服務紀錄的補充資料，應依申報的照顧組合代碼填寫。",
      "definition" : "應依各 Slice 說明的適用服務與填寫條件提供資料。代碼類資料填入 code，文字、布林值、數量或地點參照則填入各 Slice 指定的 value[x]。",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo.category",
      "path" : "Claim.supportingInfo.category",
      "short" : "補充資料的類別。[應填入支付審查服務紀錄補充資訊類別代碼]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-supporting-info"
      }
    },
    {
      "id" : "Claim.supportingInfo.code",
      "path" : "Claim.supportingInfo.code",
      "short" : "補充資料的代碼。[應依資料類別填入對應 Slice 值集的代碼]"
    },
    {
      "id" : "Claim.supportingInfo:svcItem",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcItem",
      "short" : "服務項目，申報 AA00、AA03 時必填。如選擇其他，則續填服務項目的補充說明。",
      "definition" : "代碼填入 code。申報 AA03 時應填寫 C 碼服務項目。可複選，每個選項分別填寫一筆服務項目。選項為：1 電訪、2 家訪、3 與案家討論服務內容調整、4 接受申訴、5 照會或連結至服務提供單位、9 其他。選擇 9 時，應續填其他服務項目的說明。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcItem.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcItem"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcItem.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-svc-item"
      }
    },
    {
      "id" : "Claim.supportingInfo:svcItem.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:svcItemOther",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcItemOther",
      "short" : "其他服務項目的說明，服務項目選擇「9 其他」時填寫。[應在 valueString 填入最長 255 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcItemOther.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcItemOther"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcItemOther.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcPeople",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcPeople",
      "short" : "服務對象，申報 AA00 時必填。[可填入以下代碼，可複選：1 服務使用者 | 2 家庭照顧者]",
      "definition" : "代碼填入 code。每個選項分別填寫一筆服務對象；如同時服務個案與家庭照顧者，則分別填入 1 與 2。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcPeople.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcPeople"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcPeople.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-svc-people"
      }
    },
    {
      "id" : "Claim.supportingInfo:svcPeople.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:svcContent",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcContent",
      "short" : "服務內容，申報 AA00 時必填。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫本次實際提供的服務內容。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcContent.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcContent"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcContent.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcPoint",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcPoint",
      "short" : "服務重點，申報 AA00 時填寫。如選擇其他，則續填服務重點的補充說明。",
      "definition" : "代碼填入 code。可複選，每個選項分別填寫一筆服務重點。選項為：1 追蹤長照需要者與各項服務的連結情形、2 計畫與內容異動討論、3 協助長照需要者或家屬連結其他資源、4 接受長照服務諮詢及處理、5 接受申訴、9 其他。選擇 9 時，應續填其他服務重點的說明。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcPoint.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcPoint"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcPoint.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-svc-point"
      }
    },
    {
      "id" : "Claim.supportingInfo:svcPoint.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:svcPointOther",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcPointOther",
      "short" : "其他服務重點的說明，服務重點選擇「9 其他」時填寫。[應在 valueString 填入最長 255 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcPointOther.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcPointOther"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcPointOther.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcTrace",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcTrace",
      "short" : "服務適應情形與後續協助，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫個案接受服務後的適應情形，以及已提供或需要安排的後續協助。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcTrace.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcTrace"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcTrace.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcGoal",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcGoal",
      "short" : "各項服務與整體照顧計畫的目標達成情形，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫各項服務目標與整體照顧計畫目標的達成情形。尚未達成的目標可補充原因與後續安排。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcGoal.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcGoal"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcGoal.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcSuitable",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcSuitable",
      "short" : "照顧計畫是否合適及需求變動的說明，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫目前照顧計畫是否符合個案需求，以及需要調整的服務內容。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcSuitable.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcSuitable"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcSuitable.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcUnit",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svcUnit",
      "short" : "提供專業服務的 C 單位代碼，申報 AA03 時必填。[應在 valueString 填入最長 20 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svcUnit.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svcUnit"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svcUnit.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccGoalType",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svccGoalType",
      "short" : "復能目標達成情形，申報 C 碼時填寫。[應填入 1 至 5 其中一個代碼]",
      "definition" : "代碼填入 code。1 為尚未滿 1 照顧組合次數，2 為已滿且已達目標，3 為已滿但尚未達目標，4 為未滿且已達目標，5 為未滿但尚未達目標。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccGoalType.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svccGoalType"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svccGoalType.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-svcc-goal-type"
      }
    },
    {
      "id" : "Claim.supportingInfo:svccGoalType.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:svccGoal",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svccGoal",
      "short" : "專業服務的復能目標，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫專業服務預期協助個案達成的復能目標。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccGoal.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svccGoal"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svccGoal.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccContentTarget",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svccContentTarget",
      "short" : "接受專業服務指導的對象，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫本次接受專業服務指導的人員，例如個案、家庭照顧者或照顧服務員。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccContentTarget.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svccContentTarget"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svccContentTarget.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccContent",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svccContent",
      "short" : "專業服務的內容，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫本次實際提供的專業服務與指導內容。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccContent.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svccContent"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svccContent.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccSuggest",
      "path" : "Claim.supportingInfo",
      "sliceName" : "svccSuggest",
      "short" : "專業服務的指導與建議，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]",
      "definition" : "應填寫專業人員提出的照顧建議及後續應執行的事項。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:svccSuggest.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "svccSuggest"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:svccSuggest.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:addrFrom",
      "path" : "Claim.supportingInfo",
      "sliceName" : "addrFrom",
      "short" : "接送的出發地，申報 BD03、DA01 時填寫。[應在 valueReference 填入對應 Location 的 Reference]",
      "definition" : "應參照符合 LTCLocationFeeAuditPlace 的地點資料。地點名稱填入 Location.name，地址填入 Location.address；如提供經緯度，應同時填寫 Location.position.latitude 與 Location.position.longitude。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:addrFrom.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "addrFrom"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:addrFrom.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:addrTo",
      "path" : "Claim.supportingInfo",
      "sliceName" : "addrTo",
      "short" : "接送的目的地，申報 BD03、DA01 時填寫。[應在 valueReference 填入對應 Location 的 Reference]",
      "definition" : "應參照符合 LTCLocationFeeAuditPlace 的地點資料。地點名稱填入 Location.name，地址填入 Location.address；如提供經緯度，應同時填寫 Location.position.latitude 與 Location.position.longitude。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:addrTo.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "addrTo"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:addrTo.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:carNo",
      "path" : "Claim.supportingInfo",
      "sliceName" : "carNo",
      "short" : "接送車輛的車牌號碼，申報 BD03、DA01 時必填。[應在 valueString 填入最長 10 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:carNo.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "carNo"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:carNo.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:driver",
      "path" : "Claim.supportingInfo",
      "sliceName" : "driver",
      "short" : "接送駕駛員的姓名，申報 BD03、DA01 時填寫。[應在 valueString 填入最長 20 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:driver.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "driver"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:driver.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:milage",
      "path" : "Claim.supportingInfo",
      "sliceName" : "milage",
      "short" : "接送里程數，申報 BD03、DA01 時必填。[應在 valueQuantity 填入里程數與單位，建議單位為公里（km）]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:milage.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "milage"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:milage.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:bd03Type",
      "path" : "Claim.supportingInfo",
      "sliceName" : "bd03Type",
      "short" : "BD03 接送服務的使用類型，申報 BD03 時必填，預設為 1。[應填入以下代碼之一：1 社區式長照機構 | 2 社區服務據點（不含身障類）| 3 輔具中心 | 4 身障日間照顧服務]",
      "definition" : "代碼填入 code。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:bd03Type.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "bd03Type"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:bd03Type.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-bd03-type"
      }
    },
    {
      "id" : "Claim.supportingInfo:bd03Type.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:lastSvc",
      "path" : "Claim.supportingInfo",
      "sliceName" : "lastSvc",
      "short" : "是否於個案臨終當天提供照顧，預設為 false。[應填入以下布林值之一：true 是 | false 否]",
      "definition" : "應在 valueBoolean 填入 true 或 false。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:lastSvc.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "lastSvc"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:lastSvc.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:missedVisit",
      "path" : "Claim.supportingInfo",
      "sliceName" : "missedVisit",
      "short" : "訪視或服務時是否未遇到個案，預設為 false。[應填入以下布林值之一：true 未遇到 | false 正常訪視或服務]",
      "definition" : "應在 valueBoolean 填入 true 或 false。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:missedVisit.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "missedVisit"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:missedVisit.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyCovid19",
      "path" : "Claim.supportingInfo",
      "sliceName" : "applyCovid19",
      "short" : "是否陪同接種 COVID-19 疫苗，僅供 BA13、BA13a 申報，預設為 false。[應填入以下布林值之一：true 是 | false 否]",
      "definition" : "應在 valueBoolean 填入 true 或 false。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyCovid19.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "applyCovid19"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:applyCovid19.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyAA03",
      "path" : "Claim.supportingInfo",
      "sliceName" : "applyAA03",
      "short" : "是否申報 AA03，預設為 false。[應填入以下布林值之一：true 是 | false 否]",
      "definition" : "應在 valueBoolean 填入 true 或 false。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyAA03.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "applyAA03"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:applyAA03.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyAA09",
      "path" : "Claim.supportingInfo",
      "sliceName" : "applyAA09",
      "short" : "是否申報 AA09，預設為 true。[應填入以下布林值之一：true 是 | false 否]",
      "definition" : "應在 valueBoolean 填入 true 或 false。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:applyAA09.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "applyAA09"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:applyAA09.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:aa10Status",
      "path" : "Claim.supportingInfo",
      "sliceName" : "aa10Status",
      "short" : "AA10 申報狀態，預設為 0。[應填入以下代碼之一：0 未申報 | 1 申請待確認 | 2 確認為非緊急服務 | 3 確認為緊急服務]",
      "definition" : "代碼填入 supportingInfo.code。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:aa10Status.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "aa10Status"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:aa10Status.code",
      "path" : "Claim.supportingInfo.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-aa10-status"
      }
    },
    {
      "id" : "Claim.supportingInfo:aa10Status.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "max" : "0"
    },
    {
      "id" : "Claim.supportingInfo:remark",
      "path" : "Claim.supportingInfo",
      "sliceName" : "remark",
      "short" : "服務紀錄的備註。[應在 valueString 填入最長 4000 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo:remark.category",
      "path" : "Claim.supportingInfo.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
          "code" : "remark"
        }]
      }
    },
    {
      "id" : "Claim.supportingInfo:remark.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance",
      "path" : "Claim.insurance",
      "short" : "長照給付來源，至少應填寫一筆。",
      "definition" : "應填寫給付來源的序號，並以 focal 標示本次申報使用的給付來源。coverage 應填入對應 Coverage 的 Reference；如僅提供給付名稱，可在 coverage.display 填入「長期照顧給付及支付基準」。",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item",
      "path" : "Claim.item",
      "short" : "個案服務紀錄的內容，每筆服務紀錄應填寫一筆服務明細。",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.sequence",
      "path" : "Claim.item.sequence",
      "short" : "服務明細的序號。[應填入 1]"
    },
    {
      "id" : "Claim.item.category",
      "path" : "Claim.item.category",
      "short" : "服務類別。[應填入以下代碼之一：1 補助 | 2 自費]",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-fee-type"
      }
    },
    {
      "id" : "Claim.item.productOrService",
      "path" : "Claim.item.productOrService",
      "short" : "照顧組合代碼，如為 A 單位個案管理服務，則填入 AA00。[應填入最長 10 個字元的代碼]",
      "definition" : "應在 coding 填入長照照顧組合值集的代碼。A 單位個案管理服務應填入 AA00，並續填服務項目、服務對象與服務內容。",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
      }
    },
    {
      "id" : "Claim.item.serviced[x]",
      "path" : "Claim.item.serviced[x]",
      "short" : "服務的開始與結束時間。[應填入 Period]",
      "definition" : "start 填入服務開始的日期與時間，end 填入服務結束的日期與時間。時間採 24 小時制並包含時區，例如 2026-09-17T09:30:00+08:00。跨日服務應填寫實際結束日期。",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.location[x]",
      "path" : "Claim.item.location[x]",
      "short" : "服務地點。[應填入對應 Location 的 Reference]",
      "definition" : "申報 BD03、DA01 時，可參照接送的目的地。完整的出發地與目的地資料，應分別填寫於 supportingInfo 的 addrFrom、addrTo Slice。",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      }]
    },
    {
      "id" : "Claim.item.quantity",
      "path" : "Claim.item.quantity",
      "short" : "申報數量，申報各類服務時皆應填寫。[應填入 Quantity，value 為服務數量]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.unitPrice",
      "path" : "Claim.item.unitPrice",
      "short" : "服務單價，申報 BD03、DA01 時必填，其餘服務可選填。[應填入 Money，幣別為 TWD]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.net",
      "path" : "Claim.item.net",
      "short" : "服務明細的小計金額，為單價乘以數量。[應填入 Money，幣別為 TWD]",
      "mustSupport" : true
    },
    {
      "id" : "Claim.total",
      "path" : "Claim.total",
      "short" : "本筆服務紀錄的申報金額。[應填入 Money，幣別為 TWD]",
      "mustSupport" : true
    }]
  }
}

```
