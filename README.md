# 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide)

本文件為「臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide, TW LTC IG)」的官方說明文件。

## 1. 專案概述

本專案是基於 HL7 FHIR R4 標準的實作指南，旨在為臺灣的長期照顧資訊交換定義一套標準化的資料結構、擴充功能與術語，以促進長照生態系中不同資訊系統（如 EHR）之間的互通性。

- **專案 ID**: `fhir.twltc`
- **正式 URL**: `http://ltc-ig.fhir.tw`
- **FHIR 版本**: 4.0.1
- **核心依賴**: `tw.gov.mohw.twcore: 0.3.2` (臺灣核心實作指引)
- **發布者**: MI-TW (臺灣醫學資訊聯測松)

## 2. 核心應用場景

本 IG 旨在支援臺灣長照領域的核心業務流程，主要涵蓋以下場景：

1.  **照護管理評估 (CMS - Care Management Scale)**:
    -   使用 `LTCBundleCMS` 打包，包含 ADL, IADL, 溝通, 記憶力, 社會參與等多維度評估量表，以及照顧者負荷與支持需求評估。

2.  **長期照顧服務轉介 (Referral)**:
    -   使用 `LTCBundleReferral` 打包轉介單，內容涵蓋轉介原因、個案居住環境、管路使用狀況等，支援機構間的個案轉介。

3.  **長照用藥管理 (Medication Management)**:
    -   使用 `LTCMedicationAdministration` 標準化記錄藥物給藥資訊。

4.  **生理量測管理 (Vital Signs & Observations)**:
    -   使用 `LTCObservationVitalSigns` 記錄生命徵象，並擴充支援 `LTCObservationFallingHistory` (跌倒紀錄) 等。

5.  **身體活動與運動處方 (Sports Expansion)**:
    -   支援身體組成分析 (體脂率、BMI)、步態分析及運動訓練處方等記錄。

## 3. 專案結構

專案遵循標準的 Sushi 工具鏈目錄結構：

```
TWLongTermCare_IG_Build/
├── input/
│   ├── fsh/                    # FSH 原始碼檔案 (核心開發目錄)
│   │   ├── aliases.fsh         # FHIR URI 別名定義
│   │   ├── codesystems/        # 本地代碼系統 (CodeSystem)
│   │   ├── extensions/         # 擴充 (Extension) 定義
│   │   ├── profiles/           # Profile 定義
│   │   └── valuesets/          # 值集 (ValueSet) 定義
│   ├── pagecontent/            # IG 靜態網頁內容 (Markdown)
│   └── includes/               # 網頁模板片段 (menu.xml 等)
├── docs/                       # 編譯後產生的靜態網頁 (不應手動修改)
├── sushi-config.yaml           # Sushi 主要設定檔
├── package-list.json           # IG 版本歷史清單
└── _genonce.sh / _genonce.bat  # IG 建置腳本
```

## 4. 主要資源與 Profile

本 IG 定義了多種 Profile 來滿足上述應用場景，關鍵資源包括：

-   **文件打包 (Bundle & Composition)**:
    -   `LTCBundleCMS`, `LTCBundleReferral`
    -   `LTCCompositionCMS`, `LTCCompositionReferral`
-   **個案資料 (Patient)**:
    -   `LTCPatient`, `LTCPatientCMS`, `LTCPatientReferral`
    -   擴充了**個案身分別**、**經濟狀況**、**教育程度**等在地化欄位。
-   **評估量表 (Questionnaire & Response)**:
    -   涵蓋 ADL, IADL, SOF, CDR, MMSE, 照顧者負荷等多種評估問卷。
-   **健康狀況 (Condition)**:
    -   `LTCConditionDisability` (身心障礙狀況), `LTCConditionCrush` (壓傷), `LTCConditionTube` (管路使用) 等。
-   **觀察數據 (Observation)**:
    -   `LTCObservationVitalSigns` (生命徵象), `LTCObservationFallingHistory` (跌倒紀錄)。
-   **照護計畫 (CarePlan & CareTeam)**:
    -   `LTCCarePlan`, `LTCCareTeam`, `LTCGoal`。

## 5. 主要擴充 (Key Extensions)

- `ExtPatientEconomyStatus-TWLTC`: 長照機構住民經濟狀況
- `ExtPatientEducationStatus-TWLTC`: 長照機構住民教育程度
- `ExtPatientIdentity-TWLTC`: 個案身分別
- `ExtRelatedPersonIsPrimary-TWLTC`: 是否為主要照顧者
- `cdr-total-score`: CDR 總分
- `mmse-total-score`: MMSE 總分

## 6. 術語 (Terminology)

本 IG 定義了豐富的在地化術語，以滿足台灣長照場景的需求。

### CodeSystems (代碼系統)
- `AddressUseCS-TWLTC`: 地址用途擴展
- `ConditionDisabilityCS-TWLTC`: 身心障礙手冊持有狀態
- `ConditionDisabilityTypeCS-TWLTC`: 身心障礙類型 (新制)
- `ConditionDisabilityLegacyTypeCS-TWLTC`: 身心障礙類型 (舊制)
- `EconomyStatusCS-TWLTC`: 經濟狀況
- `EducationStatusCS-TWLTC`: 教育程度
- `PatientIdentityCS-TWLTC`: 個案身分別
- `ReferralCarePlanCS-TWLTC`: 轉介單申請服務種類
- `ReferralConditionCaregiverCS-TWLTC`: 看護狀況
- `ReferralConditionCrushCS-TWLTC`: 壓傷狀況
- `ReferralConditionResidenceCS-TWLTC`: 居住狀況
- `ReferralConditionTubeCS-TWLTC`: 管路狀況
- `RelationshipTypeCS-TWLTC`: 關係類型擴展
- `GaitCycleCS-Sport`: 步態週期
- `SportTrainingCS-Sport`: 重量訓練
- `TempCodeCS-Sport`: 身體活動量測暫用代碼

### ValueSets (值集)
本 IG 包含了對應上述 CodeSystems 的 ValueSets，並擴充引用了 TW Core 及國際標準 (如 SNOMED CT, LOINC)。

## 7. 開發與建置流程

### 環境設定
1.  **安裝 Node.js**: 建議 v14.x 或更高版本。
2.  **安裝 SUSHI**:
    ```bash
    npm install -g fsh-sushi
    ```
3.  **下載 IG Publisher**:
    -   執行 `./_updatePublisher.sh` (Linux/macOS) 或 `_updatePublisher.bat` (Windows) 來下載最新的發布工具 (`publisher.jar`)。

### 開發流程
1.  **編輯 FSH**: 在 `input/fsh/` 目錄下對 Profile, Extension, ValueSet 等進行修改或新增。
2.  **FSH 開發規範**:
    -   **命名**: 建議採用 `profile_[資源類型]_[用途].fsh` 格式。
    -   **別名**: 外部參照應優先在 `aliases.fsh` 中定義別名。
    -   **繼承**: Profile 應優先繼承自 TW Core Profile。
3.  **建置 IG**:
    -   **單次建置**: 執行 `./_genonce.sh` 或 `./_genonce.bat`。此命令會呼叫 Sushi 編譯 FSH，然後執行 IG Publisher 產生完整的網頁文件至 `docs/` 目錄。
    -   **持續建置**: 執行 `./_gencontinuous.sh` 或 `./_gencontinuous.bat` 來監控檔案變更並自動重新建置。

### 測試與驗證
-   為每個 Profile 在 `input/fsh/examples/` 中提供至少一個有效的範例。
-   注意建置過程中 IG Publisher 產生的警告訊息，可使用 `input/ignoreWarnings.txt` 忽略已知的無害警告。

## 8. 聯測資訊 (Connectathon)

本 IG 積極參與 **MI-TW 臺灣醫學資訊聯測松**，以驗證與推廣標準的實用性。

- **2025 專案聯測松**:
  - **賽道 0: OAuth2 存取認證**: 所有參測系統皆須通過。
  - **賽道 1: 日間照護服務資料交換**: 生理量測、照護活動、用藥紀錄。
  - **賽道 2: 失智症照護監測**: MMSE/CDR 評估、位置追蹤、異常事件警報。
  - **賽道 3: 機構間轉銜服務**: CMS 評估量表、轉介單、AA12 醫師意見書。
  - **賽道 4: 長照 2.0 服務計畫與紀錄**: AA01 照顧計畫、AA02 服務紀錄。

詳細的賽道情境、角色定義與技術規格，請參考 IG 網站中的「2025 專案聯測松」相關頁面。
