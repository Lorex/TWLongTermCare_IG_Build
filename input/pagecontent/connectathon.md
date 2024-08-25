### 賽道資訊 (Information)

聯測年度與名稱：2024 年度臺灣醫學資訊聯測松 (MI-TW Connectathon 2024)

賽道：#11 長期照顧賽道 (Long-term Care Track)

### 賽道簡介 (Summary)

長期照護（長照）資料用於記錄長照使用者的照護計畫、照護過程與相關醫療數據，以協助護理與長照作業人員提供照護服務並協助機構行政管理與統計分析。 然而目前臺灣長照機構格式不一致且缺乏標準化，使得不同系統角色間難以管理與整合長照使用者之健康照護記錄。

經濟部產業發展署於今年 (2024) 推動銀光科技智慧照顧驗證推動計畫，整合國內長照機構與資通訊服務廠商，建立統一的資料交換標準，以促進長照資料的互通。 故本工作小組於本次聯測預計新增長期照護相關情境主題，預計機構式照護服務為主，發展長照 FHIR 互通標準，後續擴大應用至社區式照護服務、居家式照護服務等長照資料之全面性涵蓋。

### 應用情境 (Scenarios)

- Scenario 0：OAuth2 Access Token 存取認證（與大會 OAuth 動態 Token 驗證整合）
- Scenario 1：照護管理評估量表(CMS 量表)
- Scenario 2：長期照顧服務轉介
- Scenario 3：長照機構入住作業 **(注意：今年本情境取消。)**
- Scenario 4：長照用藥管理作業
- Scenario 5：長照生理量測管理作業
- Scenario 6：照護計畫管理作業 **(注意：今年本情境取消。)**

### 效益 (Benefits)

以經濟部產業發展署銀光科技智慧照顧驗證推動計畫為基礎，將住宿型機構常照服務的資訊處理流程初步規劃， 並設計以 FHIR 標準呈現長照機構作業流程中的資訊欄位與資訊交易，提供台灣產業發展長照服務時的資料標準化參考依據。

本標準參考美國 eLTSS 長照規範，並繼承自 TW Core IG 台灣核心規範，可提供與醫院相關資訊系統、廠商相關長照系統與長照機構端的相關平台進行實作與界接，促進醫療端到長照端的互通性整合。

### 詳細資訊 (Details)
以下為各應用情境與對應的 Profile：

- Scenario 0 OAuth2 Access Token 存取認證: `無 Profile，請依照大會 OAuth 動態 Token 驗證整合`
- Scenario 1 照護管理評估量表(CMS 量表): `LTCBundleCMS`
- Scenario 2 長期照顧服務轉介: `LTCBundleReferral`
- Scenario 4 長照用藥管理作業: `LTCMedicationAdministration`
- Scenario 5 長照生理量測管理作業: `LTCObservationVitalSigns`

### 涉及系統 (Systems Affected)

本規範涉及的系統有：
- 長照個管系統（照護協調端）
- 長照機構資訊系統（長照機構端）
- 長照科技服務提供商
- 長照資料交換中心

### 規格 (Specification)
#### 角色 (Actors)
台灣長期照護(LTC)角色整理

Keyword	| 名稱 | 描述
--- | --- | ---
LTC_MANAGEMENT |	LTC Management |	長照資料維護端
LTC_CONSUMER |	LTC Consumer |	長照資料需求端
LTC_REPOSITORY |	LTC Repository |	長照服務儲存庫

#### 交易 (Transactions)
台灣長期照護(LTC)交易整理

編號 |	名稱 |	描述
--- | --- | ---
MITW-1 |	Patient Management |	住民基本資料維護
MITW-2 |	Query/Retrieve Patient |	查詢與調閱住民基本資料
MITW-81 |	Create CMS Form |	產生照護管理評估量表
MITW-82 |	Query/Retrieve CMS Form |	查詢與調閱照護管理評估量表
MITW-83 |	Create Referral Form |	產生轉介資料
MITW-84 |	Query/Retrieve Referral Form |	查詢轉介資料
MITW-85 |	Create Observation |	新增檢驗檢查
MITW-86 |	Query/Retrieve Observation |	查詢與調閱檢驗檢查
MITW-87 | Create MedicationAdministration |	新增用藥紀錄資料
MITW-88 |	Query/Retrieve MedicationAdministration |	查詢與調閱用藥紀錄資料