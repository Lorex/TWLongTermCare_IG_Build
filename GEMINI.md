# Gemini Code Assistant: 臺灣長期照顧實作指引 (TW LTC IG)
---
*This document combines automated analysis with provided context to serve as a comprehensive guide for developing the TW LTC IG project.*

## 1. 專案概述 (Project Overview)

本專案是「臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide, TW LTC IG)」，一份基於 HL7 FHIR R4 標準的實作指南。它使用 FHIR Shorthand (FSH) 作為主要的開發語言，並透過 Sushi 工具鏈進行建置。

其核心目標是為臺灣的長期照顧資訊交換定義一套標準化的資料結構 (Profiles)、擴充 (Extensions) 與術語 (Terminologies)，以促進長照生態系中不同資訊系統 (如 EHR) 之間的互通性。

- **專案 ID**: `fhir.twltc`
- **正式 URL (Canonical)**: `http://ltc-ig.fhir.tw`
- **FHIR 版本**: `4.0.1`
- **核心依賴**: `tw.gov.mohw.twcore: 0.3.2` (臺灣核心實作指引)
- **發布者**: MI-TW (臺灣醫學資訊聯測松)

## 2. 核心應用場景 (Core Application Scenarios)

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

## 3. 專案結構 (Project Structure)

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

## 4. 主要資源與 Profile (Key Resources & Profiles)

本 IG 定義了多種 Profile 來滿足上述應用場景，關鍵資源包括：

-   **文件打包 (Bundle & Composition)**:
    -   `LTCBundleCMS`, `LTCBundleReferral`
    -   `LTCCompositionCMS`, `LTCCompositionReferral`
-   **個案資料 (Patient)**:
    -   `LTCPatient`, `LTCPatientCMS`, `LTCPatientReferral`
    -   擴充了**個案身分別**、**經濟狀況**、**教育程度**等在地化欄位。
-   **評估量表 (Questionnaire & Response)**:
    -   涵蓋 ADL, IADL, SOF, 照顧者負荷等多種評估問卷。
-   **健康狀況 (Condition)**:
    -   `LTCConditionDisability` (身心障礙狀況), `LTCConditionCrush` (壓傷), `LTCConditionTube` (管路使用) 等。
-   **觀察數據 (Observation)**:
    -   `LTCObservationVitalSigns` (生命徵象), `LTCObservationFallingHistory` (跌倒紀錄)。
-   **照護計畫 (CarePlan & CareTeam)**:
    -   `LTCCarePlan`, `LTCCareTeam`, `LTCGoal`。

## 5. 開發與建置流程 (Development & Build Workflow)

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
-   為每個 Profile 在 `input/fsh/examples.fsh` 中提供至少一個有效的範例。
-   注意建置過程中 IG Publisher 產生的警告訊息，可使用 `ignoreWarnings.txt` 忽略已知的無害警告。

## 6. 聯測與版本管理 (Connectathon & Versioning)

-   **聯測**: 本 IG 參與 **MI-TW 2024 聯測松**，支援多個測試情境 (Scenario) 與系統角色 (System Roles)。
-   **版本策略**: 遵循語意化版本號 (Semantic Versioning)。歷史版本資訊記錄於 `package-list.json`。

## 7. 如何與我協作 (How to Collaborate with Me)

基於以上資訊，你可以對我下達具體的指令，例如：

-   **查詢定義**: "Show me the FSH for `LTCConditionDisability`." or "請告訴我 `ReferralConditionCrushCS-TWLTC` 這個 CodeSystem 包含哪些代碼？"
-   **新增內容**: "Create a new FSH file for an example of `LTCPatientReferral`." or "請幫我在 `vs_some_valueset.fsh` 中新增一個代碼。"
-   **執行建置**: "Run the build script to update the IG." or "請幫我執行 `_genonce.sh`。"
-   **修改程式碼**: "In `profile_patient_ltc.fsh`, change the cardinality of the `gender` element to 1..1."