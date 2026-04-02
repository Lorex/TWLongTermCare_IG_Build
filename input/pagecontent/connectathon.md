### 賽道資訊 (Information)

聯測年度與名稱：2025 年度臺灣醫學資訊聯測松 (MI-TW Connectathon 2025)

賽道：#?? 牙醫通用資料與牙周病賽道 (General Data and Periodontal Disease Track)

### 賽道簡介 (Summary)

牙醫通用資料是一套完整的口腔健康照護資訊系統，包含了使用者的口腔健康狀況、治療計畫、診療過程以及相關醫療數據的記錄。這些資料不僅協助牙醫師和護理人員提供更優質的照護服務，也能幫助機構進行行政管理和數據分析。然而，目前台灣各牙醫機構使用的資料格式缺乏一致性和標準化，造成不同系統之間的資料整合與管理上的困難。

金屬工業研究發展中心於今年(2024)推動產學研合作研究計畫 - "Smile Guard智慧口腔平台系統建置及FHIR規範導入"，與國內各大牙醫機構及資通訊服務供應商合作，致力於建立統一的口腔健康資料交換標準。本工作小組配合此計畫，在本次聯測中新增長期照護相關情境主題，以機構式照護服務為基礎，建立牙醫FHIR互通標準，未來將逐步擴展至社區式及居家式照護服務，實現牙醫資料的全面性整合。

### 應用情境 (Scenarios)

- Scenario 0：OAuth2 Access Token 存取認證（與大會 OAuth 動態 Token 驗證整合）
- Scenario 1：牙醫基本資料管理
- Scenario 2：牙醫治療計畫管理
- Scenario 3：牙醫診療記錄管理
- Scenario 4：牙醫用藥管理
- Scenario 5：牙醫檢驗檢查管理

### 效益 (Benefits)

本計畫旨在建立台灣牙醫服務產業的標準化資料交換架構，主要目標包括：

1. 建立統一的口腔健康資料交換標準
2. 促進牙醫機構間的系統整合與資料互通
3. 提升牙醫照護服務的品質與效率
4. 支援行政管理和數據分析需求

透過 FHIR 標準化的資料格式，我們定義了完整的牙醫機構作業流程資訊欄位與交易模式，為台灣牙醫服務產業提供標準化的參考依據。本標準整合 TW Core IG 台灣核心規範，確保醫院資訊系統、牙醫系統供應商及牙醫機構端平台能夠順利進行系統整合與資料交換。

### 詳細資訊 (Details)

#### 應用情境與對應 Profile

| 情境編號 | 情境名稱 | Profile |
|---------|---------|---------|
| Scenario 0 | OAuth2 Access Token 存取認證 | 無 Profile，請依照大會 OAuth 動態 Token 驗證整合 |
| Scenario 1 | 牙醫基本資料管理 | `DentalPatient` |
| Scenario 2 | 牙醫治療計畫管理 | `DentalCarePlan` |
| Scenario 3 | 牙醫診療記錄管理 | `DentalEncounter` |
| Scenario 4 | 牙醫用藥管理 | `DentalMedication` |
| Scenario 5 | 牙醫檢驗檢查管理 | `DentalObservation` |

### 涉及系統 (Systems Affected)

本規範涵蓋以下系統：

1. 牙醫診所管理系統
   - 處理日常診療作業
   - 管理病患資料與治療記錄
   - 整合用藥與檢驗檢查資料

2. 牙醫機構資訊系統
   - 管理機構營運資料
   - 處理行政與財務資訊
   - 整合多個診所的資料

3. 牙醫科技服務提供商
   - 提供技術支援與系統整合服務
   - 開發符合標準的解決方案
   - 維護系統安全性與穩定性

4. 牙醫資料交換中心
   - 管理跨機構的資料交換
   - 確保資料安全與隱私保護
   - 提供資料分析與統計服務

### 規格 (Specification)

#### 角色定義 (Actors)

| 角色代碼 | 角色名稱 | 角色描述 |
|---------|---------|---------|
| DENTAL_MANAGEMENT | Dental Management | 負責牙醫資料的維護與管理 |
| DENTAL_CONSUMER | Dental Consumer | 負責牙醫資料的查詢與使用 |
| DENTAL_REPOSITORY | Dental Repository | 負責牙醫服務資料的儲存與管理 |

#### 交易定義 (Transactions)

| 交易編號 | 交易名稱 | 交易描述 |
|---------|---------|---------|
| MITW-1 | Patient Management | 病人基本資料維護 |
| MITW-2 | Query/Retrieve Patient | 查詢與調閱病人基本資料 |
| MITW-3 | CarePlan Management | 治療計畫管理 |
| MITW-4 | Query/Retrieve CarePlan | 查詢與調閱治療計畫 |
| MITW-5 | Encounter Management | 診療記錄管理 |
| MITW-6 | Query/Retrieve Encounter | 查詢與調閱診療記錄 |
| MITW-7 | Medication Management | 用藥管理 |
| MITW-8 | Query/Retrieve Medication | 查詢與調閱用藥記錄 |
| MITW-9 | Observation Management | 檢驗檢查管理 |
| MITW-10 | Query/Retrieve Observation | 查詢與調閱檢驗檢查記錄 |