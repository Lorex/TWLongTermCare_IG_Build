# Home - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ImplementationGuide/tw.iii.ltc | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:TaiwanLongTermCareImplementationGuide |

### 重要異動公告

目前版本：**STU 1.1.0**。

#### STU 1.1.0 更新內容（相較於 1.0.0）

本版新增支付審查、居家護理及在宅急症資料交換規範，並整合各主題的流程、欄位對照與範例。新增定義優先重用既有 LTC 與 TW Core Profile；需要不同限制時，再由適用的共同父層衍生。

| | |
| :--- | :--- |
| [長照支付審查](fee-audit.md) | 新增服務紀錄申報、刪除、申報確認、審核結果查詢、撤回及取消結果回報等七支 API 的 FHIR 對應。以 Bundle、Claim、ClaimResponse、Task 等資源表達申報與審核流程，提供相關 Profiles、術語、Extensions 與範例。 |
| [居家護理照護管理系統](home-nursing.md) | 依介接規範 V5.0.16 新增十二支 API、二十四種表單的交換設計，包含 37 個 Logical Models、35 個 Profiles，以及術語、Extensions 與範例。涵蓋多次收案、全人評估、需求摘要、照護計畫、共照、傷口、生命徵象及處理結果查詢，並提供[逐欄 Mapping](home-nursing-mapping.md)。 |
| [在宅急症照護](hah.md) | 新增涵蓋 150 個資料元素的 Logical Model、25 個 Profiles、3 個 Extensions、5 個 CodeSystems、7 個 ValueSets、1 份收案評估問卷及 38 個範例。以 EpisodeOfCare 串聯整段照護與單次訪視，支援檢驗、給藥、照會、結案與轉銜，並提供完整結案／轉院文件及[欄位對照](hah-mapping.md)。 |
| 術語與欄位說明 | 補齊既有術語的 OID 與費用申報 Mapping 連結。精簡欄位填寫說明，將來源欄位對照集中於專用表格，便於實作者確認實際填值與轉換方式。 |
| 文件與導覽 | 新增「主題說明」選單，整合三個業務主題，並更新[Logical Models](logical-models.md)、[Profiles 與 Extensions](profiles-and-extensions.md)、[術語](terminologies.md)及[範例](examples.md)索引。同步更新版本資訊與作者／貢獻者資料。 |
| 建置與驗證 | 建置統一使用`https://tx.fhir.org`進行線上術語驗證。移除離線及本地術語驗證模式；術語服務無法連線時停止建置。 |

**升版注意：**本版持續使用 FHIR R4.0.1 與 TW Core IG 1.0.0。新增業務主題是 FHIR 交換設計，不表示原系統 API 已改用 FHIR；介接時請依各主題的 Mapping 轉換資料，並確認採用 Profile 的狀態、必填條件與值集。各主題的收案、就診、計畫及結案狀態應分別處理，不以 Patient.active 代替療程結案。

**歷史公告：STU 1.0.0 重大變更（Breaking Changes）**

1.0.0 為首個正式試用版（Standard for Trial Use），包含以下與先前版本不相容的異動：

1. **Profile 命名統一**：所有 Profile 統一採用`LTC[ResourceType][Purpose]`命名規範（如`LTCCarePlanPayload`、`LTCBundlePayload`），舊名稱（如`CarePlanTWLTCPlanSDK`、`BundleTWLTCSDKPayload`）不再使用。
1. **CodeSystem/ValueSet 去除 SDK 後綴**：`CS-TW-LTC-CMSLevel-SDK`、`CS-TW-LTC-CaseStatus-SDK`等已改為`CS-TW-LTC-CMSLevel`、`CS-TW-LTC-CaseStatus`。
1. **Extension 整併**：`Export-PlanId`、`FrequencyLabel-SDK`已改用 FHIR 原生欄位取代；Incident 系列 Extension 已廢棄，改用`LTCAdverseEvent`Profile。
1. **異常事件通報**：原`Communication`-based Incident Profile 已全面遷移至`LTCAdverseEvent`，並新增`AdverseEventDescription`、`AdverseEventNotifMethod`、`AdverseEventAbout`三個 Extension。
1. **Common Base Profile 導入**：新增`LTCCompositionBase`、`LTCObservationAssessmentBase`、`LTCEpisodeOfCareBase`作為共用基礎 Profile。
1. **CoverageEligibilityResponse 合併**：SDK 版與 CS100 版合併為單一`LTCCoverageEligibilityResponse`。

實作者請參照新版 Profile 名稱與結構進行調整。

### 介紹

臺灣長期照顧實作指引（Taiwan Long Term Care Implementation Guide，簡稱TW LTC IG）採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在[FHIR R4.0.1](http://hl7.org/fhir/R4/)之標準基礎上，參考了[臺灣核心實作指引 （TW Core Implementation Guide）1.0.0](https://twcore.mohw.gov.tw/ig/twcore/index.html)、[美國長期照顧實作指引（Electronic Long-Term Services and Supports (eLTSS) Release 1 - US Realm, eLTSS） 2.0.0 - STU2](https://hl7.org/fhir/us/eltss/index.html) ，進一步定義適用於臺灣長期照顧資料交換需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）、資料類型（文字、日期時間、代碼等）、可綁定的代碼（及其綁定的強制程度）及查詢參數等，旨在提供健康照護資訊系統開發與實作者以TW LTC IG為基礎，再進一步訂定其實務專案所需之資料交換格式以應用於專案中。TW LTC IG的實作方式有兩種：

1. **僅支援Profiles**：系統僅支援TW LTC Profiles以呈現健康照護相關資料。
1. **支援Profiles + RESTful互動**：系統支援TW LTC Profiles及RESTful互動以呈現健康照護相關資料。

### 背景

鑒於長期照顧機構端與醫院及衛生福利部電子病歷資料交換需求，故此版本 Taiwan LTC IG 以 FHIR R4.0.1 為基礎，同時繼承自 Taiwan LTC Profiles/ValueSet 與 TW Core Profiles/ValueSet，以最大程度滿足對電子病歷資料交換的相容性，並分別參考來自其他國家長期照顧實作指引、衛生福利部電子病歷相關規範，使制定之 IG 在除了符合聯測需求外，也盡可能符合臺灣的實作需求。

TW LTC IG內容將在未來的版本中持續更新，各版本亦將附有版本異動說明。所有經進一步定義的 Resources 或 Profiles，皆稱為Profiles，各 Profiles 依據其可被在地實際採用的程度與不再修改的程度，將標記其「成熟度（Maturity Level）」，被稱之為 FMM（根據眾所周知的CMM级別）。FMM 等級（level）可被實作者用来判斷一個規範文件的進階程度，也就是穩定度。以下是已被定義的 FMM 等級，實務上會視情況調整以符合定義：

**DRAFT 0** 此 Resource 或 Profile（規範文件） 已被發佈於目前的建置，這個等級意即草稿。

**FMM 1** 滿足 DRAFT 0 條件，而且此規範文件在建置的過程沒有任何的警語，負責的工作小組已指明他們認為這份規範文件基本上已完成並可供實作使用。

**FMM 2** 滿足 FMM 1 條件，而且此規範文件已被測試，並成功支援至少三套獨立系統之間的可互操作性（意即至少有三套系統實作此規範成功地互通資料），這些系統利用大部分的規範文件（例如至少80%的核心資料），使用基於此規範文件的至少一個聲明範圍的半真實資料及情境（例如在聯測）。這些互操作結果要求被報告及被工作小組接受。

**FMM 3** 滿足 FMM 2 條件，而且此規範文件已被工作小组驗證應遵從的《[Conformance Resource Quality Guidelines](https://confluence.hl7.org/display/FHIR/Conformance+QA+Criteria)》；已經通過一輪正式投票；至少有10位來自至少3家機構不同的實作者提出意見，並造成至少一項實質性的改變。

**FMM 4** 滿足 FMM 3 條件，而且此規範文件已正式出版（例如：FHIR實作指引），並已實際應用於多個雛型專案。同時，負責的工作小組同意此規範文件足夠穩定，在後續的非向下相容（non-backward compatible）的異動中需與實作者協商與諮詢。

**FMM 5** 滿足 FMM 4 條件，而且此規範文件於在 FMM 1 以上等級（意即：試用等級）的兩個正式出版品發佈週期中出版，並已實際應用於至少五套獨立的產品系統。

**Normative（規範）** 此規範文件已被認定為穩定。

TW LTC IG 中所有Profiles的FMM等級如下： 
1. **FMM 2**：以下 Profiles 已在 2025 專案聯測松中由至少 3 套獨立系統成功實作互操作：
* LTCPatient（5 系統）
* LTCObservationVitalSigns（5 系統）
* LTCObservationVitalSignsPanel（5 系統）
* LTCOrganization（5 系統）
* LTCPractitioner（5 系統）
* LTCQuestionnaireResponseMMSE（4 系統）
* LTCQuestionnaire（4 系統）
* LTCQuestionnaireResponse（4 系統）
* LTCQuestionnaireResponseCDR（3 系統）

1. **FMM 1**：以下 Profiles 已在聯測中由至少 1 套系統實作，工作小組認為可供實作使用：
* LTCMedicationAdministration（2 系統）
* LTCBundleCMS（2 系統）
* LTCCompositionCMS（2 系統）
* LTCPatientCMS（2 系統）
* LTCCondition（2 系統）
* LTCQuestionnaireResponseADL（2 系統）
* LTCQuestionnaireResponseIADL（2 系統）
* LTCQuestionnaireResponseAA01（2 系統）
* LTCQuestionnaireResponseAA02（2 系統）
* LTCObservationFallingHistory（2 系統）
* LTCGoal（2 系統）
* LTCCarePlan（2 系統）
* LTCQuestionnaireResponseAA12（2 系統）
* LTCPractitionerRole（2 系統）

1. **FMM 0 (DRAFT)**：其餘所有 Profiles 為草稿版本。
 

### 如何閱讀這個實作指引（IG）

 TW LTC IG 之網站架構圖如下圖所示。各功能說明如下：

* **[應用說明](index.md)**：TW LTC IG 介紹及背景說明。
* **[規範文件](artifacts.md)**：TW LTC IG 能力聲明、所有 Profiles 與查詢參數及操作定義、專門術語及 Extensions。 
* **[能力聲明](capability-statements.md) **：應用 TW LTC IG 於建置業務目的使用的 FHIR Server 時，該 FHIR Server 必須及建議應該支援的操作功能。 
* **[查詢參數及操作定義](searchparameters-and-operation.md) **：查詢 FHIR Server 的 Profiles時，針對各 Profiles可使用的查詢參數及操作定義。 
* **[邏輯模型](logical-models.md) **：TW LTC IG 的所有邏輯模型（Logical Models），各邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。 
* **[FHIR Profiles及Extensions](profiles-and-extensions.md)**： 
* TW LTC IG 的所有 Profiles 之定義與範例及Extensions。
* 各資料項目不同實作強制程度的 Terminology。
* 各資料項目的限制（Constraints）。
* 查詢依據 TW LTC IG 實作之 FHIR Server 的特定 Profiles 時，可使用的查詢參數。
* 有哪些 Profiles 具有查詢參數以及 Server 必須支援哪些必要的查詢參數功能。
 
* **[專門術語](terminologies.md) **：TW LTC IG網站所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets），內容主要依據全國專門術語服務平臺（TW terminology services）與長期照顧情境使用之術語建置。 
 
* **[範例](examples.md)**：TW LTC IG 的所有範例。
* **[結構定義與範例檔下載](downloads.md)**：實作者若不偏好使用 FHIR RESTful API 驗證資料是否遵從 Profiles，可直接下載所需的格式驗證檔，包括 XML、JSON 及 Turtle 三種格式，亦可於此下載完整範例。
* **[安全性](security.md)**：主要說明採用 TW LTC IG 網站進行實作時，有關資料存取授權的作法。
* **[驗證教學](validates.md)**：如何驗證實作檔是否遵從 TW LTC IG 規範。
* **[ 2025 專案聯測松](connectathon.md)**：本規範與 2025 專案聯測松的賽道整合資訊。
* **[聯測松結果](connectathon-result.md)**：2025 專案聯測松的驗證結果。

#### Profiles 之類別劃分

本 IG 之 [Profiles 與 Extensions](profiles-and-extensions.md) 依業務情境劃分為四大類別，實作者可依所屬業務端快速找到所需的規範文件：

* **共用資料元素**：跨所有業務端共同引用的基礎資料，包括住民基本資料、關係人、照顧服務提供者、服務人員角色、機構，以及問卷與問卷回覆之基礎架構。
* **醫院端**：醫事機構產出之資料，包括診斷與病情（病情、問題或診斷、主要疾病、主要問題及需求）、失智與認知評估（MMSE、CDR），以及長期照護醫師意見書（AA12）。
* **臨床端（長照機構／照護現場）**：長照機構照護現場之資料，包括日常照護紀錄（生命體徵、用藥資料、照護活動）、照護狀況紀錄（壓傷、管路、居住、看護、身心障礙）、安全監測（個案位置監測、異常事件警報、跌倒紀錄）、照護規劃（照顧團隊、照顧目標、照顧計畫），以及運動處方相關資料（基礎生理量測、身體組成分析儀、穿戴裝置、運動項目）。
* **行政與申報端（照顧協調／核定申報）**：照顧管理中心與申報介接之資料，包括個案服務初篩表／轉介單、照顧管理評估量表（CMS 量表）、共用評估量表（ADL、IADL）、照顧管理流程（AA01、AA02、服務請求、任務管理），長照 SDK 系統介接（個案總查詢 CS100、回傳包、照管全量匯出與檢核），以及支付審查模組（照管平台申報、分案審核回覆、申報交易工作流）。

其中支付審查模組另有專屬說明頁，涵蓋服務記錄申報、分案審核明細回覆與申報交易狀態查詢之完整情境與電文對應，詳見 [長照支付審查](fee-audit.md) 頁面。

Extensions 亦依相同類別劃分，詳見 [FHIR Profiles 及 Extensions](profiles-and-extensions.md) 頁面。

### 作者與貢獻者

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 作者 | 0.0.1~1.1.0 | 經濟部產業發展署（Industrial Development Administration, Ministry of Economic Affairs） | 楊宇凡（Yu-Fan Yang） | 矽塔資訊服務有限公司（Sitatech Information Services Co., Ltd） | [ceo@sita.tech](mailto:ceo@sita.tech) |
| 貢獻者 | 0.4.0~1.1.0 | 陳靖勳（Jing-Syun Chen） | 矽塔資訊服務有限公司（Sitatech Information Services Co., Ltd） | [pt@sita.tech](mailto:pt@sita.tech) | |
| 貢獻者 | 0.4.0~1.1.0 | 張士宏（Shih-Hong Jhang） | 矽塔資訊服務有限公司（Sitatech Information Services Co., Ltd） | [kevin0216@sita.tech](mailto:kevin0216@sita.tech) | |
| 貢獻者 | 0.0.1~1.1.0 | 李祥豪（Siang-Hao Lee） | 九日生行動健康科技公司（9Rise International Mobile Health Technology Co., Ltd.） | [shvoidlee@gmail.com](mailto:shvoidlee@gmail.com) | |
| 貢獻者 | 0.3.0~1.1.0 | 楊宗翰（Chung-Han Yang） | 九日生行動健康科技公司（9Rise International Mobile Health Technology Co., Ltd.） |  | |
| 貢獻者 | 0.0.1~1.1.0 | 黃薰慧（Hsun-Hui Huang） | 財團法人資訊工業策進會 - 數位轉型研究院（Institute for Information Industry - Digital Transformation Research Institute） | [beatrice@iii.org.tw](mailto:beatrice@iii.org.tw) | |
| 貢獻者 | 0.3.0~1.1.0 | 張鈞亮 (Chun-Liang Chang) | 財團法人資訊工業策進會 - 數位轉型研究院（Institute for Information Industry - Digital Transformation Research Institute） | [liangglchang@iii.org.tw](mailto:liangglchang@iii.org.tw) | |
| 貢獻者 | 0.3.0~1.1.0 | 崔智萱 (Nicole Tsui) | 財團法人資訊工業策進會 - 數位轉型研究院（Institute for Information Industry - Digital Transformation Research Institute） | [nicolechtsui@iii.org.tw](mailto:nicolechtsui@iii.org.tw) | |
| 貢獻者 | 0.0.1~1.1.0 | 李修安（Hsiu-An Lee） | 國家衛生研究院 - 癌症研究所（National Health Research Institutes - The National Institute of Cancer Research） | [billy72325@gmail.com](mailto:billy72325@gmail.com) | |



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "tw.iii.ltc",
  "url" : "http://ltc-ig.fhir.tw/ImplementationGuide/tw.iii.ltc",
  "version" : "1.1.0",
  "name" : "TaiwanLongTermCareImplementationGuide",
  "title" : "臺灣長期照顧實作指引(TW LTC IG)",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "packageId" : "tw.iii.ltc",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "tw_gov_mohw_twcore",
    "uri" : "https://twcore.mohw.gov.tw/ig/twcore/ImplementationGuide/tw.gov.mohw.twcore",
    "packageId" : "tw.gov.mohw.twcore",
    "version" : "1.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU 1.1.0"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "example-narratives"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "generate-version"
      },
      {
        "url" : "value",
        "valueString" : "r4"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "version-comparison"
      },
      {
        "url" : "value",
        "valueString" : "none"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://ltc-ig.fhir.tw/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU 1.1.0"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "generate"
      },
      {
        "url" : "value",
        "valueString" : "example-narratives"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "generate-version"
      },
      {
        "url" : "value",
        "valueString" : "r4"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "version-comparison"
      },
      {
        "url" : "value",
        "valueString" : "none"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://ltc-ig.fhir.tw/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseADL.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseADL"
      },
      "name" : "ADL 問卷回覆",
      "description" : "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-cdr-total-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/cdr-total-score"
      },
      "name" : "CDR 總分",
      "description" : "臨床失智評估量表的總分",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-resource-format",
        "valueCode" : "application/fhir+json"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Binary-cdr-assessment-example.html"
      }],
      "reference" : {
        "reference" : "Binary/cdr-assessment-example"
      },
      "name" : "CDR 評估範例",
      "description" : "一個完整的 CDR 評估範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCDRAssessmentModel"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-cms-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-cms-example"
      },
      "name" : "CMS評估個案範例",
      "description" : "一個接受CMS評估的長照個案範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseIADL.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseIADL"
      },
      "name" : "IADL 問卷回覆",
      "description" : "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mmse-total-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mmse-total-score"
      },
      "name" : "MMSE 總分",
      "description" : "簡易智能狀態測驗的總分",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-resource-format",
        "valueCode" : "application/fhir+json"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Binary-mmse-assessment-example.html"
      }],
      "reference" : {
        "reference" : "Binary/mmse-assessment-example"
      },
      "name" : "MMSE 評估範例",
      "description" : "一個完整的 MMSE 評估範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCMMSEAssessmentModel"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-sof.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-sof"
      },
      "name" : "SOF問卷",
      "description" : "轉介流程中SOF問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-sof-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-sof-example"
      },
      "name" : "SOF問卷回應範例",
      "description" : "轉介流程中SOF問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralSOF"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ltc-observation-vital-signs-panel-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ltc-observation-vital-signs-panel-example"
      },
      "name" : "一組生命徵象檢驗檢查範例",
      "description" : "一個一組生命徵象檢驗檢查的範例，展示如何使用 LTCObservationVitalSignsPanel Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSignsPanel"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-caregiver-support.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-caregiver-support"
      },
      "name" : "主要照護者工作與支持問卷",
      "description" : "CMS評估表中主要照護者工作與支持問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-ltc-related-person-primary-caregiver-example.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/ltc-related-person-primary-caregiver-example"
      },
      "name" : "主要照顧者範例",
      "description" : "一個主要照顧者的範例，展示如何使用 LTCRelatedPerson Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RelatedPerson"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RelatedPerson-ltc-related-person-primary-caregiver-referral-example.html"
      }],
      "reference" : {
        "reference" : "RelatedPerson/ltc-related-person-primary-caregiver-referral-example"
      },
      "name" : "主要照顧者範例（轉介用）",
      "description" : "轉介單使用之主要照顧者範例，patient 指向轉介個案",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-caregiver-load.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-caregiver-load"
      },
      "name" : "主要照顧者負荷問卷",
      "description" : "CMS評估表中照顧者負荷問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCLocationModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCLocationModel"
      },
      "name" : "個案位置監測邏輯模型",
      "description" : "此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-EconomyStatusVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/EconomyStatusVS-TWLTC"
      },
      "name" : "個案經濟狀況值集",
      "description" : "用以表述個案經濟狀況之值集，包含個案經濟狀況之描述內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Composition-CS100.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Composition-CS100"
      },
      "name" : "個案總查詢（CS100 對應版）Case Summary",
      "description" : "本文件為『個案總查詢（Case Summary）』之 CS100 專用版本，\n其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能\n《CS100 個案總查詢》之查詢結果欄位與區塊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtPatientIdentity-TWLTC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtPatientIdentity-TWLTC"
      },
      "name" : "個案身分別",
      "description" : "此 Extension 用以表述個案的身分別。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-PatientIdentityCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/PatientIdentityCS-TWLTC"
      },
      "name" : "個案身分別代碼",
      "description" : "個案身分別代碼",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-PatientIdentityVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/PatientIdentityVS-TWLTC"
      },
      "name" : "個案身分別值集",
      "description" : "個案身分別的值集",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ConditionDisabilityCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ConditionDisabilityCS-TWLTC"
      },
      "name" : "個案身心障礙手冊持有狀態代碼",
      "description" : "用於表述個案的身心障礙手冊持有狀態代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ConditionDisabilityTypeCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ConditionDisabilityTypeCS-TWLTC"
      },
      "name" : "個案身心障礙類型代碼（新制）",
      "description" : "用於表述個案的身心障礙類型代碼（新制）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ConditionDisabilityLegacyTypeCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ConditionDisabilityLegacyTypeCS-TWLTC"
      },
      "name" : "個案身心障礙類型代碼（舊制）",
      "description" : "用於表述個案的身心障礙類型代碼（舊制）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-visceral-fat-index-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-visceral-fat-index-example"
      },
      "name" : "內臟脂肪指數測量範例",
      "description" : "一個內臟脂肪指數測量的範例，展示如何使用 PASportObservationVisceralFatIndex Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationVisceralFatIndex"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-visceral-fat-area-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-visceral-fat-area-example"
      },
      "name" : "內臟脂肪面積測量範例",
      "description" : "一個內臟脂肪面積測量的範例，展示如何使用 PASportObservationVisceralFatArea Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationVisceralFatArea"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-hah-transfer-episode.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/hah-transfer-episode"
      },
      "name" : "再次收案後轉院的療程範例",
      "description" : "同一個案再次收案建立新療程，以轉院結束。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-fat-free-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-fat-free-mass-example"
      },
      "name" : "去脂體重測量範例",
      "description" : "一個去脂體重測量的範例，展示如何使用 PASportObservationFatFreeMass Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationFatFreeMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-respiratory-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-respiratory-rate-example"
      },
      "name" : "呼吸速率測量範例",
      "description" : "一個呼吸速率測量的範例，展示如何使用 PASportObservationRespiratoryRate Profile 來記錄呼吸速率資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-example"
      },
      "name" : "問卷回覆範例",
      "description" : "一個問卷回覆的範例，展示如何使用 LTCQuestionnaireResponse Profile 來記錄問卷回覆",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-UnitPrice.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-UnitPrice"
      },
      "name" : "單價",
      "description" : "此 Extension 用於表示長照服務項目的單價金額。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-hah-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/hah-patient"
      },
      "name" : "在宅急症個案範例",
      "description" : "合成個案，供本主題所有臨床範例參照。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DocumentReference"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DocumentReference-hah-attachment.html"
      }],
      "reference" : {
        "reference" : "DocumentReference/hah-attachment"
      },
      "name" : "在宅急症同意文件附件範例",
      "description" : "以內嵌文字示範附件交換，內容為合成資料。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-hah-episode.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/hah-episode"
      },
      "name" : "在宅急症完成療程範例",
      "description" : "本次合成療程完成治療後結案。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-hah-visit.html"
      }],
      "reference" : {
        "reference" : "Encounter/hah-visit"
      },
      "name" : "在宅急症實地訪視範例",
      "description" : "實地訪視，參照同一收案與整段照護。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-hah-task.html"
      }],
      "reference" : {
        "reference" : "Task/hah-task"
      },
      "name" : "在宅急症工作完成範例",
      "description" : "團隊負責的檢驗工作，區分預定期限與實際執行時間。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-hah-infusion.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/hah-infusion"
      },
      "name" : "在宅急症持續輸注範例",
      "description" : "示範 effectivePeriod 與給藥速率，數值為合成資料。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hah-intake-assessment.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hah-intake-assessment"
      },
      "name" : "在宅急症收案評估問卷",
      "description" : "本 IG 定義的收案資料交換表單；正式計畫條件須依實際採用的版本評估。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hah-assessment.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hah-assessment"
      },
      "name" : "在宅急症收案評估範例",
      "description" : "合成評估內容，只示範資料結構，不代表任何給付資格判定。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-hah-admission.html"
      }],
      "reference" : {
        "reference" : "Encounter/hah-admission"
      },
      "name" : "在宅急症整段照護範例",
      "description" : "整段在宅照護，與多次實地及遠距訪視分開。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-hah-organization.html"
      }],
      "reference" : {
        "reference" : "Organization/hah-organization"
      },
      "name" : "在宅急症服務機構範例",
      "description" : "合成機構，重用長照機構 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-hah-medication-not-done.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/hah-medication-not-done"
      },
      "name" : "在宅急症未給藥範例",
      "description" : "未執行時保留原因，不虛構給藥劑量。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-hah-report.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/hah-report"
      },
      "name" : "在宅急症檢驗報告範例",
      "description" : "檢驗報告參照單項結果、醫囑與檢體。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDiagnosticReport"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-hah-lab-request.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/hah-lab-request"
      },
      "name" : "在宅急症檢驗請求範例",
      "description" : "示範檢驗醫囑與後續檢驗報告連結。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-hah-specimen.html"
      }],
      "reference" : {
        "reference" : "Specimen/hah-specimen"
      },
      "name" : "在宅急症檢體範例",
      "description" : "直接重用 TW Core 檢體 Profile。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-hah-communication.html"
      }],
      "reference" : {
        "reference" : "Communication/hah-communication"
      },
      "name" : "在宅急症照會回覆範例",
      "description" : "示範照會請求、回覆與接續工作之區別。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCommunication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-hah-consult-request.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/hah-consult-request"
      },
      "name" : "在宅急症照會請求範例",
      "description" : "示範專業照會與回覆的關聯。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Consent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Consent-hah-consent.html"
      }],
      "reference" : {
        "reference" : "Consent/hah-consent"
      },
      "name" : "在宅急症照護同意範例",
      "description" : "示範病人同意、來源文件及療程關聯，不代表 DNR 醫囑。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHConsent"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-hah-location.html"
      }],
      "reference" : {
        "reference" : "Location/hah-location"
      },
      "name" : "在宅急症照護地點範例",
      "description" : "重用個案位置 Profile 表達個案自宅。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Goal"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Goal-hah-goal.html"
      }],
      "reference" : {
        "reference" : "Goal/hah-goal"
      },
      "name" : "在宅急症照護目標範例",
      "description" : "示範個別照護目標與預期完成日期。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-hah-plan.html"
      }],
      "reference" : {
        "reference" : "CarePlan/hah-plan"
      },
      "name" : "在宅急症照護計畫範例",
      "description" : "計畫參照結構化服務請求、診斷與目標。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-hah-summary.html"
      }],
      "reference" : {
        "reference" : "Composition/hah-summary"
      },
      "name" : "在宅急症結案摘要範例",
      "description" : "以七個章節整理完成療程的合成資料。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-hah-document.html"
      }],
      "reference" : {
        "reference" : "Bundle/hah-document"
      },
      "name" : "在宅急症結案文件範例",
      "description" : "包含摘要與所有參照資源的合成文件。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-hah-impression.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/hah-impression"
      },
      "name" : "在宅急症臨床評估範例",
      "description" : "以資源參照連結實測資料，避免重複塞入 note JSON。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-hah-procedure.html"
      }],
      "reference" : {
        "reference" : "Procedure/hah-procedure"
      },
      "name" : "在宅急症處置範例",
      "description" : "示範已完成的照護處置及實際執行者。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hah-glucose.html"
      }],
      "reference" : {
        "reference" : "Observation/hah-glucose"
      },
      "name" : "在宅急症血糖檢驗範例",
      "description" : "血糖使用檢驗結果 Profile，不套用生命徵象分類。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHObservationLab"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-hah-condition.html"
      }],
      "reference" : {
        "reference" : "Condition/hah-condition"
      },
      "name" : "在宅急症診斷範例",
      "description" : "合成案例中的呼吸道感染診斷，不代表收案資格或治療建議。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-hah-team.html"
      }],
      "reference" : {
        "reference" : "CareTeam/hah-team"
      },
      "name" : "在宅急症跨機構團隊範例",
      "description" : "示範同一團隊可包含人員與機構成員。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-hah-medication-order.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/hah-medication-order"
      },
      "name" : "在宅急症輸注處方範例",
      "description" : "僅示範資料結構的合成處方，不作臨床治療或劑量建議。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-hah-transfer-summary.html"
      }],
      "reference" : {
        "reference" : "Composition/hah-transfer-summary"
      },
      "name" : "在宅急症轉院摘要範例",
      "description" : "資訊不足的章節明確標示未提供，不能解讀為無疾病或無用藥。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-hah-transfer-admission.html"
      }],
      "reference" : {
        "reference" : "Encounter/hah-transfer-admission"
      },
      "name" : "在宅急症轉院整段照護範例",
      "description" : "將轉出時間與目的機構記錄在本次整段照護。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-hah-transfer-document.html"
      }],
      "reference" : {
        "reference" : "Bundle/hah-transfer-document"
      },
      "name" : "在宅急症轉院文件範例",
      "description" : "包含摘要與所有參照資源的合成文件。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-hah-transfer-request.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/hah-transfer-request"
      },
      "name" : "在宅急症轉院申請範例",
      "description" : "申請轉院與接收機構，不將申請狀態視為對方已完成就醫。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AllergyIntolerance-hah-allergy.html"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/hah-allergy"
      },
      "name" : "在宅急症過敏資訊範例",
      "description" : "示範已確認的物質與反應，不能由原始過敏布林旗標直接產生。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAllergyIntolerance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-hah-video-visit.html"
      }],
      "reference" : {
        "reference" : "Encounter/hah-video-visit"
      },
      "name" : "在宅急症遠距訪視範例",
      "description" : "已完成的視訊評估，並非視訊會議邀請。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-hah-practitioner.html"
      }],
      "reference" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "name" : "在宅急症醫療人員範例",
      "description" : "合成人員，重用長照醫事人員 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-hah-device.html"
      }],
      "reference" : {
        "reference" : "Device/hah-device"
      },
      "name" : "在宅急症體溫計範例",
      "description" : "設備編號使用 identifier，不宣稱為正式 UDI。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hah-temperature.html"
      }],
      "reference" : {
        "reference" : "Observation/hah-temperature"
      },
      "name" : "在宅急症體溫量測範例",
      "description" : "直接重用既有基礎生理量測 Profile，補上在宅急症就診與設備參照。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHPatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHPatient"
      },
      "name" : "在宅急症－個案",
      "description" : "正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHVisitEncounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHVisitEncounter"
      },
      "name" : "在宅急症－單次訪視",
      "description" : "每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。預約或通知不能當成已完成訪視。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHEncounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHEncounter"
      },
      "name" : "在宅急症－就診基礎",
      "description" : "在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHBundleSummary.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHBundleSummary"
      },
      "name" : "在宅急症－摘要文件 Bundle",
      "description" : "以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-summary-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-summary-type"
      },
      "name" : "在宅急症－摘要種類值集",
      "description" : "結案或轉銜摘要。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hah-document.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hah-document"
      },
      "name" : "在宅急症－摘要種類與章節代碼",
      "description" : "本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-section.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-section"
      },
      "name" : "在宅急症－摘要章節值集",
      "description" : "摘要文件中的臨床章節。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHEpisodeOfCare.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHEpisodeOfCare"
      },
      "name" : "在宅急症－收案療程",
      "description" : "每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHAssessmentResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHAssessmentResponse"
      },
      "name" : "在宅急症－收案評估回覆",
      "description" : "記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hah-eligibility.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hah-eligibility"
      },
      "name" : "在宅急症－收案評估結果代碼",
      "description" : "評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-eligibility.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-eligibility"
      },
      "name" : "在宅急症－收案評估結果值集",
      "description" : "本次收案評估的建議結果。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHAdmissionEncounter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHAdmissionEncounter"
      },
      "name" : "在宅急症－整段照護",
      "description" : "表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示本資料集的在宅住院照護分類，不代表照護地點在醫院。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHServiceRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHServiceRequest"
      },
      "name" : "在宅急症－服務請求",
      "description" : "沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-service.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-service"
      },
      "name" : "在宅急症－服務項目值集",
      "description" : "服務請求與工作可用的本地分類；詳細檢驗或處置仍應使用適切標準代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHDiagnosticReport.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHDiagnosticReport"
      },
      "name" : "在宅急症－檢驗報告",
      "description" : "以一份報告串聯醫囑、檢體與檢驗結果，可附原始報告檔案。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHObservationLab.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHObservationLab"
      },
      "name" : "在宅急症－檢驗結果",
      "description" : "一筆檢驗項目一筆結果。保留檢體、方法、單位與參考區間；缺少結果時填 dataAbsentReason，不填零值代替。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-communication.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-communication"
      },
      "name" : "在宅急症－溝通類型值集",
      "description" : "區分照會、交班與衛教內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCommunication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCommunication"
      },
      "name" : "在宅急症－照會與交班",
      "description" : "沿用服務活動紀錄，交換照會回覆、交班與衛教內容。接收訊息不代表已完成待辦工作。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHConsent.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHConsent"
      },
      "name" : "在宅急症－照護同意",
      "description" : "記錄照護同意的狀態、範圍、時間及來源文件。此資源不取代可執行的醫囑，也不以一般同意代替 DNR 決定。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCareTeam.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCareTeam"
      },
      "name" : "在宅急症－照護團隊",
      "description" : "記錄主責及共照人員、機構、角色與參與期間。既有長照團隊不允許機構成員，因此由共同 TW Core 父層衍生。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHVisitTask.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHVisitTask"
      },
      "name" : "在宅急症－照護工作",
      "description" : "記錄訪視、送藥等執行工作。因長照任務的 owner 不允許 CareTeam，此處由 FHIR Task 衍生以支援團隊指派。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hah-activity.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hah-activity"
      },
      "name" : "在宅急症－照護活動代碼",
      "description" : "本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHGoal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHGoal"
      },
      "name" : "在宅急症－照護目標",
      "description" : "記錄個案預期達到的結果、期限及評值。照護問題應另記錄於 Condition，不以目標取代問題。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCarePlan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCarePlan"
      },
      "name" : "在宅急症－照護計畫",
      "description" : "沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCareDataset.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCareDataset"
      },
      "name" : "在宅急症－照護資料集",
      "description" : "依在宅急症系統盤點建立的資料交換模型，涵蓋正式收案、訪視、照護、檢驗、給藥與轉銜。新增的臨床結構不代表來源系統已實作；來源差異見專用對照表。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHDocumentReference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHDocumentReference"
      },
      "name" : "在宅急症－照護附件",
      "description" : "記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHAHOutcome.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHAHOutcome"
      },
      "name" : "在宅急症－療程結束原因",
      "description" : "療程結束時填入原因。其他原因應另填文字說明。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hah-outcome.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hah-outcome"
      },
      "name" : "在宅急症－療程結束原因代碼",
      "description" : "區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-outcome.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-outcome"
      },
      "name" : "在宅急症－療程結束原因值集",
      "description" : "本次療程已結束時填寫的原因。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHAHEpisode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHAHEpisode"
      },
      "name" : "在宅急症－療程關聯",
      "description" : "參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCompositionSummary.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCompositionSummary"
      },
      "name" : "在宅急症－結案與轉銜摘要",
      "description" : "彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，資料不足時說明未知或未評估，不得推定為無。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHMedicationAdministration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHMedicationAdministration"
      },
      "name" : "在宅急症－給藥與輸注",
      "description" : "記錄實際給藥時間點或輸注期間。既有長照給藥強制 effectiveDateTime，因此由 FHIR 父層衍生以支援 effectivePeriod 及未給藥。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHMedicationRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHMedicationRequest"
      },
      "name" : "在宅急症－給藥處方",
      "description" : "記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHClinicalImpression.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHClinicalImpression"
      },
      "name" : "在宅急症－臨床評估",
      "description" : "記錄評估人員對病情的判斷、發現與摘要。生命徵象、檢驗、已執行處置及費用不應只以 JSON 字串塞入 note。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHProcedure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHProcedure"
      },
      "name" : "在宅急症－處置紀錄",
      "description" : "沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHAHVisitMode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHAHVisitMode"
      },
      "name" : "在宅急症－訪視方式",
      "description" : "填入此次訪視為實地、視訊或電話評估。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hah-visit-mode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hah-visit-mode"
      },
      "name" : "在宅急症－訪視方式代碼",
      "description" : "記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hah-visit-mode.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hah-visit-mode"
      },
      "name" : "在宅急症－訪視方式值集",
      "description" : "實地、視訊或電話評估。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHCondition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHCondition"
      },
      "name" : "在宅急症－診斷與照護問題",
      "description" : "記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHAllergyIntolerance.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHAllergyIntolerance"
      },
      "name" : "在宅急症－過敏資訊",
      "description" : "記錄過敏物質、確認狀態及反應。無紀錄不能推定無過敏；未評估與已確認無過敏應分開表達。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HAHDevice.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HAHDevice"
      },
      "name" : "在宅急症－量測設備",
      "description" : "記錄居家量測設備的識別與類型。一般設備編號使用 identifier；只有正式 UDI 才填入 udiCarrier。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-AddressUseVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/AddressUseVS-TWLTC"
      },
      "name" : "地址用途擴展值集",
      "description" : "地址的用途，新增戶籍地與現居地等代碼",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-AddressUseCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/AddressUseCS-TWLTC"
      },
      "name" : "地址用途擴展識別碼",
      "description" : "地址用途的擴展識別碼，新增戶籍地與現居地等代碼",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-basal-metabolic-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-basal-metabolic-rate-example"
      },
      "name" : "基礎代謝率測量範例",
      "description" : "一個基礎代謝率測量的範例，展示如何使用 PASportObservationBasalMetabolicRate Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBasalMetabolicRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationRespiratoryRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationRespiratoryRate"
      },
      "name" : "基礎生理量測－呼吸速率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之呼吸速率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationRestingHeartRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationRestingHeartRate"
      },
      "name" : "基礎生理量測－安靜心率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之安靜心率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationMeanHeartRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationMeanHeartRate"
      },
      "name" : "基礎生理量測－平均心率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之平均心率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationHeartRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationHeartRate"
      },
      "name" : "基礎生理量測－心率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之心率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationHeartRateVariability.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationHeartRateVariability"
      },
      "name" : "基礎生理量測－心率變異性",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之心率變異性資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationPeripheralOxygenSaturation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationPeripheralOxygenSaturation"
      },
      "name" : "基礎生理量測－脈搏血氧飽和度",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之脈搏血氧飽和度資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationWaist.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationWaist"
      },
      "name" : "基礎生理量測－腰圍",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之腰圍資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBloodPressure.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBloodPressure"
      },
      "name" : "基礎生理量測－血壓",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血壓資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationGlucose.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationGlucose"
      },
      "name" : "基礎生理量測－血糖",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血糖資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationHeight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationHeight"
      },
      "name" : "基礎生理量測－身高",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之身高資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyTemperature.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyTemperature"
      },
      "name" : "基礎生理量測－體溫",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之體溫資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationWeight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationWeight"
      },
      "name" : "基礎生理量測－體重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之體重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ReferralConditionCrushVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ReferralConditionCrushVS-TWLTC"
      },
      "name" : "壓傷狀況值集",
      "description" : "個案壓傷的狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCObservationFallingHistory.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCObservationFallingHistory"
      },
      "name" : "安全防護－跌倒紀錄",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的跌倒紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-resting-heart-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-resting-heart-rate-example"
      },
      "name" : "安靜心率測量範例",
      "description" : "一個安靜心率測量的範例，展示如何使用 PASportObservationRestingHeartRate Profile 來記錄安靜心率資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRestingHeartRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-caregiver-family-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-caregiver-family-example"
      },
      "name" : "家庭照顧者狀況範例",
      "description" : "一個家庭照顧者狀況的範例，展示如何使用 LTCConditionCaregiver Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-caregiver-family-referral-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-caregiver-family-referral-example"
      },
      "name" : "家庭照顧者狀況範例（轉介用）",
      "description" : "轉介單使用之家庭照顧者狀況 Condition 範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ReferralConditionResidenceVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ReferralConditionResidenceVS-TWLTC"
      },
      "name" : "居住狀況值集",
      "description" : "個案的居住狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-society.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-society"
      },
      "name" : "居家環境與社會參與問卷",
      "description" : "CMS評估表中居家環境與社會參與問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-society-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-society-example"
      },
      "name" : "居家環境與社會參與問卷回應範例",
      "description" : "CMS評估表中居家環境與社會參與問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-hn-upload-task-example.html"
      }],
      "reference" : {
        "reference" : "Task/hn-upload-task-example"
      },
      "name" : "居家護理上傳已接收範例",
      "description" : "code 200 表示檔案已上傳，任務仍等待排程匯入；另示範只清空親友名單。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-hn-getlog-task-example.html"
      }],
      "reference" : {
        "reference" : "Task/hn-getlog-task-example"
      },
      "name" : "居家護理依日期查詢範例",
      "description" : "指定起始日，省略結束日，由來源 API 採起始日隔天。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-hn-ticket-task-example.html"
      }],
      "reference" : {
        "reference" : "Task/hn-ticket-task-example"
      },
      "name" : "居家護理依追蹤碼查詢範例",
      "description" : "示範保留追蹤碼前導零；此虛構追蹤碼不表示規範已定義其回傳欄位。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-hn-patient-example.html"
      }],
      "reference" : {
        "reference" : "Patient/hn-patient-example"
      },
      "name" : "居家護理個案範例",
      "description" : "虛構個案，沿用長照識別、聯絡方式及緊急聯絡人結構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-hn-communication-example.html"
      }],
      "reference" : {
        "reference" : "Communication/hn-communication-example"
      },
      "name" : "居家護理共照紀錄資源範例",
      "description" : "將共照紀錄文字與提供者表達為 Communication，保留完整來源表單。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCommunication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-wound-other-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-wound-other-example"
      },
      "name" : "居家護理其他範例",
      "description" : "示範 V5.0.16 分類與等級的搭配。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-wound-pressure-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-wound-pressure-example"
      },
      "name" : "居家護理壓傷範例",
      "description" : "示範 V5.0.16 分類與等級的搭配。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-wound-iad-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-wound-iad-example"
      },
      "name" : "居家護理失禁性皮膚炎範例",
      "description" : "示範 V5.0.16 分類與等級的搭配。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-hn-staff-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/hn-staff-example"
      },
      "name" : "居家護理工作人員範例",
      "description" : "虛構非醫事人員，用於人員緊急事件。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-hn-outcome-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/hn-outcome-example"
      },
      "name" : "居家護理接收訊息範例",
      "description" : "上傳成功的資訊訊息，並未宣告資料匯入完成。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNOperationOutcome"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-hn-episode-example.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/hn-episode-example"
      },
      "name" : "居家護理收案範例",
      "description" : "一次居護收案，以機構內識別碼串聯各次評估及照護紀錄。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-hn-organization-example.html"
      }],
      "reference" : {
        "reference" : "Organization/hn-organization-example"
      },
      "name" : "居家護理機構範例",
      "description" : "沿用長照機構 Profile，虛構機構代碼對應表單建立者與 API 機構標頭。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Goal"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Goal-hn-goal-example.html"
      }],
      "reference" : {
        "reference" : "Goal/hn-goal-example"
      },
      "name" : "居家護理照護目標範例",
      "description" : "記錄目標、預期達到日期與主要目標旗標。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGoal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-hn-careplan-transaction-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/hn-careplan-transaction-example"
      },
      "name" : "居家護理照護計畫交易範例",
      "description" : "將目標、措施、評值表單及臨床資源一起更新，所有 entry 成功才完成交易。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanTransaction"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-hn-careplan-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/hn-careplan-example"
      },
      "name" : "居家護理照護計畫範例",
      "description" : "串聯需求、目標、措施與評值；示範措施停止時保留原因及停止人員。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-hn-vital-bundle-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/hn-vital-bundle-example"
      },
      "name" : "居家護理生命徵象與血糖集合範例",
      "description" : "同一次量測的生命徵象與血糖使用不同的既有資源基礎，共同放入集合。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignsBundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-vital-signs-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-vital-signs-example"
      },
      "name" : "居家護理生命徵象資源範例",
      "description" : "同一次量測的生命徵象，血糖重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-glucose-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-glucose-example"
      },
      "name" : "居家護理血糖範例",
      "description" : "沿用既有血糖 Profile，數值以 mg/dL 表達。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGlucose"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-hn-nurse-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/hn-nurse-example"
      },
      "name" : "居家護理護理人員範例",
      "description" : "虛構護理人員，身分證字號用於對應居護表單。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-hn-episode-foot-example.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/hn-episode-foot-example"
      },
      "name" : "居家護理足部護理收案範例",
      "description" : "同一個案的另一次足部護理收案，使用不同收案日期。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-api.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-api"
      },
      "name" : "居家護理－API 作業值集",
      "description" : "限定 V5.0.16 的十二支 API 名稱。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNUploadAcknowledgementModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNUploadAcknowledgementModel"
      },
      "name" : "居家護理－上傳接收回覆邏輯模型",
      "description" : "描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-a946985c2125.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-a946985c2125"
      },
      "name" : "居家護理－主要照顧時間選項",
      "description" : "限定主要照顧時間可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-738f974cf008.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-738f974cf008"
      },
      "name" : "居家護理－主要照顧者關係選項",
      "description" : "限定主要照顧者關係可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHNMainTarget.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHNMainTarget"
      },
      "name" : "居家護理－主要目標",
      "description" : "填入此目標是否為主要照護目標。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-9bf58092b1d4.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-9bf58092b1d4"
      },
      "name" : "居家護理－主要職業選項",
      "description" : "限定主要職業可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b63e1293c409.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b63e1293c409"
      },
      "name" : "居家護理－主要醫療決定者關係選項",
      "description" : "限定主要醫療決定者關係可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-4abebe47a94c.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-4abebe47a94c"
      },
      "name" : "居家護理－事件類型選項",
      "description" : "限定事件類型可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-543807b1d856.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-543807b1d856"
      },
      "name" : "居家護理－交通選項",
      "description" : "限定交通可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNStaffEgyAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNStaffEgyAPIModel"
      },
      "name" : "居家護理－人員緊急事件 API 邏輯模型",
      "description" : "描述人員緊急事件 API 的請求資料。來源為 V5.0.16 印刷頁 126–129，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-staffegy.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-staffegy"
      },
      "name" : "居家護理－人員緊急事件問卷",
      "description" : "V5.0.16 人員緊急事件的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-staffegy-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-staffegy-example"
      },
      "name" : "居家護理－人員緊急事件範例",
      "description" : "示範人員緊急事件結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNStaffEgyResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNStaffEgyResponse"
      },
      "name" : "居家護理－人員緊急事件表單",
      "description" : "記錄人員緊急事件的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNStaffEgyModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNStaffEgyModel"
      },
      "name" : "居家護理－人員緊急事件邏輯模型",
      "description" : "描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-2a3bd76ba6eb.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "name" : "居家護理－今天是幾年幾月幾日？__年__月__日選項",
      "description" : "限定今天是幾年幾月幾日？__年__月__日可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNAPITask.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNAPITask"
      },
      "name" : "居家護理－介接作業",
      "description" : "記錄上傳及查詢工作。上傳成功僅表示已接收；須依後續處理結果另行更新任務狀態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hn-workflow.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hn-workflow"
      },
      "name" : "居家護理－介接作業代碼",
      "description" : "居家護理 API 作業名稱及本 IG 的更新指示。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNOperationOutcome.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNOperationOutcome"
      },
      "name" : "居家護理－介接訊息",
      "description" : "表達接收或處理訊息。原規範未列出 GetLog 回覆結構及完整錯誤碼，因此不自訂假定的錯誤碼表。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-38762eb1c742.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-38762eb1c742"
      },
      "name" : "居家護理－使用資源多選選項",
      "description" : "限定使用資源多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHNSourceForm.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHNSourceForm"
      },
      "name" : "居家護理－來源表單",
      "description" : "參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNGetLogAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNGetLogAPIModel"
      },
      "name" : "居家護理－依日期查詢處理結果 API 邏輯模型",
      "description" : "描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNGetLogByTicketAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNGetLogByTicketAPIModel"
      },
      "name" : "居家護理－依追蹤碼查詢處理結果 API 邏輯模型",
      "description" : "描述依追蹤碼查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNPatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNPatient"
      },
      "name" : "居家護理－個案",
      "description" : "沿用長照個案基本資料。機構另配發住民識別碼，來源表單記錄居護社會背景與共照名單。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNBaseDataAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNBaseDataAPIModel"
      },
      "name" : "居家護理－個案基本資料 API 邏輯模型",
      "description" : "描述個案基本資料 API 的請求資料。來源為 V5.0.16 印刷頁 1–13，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-basedata.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-basedata"
      },
      "name" : "居家護理－個案基本資料問卷",
      "description" : "V5.0.16 個案基本資料的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-basedata-foot-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-basedata-foot-example"
      },
      "name" : "居家護理－個案基本資料範例",
      "description" : "示範個案基本資料結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-basedata-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-basedata-example"
      },
      "name" : "居家護理－個案基本資料範例",
      "description" : "示範個案基本資料結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBaseDataResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNBaseDataResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNBaseDataResponse"
      },
      "name" : "居家護理－個案基本資料表單",
      "description" : "記錄個案基本資料的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNBaseDataModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNBaseDataModel"
      },
      "name" : "居家護理－個案基本資料邏輯模型",
      "description" : "描述居家護理個案基本資料的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseCloseAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseCloseAPIModel"
      },
      "name" : "居家護理－個案結案 API 邏輯模型",
      "description" : "描述個案結案 API 的請求資料。來源為 V5.0.16 印刷頁 130–132，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-caseclose.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-caseclose"
      },
      "name" : "居家護理－個案結案問卷",
      "description" : "V5.0.16 個案結案的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-caseclose-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-caseclose-example"
      },
      "name" : "居家護理－個案結案範例",
      "description" : "示範個案結案結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseCloseResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseCloseResponse"
      },
      "name" : "居家護理－個案結案表單",
      "description" : "記錄個案結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseCloseModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseCloseModel"
      },
      "name" : "居家護理－個案結案邏輯模型",
      "description" : "描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-082869c8d896.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-082869c8d896"
      },
      "name" : "居家護理－個案類型選項",
      "description" : "限定個案類型可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-eee6be407d0e.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-eee6be407d0e"
      },
      "name" : "居家護理－假牙狀況多選選項",
      "description" : "限定假牙狀況多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-a051b2c062af.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-a051b2c062af"
      },
      "name" : "居家護理－假牙狀況選項",
      "description" : "限定假牙狀況可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-healthyhabits.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-healthyhabits"
      },
      "name" : "居家護理－健康紀錄評估問卷",
      "description" : "V5.0.16 健康紀錄評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-healthyhabits-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-healthyhabits-example"
      },
      "name" : "居家護理－健康紀錄評估範例",
      "description" : "示範健康紀錄評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNHealthyHabitsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNHealthyHabitsResponse"
      },
      "name" : "居家護理－健康紀錄評估表單",
      "description" : "記錄健康紀錄評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNHealthyHabitsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNHealthyHabitsModel"
      },
      "name" : "居家護理－健康紀錄評估邏輯模型",
      "description" : "描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-15ba9c15ead1.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-15ba9c15ead1"
      },
      "name" : "居家護理－備食選項",
      "description" : "限定備食可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-wound-category.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-wound-category"
      },
      "name" : "居家護理－傷口分類",
      "description" : "V5.0.16 傷口分類；依分類選擇等級。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-ab16e9d81e7b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-ab16e9d81e7b"
      },
      "name" : "居家護理－傷口分類選項",
      "description" : "限定傷口分類可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-wound-level.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-wound-level"
      },
      "name" : "居家護理－傷口等級",
      "description" : "V5.0.16 傷口等級；依分類選擇等級。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-de533dbea66c.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-de533dbea66c"
      },
      "name" : "居家護理－傷口等級選項",
      "description" : "限定傷口等級可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNWound.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNWound"
      },
      "name" : "居家護理－傷口紀錄",
      "description" : "每個傷口建立一筆紀錄。沿用 TW Core 簡易觀察，因既有壓傷 Condition 不適用失禁性皮膚炎及其他傷口。原規範未明訂尺寸單位，不從來源數字推定單位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNEvaluationAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNEvaluationAPIModel"
      },
      "name" : "居家護理－全人評估 API 邏輯模型",
      "description" : "描述全人評估 API 的請求資料。來源為 V5.0.16 印刷頁 14–70，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-update-action.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-update-action"
      },
      "name" : "居家護理－共照名單更新方式",
      "description" : "區分未填或 null 的保留、非空陣列的取代及空陣列的清空。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-collection.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-collection"
      },
      "name" : "居家護理－共照名單種類",
      "description" : "指定需更新的共照名單。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHNCollectionUpdate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHNCollectionUpdate"
      },
      "name" : "居家護理－共照團隊更新指示",
      "description" : "記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCommunication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCommunication"
      },
      "name" : "居家護理－共照紀錄",
      "description" : "記錄共照人員提供的照護紀錄。沿用既有服務活動 Communication，新增收案與來源表單關聯。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseDescAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseDescAPIModel"
      },
      "name" : "居家護理－共照紀錄 API 邏輯模型",
      "description" : "描述共照紀錄 API 的請求資料。來源為 V5.0.16 印刷頁 122–125，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-casedesc.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-casedesc"
      },
      "name" : "居家護理－共照紀錄問卷",
      "description" : "V5.0.16 共照紀錄的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-casedesc-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-casedesc-example"
      },
      "name" : "居家護理－共照紀錄範例",
      "description" : "示範共照紀錄結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseDescResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseDescResponse"
      },
      "name" : "居家護理－共照紀錄表單",
      "description" : "記錄共照紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseDescModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseDescModel"
      },
      "name" : "居家護理－共照紀錄邏輯模型",
      "description" : "描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-415683173294.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-415683173294"
      },
      "name" : "居家護理－口腔外觀多選選項",
      "description" : "限定口腔外觀多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-7c98e63372ac.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-7c98e63372ac"
      },
      "name" : "居家護理－口腔外觀選項",
      "description" : "限定口腔外觀可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-85c814c9b8ba.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-85c814c9b8ba"
      },
      "name" : "居家護理－吸菸狀態選項",
      "description" : "限定吸菸狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-respiration-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-respiration-example"
      },
      "name" : "居家護理－呼吸量測範例",
      "description" : "直接重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-a5f17d46becb.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-a5f17d46becb"
      },
      "name" : "居家護理－嚼食檳榔狀態選項",
      "description" : "限定嚼食檳榔狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-pressureinjuries.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-pressureinjuries"
      },
      "name" : "居家護理－壓力性損傷危險評估問卷",
      "description" : "V5.0.16 壓力性損傷危險評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-pressureinjuries-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-pressureinjuries-example"
      },
      "name" : "居家護理－壓力性損傷危險評估範例",
      "description" : "示範壓力性損傷危險評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNPressureInjuriesResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNPressureInjuriesResponse"
      },
      "name" : "居家護理－壓力性損傷危險評估表單",
      "description" : "記錄壓力性損傷危險評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNPressureInjuriesModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNPressureInjuriesModel"
      },
      "name" : "居家護理－壓力性損傷危險評估邏輯模型",
      "description" : "描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-carerecord-wounds-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-carerecord-wounds-example"
      },
      "name" : "居家護理－多筆傷口照護紀錄範例",
      "description" : "示範照護紀錄結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-8c7bcb320a01.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-8c7bcb320a01"
      },
      "name" : "居家護理－大便選項",
      "description" : "限定大便可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5a0da2e50fde.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5a0da2e50fde"
      },
      "name" : "居家護理－如廁選項",
      "description" : "限定如廁可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-924b837448d2.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-924b837448d2"
      },
      "name" : "居家護理－婚姻狀況選項",
      "description" : "限定婚姻狀況可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-foot-record-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-foot-record-example"
      },
      "name" : "居家護理－完整足部護理範例",
      "description" : "示範照護紀錄結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-f6130a2de850.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-f6130a2de850"
      },
      "name" : "居家護理－宗教信仰選項",
      "description" : "限定宗教信仰可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b455f8b9ce05.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b455f8b9ce05"
      },
      "name" : "居家護理－家務選項",
      "description" : "限定家務可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-4a8dcdb04d9b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-4a8dcdb04d9b"
      },
      "name" : "居家護理－家庭經濟狀況選項",
      "description" : "限定家庭經濟狀況可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-d20974b4a161.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-d20974b4a161"
      },
      "name" : "居家護理－小便選項",
      "description" : "限定小便可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-d93b34f7b736.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-d93b34f7b736"
      },
      "name" : "居家護理－居住所選項",
      "description" : "限定居住所可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-iadls.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-iadls"
      },
      "name" : "居家護理－工具性日常生活活動功能評估問卷",
      "description" : "V5.0.16 工具性日常生活活動功能評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-iadls-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-iadls-example"
      },
      "name" : "居家護理－工具性日常生活活動功能評估範例",
      "description" : "示範工具性日常生活活動功能評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNIADLsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNIADLsResponse"
      },
      "name" : "居家護理－工具性日常生活活動功能評估表單",
      "description" : "記錄工具性日常生活活動功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNIADLsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNIADLsModel"
      },
      "name" : "居家護理－工具性日常生活活動功能評估邏輯模型",
      "description" : "描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-00697b86a7bc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-00697b86a7bc"
      },
      "name" : "居家護理－左上肢選項",
      "description" : "限定左上肢可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-d782d810cfdd.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-d782d810cfdd"
      },
      "name" : "居家護理－心臟問題(只包含心臟)選項",
      "description" : "限定心臟問題(只包含心臟)可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c8f650cb37b1.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c8f650cb37b1"
      },
      "name" : "居家護理－性別選項",
      "description" : "限定性別可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-geriatricdepressionscales.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-geriatricdepressionscales"
      },
      "name" : "居家護理－情緒問題評估問卷",
      "description" : "V5.0.16 情緒問題評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-geriatricdepressionscales-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-geriatricdepressionscales-example"
      },
      "name" : "居家護理－情緒問題評估範例",
      "description" : "示範情緒問題評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNGeriatricDepressionScalesResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNGeriatricDepressionScalesResponse"
      },
      "name" : "居家護理－情緒問題評估表單",
      "description" : "記錄情緒問題評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNGeriatricDepressionScalesModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNGeriatricDepressionScalesModel"
      },
      "name" : "居家護理－情緒問題評估邏輯模型",
      "description" : "描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-94d2d2fdf018.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-94d2d2fdf018"
      },
      "name" : "居家護理－成員職稱選項",
      "description" : "限定成員職稱可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-7f8a5cfdf9c9.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-7f8a5cfdf9c9"
      },
      "name" : "居家護理－排便型態選項",
      "description" : "限定排便型態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-0467df08a056.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-0467df08a056"
      },
      "name" : "居家護理－排便輔助多選選項",
      "description" : "限定排便輔助多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-a88d0ac6ee1a.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-a88d0ac6ee1a"
      },
      "name" : "居家護理－排便顏色選項",
      "description" : "限定排便顏色可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b5e899beaa3a.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b5e899beaa3a"
      },
      "name" : "居家護理－排尿型態多選選項",
      "description" : "限定排尿型態多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5cb9bbd6d620.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5cb9bbd6d620"
      },
      "name" : "居家護理－排尿型態選項",
      "description" : "限定排尿型態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-ec686161641f.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-ec686161641f"
      },
      "name" : "居家護理－排尿輔助多選選項",
      "description" : "限定排尿輔助多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c0e4f2d08eec.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c0e4f2d08eec"
      },
      "name" : "居家護理－排尿顏色選項",
      "description" : "限定排尿顏色可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHNMeasureStop.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHNMeasureStop"
      },
      "name" : "居家護理－措施停止資訊",
      "description" : "措施停止時填入停止日期、原因與護理人員。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b0ba220a4535.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b0ba220a4535"
      },
      "name" : "居家護理－損傷類型選項",
      "description" : "限定損傷類型可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-bcd0a25d02b9.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-bcd0a25d02b9"
      },
      "name" : "居家護理－摩擦力/剪力選項",
      "description" : "限定摩擦力/剪力可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-dfa44a5bba0b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-dfa44a5bba0b"
      },
      "name" : "居家護理－操作項目與流程選項",
      "description" : "限定操作項目與流程可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-ef3233b113ad.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-ef3233b113ad"
      },
      "name" : "居家護理－收案來源選項",
      "description" : "限定收案來源可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNEpisodeOfCare.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNEpisodeOfCare"
      },
      "name" : "居家護理－收案歷程",
      "description" : "以機構、個案與收案日期識別一次居護收案，結案時記錄結束日期及來源表單。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtHNEpisode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtHNEpisode"
      },
      "name" : "居家護理－收案關聯",
      "description" : "參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-8bcd09f153b7.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-8bcd09f153b7"
      },
      "name" : "居家護理－教育程度選項",
      "description" : "限定教育程度可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-adls.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-adls"
      },
      "name" : "居家護理－日常生活功能評估問卷",
      "description" : "V5.0.16 日常生活功能評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-adls-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-adls-example"
      },
      "name" : "居家護理－日常生活功能評估範例",
      "description" : "示範日常生活功能評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNADLsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNADLsResponse"
      },
      "name" : "居家護理－日常生活功能評估表單",
      "description" : "記錄日常生活功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNADLsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNADLsModel"
      },
      "name" : "居家護理－日常生活功能評估邏輯模型",
      "description" : "描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-523a43c4a46a.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-523a43c4a46a"
      },
      "name" : "居家護理－是否存在多重用藥問題選項",
      "description" : "限定是否存在多重用藥問題可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-58e4d598f859.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-58e4d598f859"
      },
      "name" : "居家護理－是否選項",
      "description" : "限定是否可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-19264db8df7b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-19264db8df7b"
      },
      "name" : "居家護理－有無與未知選項",
      "description" : "限定有無與未知可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-49fe20230ec3.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-49fe20230ec3"
      },
      "name" : "居家護理－有無選項",
      "description" : "限定有無可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-1c644096303f.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-1c644096303f"
      },
      "name" : "居家護理－有輔助器多選選項",
      "description" : "限定有輔助器多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-8aa8b9aed3b2.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-8aa8b9aed3b2"
      },
      "name" : "居家護理－有輔助器選項",
      "description" : "限定有輔助器可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c8a0ace9ffad.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c8a0ace9ffad"
      },
      "name" : "居家護理－服務項目多選選項",
      "description" : "限定服務項目多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-cf479df80e62.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-cf479df80e62"
      },
      "name" : "居家護理－服用頻率選項",
      "description" : "限定服用頻率可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-1c0dbbd93870.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-1c0dbbd93870"
      },
      "name" : "居家護理－服藥選項",
      "description" : "限定服藥可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-076f2d014436.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-076f2d014436"
      },
      "name" : "居家護理－樓梯選項",
      "description" : "限定樓梯可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c93d67023284.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c93d67023284"
      },
      "name" : "居家護理－水腫等級選項",
      "description" : "限定水腫等級可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3c038851248f.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3c038851248f"
      },
      "name" : "居家護理－洗澡選項",
      "description" : "限定洗澡可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3435e7a5a84d.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3435e7a5a84d"
      },
      "name" : "居家護理－洗衣選項",
      "description" : "限定洗衣可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-78444472aa70.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-78444472aa70"
      },
      "name" : "居家護理－活動能力選項",
      "description" : "限定活動能力可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-7ce3f119b854.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-7ce3f119b854"
      },
      "name" : "居家護理－消化狀態選項",
      "description" : "限定消化狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-d9301962abbf.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-d9301962abbf"
      },
      "name" : "居家護理－溝通-影響日常活動選項",
      "description" : "限定溝通-影響日常活動可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-0655870f5454.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-0655870f5454"
      },
      "name" : "居家護理－溝通選項",
      "description" : "限定溝通可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-13d13792ca45.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-13d13792ca45"
      },
      "name" : "居家護理－溫度選項",
      "description" : "限定溫度可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-548098d5ace2.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-548098d5ace2"
      },
      "name" : "居家護理－潮溼程度選項",
      "description" : "限定潮溼程度可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-acfe4f6c5f3a.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-acfe4f6c5f3a"
      },
      "name" : "居家護理－濕度選項",
      "description" : "限定濕度可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNGoal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNGoal"
      },
      "name" : "居家護理－照護目標",
      "description" : "沿用長照照顧目標，記錄目標敘述、預期達到日期及是否為主要目標。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCareRecordAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCareRecordAPIModel"
      },
      "name" : "居家護理－照護紀錄 API 邏輯模型",
      "description" : "描述照護紀錄 API 的請求資料。來源為 V5.0.16 印刷頁 81–121，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-carerecord.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-carerecord"
      },
      "name" : "居家護理－照護紀錄問卷",
      "description" : "V5.0.16 照護紀錄的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-carerecord-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-carerecord-example"
      },
      "name" : "居家護理－照護紀錄範例",
      "description" : "示範照護紀錄結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCareRecordResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCareRecordResponse"
      },
      "name" : "居家護理－照護紀錄表單",
      "description" : "記錄照護紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCareRecordModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCareRecordModel"
      },
      "name" : "居家護理－照護紀錄邏輯模型",
      "description" : "描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlan"
      },
      "name" : "居家護理－照護計畫",
      "description" : "沿用長照照顧計畫，串聯需求摘要、目標、措施與評值表單。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlanAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlanAPIModel"
      },
      "name" : "居家護理－照護計畫 API 邏輯模型",
      "description" : "描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlanTransaction.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlanTransaction"
      },
      "name" : "居家護理－照護計畫交易",
      "description" : "以 FHIR transaction 一次提交目標、措施、評值及其臨床資源。任一 entry 失敗時不得僅儲存部分資料。原 API 的檔案仍須依其格式另外轉換。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-measures.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-measures"
      },
      "name" : "居家護理－照護計畫措施問卷",
      "description" : "V5.0.16 照護計畫措施的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-measures-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-measures-example"
      },
      "name" : "居家護理－照護計畫措施範例",
      "description" : "示範照護計畫措施結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMeasuresResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMeasuresResponse"
      },
      "name" : "居家護理－照護計畫措施表單",
      "description" : "記錄照護計畫措施的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMeasuresModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMeasuresModel"
      },
      "name" : "居家護理－照護計畫措施邏輯模型",
      "description" : "描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-targets.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-targets"
      },
      "name" : "居家護理－照護計畫目標問卷",
      "description" : "V5.0.16 照護計畫目標的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-targets-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-targets-example"
      },
      "name" : "居家護理－照護計畫目標範例",
      "description" : "示範照護計畫目標結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNTargetsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNTargetsResponse"
      },
      "name" : "居家護理－照護計畫目標表單",
      "description" : "記錄照護計畫目標的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNTargetsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNTargetsModel"
      },
      "name" : "居家護理－照護計畫目標邏輯模型",
      "description" : "描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlanCloseAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlanCloseAPIModel"
      },
      "name" : "居家護理－照護計畫結案 API 邏輯模型",
      "description" : "描述照護計畫結案 API 的請求資料。來源為 V5.0.16 印刷頁 133–135，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-careplanclose.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-careplanclose"
      },
      "name" : "居家護理－照護計畫結案問卷",
      "description" : "V5.0.16 照護計畫結案的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-careplanclose-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-careplanclose-example"
      },
      "name" : "居家護理－照護計畫結案範例",
      "description" : "示範照護計畫結案結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlanCloseResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlanCloseResponse"
      },
      "name" : "居家護理－照護計畫結案表單",
      "description" : "記錄照護計畫結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCarePlanCloseModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCarePlanCloseModel"
      },
      "name" : "居家護理－照護計畫結案邏輯模型",
      "description" : "描述居家護理照護計畫結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-evaluations.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-evaluations"
      },
      "name" : "居家護理－照護計畫評值紀錄問卷",
      "description" : "V5.0.16 照護計畫評值紀錄的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-evaluations-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-evaluations-example"
      },
      "name" : "居家護理－照護計畫評值紀錄範例",
      "description" : "示範照護計畫評值紀錄結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNEvaluationsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNEvaluationsResponse"
      },
      "name" : "居家護理－照護計畫評值紀錄表單",
      "description" : "記錄照護計畫評值紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNEvaluationsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNEvaluationsModel"
      },
      "name" : "居家護理－照護計畫評值紀錄邏輯模型",
      "description" : "描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-9d4f84a14066.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-9d4f84a14066"
      },
      "name" : "居家護理－營養攝取選項",
      "description" : "限定營養攝取可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3435b7eace88.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3435b7eace88"
      },
      "name" : "居家護理－特殊進食多選選項",
      "description" : "限定特殊進食多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-dc054900d0e6.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-dc054900d0e6"
      },
      "name" : "居家護理－理解選項",
      "description" : "限定理解可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-41cb9f76208c.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-41cb9f76208c"
      },
      "name" : "居家護理－理財選項",
      "description" : "限定理財可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNVitalSigns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNVitalSigns"
      },
      "name" : "居家護理－生命徵象",
      "description" : "沿用 FHIR R4 生命徵象量測組，以 hasMember 連結既有體溫、心率、呼吸、血壓與血氧 Profile；血糖以既有血糖 Profile 與共同來源表單串聯。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNVitalSignAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNVitalSignAPIModel"
      },
      "name" : "居家護理－生命徵象 API 邏輯模型",
      "description" : "描述生命徵象 API 的請求資料。來源為 V5.0.16 印刷頁 136–138，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNVitalSignsBundle.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNVitalSignsBundle"
      },
      "name" : "居家護理－生命徵象交換集合",
      "description" : "彙集同一次量測的生命徵象與血糖。量測組的 hasMember 限生命徵象 Profile，故以 Bundle 串聯既有血糖 Profile。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-vitalsign.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-vitalsign"
      },
      "name" : "居家護理－生命徵象問卷",
      "description" : "V5.0.16 生命徵象的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-vitalsign-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-vitalsign-example"
      },
      "name" : "居家護理－生命徵象範例",
      "description" : "示範生命徵象結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNVitalSignResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNVitalSignResponse"
      },
      "name" : "居家護理－生命徵象表單",
      "description" : "記錄生命徵象的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNVitalSignModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNVitalSignModel"
      },
      "name" : "居家護理－生命徵象邏輯模型",
      "description" : "描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-pain-verbal-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-pain-verbal-example"
      },
      "name" : "居家護理－疼痛評估可以言語範例",
      "description" : "示範疼痛評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-painevaluations.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-painevaluations"
      },
      "name" : "居家護理－疼痛評估問卷",
      "description" : "V5.0.16 疼痛評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-pain-nonverbal-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-pain-nonverbal-example"
      },
      "name" : "居家護理－疼痛評估無法言語範例",
      "description" : "示範疼痛評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-painevaluations-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-painevaluations-example"
      },
      "name" : "居家護理－疼痛評估範例",
      "description" : "示範疼痛評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNPainEvaluationsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNPainEvaluationsResponse"
      },
      "name" : "居家護理－疼痛評估表單",
      "description" : "記錄疼痛評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNPainEvaluationsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNPainEvaluationsModel"
      },
      "name" : "居家護理－疼痛評估邏輯模型",
      "description" : "描述居家護理疼痛評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-medicalhistories.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-medicalhistories"
      },
      "name" : "居家護理－疾病史評估問卷",
      "description" : "V5.0.16 疾病史評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-medicalhistories-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-medicalhistories-example"
      },
      "name" : "居家護理－疾病史評估範例",
      "description" : "示範疾病史評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMedicalHistoriesResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMedicalHistoriesResponse"
      },
      "name" : "居家護理－疾病史評估表單",
      "description" : "記錄疾病史評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMedicalHistoriesModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMedicalHistoriesModel"
      },
      "name" : "居家護理－疾病史評估邏輯模型",
      "description" : "描述居家護理疾病史評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-7d118ae5ad21.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-7d118ae5ad21"
      },
      "name" : "居家護理－發生時段選項",
      "description" : "限定發生時段可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-6380f9a50deb.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-6380f9a50deb"
      },
      "name" : "居家護理－睜眼選項",
      "description" : "限定睜眼可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c34dc3f43d82.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c34dc3f43d82"
      },
      "name" : "居家護理－睡眠多選選項",
      "description" : "限定睡眠多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-66dfb92df102.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-66dfb92df102"
      },
      "name" : "居家護理－知覺感受選項",
      "description" : "限定知覺感受可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5f4a5d3ebea4.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5f4a5d3ebea4"
      },
      "name" : "居家護理－神經精神問題選項",
      "description" : "限定神經精神問題可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-40193bb109d6.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-40193bb109d6"
      },
      "name" : "居家護理－福利種類多選選項",
      "description" : "限定福利種類多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5509cc9b0f4c.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5509cc9b0f4c"
      },
      "name" : "居家護理－移位選項",
      "description" : "限定移位可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-f466b3393017.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-f466b3393017"
      },
      "name" : "居家護理－移動能力選項",
      "description" : "限定移動能力可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-723d296bd93d.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-723d296bd93d"
      },
      "name" : "居家護理－穿脫選項",
      "description" : "限定穿脫可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-mnasfs.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-mnasfs"
      },
      "name" : "居家護理－簡易營養評估問卷",
      "description" : "V5.0.16 簡易營養評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-mnasfs-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-mnasfs-example"
      },
      "name" : "居家護理－簡易營養評估範例",
      "description" : "示範簡易營養評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMNASFsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMNASFsResponse"
      },
      "name" : "居家護理－簡易營養評估表單",
      "description" : "記錄簡易營養評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNMNASFsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNMNASFsModel"
      },
      "name" : "居家護理－簡易營養評估邏輯模型",
      "description" : "描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-04e9c37073f4.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-04e9c37073f4"
      },
      "name" : "居家護理－紀錄來源選項",
      "description" : "限定紀錄來源可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-75dc5876369b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-75dc5876369b"
      },
      "name" : "居家護理－結案原因選項",
      "description" : "限定結案原因可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-6892f4f30c24.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-6892f4f30c24"
      },
      "name" : "居家護理－緊急事件類型選項",
      "description" : "限定緊急事件類型可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-2029890a4c12.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-2029890a4c12"
      },
      "name" : "居家護理－緊急聯絡人關係選項",
      "description" : "限定緊急聯絡人關係可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-f0b4522906b6.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-f0b4522906b6"
      },
      "name" : "居家護理－聽力-輔具多選選項",
      "description" : "限定聽力-輔具多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-7bc89358fe37.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-7bc89358fe37"
      },
      "name" : "居家護理－聽力-部位多選選項",
      "description" : "限定聽力-部位多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-1a72d15a5965.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-1a72d15a5965"
      },
      "name" : "居家護理－肌力-輔具多選選項",
      "description" : "限定肌力-輔具多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-pulse-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-pulse-example"
      },
      "name" : "居家護理－脈搏量測範例",
      "description" : "直接重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3d4ed1f2575b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3d4ed1f2575b"
      },
      "name" : "居家護理－腸蠕動選項",
      "description" : "限定腸蠕動可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b42a51b1139e.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b42a51b1139e"
      },
      "name" : "居家護理－腹部狀態選項",
      "description" : "限定腹部狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5d29c89b2d60.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5d29c89b2d60"
      },
      "name" : "居家護理－若BMI 無法取得，用小腿圍或臂中圍代替(公分)選項",
      "description" : "限定若BMI 無法取得，用小腿圍或臂中圍代替(公分)可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-drugsafeties.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-drugsafeties"
      },
      "name" : "居家護理－藥物安全性評估問卷",
      "description" : "V5.0.16 藥物安全性評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-drugsafeties-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-drugsafeties-example"
      },
      "name" : "居家護理－藥物安全性評估範例",
      "description" : "示範藥物安全性評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNDrugSafetiesResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNDrugSafetiesResponse"
      },
      "name" : "居家護理－藥物安全性評估表單",
      "description" : "記錄藥物安全性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNDrugSafetiesModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNDrugSafetiesModel"
      },
      "name" : "居家護理－藥物安全性評估邏輯模型",
      "description" : "描述居家護理藥物安全性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-6d733f47d6f4.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-6d733f47d6f4"
      },
      "name" : "居家護理－藥物類別多選選項",
      "description" : "限定藥物類別多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-bloodpressure-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-bloodpressure-example"
      },
      "name" : "居家護理－血壓量測範例",
      "description" : "直接重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-oxygen-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-oxygen-example"
      },
      "name" : "居家護理－血氧量測範例",
      "description" : "直接重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationPeripheralOxygenSaturation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3baefb430e5b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3baefb430e5b"
      },
      "name" : "居家護理－行動力選項",
      "description" : "限定行動力可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-1ffa1d5d3bef.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-1ffa1d5d3bef"
      },
      "name" : "居家護理－行動能力問題選項",
      "description" : "限定行動能力問題可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-46c8866533a0.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-46c8866533a0"
      },
      "name" : "居家護理－行為多選選項",
      "description" : "限定行為多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-365bfce838bb.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-365bfce838bb"
      },
      "name" : "居家護理－行為選項",
      "description" : "限定行為可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c1223cdffc0c.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c1223cdffc0c"
      },
      "name" : "居家護理－衛生選項",
      "description" : "限定衛生可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-hn-answer.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/hn-answer"
      },
      "name" : "居家護理－表單選項代碼",
      "description" : "依 V5.0.16 有效選項定義；代碼由本 IG 配發，原 API 傳輸中文顯示文字。相同選項共用代碼，各 ValueSet 限定適用欄位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-sofs.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-sofs"
      },
      "name" : "居家護理－衰弱評估問卷",
      "description" : "V5.0.16 衰弱評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-sofs-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-sofs-example"
      },
      "name" : "居家護理－衰弱評估範例",
      "description" : "示範衰弱評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNSOFsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNSOFsResponse"
      },
      "name" : "居家護理－衰弱評估表單",
      "description" : "記錄衰弱評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNSOFsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNSOFsModel"
      },
      "name" : "居家護理－衰弱評估邏輯模型",
      "description" : "描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-afadc3bb2a88.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-afadc3bb2a88"
      },
      "name" : "居家護理－視力-輔具多選選項",
      "description" : "限定視力-輔具多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-2fd20e6427ff.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-2fd20e6427ff"
      },
      "name" : "居家護理－視力-部位多選選項",
      "description" : "限定視力-部位多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-ef4daeacd99a.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-ef4daeacd99a"
      },
      "name" : "居家護理－視力選項",
      "description" : "限定視力可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-a370027f399e.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-a370027f399e"
      },
      "name" : "居家護理－言語狀態選項",
      "description" : "限定言語狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-14764e5914f7.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-14764e5914f7"
      },
      "name" : "居家護理－評估項目選項",
      "description" : "限定評估項目可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-dementias.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-dementias"
      },
      "name" : "居家護理－認知功能評估問卷",
      "description" : "V5.0.16 認知功能評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-dementias-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-dementias-example"
      },
      "name" : "居家護理－認知功能評估範例",
      "description" : "示範認知功能評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNDementiasResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNDementiasResponse"
      },
      "name" : "居家護理－認知功能評估表單",
      "description" : "記錄認知功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNDementiasModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNDementiasModel"
      },
      "name" : "居家護理－認知功能評估邏輯模型",
      "description" : "描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-d2f289370ed0.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-d2f289370ed0"
      },
      "name" : "居家護理－語言選項",
      "description" : "限定語言可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3330cbe2f937.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3330cbe2f937"
      },
      "name" : "居家護理－說話選項",
      "description" : "限定說話可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-cbfa2194bae7.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-cbfa2194bae7"
      },
      "name" : "居家護理－購物選項",
      "description" : "限定購物可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-9a2ed66b6061.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-9a2ed66b6061"
      },
      "name" : "居家護理－走動選項",
      "description" : "限定走動可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5154109e8985.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5154109e8985"
      },
      "name" : "居家護理－足部護理評估狀態選項",
      "description" : "限定足部護理評估狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-fallrisks.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-fallrisks"
      },
      "name" : "居家護理－跌倒危險性評估問卷",
      "description" : "V5.0.16 跌倒危險性評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-fallrisks-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-fallrisks-example"
      },
      "name" : "居家護理－跌倒危險性評估範例",
      "description" : "示範跌倒危險性評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNFallRisksResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNFallRisksResponse"
      },
      "name" : "居家護理－跌倒危險性評估表單",
      "description" : "記錄跌倒危險性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNFallRisksModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNFallRisksModel"
      },
      "name" : "居家護理－跌倒危險性評估邏輯模型",
      "description" : "描述居家護理跌倒危險性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-3bbfa4b4f8db.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-3bbfa4b4f8db"
      },
      "name" : "居家護理－跌倒多選選項",
      "description" : "限定跌倒多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-disability-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-disability-type"
      },
      "name" : "居家護理－身障類別",
      "description" : "重用長照新制身心障礙類型代碼，限居護 V5.0.16 的第一至第八類。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-bodyevaluations.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-bodyevaluations"
      },
      "name" : "居家護理－身體評估評估問卷",
      "description" : "V5.0.16 身體評估評估的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-bodyevaluations-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-bodyevaluations-example"
      },
      "name" : "居家護理－身體評估評估範例",
      "description" : "示範身體評估評估結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNBodyEvaluationsResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNBodyEvaluationsResponse"
      },
      "name" : "居家護理－身體評估評估表單",
      "description" : "記錄身體評估評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNBodyEvaluationsModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNBodyEvaluationsModel"
      },
      "name" : "居家護理－身體評估評估邏輯模型",
      "description" : "描述居家護理身體評估評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-b8e0b67e2012.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-b8e0b67e2012"
      },
      "name" : "居家護理－身體質量指數(BMI)=體重(公斤)/身高(公尺)2選項",
      "description" : "限定身體質量指數(BMI)=體重(公斤)/身高(公尺)2可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-bff7df80c996.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-bff7df80c996"
      },
      "name" : "居家護理－近三個月體重變化選項",
      "description" : "限定近三個月體重變化可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-c020bc6f582f.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-c020bc6f582f"
      },
      "name" : "居家護理－進食選項",
      "description" : "限定進食可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-784e3567e13b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-784e3567e13b"
      },
      "name" : "居家護理－運動選項",
      "description" : "限定運動可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-cfb0b454818b.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-cfb0b454818b"
      },
      "name" : "居家護理－過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？選項",
      "description" : "限定過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-fe3736bbd09e.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-fe3736bbd09e"
      },
      "name" : "居家護理－重大事件項目多選選項",
      "description" : "限定重大事件項目多選可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-9570830f5a60.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-9570830f5a60"
      },
      "name" : "居家護理－關係選項",
      "description" : "限定關係可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-fa9ab3cef6b1.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-fa9ab3cef6b1"
      },
      "name" : "居家護理－電話選項",
      "description" : "限定電話可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseSummaryAPIModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseSummaryAPIModel"
      },
      "name" : "居家護理－需求摘要 API 邏輯模型",
      "description" : "描述需求摘要 API 的請求資料。來源為 V5.0.16 印刷頁 71–74，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-hn-casesummary.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/hn-casesummary"
      },
      "name" : "居家護理－需求摘要問卷",
      "description" : "V5.0.16 需求摘要的問題結構與輸入型態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-hn-casesummary-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/hn-casesummary-example"
      },
      "name" : "居家護理－需求摘要範例",
      "description" : "示範需求摘要結構與未作答欄位。資料為虛構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseSummaryResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseSummaryResponse"
      },
      "name" : "居家護理－需求摘要表單",
      "description" : "記錄需求摘要的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HNCaseSummaryModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HNCaseSummaryModel"
      },
      "name" : "居家護理－需求摘要邏輯模型",
      "description" : "描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-bc943cb432ce.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-bc943cb432ce"
      },
      "name" : "居家護理－需求類型選項",
      "description" : "限定需求類型可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-0a65df60cccf.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-0a65df60cccf"
      },
      "name" : "居家護理－項目分類選項",
      "description" : "限定項目分類可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-ed3fafa578d2.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-ed3fafa578d2"
      },
      "name" : "居家護理－顏色選項",
      "description" : "限定顏色可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-hn-vs-5f96e05811ec.html"
      }],
      "reference" : {
        "reference" : "ValueSet/hn-vs-5f96e05811ec"
      },
      "name" : "居家護理－飲酒狀態選項",
      "description" : "限定飲酒狀態可填入的 V5.0.16 選項。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-hn-temperature-example.html"
      }],
      "reference" : {
        "reference" : "Observation/hn-temperature-example"
      },
      "name" : "居家護理－體溫量測範例",
      "description" : "直接重用既有基礎生理量測 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-iadl.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-iadl"
      },
      "name" : "工具性日常活動功能問卷",
      "description" : "CMS評估表中IADL問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-iadl-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-iadl-example"
      },
      "name" : "工具性日常活動功能問卷回應範例",
      "description" : "CMS評估表中IADL問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-mean-heart-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-mean-heart-rate-example"
      },
      "name" : "平均心率測量範例",
      "description" : "一個平均心率測量的範例，展示如何使用 PASportObservationMeanHeartRate Profile 來記錄平均心率資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationMeanHeartRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-heart-rate-variability-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-heart-rate-variability-example"
      },
      "name" : "心率變異性測量範例",
      "description" : "一個心率變異性測量的範例，展示如何使用 PASportObservationHeartRateVariability Profile 來記錄心率變異性資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRateVariability"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-heart-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-heart-rate-example"
      },
      "name" : "心率量測範例",
      "description" : "一個心率量測的範例，展示如何使用 PASportObservationHeartRate Profile 來記錄運動前後的心率變化",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-body-bone-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-body-bone-mass-example"
      },
      "name" : "推定骨量測量範例",
      "description" : "一個推定骨量測量的範例，展示如何使用 PASportObservationBodyBoneMass Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyBoneMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-aa10-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-aa10-status"
      },
      "name" : "支付審查－AA10 申報狀態",
      "description" : "此 ValueSet 用於表示支付審核系統服務記錄申報之 AA10（夜間緊急服務）申報狀態（aa10_status）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-aa10-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-aa10-status"
      },
      "name" : "支付審查－AA10 申報狀態",
      "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「AA10 申報狀態」（aa10_status）代碼，用以表示夜間緊急服務（AA10）之申報與確認情形，預設為 0（未申報）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-api-function.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-api-function"
      },
      "name" : "支付審查－API 功能",
      "description" : "此 ValueSet 用於表示支付審核系統的 API 功能名稱，代碼包含：FeeApply（服務記錄申報）、ObjDel（服務紀錄刪除）、appCompletionNotice（申報確認通知）、appCancel（服務單位撤回）、CancelResultResponse（取消交易單處理結果回報）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-api-function.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-api-function"
      },
      "name" : "支付審查－API 功能",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「API Function－API Function 名稱」之代碼，用於表示交易單所對應的支付審核系統 API 功能。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-rtncode.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-rtncode"
      },
      "name" : "支付審查－API 回覆結果代碼",
      "description" : "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式所定義之回覆結果代碼（rtncode），用於表示 API 交易之處理結果，代碼包含：0（成功回傳）、1～14（請求參數與申報條件檢核錯誤）、20（無訪問權限）、25（執行頻率限制）、30（輸入參數錯誤）、40（查無資料）、50（DB 錯誤）、90（發生無法預期錯誤）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-rtncode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-rtncode"
      },
      "name" : "支付審查－API 回覆結果代碼",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式中「rtncode－回覆結果代碼」之代碼，用於表示支付審核系統對服務提供單位所送 API 請求之處理結果，包含成功回傳、參數檢核錯誤、權限與流量限制及系統異常等情形。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-api-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-api-status"
      },
      "name" : "支付審查－API 執行狀況",
      "description" : "此 ValueSet 用於表示支付審核系統 API 交易單的執行狀況，代碼包含：0（待處理）、1（處理中）、3（錯誤）、4（處理完成）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-api-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-api-status"
      },
      "name" : "支付審查－API 執行狀況",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－API執行狀況」之代碼，用於表示服務單位所送交易單於支付審核系統之處理狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-svcc-goal-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-svcc-goal-type"
      },
      "name" : "支付審查－專業服務復能目標達成情形",
      "description" : "此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type），申報 C 碼時填寫。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-svcc-goal-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-svcc-goal-type"
      },
      "name" : "支付審查－專業服務復能目標達成情形",
      "description" : "支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type）代碼，申報 C 碼（專業服務）時填寫，單選。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-svc-people.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-svc-people"
      },
      "name" : "支付審查－服務對象",
      "description" : "此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people），申報 AA00 必填寫。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-svc-people.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-svc-people"
      },
      "name" : "支付審查－服務對象",
      "description" : "支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people）代碼，申報 AA00 必填寫，可複選（原始電文以「|」分隔多個選項）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-supporting-info.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-supporting-info"
      },
      "name" : "支付審查－服務紀錄補充資訊類別",
      "description" : "此 ValueSet 涵蓋支付審核系統「服務記錄申報（FeeApply）」中隨照顧組合代碼特化之補充資訊分類碼，適用於 Claim.supportingInfo.category，包含 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等類別。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-supporting-info.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-supporting-info"
      },
      "name" : "支付審查－服務紀錄補充資訊類別",
      "description" : "《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「服務記錄申報（FeeApply）」中，隨照顧組合代碼（gov_item_cd）而特化之欄位分類碼，作為 Claim.supportingInfo.category 之取值，用以承載 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等補充資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-svc-point.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-svc-point"
      },
      "name" : "支付審查－服務重點",
      "description" : "此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point），申報 AA00 填寫。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-svc-point.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-svc-point"
      },
      "name" : "支付審查－服務重點",
      "description" : "支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point）代碼，申報 AA00 填寫，可複選（原始電文以「|」分隔多個選項）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-svc-item.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-svc-item"
      },
      "name" : "支付審查－服務項目",
      "description" : "此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item），申報 AA00 必填寫。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-svc-item.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-svc-item"
      },
      "name" : "支付審查－服務項目",
      "description" : "支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item）代碼，申報 AA00 必填寫，可複選（原始電文以「|」分隔多個選項）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-fee-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-fee-type"
      },
      "name" : "支付審查－服務類別",
      "description" : "此 ValueSet 用於表示支付審核系統服務記錄申報之服務類別（svc_fee_tp），區分補助與自費。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-fee-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-fee-type"
      },
      "name" : "支付審查－服務類別",
      "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「服務類別」（svc_fee_tp）代碼，用以區分該筆個案服務紀錄係由政府補助或由民眾自費支付。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-adjudication.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-adjudication"
      },
      "name" : "支付審查－核定金額類別",
      "description" : "此 ValueSet 用於表示支付審核分案審核明細中各項金額的類別，代碼包含：approveFee（核定金額）、incInAcc（核增金額）、decInAcc（核減金額）、copayment（自付額）、aSvcFee（政策鼓勵金額）、tempPaymentFee（分案暫付金額）、price（單價）、submitted（申請核銷金額）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-adjudication.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-adjudication"
      },
      "name" : "支付審查－核定金額類別",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項金額欄位之類別代碼，供 ClaimResponse.total.category 與 ClaimResponse.item.adjudication.category 使用。其中核定金額（approveFee）、核增金額（incInAcc）、核減金額（decInAcc）、政策鼓勵金額（aSvcFee）、分案暫付金額（tempPaymentFee）為長照支付審查特有、國際標準無對應者；申請核銷金額（submitted）、自付額（copayment）與單價（price）則與 HL7 標準代碼系統 http://terminology.hl7.org/CodeSystem/adjudication 之 submitted、copay、eligible 語意相近，本 CodeSystem 為保持同一組金額類別代碼之一致性而一併收錄，實作者於跨國情境交換時得改用該標準代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-case-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-case-status"
      },
      "name" : "支付審查－核銷狀況",
      "description" : "此 ValueSet 用於表示支付審核系統中分案的核銷狀況，代碼包含：0（已分案待電腦審核處理）、1（待通知收件）、2（已通知待收件）、3（審核中）、4（等待總表）、5（審計待審）、6（結案）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-case-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-case-status"
      },
      "name" : "支付審查－核銷狀況",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－核銷狀況」之代碼，用於表示分案在支付審核流程中的核銷處理狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-doc-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-doc-type"
      },
      "name" : "支付審查－清冊文件類別",
      "description" : "此 ValueSet 用於表示支付審核分案審核明細所提供之清冊與總表文件類別，代碼包含：tempPaymentDoc（暫付總表）、caseSummaryNotice（總表）、caseSvcList（清冊）、caseSvcListExcel（清冊EXCEL）、caseASvcList（A碼清冊）、caseASvcListExcel（A碼清冊EXCEL）、caseErrList（申請記錄不通過清冊）、caseErrListExcel（申請記錄不通過EXCEL清冊）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-doc-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-doc-type"
      },
      "name" : "支付審查－清冊文件類別",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項下載路徑所對應的清冊與總表文件類別代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-bd03-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-bd03-type"
      },
      "name" : "支付審查－社區式服務交通接送服務使用類型",
      "description" : "此 ValueSet 用於表示支付審核系統服務記錄申報之社區式服務交通接送（BD03）服務使用類型（bd03_type）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-bd03-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-bd03-type"
      },
      "name" : "支付審查－社區式服務交通接送服務使用類型",
      "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「社區式服務交通接送（BD03）服務使用類型」（bd03_type）代碼，申報 BD03 照顧組合時必填，預設為 1（社區式長照機構）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-city.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-city"
      },
      "name" : "支付審查－縣市代碼",
      "description" : "此 ValueSet 用於表示支付審核系統中分案、申請單與服務紀錄所屬之縣市，代碼取自 city_cd 代碼表，共 22 個直轄市、縣（市）：09007（連江縣）、09020（金門縣）、10002（宜蘭縣）、10004（新竹縣）、10005（苗栗縣）、10007（彰化縣）、10008（南投縣）、10009（雲林縣）、10010（嘉義縣）、10013（屏東縣）、10014（臺東縣）、10015（花蓮縣）、10016（澎湖縣）、10017（基隆市）、10018（新竹市）、10020（嘉義市）、63000（臺北市）、64000（高雄市）、65000（新北市）、66000（臺中市）、67000（臺南市）、68000（桃園市）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-city.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-city"
      },
      "name" : "支付審查－縣市代碼",
      "description" : "衛生福利部支付審核系統（照管平台）API 規格說明書 v2.2.1 之 city_cd（縣市名稱）代碼表，共 22 個直轄市、縣（市），用於標示分案、申請單與服務紀錄所屬之縣市。本代碼系統為支付審核系統專用代碼，與 TW Core IG 之郵遞區號代碼系統（TWPostalCode3／TWPostalCode5／TWPostalCode6，https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw 等）用途不同，郵遞區號用於表述地址之投遞區域，本代碼系統則用於表述支付審核業務之行政轄區歸屬，兩者不可互相替代。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-feeaudit-error-code.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-feeaudit-error-code"
      },
      "name" : "支付審查－錯誤代碼",
      "description" : "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》所定義之全部錯誤代碼（err_code），用於服務紀錄申報、撤回、審查結果回覆等交易之錯誤原因表達，包含欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）共 176 項代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-feeaudit-error-code.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-feeaudit-error-code"
      },
      "name" : "支付審查－錯誤代碼",
      "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「err_code－錯誤代碼與訊息」之代碼，用於表示服務紀錄申報、審查與回覆過程中所產生之各項錯誤原因，涵蓋欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-EducationStatusCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/EducationStatusCS-TWLTC"
      },
      "name" : "教育程度代碼",
      "description" : "用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-EducationStatusVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/EducationStatusVS-TWLTC"
      },
      "name" : "教育程度值集",
      "description" : "用以表述教育程度之值集，包含教育程度之描述內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-adl-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-adl-example"
      },
      "name" : "日常生活能力評估問卷回覆範例",
      "description" : "一個日常生活能力評估問卷回覆的範例，展示如何使用 LTCQuestionnaireResponse Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-adl-assessment-example.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-adl-assessment-example"
      },
      "name" : "日常生活能力評估問卷範例",
      "description" : "一個日常生活能力評估問卷的範例，展示如何使用 LTCQuestionnaire Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC"
      },
      "name" : "是否為主要照顧者",
      "description" : "此 Extension 用以表述關係人是否為主要照顧者。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-gait-type-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-gait-type-example"
      },
      "name" : "步態分析測量範例",
      "description" : "一個步態分析測量的範例，展示如何使用 PASportObservationGaitType Profile 來記錄步態類型分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitType"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-gait-cycle-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-gait-cycle-example"
      },
      "name" : "步態週期測量範例",
      "description" : "一個步態週期測量的範例，展示如何使用 PASportObservationGaitCycle Profile 來記錄步態週期分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitCycle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-extracellular-water-ratio-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-extracellular-water-ratio-example"
      },
      "name" : "水腫指數測量範例",
      "description" : "一個水腫指數測量的範例，展示如何使用 PASportObservationExtracellularWaterRatio Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationExtracellularWaterRatio"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-ltc-procedure-bathing-example.html"
      }],
      "reference" : {
        "reference" : "Procedure/ltc-procedure-bathing-example"
      },
      "name" : "沐浴協助範例",
      "description" : "一個沐浴協助的範例，展示如何使用 LTCProcedureCareActivity Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCProcedureCareActivity"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-communication.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-communication"
      },
      "name" : "溝通表達能力問卷",
      "description" : "CMS評估表中溝通表達能力問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-communication-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-communication-example"
      },
      "name" : "溝通表達能力問卷回應範例",
      "description" : "CMS評估表中溝通表達能力問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-crush-none-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-crush-none-example"
      },
      "name" : "無壓傷狀況範例",
      "description" : "一個無壓傷狀況的範例，展示如何使用 LTCConditionCrush Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-GoalDescriptionVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/GoalDescriptionVS-TWLTC"
      },
      "name" : "照顧目標描述值集",
      "description" : "照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集列舉臺灣長期照顧情境常用之 SNOMED CT 照顧目標代碼，綁定強度為 extensible，實作者可依需求使用其他 SNOMED CT 或 LOINC 代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-questionnaire-aa02-example.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/questionnaire-aa02-example"
      },
      "name" : "照顧管理問卷 (AA02)",
      "description" : "依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-cms-chen-ming-hui-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-cms-chen-ming-hui-example"
      },
      "name" : "照顧管理評估量表住民範例",
      "description" : "一個照顧管理評估量表住民的範例，展示如何使用 LTCPatientCMS Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientCMS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCBundleCMS.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCBundleCMS"
      },
      "name" : "照顧管理評估量表文件打包",
      "description" : "此 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件打包結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-cms-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-cms-example"
      },
      "name" : "照顧管理評估量表文件打包範例",
      "description" : "一個照顧管理評估量表文件打包的範例，展示如何使用 LTCBundleCMS Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleCMS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCompositionCMS.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCompositionCMS"
      },
      "name" : "照顧管理評估量表文件架構",
      "description" : "此 Composition 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-ltc-composition-cms-example.html"
      }],
      "reference" : {
        "reference" : "Composition/ltc-composition-cms-example"
      },
      "name" : "照顧管理評估量表文件架構範例",
      "description" : "一個照顧管理評估量表文件架構的範例，展示如何使用 LTCCompositionCMS Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionCMS"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCMSModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCMSModel"
      },
      "name" : "照顧管理評估量表邏輯模型",
      "description" : "此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-resource-format",
        "valueCode" : "application/fhir+json"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Binary-ltc-cms-model-example.html"
      }],
      "reference" : {
        "reference" : "Binary/ltc-cms-model-example"
      },
      "name" : "照顧管理評估量表邏輯模型範例",
      "description" : "一個照顧管理評估量表邏輯模型的範例，展示如何準備欄位資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCMSModel"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport"
      },
      "name" : "照顧管理評估量表－主要照顧者工作與支持",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者工作與支持的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad"
      },
      "name" : "照顧管理評估量表－主要照顧者負荷問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者負荷問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCPatientCMS.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCPatientCMS"
      },
      "name" : "照顧管理評估量表－個案基本資料",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSCommunication.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSCommunication"
      },
      "name" : "照顧管理評估量表－個案溝通能力問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案溝通能力問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSMemory.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSMemory"
      },
      "name" : "照顧管理評估量表－個案短期記憶力問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案短期記憶力問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSSociety.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSSociety"
      },
      "name" : "照顧管理評估量表－居家環境與社會參與問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－居家環境與社會參與問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSMental.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSMental"
      },
      "name" : "照顧管理評估量表－情緒及行為型態問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－情緒及行為型態問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare"
      },
      "name" : "照顧管理評估量表－特殊複雜照護需要問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－特殊複雜照護需要問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-caregiver.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-caregiver"
      },
      "name" : "照顧者問卷",
      "description" : "轉介流程中照顧者問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-caregiver-support-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-caregiver-support-example"
      },
      "name" : "照顧者支持問卷回應範例",
      "description" : "CMS評估表中照顧者支持問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-caregiver-load-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-caregiver-load-example"
      },
      "name" : "照顧者負荷問卷回應範例",
      "description" : "CMS評估表中照顧者負荷問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-questionnaire-aa01-example.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/questionnaire-aa01-example"
      },
      "name" : "照顧計畫擬訂與服務連結問卷 (AA01)",
      "description" : "AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-special-care.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-special-care"
      },
      "name" : "特殊複雜照護需要問卷",
      "description" : "CMS評估表中特殊複雜照護需要問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-special-care-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-special-care-example"
      },
      "name" : "特殊複雜照護需要問卷回應範例",
      "description" : "CMS評估表中特殊複雜照護需要問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCAdverseEventModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCAdverseEventModel"
      },
      "name" : "異常事件警報邏輯模型",
      "description" : "此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ConditionSeverityVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ConditionSeverityVS-TWLTC"
      },
      "name" : "疾病嚴重度擴展值集",
      "description" : "用以表述疾病嚴重度之擴展值集，包含疾病嚴重度之描述內容。配合身心障礙手冊障礙程度分級，包含輕度、中度、重度、極重度等代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-pasport-condition-medical-history-example.html"
      }],
      "reference" : {
        "reference" : "Condition/pasport-condition-medical-history-example"
      },
      "name" : "病史記錄範例",
      "description" : "一個病史記錄的範例，展示如何使用 PASportConditionMedicalHistory Profile 來記錄患者的病史",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionMedicalHistory"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-example"
      },
      "name" : "病情、問題或診斷範例",
      "description" : "一個病情的範例，展示如何使用 LTCCondition Profile 來記錄住民的病情資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ReferralConditionCaregiverVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ReferralConditionCaregiverVS-TWLTC"
      },
      "name" : "看護狀況值集",
      "description" : "個案雇用看護的狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-memory.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-memory"
      },
      "name" : "短期記憶力問卷",
      "description" : "CMS評估表中短期記憶力問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-memory-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-memory-example"
      },
      "name" : "短期記憶力問卷回應範例",
      "description" : "CMS評估表中短期記憶力問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-mineral-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-mineral-example"
      },
      "name" : "礦物質重測量範例",
      "description" : "一個礦物質重測量的範例，展示如何使用 PASportObservationMineral Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationMineral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationGaitType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationGaitType"
      },
      "name" : "穿戴裝置－步態分析",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態分析資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationGaitCycle.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationGaitCycle"
      },
      "name" : "穿戴裝置－步態週期",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態週期資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-crush-stage2-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-crush-stage2-example"
      },
      "name" : "第二期壓傷範例",
      "description" : "一個第二期壓傷的範例，展示如何使用 LTCConditionCrush Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ReferralConditionTubeVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ReferralConditionTubeVS-TWLTC"
      },
      "name" : "管路狀況值集",
      "description" : "個案持有管路的狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-mmse.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-mmse"
      },
      "name" : "簡易智能狀態測驗 (MMSE)",
      "description" : "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-mmse-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-mmse-example"
      },
      "name" : "簡易智能狀態測驗回覆範例",
      "description" : "一個簡易智能狀態測驗回覆的範例，展示如何使用 LTCQuestionnaireResponseMMSE Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-mmse-complete-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-mmse-complete-example"
      },
      "name" : "簡易智能狀態測驗完整回覆範例",
      "description" : "一個完整的簡易智能狀態測驗回覆範例，展示所有 22 個項目的回答",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCMMSEAssessmentModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCMMSEAssessmentModel"
      },
      "name" : "簡易智能狀態測驗評估",
      "description" : "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-mmse-impaired-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-mmse-impaired-example"
      },
      "name" : "簡易智能狀態測驗認知障礙回覆範例",
      "description" : "一個認知功能障礙患者的簡易智能狀態測驗回覆範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-diabetes-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-diabetes-example"
      },
      "name" : "糖尿病病情範例",
      "description" : "一個糖尿病病情的範例，展示如何使用 LTCConditionProblem Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionProblem"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationAdministration"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationAdministration-ltc-medication-administration-metformin-example.html"
      }],
      "reference" : {
        "reference" : "MedicationAdministration/ltc-medication-administration-metformin-example"
      },
      "name" : "糖尿病藥物給藥範例",
      "description" : "一個糖尿病藥物給藥的範例，展示如何使用 LTCMedicationAdministration Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCMedicationAdministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-intracellular-water-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-intracellular-water-example"
      },
      "name" : "細胞內水分測量範例",
      "description" : "一個細胞內水分測量的範例，展示如何使用 PASportObservationIntracellularWater Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationIntracellularWater"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-extracellular-water-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-extracellular-water-example"
      },
      "name" : "細胞外水分測量範例",
      "description" : "一個細胞外水分測量的範例，展示如何使用 PASportObservationExtracellularWater Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationExtracellularWater"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-cell-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-cell-mass-example"
      },
      "name" : "細胞量測量範例",
      "description" : "一個細胞量測量的範例，展示如何使用 PASportObservationCellMass Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationCellMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-EconomyStatusCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/EconomyStatusCS-TWLTC"
      },
      "name" : "經濟狀況代碼",
      "description" : "用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。\n此代碼比照警政署偵查筆錄制式格式之選項進行設計。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-skeletal-muscle-mass-index-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-skeletal-muscle-mass-index-example"
      },
      "name" : "肌肉質量指數測量範例",
      "description" : "一個肌肉質量指數測量的範例，展示如何使用 PASportObservationSkeletalMuscleMassIndex Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSkeletalMuscleMassIndex"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-soft-lean-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-soft-lean-mass-example"
      },
      "name" : "肌肉量測量範例",
      "description" : "一個肌肉量測量的範例，展示如何使用 PASportObservationSoftLeanMass Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSoftLeanMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-disability-type-limb-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-disability-type-limb-example"
      },
      "name" : "肢體障礙類型範例",
      "description" : "一個肢體障礙類型的範例，展示如何使用 LTCConditionDisabilityType Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-obesity-degree-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-obesity-degree-example"
      },
      "name" : "肥胖度測量範例",
      "description" : "一個肥胖度測量的範例，展示如何使用 PASportObservationObesityDegree Profile 來記錄肥胖度資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationObesityDegree"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-peripheral-oxygen-saturation-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-peripheral-oxygen-saturation-example"
      },
      "name" : "脈搏血氧飽和度測量範例",
      "description" : "一個脈搏血氧飽和度測量的範例，展示如何使用 PASportObservationPeripheralOxygenSaturation Profile 來記錄脈搏血氧飽和度資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationPeripheralOxygenSaturation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-waist-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-waist-example"
      },
      "name" : "腰圍測量範例",
      "description" : "一個腰圍測量的範例，展示如何使用 PASportObservationWaist Profile 來記錄基礎生理量測",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWaist"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-waist-hip-rate-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-waist-hip-rate-example"
      },
      "name" : "腰臀圍比測量範例",
      "description" : "一個腰臀圍比測量的範例，展示如何使用 PASportObservationWaistHipRate Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWaistHipRate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-cdr.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-cdr"
      },
      "name" : "臨床失智評估量表 (CDR)",
      "description" : "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-cdr-moderate-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-cdr-moderate-example"
      },
      "name" : "臨床失智評估量表中度失智回覆範例",
      "description" : "一個中度失智患者的臨床失智評估量表回覆範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-cdr-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-cdr-example"
      },
      "name" : "臨床失智評估量表回覆範例",
      "description" : "一個臨床失智評估量表回覆的範例，展示如何使用 LTCQuestionnaireResponseCDR Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-cdr-complete-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-cdr-complete-example"
      },
      "name" : "臨床失智評估量表完整回覆範例",
      "description" : "一個完整的臨床失智評估量表回覆範例，展示所有 6 個領域的評估",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCDRAssessmentModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCDRAssessmentModel"
      },
      "name" : "臨床失智評估量表評估",
      "description" : "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ICD-10-PCS-2023-TW-F-VS.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ICD-10-PCS-2023-TW-F-VS"
      },
      "name" : "臺灣 2023 年中文版 ICD-10-PCS-F 值集",
      "description" : "臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ICD-10-PCS-2023-TW-F-CS.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ICD-10-PCS-2023-TW-F-CS"
      },
      "name" : "臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學",
      "description" : "臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-CapabilityStatementLTCServer.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/CapabilityStatementLTCServer"
      },
      "name" : "臺灣長期照顧實作指引 - 伺服端能力聲明",
      "description" : "此 CapabilityStatement 定義了臺灣長期照顧實作指引中伺服端系統必須支援的 FHIR RESTful API 功能。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-CapabilityStatementLTCClient.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/CapabilityStatementLTCClient"
      },
      "name" : "臺灣長期照顧實作指引 - 用戶端能力聲明",
      "description" : "此 CapabilityStatement 定義了臺灣長期照顧實作指引中用戶端系統建議支援的 FHIR RESTful API 功能。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-service-item.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-service-item"
      },
      "name" : "臺灣長照服務項目",
      "description" : "此 ValueSet 涵蓋臺灣長照 2.0 給付之所有服務項目代碼，適用於長照服務之申請、核定與使用紀錄，包含照顧組合、專業服務、交通接送、喘息服務等項目。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-service-item.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-service-item"
      },
      "name" : "臺灣長照服務項目代碼",
      "description" : "臺灣長照 2.0 給付之服務項目代碼（AA..GA 系列），涵蓋照顧組合、專業服務、交通接送、喘息服務等項目，適用於長照服務之申請、核定與使用紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-residence-not-alone-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-residence-not-alone-example"
      },
      "name" : "與家人同住居住狀況範例",
      "description" : "一個與家人同住之居住狀況的範例，展示如何使用 LTCConditionResidence Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionResidence"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-protein-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-protein-example"
      },
      "name" : "蛋白質重測量範例",
      "description" : "一個蛋白質重測量的範例，展示如何使用 PASportObservationProtein Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationProtein"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ltc-observation-blood-pressure-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ltc-observation-blood-pressure-example"
      },
      "name" : "血壓量測範例",
      "description" : "一個血壓量測的範例，展示如何使用 LTCObservationVitalSigns Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationVitalSigns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-blood-pressure-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-blood-pressure-example"
      },
      "name" : "血壓量測範例",
      "description" : "一個血壓量測的範例，展示如何使用 PASportObservationBloodPressure Profile 來記錄運動前後的血壓變化",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-glucose-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-glucose-example"
      },
      "name" : "血糖測量範例",
      "description" : "一個血糖測量的範例，展示如何使用 PASportObservationGlucose Profile 來記錄基礎生理量測",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGlucose"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-ltc-careplan-mobility-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/ltc-careplan-mobility-example"
      },
      "name" : "行動照顧計畫範例",
      "description" : "一個行動照顧計畫的範例，展示如何使用 LTCCarePlan Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Goal"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Goal-ltc-goal-mobility-improvement-example.html"
      }],
      "reference" : {
        "reference" : "Goal/ltc-goal-mobility-improvement-example"
      },
      "name" : "行動能力改善目標範例",
      "description" : "一個行動能力改善目標的範例，展示如何使用 LTCGoal Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-mental.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-mental"
      },
      "name" : "認知功能與精神狀態問卷",
      "description" : "CMS評估表中認知功能與精神狀態問卷",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-mental-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-mental-example"
      },
      "name" : "認知功能與精神狀態問卷回應範例",
      "description" : "CMS評估表中認知功能與精神狀態問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ltc-observation-falling-history-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ltc-observation-falling-history-example"
      },
      "name" : "跌倒紀錄範例",
      "description" : "一個跌倒紀錄的範例，展示如何使用 LTCObservationFallingHistory Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationFallingHistory"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-FallHistoryResultVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/FallHistoryResultVS-TWLTC"
      },
      "name" : "跌倒紀錄結果值集",
      "description" : "紀錄住民跌倒的偵測結果。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-treadmill-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-treadmill-example"
      },
      "name" : "跑步機運動記錄範例",
      "description" : "一個跑步機運動記錄的範例，展示如何使用 PASportObservationTreadmill Profile 來記錄跑步機運動數據",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationTreadmill"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-disability-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-disability-example"
      },
      "name" : "身心障礙手冊持有狀態範例",
      "description" : "一個身心障礙手冊持有狀態的範例，展示如何使用 LTCConditionDisability Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ConditionDisabilityVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ConditionDisabilityVS-TWLTC"
      },
      "name" : "身心障礙手冊持有狀況值集",
      "description" : "個案持有身心障礙手冊的狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ConditionDisabilityTypeVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ConditionDisabilityTypeVS-TWLTC"
      },
      "name" : "身心障礙類型值集",
      "description" : "個案身心障礙類型",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-TempCodeCS-Sport.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/TempCodeCS-Sport"
      },
      "name" : "身體活動量測-暫用代碼",
      "description" : "身體活動量測暫時使用的代碼，目前無官方代碼。本 CodeSystem 繼承自身體活動量測 IG，後續將配合官方代碼更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-TempCodeVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/TempCodeVS-Sport"
      },
      "name" : "身體活動量測-暫用代碼值集",
      "description" : "身體活動量測暫時使用的代碼，目前無官方代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合官方代碼更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ExerciseHistoryVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ExerciseHistoryVS-Sport"
      },
      "name" : "身體活動量測-最近(目前)運動史值集",
      "description" : "最近(目前)運動史。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-GaitTypeVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/GaitTypeVS-Sport"
      },
      "name" : "身體活動量測-步態分析值集",
      "description" : "用於描述步態（walking gait）時腳的着地位置和運動模式。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-GaitCycleCS-Sport.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/GaitCycleCS-Sport"
      },
      "name" : "身體活動量測-步態週期",
      "description" : "一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-GaitCycleVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/GaitCycleVS-Sport"
      },
      "name" : "身體活動量測-步態週期值集",
      "description" : "一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-TreadmillTypeVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/TreadmillTypeVS-Sport"
      },
      "name" : "身體活動量測-跑步機類型值集",
      "description" : "用於描述跑步機的類型。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ServiceRequestPAVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ServiceRequestPAVS-Sport"
      },
      "name" : "身體活動量測-適用運動處方之服務請求代碼值集",
      "description" : "適用運動處方之服務請求代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-SportTrainingVS-Sport.html"
      }],
      "reference" : {
        "reference" : "ValueSet/SportTrainingVS-Sport"
      },
      "name" : "身體活動量測-重量訓練代碼值集",
      "description" : "定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-SportTrainingCS-Sport.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/SportTrainingCS-Sport"
      },
      "name" : "身體活動量測-重量訓練代碼系統",
      "description" : "此代碼系統定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationVisceralFatIndex.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationVisceralFatIndex"
      },
      "name" : "身體組成分析儀－內臟脂肪指數",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之內臟脂肪指數資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationVisceralFatArea.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationVisceralFatArea"
      },
      "name" : "身體組成分析儀－內臟脂肪面積",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之內臟脂肪面積資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationFatFreeMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationFatFreeMass"
      },
      "name" : "身體組成分析儀－去脂體重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之去脂體重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBasalMetabolicRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBasalMetabolicRate"
      },
      "name" : "身體組成分析儀－基礎代謝率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之基礎代謝率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyBoneMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyBoneMass"
      },
      "name" : "身體組成分析儀－推定骨量",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之推定骨量資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationExtracellularWaterRatio.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationExtracellularWaterRatio"
      },
      "name" : "身體組成分析儀－水腫指數",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之水腫指數資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationMineral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationMineral"
      },
      "name" : "身體組成分析儀－礦物質重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之礦物質重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationIntracellularWater.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationIntracellularWater"
      },
      "name" : "身體組成分析儀－細胞內水分",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞內水分資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationExtracellularWater.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationExtracellularWater"
      },
      "name" : "身體組成分析儀－細胞外水分",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞外水分資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationCellMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationCellMass"
      },
      "name" : "身體組成分析儀－細胞量",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞量資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationSkeletalMuscleMassIndex.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationSkeletalMuscleMassIndex"
      },
      "name" : "身體組成分析儀－肌肉質量指數",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肌肉質量指數資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationSoftLeanMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationSoftLeanMass"
      },
      "name" : "身體組成分析儀－肌肉量",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肌肉量資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationObesityDegree.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationObesityDegree"
      },
      "name" : "身體組成分析儀－肥胖度",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肥胖度資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationWaistHipRate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationWaistHipRate"
      },
      "name" : "身體組成分析儀－腰臀圍比",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之腰臀圍比資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationProtein.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationProtein"
      },
      "name" : "身體組成分析儀－蛋白質重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之蛋白質重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationTotalBodyWater.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationTotalBodyWater"
      },
      "name" : "身體組成分析儀－身體總水分",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之身體總水分資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyMassIndex.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyMassIndex"
      },
      "name" : "身體組成分析儀－身體質量指數",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationSkeletalMuscleMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationSkeletalMuscleMass"
      },
      "name" : "身體組成分析儀－骨骼肌重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之骨骼肌重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyAge.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyAge"
      },
      "name" : "身體組成分析儀－體內年齡",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體內年齡資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyFatPercentage.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyFatPercentage"
      },
      "name" : "身體組成分析儀－體脂率",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體脂率資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationBodyFatMass.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationBodyFatMass"
      },
      "name" : "身體組成分析儀－體脂肪重",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體脂肪重資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-total-body-water-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-total-body-water-example"
      },
      "name" : "身體總水分測量範例",
      "description" : "一個身體總水分測量的範例，展示如何使用 PASportObservationTotalBodyWater Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationTotalBodyWater"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-bmi-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-bmi-example"
      },
      "name" : "身體質量指數測量範例",
      "description" : "一個BMI測量的範例，展示如何使用 PASportObservationBodyMassIndex Profile 來記錄身體質量指數",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyMassIndex"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-height-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-height-example"
      },
      "name" : "身高量測範例",
      "description" : "一個身高量測的範例，展示如何使用 PASportObservationHeight Profile 來記錄身高數據",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeight"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-adl-referral-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-adl-referral-example"
      },
      "name" : "轉介ADL問卷回應範例",
      "description" : "轉介流程中ADL問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-iadl-referral-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-iadl-referral-example"
      },
      "name" : "轉介IADL問卷回應範例",
      "description" : "轉介流程中IADL問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-referral-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-referral-example"
      },
      "name" : "轉介個案範例",
      "description" : "一個需要長照服務轉介的個案範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-referral-chen-ming-hui-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
      },
      "name" : "轉介單住民範例",
      "description" : "一個轉介單住民的範例，展示如何使用 LTCPatientReferral Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatientReferral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ReferralConditionCrushCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ReferralConditionCrushCS-TWLTC"
      },
      "name" : "轉介單壓傷狀況代碼",
      "description" : "用於表述個案的壓傷狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ReferralConditionResidenceCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ReferralConditionResidenceCS-TWLTC"
      },
      "name" : "轉介單居住狀況代碼",
      "description" : "用於表述個案的居住狀況",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-ltc-careplan-referral-home-service-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/ltc-careplan-referral-home-service-example"
      },
      "name" : "轉介單居家服務計畫範例",
      "description" : "一個轉介單居家服務計畫的範例，展示如何使用 LTCCarePlanReferral Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-referral-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-referral-example"
      },
      "name" : "轉介單文件打包範例",
      "description" : "一個轉介單文件打包的範例，展示如何使用 LTCBundleReferral Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleReferral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-ltc-composition-referral-example.html"
      }],
      "reference" : {
        "reference" : "Composition/ltc-composition-referral-example"
      },
      "name" : "轉介單文件架構範例",
      "description" : "一個轉介單文件架構的範例，展示如何使用 LTCCompositionReferral Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionReferral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ReferralCarePlanCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ReferralCarePlanCS-TWLTC"
      },
      "name" : "轉介單申請服務種類代碼",
      "description" : "用於表述個案欲申請的服務項目。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-ReferralCarePlanVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/ReferralCarePlanVS-TWLTC"
      },
      "name" : "轉介單申請服務種類值集",
      "description" : "轉介單申請服務種類的值集",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ReferralConditionCaregiverCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ReferralConditionCaregiverCS-TWLTC"
      },
      "name" : "轉介單看護狀況代碼",
      "description" : "用於表述個案雇用看護的狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-ReferralConditionTubeCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/ReferralConditionTubeCS-TWLTC"
      },
      "name" : "轉介單管路狀況代碼",
      "description" : "用於表述轉介單的狀況代碼，包含身心障礙手冊、管路、壓傷、居住狀況、看護、主要問題及需求等。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-resource-format",
        "valueCode" : "application/fhir+json"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Binary"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Binary-ltc-referral-model-example.html"
      }],
      "reference" : {
        "reference" : "Binary/ltc-referral-model-example"
      },
      "name" : "轉介單邏輯模型範例",
      "description" : "一個轉介單邏輯模型的範例，展示如何準備欄位資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRferralModel"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCPatientReferral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCPatientReferral"
      },
      "name" : "轉介單－個案基本資料",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCarePlanReferral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCarePlanReferral"
      },
      "name" : "轉介單－服務種類",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現轉診單中欲申請之服務種類。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseReferralCaregiver"
      },
      "name" : "轉介單－照顧者問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－照顧者問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseReferralSOF.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseReferralSOF"
      },
      "name" : "轉介單－衰弱評估問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－衰弱評估問卷的回覆資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-caregiver-referral-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-caregiver-referral-example"
      },
      "name" : "轉介照顧者問卷回應範例",
      "description" : "轉介流程中照顧者問卷的回應範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-referral-acceptance-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-referral-acceptance-example"
      },
      "name" : "轉介確認任務範例",
      "description" : "展示長照機構接受轉介個案的任務確認範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTask"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-disability-referral-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-disability-referral-example"
      },
      "name" : "轉介－身心障礙手冊持有狀態範例",
      "description" : "供轉介單使用的身心障礙手冊持有狀態 Condition 範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-disability-type-limb-referral-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-disability-type-limb-referral-example"
      },
      "name" : "轉介－身心障礙類型（肢體）範例",
      "description" : "供轉介單使用的身心障礙類型（肢體） Condition 範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-hah-receiving-hospital.html"
      }],
      "reference" : {
        "reference" : "Organization/hah-receiving-hospital"
      },
      "name" : "轉院接收機構範例",
      "description" : "合成的轉院接收機構。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-pasport-condition-exercise-history-example.html"
      }],
      "reference" : {
        "reference" : "Condition/pasport-condition-exercise-history-example"
      },
      "name" : "運動史記錄範例",
      "description" : "一個運動史記錄的範例，展示如何使用 PASportConditionExerciseHistory Profile 來記錄患者的運動背景",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionExerciseHistory"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-pasport-servicerequest-exercise-therapy-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/pasport-servicerequest-exercise-therapy-example"
      },
      "name" : "運動治療服務請求範例",
      "description" : "一個運動治療服務請求的範例，展示如何使用 PASportServiceRequest Profile 來申請運動治療服務",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportServiceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Goal"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Goal-pasport-goal-walking-steps-example.html"
      }],
      "reference" : {
        "reference" : "Goal/pasport-goal-walking-steps-example"
      },
      "name" : "運動目標－步行步數範例",
      "description" : "一個運動目標的範例，展示如何使用 PASportGoal Profile 來表示每日步行步數目標",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportGoal"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportServiceRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportServiceRequest"
      },
      "name" : "運動處方－服務請求",
      "description" : "長照機構住民運動處方的服務請求資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data ServiceRequest Profile。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportConditionMedicalHistory.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportConditionMedicalHistory"
      },
      "name" : "運動處方－病史",
      "description" : "長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportConditionExerciseHistory.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportConditionExerciseHistory"
      },
      "name" : "運動處方－運動史",
      "description" : "長照機構住民運動處方的運動史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportGoal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportGoal"
      },
      "name" : "運動處方－運動目標",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現運動處方中涉及之運動目標內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportCarePlan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportCarePlan"
      },
      "name" : "運動處方－運動計畫",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之運動計畫內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-pasport-careplan-walking-exercise-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/pasport-careplan-walking-exercise-example"
      },
      "name" : "運動計畫－步行運動範例",
      "description" : "一個運動計畫的範例，展示如何使用 PASportCarePlan Profile 來表示步行運動計畫",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportCarePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationTreadmill.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationTreadmill"
      },
      "name" : "運動項目－跑步機",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之跑步機資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PASportObservationWeightTraining.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PASportObservationWeightTraining"
      },
      "name" : "運動項目－重量訓練",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之重量訓練資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-weight-training-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-weight-training-example"
      },
      "name" : "重量訓練記錄範例",
      "description" : "一個重量訓練記錄的範例，展示如何使用 PASportObservationWeightTraining Profile 來記錄重量訓練數據",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeightTraining"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCompositionReferral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCompositionReferral"
      },
      "name" : "長期照護管理中心個案服務初篩表/轉介單文件架構",
      "description" : "此 Composition 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-AA12Model.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/AA12Model"
      },
      "name" : "長期照護醫師意見書 (AA12) 邏輯模型",
      "description" : "此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseAA12.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseAA12"
      },
      "name" : "長期照護醫師意見書問卷回覆 (AA12)",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照護醫師意見書的問卷回覆內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-aa12-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-aa12-example"
      },
      "name" : "長期照護醫師意見書問卷回覆範例 (AA12)",
      "description" : "一個長期照護醫師意見書問卷回覆的範例，展示如何使用 LTCQuestionnaireResponseAA12 Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA12"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Questionnaire-ltc-questionnaire-aa12-example.html"
      }],
      "reference" : {
        "reference" : "Questionnaire/ltc-questionnaire-aa12-example"
      },
      "name" : "長期照護醫師意見書問卷範例 (AA12)",
      "description" : "一個長期照護醫師意見書問卷的範例，展示如何使用 LTCQuestionnaire Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ltc-practitioner-physician-aa12-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ltc-practitioner-physician-aa12-example"
      },
      "name" : "長期照護醫師意見書醫師範例 (AA12)",
      "description" : "一個長期照護醫師意見書的醫師範例，展示如何使用 TWCorePractitioner Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-twcore-organization-hospital-aa12-example.html"
      }],
      "reference" : {
        "reference" : "Organization/twcore-organization-hospital-aa12-example"
      },
      "name" : "長期照護醫師意見書醫院範例 (AA12)",
      "description" : "一個長期照護醫師意見書的醫院範例，展示如何使用 TWCoreOrganization Profile",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-chen-ming-hui.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-chen-ming-hui"
      },
      "name" : "長期照顧住民範例",
      "description" : "一個長期照顧機構住民的範例，展示如何使用 LTCPatient Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-ltc-location-example.html"
      }],
      "reference" : {
        "reference" : "Location/ltc-location-example"
      },
      "name" : "長期照顧個案位置監測範例",
      "description" : "一個長期照顧個案位置監測的範例，展示如何使用 LTCLocation Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CareTeam"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CareTeam-ltc-care-team-example.html"
      }],
      "reference" : {
        "reference" : "CareTeam/ltc-care-team-example"
      },
      "name" : "長期照顧團隊範例",
      "description" : "一個長期照顧團隊的範例，展示如何使用 LTCCareTeam Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-ltc-encounter-example.html"
      }],
      "reference" : {
        "reference" : "Encounter/ltc-encounter-example"
      },
      "name" : "長期照顧就醫紀錄範例",
      "description" : "一個就醫紀錄的範例，用於轉介單中的出入院情形",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ltc-organization-example.html"
      }],
      "reference" : {
        "reference" : "Organization/ltc-organization-example"
      },
      "name" : "長期照顧機構範例",
      "description" : "一個長期照顧機構的範例，展示如何使用 LTCOrganization Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-ltc-adverse-event-incident-example.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/ltc-adverse-event-incident-example"
      },
      "name" : "長期照顧異常事件範例－SDK 異常服務通報（跌倒）",
      "description" : "展示 SDK 異常服務通報場景：電話通報跌倒事件，包含異常類別、通報方式、多段文字描述及關聯案件",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-ltc-adverse-event-example.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/ltc-adverse-event-example"
      },
      "name" : "長期照顧異常事件警報範例",
      "description" : "一個長期照顧異常事件警報的範例，展示如何使用 LTCAdverseEvent Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCBundleReferral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCBundleReferral"
      },
      "name" : "長期照顧管理中心個案服務初篩表/轉介單文件打包",
      "description" : "此 Bundle 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件打包結構。\n\n注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCRferralModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCRferralModel"
      },
      "name" : "長期照顧管理中心個案服務初篩表/轉介單邏輯模型",
      "description" : "此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。\n\n注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ltc-practitioner-nurse-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ltc-practitioner-nurse-example"
      },
      "name" : "長期照顧護理師範例",
      "description" : "一個長期照顧護理師的範例，展示如何使用 LTCPractitioner Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-ltc-practitioner-role-nurse-example.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
      },
      "name" : "長期照顧護理師角色範例",
      "description" : "一個長期照顧護理師角色的範例，展示如何使用 LTCPractitionerRole Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseAA01.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseAA01"
      },
      "name" : "長期照顧－AA01照顧計畫擬訂與服務連結問卷回應",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中 AA01 照顧計畫擬訂與服務連結問卷的回應內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-aa01-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-aa01-example"
      },
      "name" : "長期照顧－AA01照顧計畫擬訂與服務連結問卷回應範例",
      "description" : "一個AA01照顧計畫擬訂與服務連結問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA01 Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA01"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "QuestionnaireResponse-ltc-questionnaire-response-aa02-example.html"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/ltc-questionnaire-response-aa02-example"
      },
      "name" : "長期照顧－AA02照顧管理追蹤問卷回應範例",
      "description" : "一個AA02照顧管理追蹤問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA02 Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA02"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseAA02.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseAA02"
      },
      "name" : "長期照顧－AA02照顧管理追蹤問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現 AA02 照顧管理追蹤問卷的回覆內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCObservationVitalSignsPanel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCObservationVitalSignsPanel"
      },
      "name" : "長期照顧－一組生命徵象檢驗檢查",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的一組生命徵象檢驗檢查資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionNeed.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionNeed"
      },
      "name" : "長期照顧－主要問題及需求",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要問題及照護需求。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionProblem.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionProblem"
      },
      "name" : "長期照顧－主要疾病",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要疾病資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCTask.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCTask"
      },
      "name" : "長期照顧－任務管理",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現長期照顧情境中的轉介確認、照顧計畫狀態更新等任務管理需求。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCPatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCPatient"
      },
      "name" : "長期照顧－住民基本資料",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Location-twltc.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Location-twltc"
      },
      "name" : "長期照顧－個案位置監測",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaire.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaire"
      },
      "name" : "長期照顧－問卷",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponse"
      },
      "name" : "長期照顧－問卷回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中涉及之問卷或量表回覆內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionCrush.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionCrush"
      },
      "name" : "長期照顧－壓傷狀況",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionResidence.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionResidence"
      },
      "name" : "長期照顧－居住狀況",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的居住狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCompositionBase.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCompositionBase"
      },
      "name" : "長期照顧－文件組成基礎",
      "description" : "此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCPractitionerRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCPractitionerRole"
      },
      "name" : "長期照顧－服務人員角色",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。\n\n有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html) 中的說明。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCServiceRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCServiceRequest"
      },
      "name" : "長期照顧－服務請求",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ServiceRequest Resource，以呈現長期照顧情境中的轉介申請及服務請求需求。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCEpisodeOfCareBase.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCEpisodeOfCareBase"
      },
      "name" : "長期照顧－案件管理基礎",
      "description" : "此 Profile 為所有長期照顧 EpisodeOfCare Profile 的共用基礎，定義案件管理之基本結構與共用欄位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Organization-twltc.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Organization-twltc"
      },
      "name" : "長期照顧－機構",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCProcedureCareActivity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCProcedureCareActivity"
      },
      "name" : "長期照顧－照護活動",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Procedure Resource，以呈現長照機構住民的照護活動紀錄。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCareTeam.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCareTeam"
      },
      "name" : "長期照顧－照顧團隊",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CareTeam Resource，以呈現長期照顧情境中涉及之照顧團隊資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCPractitioner.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCPractitioner"
      },
      "name" : "長期照顧－照顧服務提供者",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCGoal.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCGoal"
      },
      "name" : "長期照顧－照顧目標",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現長期照顧情境中涉及之照顧目標內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCarePlan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCarePlan"
      },
      "name" : "長期照顧－照顧計畫",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之照顧計畫內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCObservationVitalSigns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCObservationVitalSigns"
      },
      "name" : "長期照顧－生命體徵",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的生命體徵資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCMedicationAdministration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCMedicationAdministration"
      },
      "name" : "長期照顧－用藥資料",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 MedicationAdministration Resource，以呈現長照機構住民的用藥資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"
      },
      "name" : "長期照顧－異常事件文字描述",
      "description" : "記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-AdverseEvent-twltc.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/AdverseEvent-twltc"
      },
      "name" : "長期照顧－異常事件警報",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現長照個案異常事件的資料，包括事件類型、嚴重程度、發生時間、位置、通報方式、多段文字描述與關聯案件等資訊。同時適用於失智照顧及 SDK 異常服務通報場景。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod"
      },
      "name" : "長期照顧－異常事件通報方式",
      "description" : "記錄異常事件的通報方式（如電話、機構通報、LINE 等）",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-AdverseEvent-About.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-AdverseEvent-About"
      },
      "name" : "長期照顧－異常事件關聯案件",
      "description" : "關聯的案件（EpisodeOfCare）或照顧計畫（CarePlan）",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCCondition.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCCondition"
      },
      "name" : "長期照顧－病情、問題或診斷",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的病情、問題或診斷資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionCaregiver.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionCaregiver"
      },
      "name" : "長期照顧－看護狀況",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長期照顧情境中住民的看護狀況資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionTube.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionTube"
      },
      "name" : "長期照顧－管路裝設狀況",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的管路裝設狀況與類別。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseMMSE.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseMMSE"
      },
      "name" : "長期照顧－簡易智能狀態測驗回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現簡易智能狀態測驗 (MMSE) 的回覆內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCQuestionnaireResponseCDR.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCQuestionnaireResponseCDR"
      },
      "name" : "長期照顧－臨床失智評估量表回覆",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現臨床失智評估量表 (CDR) 的回覆內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCObservationAssessmentBase.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCObservationAssessmentBase"
      },
      "name" : "長期照顧－評估核定摘要基礎",
      "description" : "此 Profile 為評估核定摘要 Observation 的共用基礎 Profile，定義評估結果之基本結構與共用欄位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionDisability.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionDisability"
      },
      "name" : "長期照顧－身心障礙手冊持有狀態",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙手冊持有狀態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCConditionDisabilityType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCConditionDisabilityType"
      },
      "name" : "長期照顧－身心障礙類型",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙類型。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCRelatedPerson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCRelatedPerson"
      },
      "name" : "長期照顧－關係人",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 RelatedPerson Resource，以呈現住民的關係人，包含家屬、照顧者、法定代理人等與住民有關的人員資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-ltc-coverage-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Coverage/ltc-coverage-cs100-example"
      },
      "name" : "長照 CS100－保險覆蓋（Coverage）範例",
      "description" : "長照 CS100 範例用的保險覆蓋（Coverage）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ltc-practitioner-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ltc-practitioner-cs100-example"
      },
      "name" : "長照 CS100－個案管理員（Practitioner）範例",
      "description" : "長照 CS100 範例用的個案管理員（Practitioner）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-ltc-bundle-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Composition/ltc-bundle-cs100-example"
      },
      "name" : "長照 CS100－個案總查詢（Composition）範例",
      "description" : "長照 CS100 個案總查詢的範例，展示如何使用 Composition 資源整合個案的完整資訊。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Composition-CS100"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-cs100-example"
      },
      "name" : "長照 CS100－個案（Patient）範例",
      "description" : "長照 CS100 範例用的個案（Patient）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CoverageEligibilityRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CoverageEligibilityRequest-ltc-coverageeligibilityrequest-cs100-example.html"
      }],
      "reference" : {
        "reference" : "CoverageEligibilityRequest/ltc-coverageeligibilityrequest-cs100-example"
      },
      "name" : "長照 CS100－核定請求（CoverageEligibilityRequest）範例",
      "description" : "長照 CS100 範例用的核定請求（CoverageEligibilityRequest）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CoverageEligibilityResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CoverageEligibilityResponse-ltc-coverageeligibilityresponse-cs100-example.html"
      }],
      "reference" : {
        "reference" : "CoverageEligibilityResponse/ltc-coverageeligibilityresponse-cs100-example"
      },
      "name" : "長照 CS100－核定額度回應（CoverageEligibilityResponse）範例",
      "description" : "長照 CS100 範例用的核定額度回應（CoverageEligibilityResponse）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-ltc-careplan-cs100-standalone-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/ltc-careplan-cs100-standalone-example"
      },
      "name" : "長照 CS100－照顧計畫獨立（CarePlan）範例",
      "description" : "長照 CS100 個案總查詢之照顧計畫範例，展示如何使用 LTCCarePlanCS100 Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-CS100"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-ltc-careplan-cs100-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/ltc-careplan-cs100-example"
      },
      "name" : "長照 CS100－照顧計畫（CarePlan）範例",
      "description" : "長照 CS100 範例用的照顧計畫（CarePlan）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-ltc-adverseevent-cs100-example.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/ltc-adverseevent-cs100-example"
      },
      "name" : "長照 CS100－異常事件（AdverseEvent）範例",
      "description" : "長照 CS100 範例用的異常事件（AdverseEvent）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ltc-observation-assessment-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ltc-observation-assessment-cs100-example"
      },
      "name" : "長照 CS100－評估核定摘要（Observation）範例",
      "description" : "長照 CS100 範例用的評估核定摘要（Observation）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-ltc-episodeofcare-cs100-example.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/ltc-episodeofcare-cs100-example"
      },
      "name" : "長照 CS100－長照案件（EpisodeOfCare）範例",
      "description" : "長照 CS100 範例用的長照案件（EpisodeOfCare）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ltc-organization-cs100-example.html"
      }],
      "reference" : {
        "reference" : "Organization/ltc-organization-cs100-example"
      },
      "name" : "長照 CS100－長照管理中心（Organization）範例",
      "description" : "長照 CS100 範例用的長照管理中心（Organization）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-cmslevel.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-cmslevel"
      },
      "name" : "長照 SDK－CMS 等級",
      "description" : "此 ValueSet 用於表示長照 SDK 中的 CMS（照顧管理評估量表）等級。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-cmslevel.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-cmslevel"
      },
      "name" : "長照 SDK－CMS 等級",
      "description" : "對應 r2.5：1, 1a, 1b, 2..8。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-section-code.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-section-code"
      },
      "name" : "長照 SDK－Composition 章節代碼",
      "description" : "用於長照 Composition 資源中各章節（section）的區段識別代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-ltc-coverage-sdk-example.html"
      }],
      "reference" : {
        "reference" : "Coverage/ltc-coverage-sdk-example"
      },
      "name" : "長照 SDK－保險覆蓋（Coverage）範例",
      "description" : "長照 SDK 範例用的保險覆蓋（Coverage）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-case-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-case-status"
      },
      "name" : "長照 SDK－個案狀態",
      "description" : "此 ValueSet 用於表示長照 SDK 中個案的狀態，使用 FHIR EpisodeOfCare status 對應碼：active（服務中）、onhold（暫停服務）、finished（已結案）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-case-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-case-status"
      },
      "name" : "長照 SDK－個案狀態",
      "description" : "對應 r1.3：服務中、暫停服務、已結案。使用 FHIR EpisodeOfCare status 對應碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-ltc-patient-sdk-example.html"
      }],
      "reference" : {
        "reference" : "Patient/ltc-patient-sdk-example"
      },
      "name" : "長照 SDK－個案（Patient）範例",
      "description" : "長照 SDK 範例用的個案（Patient）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Export-Unit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Export-Unit"
      },
      "name" : "長照 SDK－單位資訊（PIA/PIB/CENTER/MAN_*）",
      "description" : "此 Extension 用於表示長照 SDK 的單位資訊，包含特約單位、照管中心、個管員等相關資訊，適用於 Claim 及 ClaimResponse 資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Bundle-Payload.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Bundle-Payload"
      },
      "name" : "長照 SDK－回傳包（4合1）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現長照 SDK 回傳之資料包，包含案件、評估、核定額度及照顧計畫等資源之集合。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-payload-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-payload-example"
      },
      "name" : "長照 SDK－回傳包（4合1）範例",
      "description" : "長照 SDK 回傳資料包範例，包含案件、評估、核定額度及照顧計畫等資源之集合。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Bundle-Payload"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-service-group.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-service-group"
      },
      "name" : "長照 SDK－服務別（核定用）",
      "description" : "此 CodeSystem 定義長照 SDK 中的服務別（核定用）代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-service-group.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-service-group"
      },
      "name" : "長照 SDK－服務別（核定）",
      "description" : "此 ValueSet 用於表示長照 SDK 中的服務別（核定）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-service-activity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-service-activity"
      },
      "name" : "長照 SDK－服務活動",
      "description" : "此 ValueSet 彙整長照照管服務活動紀錄使用之代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-service-activity.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-service-activity"
      },
      "name" : "長照 SDK－服務活動代碼",
      "description" : "此 CodeSystem 定義長照照管服務活動紀錄所使用之代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Communication-ServiceA.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Communication-ServiceA"
      },
      "name" : "長照 SDK－服務活動紀錄（SERVICE_A）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Communication Resource，以呈現長照服務活動紀錄，包含電訪、家訪等過程資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CoverageEligibilityRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CoverageEligibilityRequest-ltc-coverageeligibilityrequest-sdk-example.html"
      }],
      "reference" : {
        "reference" : "CoverageEligibilityRequest/ltc-coverageeligibilityrequest-sdk-example"
      },
      "name" : "長照 SDK－核定請求（CoverageEligibilityRequest）範例",
      "description" : "長照 SDK 範例用的核定請求（CoverageEligibilityRequest）資源。",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CoverageEligibilityResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CoverageEligibilityResponse-ltc-coverageeligibilityresponse-sdk-example.html"
      }],
      "reference" : {
        "reference" : "CoverageEligibilityResponse/ltc-coverageeligibilityresponse-sdk-example"
      },
      "name" : "長照 SDK－核定額度回應（CoverageEligibilityResponse）範例",
      "description" : "長照 SDK 範例用的核定額度回應（CoverageEligibilityResponse）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-benefit-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-benefit-type"
      },
      "name" : "長照 SDK－核定額度欄位",
      "description" : "此 ValueSet 用於表示長照 SDK 中的核定額度欄位。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-benefit-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-benefit-type"
      },
      "name" : "長照 SDK－核定額度－金流欄位",
      "description" : "此 CodeSystem 定義長照 SDK 核定額度中的金流欄位代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Export-CaseNo.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Export-CaseNo"
      },
      "name" : "長照 SDK－案件編號（CASENO）",
      "description" : "此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Case-Source.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Case-Source"
      },
      "name" : "長照 SDK－案件－申請來源",
      "description" : "案件（EpisodeOfCare）之申請來源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Export-YYYMM-ROC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Export-YYYMM-ROC"
      },
      "name" : "長照 SDK－民國年月（YYYMM）",
      "description" : "此 Extension 用於表示長照 SDK 的民國年月（YYYMM 格式），適用於 Claim、ClaimResponse 或 OperationOutcome 資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-ClaimResponse-Export.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-ClaimResponse-Export"
      },
      "name" : "長照 SDK－照管全量匯出（ClaimResponse）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現長照照管全量匯出之審核結果與檢核錯誤資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Claim-Export.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Claim-Export"
      },
      "name" : "長照 SDK－照管全量匯出（Claim）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現長照照管全量匯出之服務代碼、數量、單價及小計等申報資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ltc-practitioner-sdk-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ltc-practitioner-sdk-example"
      },
      "name" : "長照 SDK－照顧管理專員（Practitioner）範例",
      "description" : "長照 SDK 範例用的照顧管理專員（Practitioner）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-ltc-careplan-sdk-example.html"
      }],
      "reference" : {
        "reference" : "CarePlan/ltc-careplan-sdk-example"
      },
      "name" : "長照 SDK－照顧計畫（CarePlan）範例",
      "description" : "長照 SDK 範例用的照顧計畫（CarePlan）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-CarePlan-CS100.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-CarePlan-CS100"
      },
      "name" : "長照 SDK－照顧計畫（CS100）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現 CS100 個案總查詢之照顧計畫資料，規則同 LTCCarePlanPayload。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-CarePlan-Payload.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-CarePlan-Payload"
      },
      "name" : "長照 SDK－照顧計畫（不含輔具）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長照 SDK 回傳之照顧計畫，包含服務項目代碼、金額、數量及頻率等資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-case-source.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-case-source"
      },
      "name" : "長照 SDK－申請來源",
      "description" : "此 ValueSet 用於表示長照 SDK 中個案的申請來源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-case-source.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-case-source"
      },
      "name" : "長照 SDK－申請來源（暫行）",
      "description" : "申請來源常見分類（待以 Excel 實值更新）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-incident-texttype.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-incident-texttype"
      },
      "name" : "長照 SDK－異常紀錄－文字區塊類型",
      "description" : "此 ValueSet 用於表示長照 SDK 異常紀錄中的文字區塊類型。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-incident-texttype.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-incident-texttype"
      },
      "name" : "長照 SDK－異常紀錄－文字區塊類型",
      "description" : "區分各段文字（描述、過程、後續處理、改善建議）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-incident-category.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-incident-category"
      },
      "name" : "長照 SDK－異常紀錄－異常類別",
      "description" : "此 ValueSet 用於表示長照 SDK 異常紀錄的異常類別。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-incident-category.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-incident-category"
      },
      "name" : "長照 SDK－異常紀錄－異常類別",
      "description" : "表單『異常類別』多選。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-incident-notifmethod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-incident-notifmethod"
      },
      "name" : "長照 SDK－異常紀錄－通報方式",
      "description" : "此 ValueSet 用於表示長照 SDK 異常紀錄的通報方式。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-incident-notifmethod.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-incident-notifmethod"
      },
      "name" : "長照 SDK－異常紀錄－通報方式",
      "description" : "表單『通報方式』多選。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Observation-Assessment-Payload.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Observation-Assessment-Payload"
      },
      "name" : "長照 SDK－評估核定摘要",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照 SDK 回傳之評估核定摘要，包含福利身分、CMS 等級、評估類型及計畫起訖等資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-assessment-component.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-assessment-component"
      },
      "name" : "長照 SDK－評估核定摘要欄位碼",
      "description" : "此 ValueSet 用於表示長照 SDK 評估核定摘要的欄位碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-Observation-Assessment-CS100.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-Observation-Assessment-CS100"
      },
      "name" : "長照 SDK－評估核定摘要（Observation）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現 CS100 個案總查詢之評估核定摘要，包含 CMS 等級、福利身分及評估類型等資訊。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-ltc-observation-assessment-sdk-example.html"
      }],
      "reference" : {
        "reference" : "Observation/ltc-observation-assessment-sdk-example"
      },
      "name" : "長照 SDK－評估核定摘要（Observation）範例",
      "description" : "長照 SDK 範例用的評估核定摘要（Observation）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-assessment-component.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-assessment-component"
      },
      "name" : "長照 SDK－評估核定摘要－欄位碼",
      "description" : "此 CodeSystem 定義長照 SDK 評估核定摘要的欄位碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Export-EvaId.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Export-EvaId"
      },
      "name" : "長照 SDK－評估案號（EVA_ID）",
      "description" : "此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-assessment-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-assessment-type"
      },
      "name" : "長照 SDK－評估類型",
      "description" : "此 ValueSet 用於表示長照 SDK 中的評估類型。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-assessment-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-assessment-type"
      },
      "name" : "長照 SDK－評估類型",
      "description" : "對應 r2.8 / r3.21：出院銜接、初評、複評、計畫異動、舊系統無評估轉入、身障居服匯入、AA計劃異動。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-OperationOutcome-Check.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-OperationOutcome-Check"
      },
      "name" : "長照 SDK－跨月檢核結果（QP_O）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現長照 SDK 跨月金額與月份檢核之錯誤旗標與訊息。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-Export-Error.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-Export-Error"
      },
      "name" : "長照 SDK－錯誤訊息",
      "description" : "此 Extension 用於表示長照 SDK 回傳的錯誤訊息，適用於 ClaimResponse 或 OperationOutcome.issue。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-EpisodeOfCare-Payload.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-EpisodeOfCare-Payload"
      },
      "name" : "長照 SDK－長照案件",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 EpisodeOfCare Resource，以呈現長照 SDK 回傳之案件資訊，包含案件流水號、個案狀態、開結案時間及主責機構等資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EpisodeOfCare"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EpisodeOfCare-ltc-episodeofcare-sdk-example.html"
      }],
      "reference" : {
        "reference" : "EpisodeOfCare/ltc-episodeofcare-sdk-example"
      },
      "name" : "長照 SDK－長照案件（EpisodeOfCare）範例",
      "description" : "長照 SDK 範例用的長照案件（EpisodeOfCare）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vs-tw-ltc-welfare-identity.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vs-tw-ltc-welfare-identity"
      },
      "name" : "長照 SDK－長照福利身分",
      "description" : "此 ValueSet 用於表示長照 SDK 中的長照福利身分。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-cs-tw-ltc-welfare-identity.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/cs-tw-ltc-welfare-identity"
      },
      "name" : "長照 SDK－長照福利身分",
      "description" : "此 CodeSystem 定義長照 SDK 中的長照福利身分代碼。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ltc-organization-sdk-example.html"
      }],
      "reference" : {
        "reference" : "Organization/ltc-organization-sdk-example"
      },
      "name" : "長照 SDK－長照管理中心（Organization）範例",
      "description" : "長照 SDK 範例用的長期照顧管理中心（Organization）資源。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-ltc-claim-feeapply-aa00-example.html"
      }],
      "reference" : {
        "reference" : "Claim/ltc-claim-feeapply-aa00-example"
      },
      "name" : "長照支付審查－A 單位服務紀錄（AA00）申報範例",
      "description" : "A 個管單位向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 AA00（A 單位服務紀錄）；AA00 已收錄於臺灣長照服務項目代碼系統（CS_TW_LTC_ServiceItem），故以 item.productOrService.coding 承載，使本 IG 之條件必填檢核（invariant ltc-feeaudit-3）得以觸發。本範例示範 AA00 之必填特化欄位：服務項目（svc_item = 1|2，電訪與家訪，以兩個 supportingInfo 切片表示）、服務對象（svc_people = 1|2，服務使用者與家庭照顧者）與服務內容（svc_content）；並示範選填欄位：服務重點（svc_point = 1|2）、追蹤服務適應與介入情形（svc_trace）、各項服務目標及整體計畫目標達成情形（svc_goal）、整體計畫的適切性及需求異動（svc_suitable）、備註（remark）與各項預設旗標。照顧服務員身分證字號 1（svc_user_no1）依規格書表 1 為必填，於 AA00 應帶入 A 個管之身分證字號，以 careTeam.sequence = 1 之 careTeam 呈現。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-ltc-claim-feeapply-c-code-example.html"
      }],
      "reference" : {
        "reference" : "Claim/ltc-claim-feeapply-c-code-example"
      },
      "name" : "長照支付審查－C 碼專業服務紀錄申報範例",
      "description" : "C 單位（專業服務提供單位）向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 CA03（ADLs 復能照護－居家）。本範例示範規格書中申報 C 碼時填寫之五個專業服務欄位：專業服務復能目標達成情形（svcc_goal_type）、專業服務復能目標（svcc_goal）、專業服務指導對象（svcc_content_target）、專業服務服務內容（svcc_content）與專業服務指導建議摘要（svcc_suggest）。依規格書表 1，申報 C 碼時照顧服務員身分證字號 1（svc_user_no1）、數量與起訖時段為必填，服務項目（svc_item）、服務對象（svc_people）與服務內容（svc_content）則不填寫。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-ltc-location-feeapply-home-example.html"
      }],
      "reference" : {
        "reference" : "Location/ltc-location-feeapply-home-example"
      },
      "name" : "長照支付審查－交通接送出發地（個案住家）範例",
      "description" : "服務記錄申報（FeeApply）DA01 交通接送之出發地範例，對應規格書欄位 addr1（出發地）「個案住家」，並以 Location.position 承載出發地緯度（addrlat1）與出發地經度（addrlng1）。地點類型為個案住所（PTRES）。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-ltc-location-feeapply-hospital-example.html"
      }],
      "reference" : {
        "reference" : "Location/ltc-location-feeapply-hospital-example"
      },
      "name" : "長照支付審查－交通接送目的地（亞東醫院）範例",
      "description" : "服務記錄申報（FeeApply）DA01 交通接送之目的地範例，對應規格書欄位 addr2（目的地）「亞東醫院」，並以 Location.position 承載目的地緯度（addrlat2）與目的地經度（addrlng2）。地點類型為醫院（HOSP），非個案住所。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCLocationFeeAuditPlace.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCLocationFeeAuditPlace"
      },
      "name" : "長照支付審查－交通接送起訖地",
      "description" : "此 Location 以衛生福利部支付審核系統的交通接送資料為基礎，用以表述個案接送的出發地、目的地及經緯度。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCClaimFeeApply.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCClaimFeeApply"
      },
      "name" : "長照支付審查－個案服務紀錄申報",
      "description" : "此 Claim 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一筆個案服務紀錄的申報內容。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-ltc-claim-feeapply-da01-example.html"
      }],
      "reference" : {
        "reference" : "Claim/ltc-claim-feeapply-da01-example"
      },
      "name" : "長照支付審查－個案服務紀錄申報（DA01 交通接送）範例",
      "description" : "服務記錄申報（FeeApply）之單筆個案服務紀錄範例，對應規格書 PAGE 14-15 範例電文之 case_svc_records[0]：服務紀錄識別碼（objid）00000000000000000006、個案身分證字號（idn）A123456789、服務日期（svc_dt）2019 年 1 月 5 日、照顧組合代碼（gov_item_cd）DA01 交通接送、服務類別（svc_fee_tp）補助、單價（price）430 元、數量（amount）1、服務時段 13:30 至 14:00、出發地（addr1）個案住家、目的地（addr2）亞東醫院、車號（car_no）1111-AA、駕駛員（driver）黃OO。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCClaimResponseFeeAudit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCClaimResponseFeeAudit"
      },
      "name" : "長照支付審查－分案審核明細",
      "description" : "此 ClaimResponse 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述一個核銷案號的審核結果。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCBundleFeeAuditResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCBundleFeeAuditResponse"
      },
      "name" : "長照支付審查－分案審核明細回覆打包",
      "description" : "此 Bundle 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述單一核銷案號的審核明細回覆結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-feeaudit-response-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-feeaudit-response-example"
      },
      "name" : "長照支付審查－分案審核明細回覆打包（Bundle）範例",
      "description" : "支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）回覆之 searchset Bundle 範例，收納核銷案號 201907C010163 之分案審核明細（ClaimResponse）一筆，以及該分案錯誤服務記錄之申報檢核結果（OperationOutcome）一筆。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCFeeAuditDetailModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCFeeAuditDetailModel"
      },
      "name" : "長照支付審查－分案審核明細邏輯模型",
      "description" : "此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-ltc-claimresponse-feeaudit-example.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/ltc-claimresponse-feeaudit-example"
      },
      "name" : "長照支付審查－分案審核明細（ClaimResponse）範例",
      "description" : "支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）之回覆明細範例。核銷案號 201907C010163、支審年月 201907、總表版次 006、版次時間 20190723154351，申請核銷金額 4500 元、核定金額 1596 元、政策鼓勵金額 400 元、核增 4000 元（因個案身分異動）、核減 500 元（因個案CMS等級異動）、分案暫付金額 17500 元；含審核通過服務記錄一筆（單價 400 元、自付額 85 元）與 A 碼加成資料一筆（AA05，單價 200 元），並示範八份總表與清冊下載路徑；分案層級統計值（服務記錄筆數 3、個案數 2、核定個案數 2、核定服務記錄數 1）、暫付申請狀態、分案已處理之單號與承辦人員則以 auditSummary Extension 承載。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCBundleFeeAuditStatus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCBundleFeeAuditStatus"
      },
      "name" : "長照支付審查－分案審核狀態回覆打包",
      "description" : "此 Bundle 以衛生福利部支付審核系統的服務單位各分案審核狀態查詢結果為基礎，用以表述申報交易與分案審核狀態的回覆結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-feeaudit-status-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-feeaudit-status-example"
      },
      "name" : "長照支付審查－分案審核狀態回覆打包範例",
      "description" : "(查詢A)服務單位各分案審核狀態查詢（……/appResultQuery，query_type = A）之回覆打包範例。以 searchset 型態彙整支審年月 201901 各交易單之 API 執行結果（webapi_process_info），包含服務記錄申報（FeeApply）、申報確認通知（appCompletionNotice，依縣市拆為兩筆）、服務紀錄刪除（ObjDel）、服務單位撤回（appCancel）與取消交易單處理結果回報（CancelResultResponse）共六筆交易任務，並一併回傳分案異常資料（exception_records）與服務紀錄刪除失敗資料（delete_exception_records）之錯誤訊息（search.mode = outcome，不計入 total）。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditStatus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCFeeAuditStatusModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCFeeAuditStatusModel"
      },
      "name" : "長照支付審查－分案審核狀態與交易處理結果邏輯模型",
      "description" : "此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary"
      },
      "name" : "長照支付審查－分案審核統計與承辦資訊",
      "description" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ltc-operationoutcome-feeaudit-exception-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-exception-example"
      },
      "name" : "長照支付審查－分案異常資料範例",
      "description" : "(查詢A)服務單位各分案審核狀態查詢回覆之分案異常資料（exception_records）範例。展示服務紀錄識別碼 19260121 因錯誤碼 E4015 而分案失敗之錯誤訊息，該筆服務紀錄可修改後重新上傳至支審系統。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-cancel-result-response-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-cancel-result-response-example"
      },
      "name" : "長照支付審查－取消交易單處理結果回報交易任務範例",
      "description" : "取消交易單處理結果回報（CancelResultResponse）之交易任務範例。服務單位以本作業取消 (查詢A)服務單位各分案審核狀態查詢之 API 執行結果資料中，某一交易單的處理結果回報。本範例以本次作業之交易序號（trans_no）CR001 為 groupIdentifier，並以 input[cancelTransNo] 承載所要取消結果回報之交易序號 TranQ00083，同時以 partOf 參照該原交易單之 Task（ltc-task-feeapply-example）。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-cancel-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-cancel-example"
      },
      "name" : "長照支付審查－服務單位撤回交易任務範例",
      "description" : "服務單位撤回（appCancel）之交易任務範例。傳入縣市代碼與核銷案號時，表示將指定核銷案號該來源系統別所申報之服務記錄撤回；未傳入者則將該服務單位本月該來源系統別所申報之服務記錄一併撤回。若承辦人已收件處理，則不允許執行撤回。本範例對應規格書傳送資料範例 2，並以 output 記錄「服務紀錄撤回完成!」之批次處理結果。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-objdel-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-objdel-example"
      },
      "name" : "長照支付審查－服務紀錄刪除交易任務範例",
      "description" : "服務紀錄刪除（ObjDel）之交易任務範例。刪除該系統商指定識別碼（objid）之服務紀錄；若該服務紀錄之案件已執行申報確認通知，則不允許刪除。本範例以 input 承載所要刪除之服務紀錄識別碼，並以 output 呈現批次處理 6 筆、成功 4 筆、失敗 2 筆之結果，包含刪除成功資料（delete_records）之識別碼清單，以及刪除失敗資料（delete_exception_records）所參照之錯誤訊息（錯誤碼 E4032）。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ltc-operationoutcome-feeaudit-objdel-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-objdel-example"
      },
      "name" : "長照支付審查－服務紀錄刪除失敗資料範例（一）",
      "description" : "服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 123456789 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ltc-operationoutcome-feeaudit-objdel-2-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-objdel-2-example"
      },
      "name" : "長照支付審查－服務紀錄刪除失敗資料範例（二）",
      "description" : "服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 987654321 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-feeapply-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-feeapply-example"
      },
      "name" : "長照支付審查－服務記錄申報交易任務範例",
      "description" : "服務記錄申報（FeeApply）交易單之處理狀態範例。展示以 (查詢A)服務單位各分案審核狀態查詢所取得之交易單資訊：交易序號 TranQ00083、API 執行狀況為 4:處理完成、分案核銷狀況為 1:待通知收件，批次處理 3000 筆、成功 2999 筆、失敗 1 筆，並以 output 參照分案異常資料（exception_records）之錯誤訊息。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-ltc-bundle-feeapply-da01-example.html"
      }],
      "reference" : {
        "reference" : "Bundle/ltc-bundle-feeapply-da01-example"
      },
      "name" : "長照支付審查－服務記錄申報交易（DA01 交通接送）範例",
      "description" : "服務記錄申報（FeeApply）一次申報交易之打包範例，對應規格書 PAGE 14-15 範例電文：交易序號（trans_no）A0001、支審年月（writeoff_yyyymm）201901、服務紀錄筆數（records）1 筆、個案數（cases）1 位。Bundle 以 collection 型態收納該次申報之個案服務紀錄（Claim）、服務對象（Patient）、服務提供單位（Organization）、照顧服務員（Practitioner）及交通接送之出發地與目的地（Location）。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCBundleFeeApply.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCBundleFeeApply"
      },
      "name" : "長照支付審查－服務記錄申報文件打包",
      "description" : "此 Bundle 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一次申報交易的資料打包結構。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCFeeApplyModel.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCFeeApplyModel"
      },
      "name" : "長照支付審查－服務記錄申報邏輯模型",
      "description" : "此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-FeeAudit-RecordRef"
      },
      "name" : "長照支付審查－服務記錄識別資訊",
      "description" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
      },
      "name" : "長照支付審查－清冊文件下載路徑",
      "description" : "此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCTaskFeeAudit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCTaskFeeAudit"
      },
      "name" : "長照支付審查－申報交易任務",
      "description" : "此 Task 以衛生福利部支付審核系統的申報交易資料為基礎，用以表述申報確認、服務紀錄刪除、撤回與取消結果回報等任務及處理狀態。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTCOperationOutcomeFeeAudit.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTCOperationOutcomeFeeAudit"
      },
      "name" : "長照支付審查－申報檢核結果",
      "description" : "此 OperationOutcome 以衛生福利部支付審核系統的回覆資料為基礎，用以表述服務紀錄的檢核錯誤與申報處理結果。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ltc-operationoutcome-feeaudit-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-example"
      },
      "name" : "長照支付審查－申報檢核結果（OperationOutcome）範例",
      "description" : "支付審核系統回覆之服務紀錄檢核錯誤範例，對應核銷案號 201907C010163 之錯誤服務記錄（err_records），示範錯誤碼 E4015「單位已執行申報確認通知，不在受理新的服務紀錄申報」，錯誤服務記錄識別碼（objid）為 882601914，來源系統別 TranCareCenter、交易序號 00106。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-completion-notice-city2-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-completion-notice-city2-example"
      },
      "name" : "長照支付審查－申報確認通知交易任務範例（縣市 10020）",
      "description" : "申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第二個縣市）。以 input 承載縣市代碼 10020 及其下之兩筆案件編號（case_no：C12345678、D12345678）。本筆與 ltc-task-completion-notice-example 共用同一交易序號（trans_no = CN001），共同構成規格書範例中 city_info 之完整內容。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-ltc-task-completion-notice-example.html"
      }],
      "reference" : {
        "reference" : "Task/ltc-task-completion-notice-example"
      },
      "name" : "長照支付審查－申報確認通知交易任務範例（縣市 65000）",
      "description" : "申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第一個縣市）。服務單位確認服務紀錄無誤後執行本作業，以通知縣市承辦人員收件並審查服務紀錄；執行後支審系統不再受理服務紀錄申報及異動。本範例以 input 承載縣市代碼 65000 及其下之兩筆案件編號（case_no：A12345678、B12345678），並以 output 記錄「申報確認通知完成!」之批次處理結果。同一次作業之另一個縣市（10020）另見 ltc-task-completion-notice-city2-example。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-ltc-organization-feeaudit-authority-example.html"
      }],
      "reference" : {
        "reference" : "Organization/ltc-organization-feeaudit-authority-example"
      },
      "name" : "長照支付審查－縣市主管機關（Organization）範例",
      "description" : "受理「(查詢B)分案審核明細查詢」該分案之縣市主管機關範例，對應規格書縣市代碼（city_cd）65000 新北市，供 LTCClaimResponseFeeAudit 之 insurer 元素參照。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-EpisodeOfCare-CS100.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-EpisodeOfCare-CS100"
      },
      "name" : "長照案件（CS100 專用版）",
      "description" : "對應衛生福利部照顧服務管理資訊平臺『CS100 個案總查詢』之案件列資料。\n作為 CS100 匯出資料列的病例/案件載體，提供個案管理之基礎欄位（案件編號、狀態、期間、主責機構、個管等）。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtPatientEducationStatus-TWLTC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtPatientEducationStatus-TWLTC"
      },
      "name" : "長照機構住民教育程度",
      "description" : "此 Extension 用以表述長照機構住民的教育程度。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ExtPatientEconomyStatus-TWLTC.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ExtPatientEconomyStatus-TWLTC"
      },
      "name" : "長照機構住民經濟狀況",
      "description" : "此 Extension 用以表述長照機構住民的經濟狀況。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-ltc-servicerequest-referral-example.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/ltc-servicerequest-referral-example"
      },
      "name" : "長照轉介服務請求範例",
      "description" : "展示醫療院所向長照機構發送轉介服務請求的範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCServiceRequest"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Practitioner-ltc-practitioner-example.html"
      }],
      "reference" : {
        "reference" : "Practitioner/ltc-practitioner-example"
      },
      "name" : "長照醫事人員範例",
      "description" : "一個執行長照服務和運動處方的醫事人員範例",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LTC-CoverageEligibilityResponse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LTC-CoverageEligibilityResponse"
      },
      "name" : "長照－核定額度（CoverageEligibilityResponse）",
      "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CoverageEligibilityResponse Resource，以呈現長照各服務別之核定額度摘要，包含總額、補助金額、自付額及比率等資料。",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-ltc-claimresponse-export-example.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/ltc-claimresponse-export-example"
      },
      "name" : "長照－照管全量匯出審核結果（ClaimResponse）範例",
      "description" : "長照照管全量匯出之審核結果與檢核錯誤資訊範例，展示如何使用 LTCClaimResponseExport Profile。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-ClaimResponse-Export"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-ltc-claim-export-dispatch-example.html"
      }],
      "reference" : {
        "reference" : "Claim/ltc-claim-export-dispatch-example"
      },
      "name" : "長照－照管可提供服務（Claim）範例",
      "description" : "長照 SDK 照管CASE可提供服務的範例，展示如何使用 Claim 資源記錄個案可提供的服務項目。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-ltc-claim-export-example.html"
      }],
      "reference" : {
        "reference" : "Claim/ltc-claim-export-example"
      },
      "name" : "長照－照管計畫與金額（Claim）範例",
      "description" : "長照 SDK 照管PLAN計畫與金額的範例，展示如何使用 Claim 資源記錄長照服務計畫與費用。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Communication-ltc-communication-servicea-example.html"
      }],
      "reference" : {
        "reference" : "Communication/ltc-communication-servicea-example"
      },
      "name" : "長照－照管電訪活動（Communication）範例",
      "description" : "長照 SDK 照管SERVICE_A電訪的範例，展示如何記錄照顧管理服務活動。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationOutcome"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "OperationOutcome-ltc-operationoutcome-check-example.html"
      }],
      "reference" : {
        "reference" : "OperationOutcome/ltc-operationoutcome-check-example"
      },
      "name" : "長照－跨月檢核（OperationOutcome）範例",
      "description" : "長照 SDK 照管QP_O跨月檢核的範例，展示如何使用 OperationOutcome 資源記錄跨月金額檢核結果。",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-OperationOutcome-Check"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-RelationshipTypeCS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/RelationshipTypeCS-TWLTC"
      },
      "name" : "關係類型擴展代碼",
      "description" : "關係人與個案的關係類型擴展代碼，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-RelationshipTypeVS-TWLTC.html"
      }],
      "reference" : {
        "reference" : "ValueSet/RelationshipTypeVS-TWLTC"
      },
      "name" : "關係類型擴展值集",
      "description" : "關係人與個案的關係類型擴展代碼值集，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-need-assistance-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-need-assistance-example"
      },
      "name" : "需要照護協助狀況範例",
      "description" : "個案需要長期照護協助的狀況範例，用於轉介Bundle中",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionNeed"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-skeletal-muscle-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-skeletal-muscle-mass-example"
      },
      "name" : "骨骼肌重測量範例",
      "description" : "一個骨骼肌重測量的範例，展示如何使用 PASportObservationSkeletalMuscleMass Profile 來記錄肌肉量變化",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSkeletalMuscleMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-body-age-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-body-age-example"
      },
      "name" : "體內年齡測量範例",
      "description" : "一個體內年齡測量的範例，展示如何使用 PASportObservationBodyAge Profile 來記錄體內年齡資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyAge"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-body-temperature-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-body-temperature-example"
      },
      "name" : "體溫測量範例",
      "description" : "一個體溫測量的範例，展示如何使用 PASportObservationBodyTemperature Profile 來記錄體溫資料",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-body-fat-percentage-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-body-fat-percentage-example"
      },
      "name" : "體脂率測量範例",
      "description" : "一個體脂率測量的範例，展示如何使用 PASportObservationBodyFatPercentage Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyFatPercentage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-body-fat-mass-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-body-fat-mass-example"
      },
      "name" : "體脂肪重測量範例",
      "description" : "一個體脂肪重測量的範例，展示如何使用 PASportObservationBodyFatMass Profile 來記錄身體組成分析",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyFatMass"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pasport-observation-weight-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pasport-observation-weight-example"
      },
      "name" : "體重量測範例",
      "description" : "一個體重量測的範例，展示如何使用 PASportObservationWeight Profile 來記錄運動計畫中的體重監測",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeight"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-ltc-condition-tube-nasogastric-example.html"
      }],
      "reference" : {
        "reference" : "Condition/ltc-condition-tube-nasogastric-example"
      },
      "name" : "鼻胃管管路狀況範例",
      "description" : "一個鼻胃管的管路狀況範例，展示如何使用 LTCConditionTube Profile",
      "exampleCanonical" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "connectathon.html"
        }],
        "nameUrl" : "connectathon.html",
        "title" : "Connectathon",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "connectathon-result.html"
        }],
        "nameUrl" : "connectathon-result.html",
        "title" : "Connectathon Result",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "connectathon-table.html"
        }],
        "nameUrl" : "connectathon-table.html",
        "title" : "Connectathon Table",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "fee-audit.html"
        }],
        "nameUrl" : "fee-audit.html",
        "title" : "Fee Audit",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "hah.html"
        }],
        "nameUrl" : "hah.html",
        "title" : "Hah",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "hah-mapping.html"
        }],
        "nameUrl" : "hah-mapping.html",
        "title" : "Hah Mapping",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "home-nursing.html"
        }],
        "nameUrl" : "home-nursing.html",
        "title" : "Home Nursing",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "home-nursing-mapping.html"
        }],
        "nameUrl" : "home-nursing-mapping.html",
        "title" : "Home Nursing Mapping",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-tw.iii.ltc.html"
        }],
        "nameUrl" : "ImplementationGuide-tw.iii.ltc.html",
        "title" : "Implementation Guide Tw Iii Ltc",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles-and-extensions.html"
        }],
        "nameUrl" : "profiles-and-extensions.html",
        "title" : "Profiles and Extensions",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "searchparameters-and-operation.html"
        }],
        "nameUrl" : "searchparameters-and-operation.html",
        "title" : "Searchparameters and Operation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security.html"
        }],
        "nameUrl" : "security.html",
        "title" : "Security",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "terminologies.html"
        }],
        "nameUrl" : "terminologies.html",
        "title" : "Terminologies",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "track0.html"
        }],
        "nameUrl" : "track0.html",
        "title" : "Track 0",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "track1.html"
        }],
        "nameUrl" : "track1.html",
        "title" : "Track 1",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "track2.html"
        }],
        "nameUrl" : "track2.html",
        "title" : "Track 2",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "track3.html"
        }],
        "nameUrl" : "track3.html",
        "title" : "Track 3",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "track4.html"
        }],
        "nameUrl" : "track4.html",
        "title" : "Track 4",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "validates.html"
        }],
        "nameUrl" : "validates.html",
        "title" : "Validates",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
