# 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) 開發文檔

## 專案概述

本專案是「臺灣長期照顧實作指引（Taiwan Long-Term Care Implementation Guide，簡稱 TW LTC IG）」的 FHIR 實作指引專案。該專案使用 HL7 FHIR® R4.0.1 標準，並採用 FSH（FHIR Shorthand）和 SUSHI 工具來建置。

### 專案基本資訊
- **專案名稱**: Taiwan Long-Term Care Implementation Guide
- **專案 ID**: fhir.twltc
- **正式 URL**: http://ltc-ig.fhir.tw
- **版本**: 0.3.0
- **狀態**: active
- **發布者**: 楊宇凡 (ceo@sita.tech)
- **FHIR 版本**: 4.0.1

### 依賴關係
- **TW Core IG**: 0.3.2 - 臺灣核心實作指引，提供基礎的 FHIR Profile 定義

## 應用情境

本 IG 主要應用於台灣長期照護領域，支援以下核心業務場景：

### 1. 照護管理評估 (CMS - Care Management Scale)
- 使用 `LTCBundleCMS` 打包完整的照護管理評估資料
- 包含多種評估量表：ADL、IADL、溝通能力、記憶力、心理狀況、社會參與等
- 支援照顧者負荷評估和支持需求評估

### 2. 長期照顧服務轉介
- 使用 `LTCBundleReferral` 打包轉介單資料
- 包含轉介原因、照顧者狀況、居住環境、管路使用等資訊
- 支援機構間的個案轉介作業

### 3. 長照用藥管理
- 使用 `LTCMedicationAdministration` 記錄用藥資訊
- 支援藥物給藥紀錄的標準化記錄

### 4. 生理量測管理
- 使用 `LTCObservationVitalSigns` 記錄生命徵象
- 支援血壓、心率、體溫等基本生理數據
- 擴展支援跌倒紀錄評估

### 5. 身體活動與運動處方（Sports 擴充）
- 支援身體組成分析（體脂率、BMI、肌肉量等）
- 步態分析與步態週期記錄
- 運動訓練處方與運動歷史記錄

## 專案結構

```
TWLongTermCare_IG_Build/
├── input/
│   ├── fsh/                    # FSH 源碼檔案
│   │   ├── aliases.fsh         # FHIR 別名定義
│   │   ├── codesystems/        # 代碼系統定義
│   │   ├── extensions/         # 擴充定義
│   │   ├── profiles/           # Profile 定義
│   │   └── valuesets/          # 值集定義
│   ├── pagecontent/            # IG 網頁內容
│   ├── images/                 # 圖片資源
│   └── includes/               # 網頁模板片段
├── docs/                       # 編譯後的靜態網頁（可忽略）
├── sushi-config.yaml          # SUSHI 配置檔
├── ig.ini                     # IG Publisher 配置
└── package-list.json          # 版本歷史記錄
```

## 主要資源類型 (Resources)

### 1. 住民/個案資料 (Patient)
- `LTCPatient`: 基本住民資料
- `LTCPatientCMS`: 照顧管理評估住民資料
- `LTCPatientReferral`: 轉介單住民資料

#### 擴充欄位：
- 個案身分別（一般戶、低收入戶、榮民、原住民等）
- 經濟狀況（貧寒、勉持、小康、中產、富裕）
- 教育程度（不識字、國小、國中、高中、大學等）

### 2. 文件打包與架構 (Bundle & Composition)
- `LTCBundleCMS`: CMS 評估文件打包
- `LTCBundleReferral`: 轉介單文件打包
- `LTCCompositionCMS`: CMS 評估文件架構
- `LTCCompositionReferral`: 轉介單文件架構

### 3. 評估量表 (Questionnaire & QuestionnaireResponse)
#### CMS 評估量表：
- ADL 日常生活活動能力評估
- IADL 工具性日常生活活動能力評估
- 溝通能力評估
- 記憶力評估
- 心理狀況評估
- 社會參與評估
- 特殊照護需求評估
- 照顧者負荷評估
- 照顧者支持需求評估

#### 轉介評估量表：
- ADL 評估（轉介版）
- IADL 評估（轉介版）
- 照顧者評估
- SOF 評估

### 4. 健康狀況 (Condition)
- `LTCCondition`: 基本健康狀況
- `LTCConditionDisability`: 身心障礙狀況
- `LTCConditionDisabilityType`: 身心障礙類別
- `LTCConditionCaregiver`: 照顧者相關狀況
- `LTCConditionCrush`: 壓傷狀況
- `LTCConditionResidence`: 居住狀況
- `LTCConditionTube`: 管路使用狀況

### 5. 觀察數據 (Observation)
- `LTCObservationVitalSigns`: 生命徵象
- `LTCObservationFallingHistory`: 跌倒紀錄
- 身體組成分析系列（體脂率、BMI、骨質量等）
- 步態分析相關觀察

### 6. 照護團隊與計畫
- `LTCCarePlan`: 照護計畫
- `LTCCarePlanReferral`: 轉介照護計畫
- `LTCCareTeam`: 照護團隊
- `LTCGoal`: 照護目標

### 7. 醫療人員與機構
- `LTCOrganization`: 機構資料
- `LTCPractitioner`: 醫療人員
- `LTCPractitionerRole`: 醫療人員角色
- `LTCRelatedPerson`: 關係人（如照顧者）

## 代碼系統 (Code Systems)

### 基本資料相關
- `AddressUseCS-TWLTC`: 地址使用類型
- `PatientIdentityCS-TWLTC`: 個案身分別
- `EconomyStatusCS-TWLTC`: 經濟狀況
- `EducationStatusCS-TWLTC`: 教育程度
- `RelationshipTypeCS-TWLTC`: 關係類型

### 身心障礙相關
- `ConditionDisabilityCS-TWLTC`: 身心障礙手冊持有狀態
- `ConditionDisabilityTypeCS-TWLTC`: 身心障礙類別（新制）
- `ConditionDisabilityLegacyTypeCS-TWLTC`: 身心障礙類別（舊制）

### 轉介相關
- `ReferralCarePlanCS-TWLTC`: 轉介服務種類
- `ReferralConditionCaregiverCS-TWLTC`: 照顧者相關狀況
- `ReferralConditionCrushCS-TWLTC`: 壓傷相關狀況
- `ReferralConditionResidenceCS-TWLTC`: 居住狀況
- `ReferralConditionTubeCS-TWLTC`: 管路相關狀況

### 運動/身體活動相關
- `SportTrainingCS-Sports`: 運動訓練類型
- `GaitCycleCS-Sports`: 步態週期
- `ICD-10-PCS-2023-TW-F-CS`: ICD-10-PCS 台灣版本（F類）

## 開發指南

### 環境需求
1. **Node.js**: 建議使用 14.x 或更高版本
2. **SUSHI**: FSH 編譯工具
   ```bash
   npm install -g fsh-sushi
   ```
3. **IG Publisher**: FHIR IG 發布工具
   - 執行 `_updatePublisher.sh` 或 `_updatePublisher.bat` 下載最新版本

### 建置流程
1. **編譯 FSH 檔案**：
   ```bash
   sushi .
   ```
   這會將 FSH 檔案編譯成 FHIR JSON 資源

2. **產生 IG 網站**：
   ```bash
   ./_genonce.sh  # Linux/Mac
   ./_genonce.bat # Windows
   ```
   這會執行 IG Publisher 產生完整的實作指引網站

3. **持續建置模式**：
   ```bash
   ./_gencontinuous.sh  # Linux/Mac
   ./_gencontinuous.bat # Windows
   ```
   監控檔案變更並自動重新建置

### FSH 開發規範
1. **檔案命名**：
   - CodeSystem: `cs_[名稱].fsh`
   - ValueSet: `vs_[名稱].fsh`
   - Profile: `profile_[資源類型]_[用途].fsh`
   - Extension: `extension_[資源類型]_[名稱].fsh`

2. **別名使用**：
   - 所有外部參照都應在 `aliases.fsh` 中定義別名
   - 使用別名而非直接 URL 參照

3. **Profile 設計原則**：
   - 繼承自 TW Core Profile（如有）
   - 明確定義必填欄位（cardinality）
   - 提供中文顯示名稱（在適當處）
   - 綁定適當的值集

### 測試與驗證

1. **Profile 驗證**：
   - 使用 FHIR Validator 驗證資源實例
   - 確保符合定義的 Profile 規範

2. **範例資源**：
   - 為每個 Profile 提供至少一個有效範例
   - 範例應涵蓋主要使用情境

3. **IG 品質檢查**：
   - 執行建置時注意警告訊息
   - 使用 `ignoreWarnings.txt` 忽略已知的無害警告

## 版本管理

### 版本歷史
- **0.3.0** (2025-06-20): 升級至 TW Core IG 0.3.2，確保所有 Profiles 相容性
- **0.2.0** (2024-09-02): 新增跌倒紀錄、升級至 TW Core IG 0.3.0
- **0.1.1** (2024-09-02): 新增 Bundle、Composition、問卷相關資源
- **0.1.0** (2024-08-25): 初始版本，定義基本 Profile

### 版本策略
- 使用語意化版本號 (Semantic Versioning)
- 主版本：不向下相容的變更
- 次版本：新增功能但向下相容
- 修訂版本：錯誤修正

## 聯測與整合

### MI-TW 2024 聯測松
本 IG 參與 2024 年度臺灣醫學資訊聯測松，賽道 #11 長期照顧賽道。

#### 支援情境：
- Scenario 0: OAuth2 認證
- Scenario 1: 照護管理評估量表 (CMS)
- Scenario 2: 長期照顧服務轉介
- Scenario 4: 長照用藥管理
- Scenario 5: 長照生理量測管理

#### 系統角色：
- LTC_MANAGEMENT: 長照資料維護端
- LTC_CONSUMER: 長照資料需求端
- LTC_REPOSITORY: 長照服務儲存庫

## 重要注意事項

1. **編碼系統**：優先使用國際標準（SNOMED CT、LOINC、ICD-10），本土代碼作為補充
2. **隱私保護**：遵循台灣個人資料保護法規定
3. **資料最小化**：僅交換必要的健康資訊
4. **向下相容**：新版本應盡可能維持向下相容性

## TW Core 0.3.2 升級注意事項

### 升級後的相容性確認
1. **依賴版本更新**：
   - sushi-config.yaml 中的 tw.gov.mohw.twcore 已更新至 0.3.2
   - 所有 FSH 檔案中的 TW Core Profile 參照均使用別名，無需手動更新 URL

2. **Profile 相容性**：
   - 所有現有 LTC Profiles 均繼承自對應的 TW Core Profiles
   - SUSHI 編譯測試通過，無錯誤或警告
   - TW Core 0.3.2 主要更新了依賴套件版本，Profile 結構保持向下相容

3. **必填欄位確認**：
   - Patient Profile: identifier、gender、birthDate 保持必填
   - Bundle Document: identifier、timestamp、type 保持必填
   - 第一個 entry 必須是 Composition 的規則保持不變

4. **無需修改的項目**：
   - 現有的 CodeSystems 和 ValueSets 不受影響
   - Extensions 定義保持不變
   - 查詢參數和操作定義不需更新

## 聯絡資訊

- **專案維護者**: 楊宇凡 (ceo@sita.tech)
- **貢獻者**:
  - 李修安 (billy72325@gmail.com)
  - 李祥豪 (shvoidlee@gmail.com)
  - 黃薰慧 (beatrice@iii.org.tw)
- **組織**: MI-TW 臺灣醫學資訊聯測松

## 授權條款

本專案採用 Apache License 2.0 授權。詳見 LICENSE 檔案。