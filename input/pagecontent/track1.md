## 賽道 1：日間照護服務

### 說明

日照中心每日需要進行個案的生理量測、活動參與、用藥狀況等資訊，並上傳到系統中，後續提供家屬或相關單位進行查詢。參測單位應依照上述需求分別實作相關功能，並提供應用系統以滿足資料交換需求。

### 檢核項目

- 參測單位應實作生理量測數據管理功能（情境 1）
- 參測單位應實作照護活動管理功能（情境 2）
- 參測單位應實作用藥紀錄管理功能（情境 3）

### 各系統角色於本賽道之作用

| Keyword | 名稱 | 說明 |
|---|---|---|
| LTC_MANAGEMENT | LTC Management System | 負責上傳生理量測數據、照護活動、用藥紀錄等資料至 LTC Repository。 |
| LTC_CONSUMER | LTC Consumer | 負責向 LTC Repository 查詢生理量測數據、照護活動、用藥紀錄等資料。 |
| LTC_REPOSITORY | LTC Repository | 負責提供資料交換與儲存功能，包括生理量測數據、照護活動、用藥紀錄等資料的交換、儲存與管理。 |

### 通過條件

- 參測單位 **必須** 通過情境 1、2、3 其中任一情境的所有要求項目，才算通過本賽道。

### 情境 (Scenarios)

| 情境 ID | 說明 
|---|---|
| SC1 | 生理量測數據管理 
| SC2 | 照護活動管理
| SC3 | 用藥紀錄管理 


#### 情境 1：生理量測數據管理

生理量測數據管理情境模擬日照中心個案的各項生理指標監測與資料管理流程。在此情境中，生理量測設備（如血壓計、血糖機、體溫計、血氧濃度計等）會定期或即時採集個案的生理數據，並透過標準化的資料交換機制上傳至日照中心管理系統。

本情境會使用到 Observation 資源，各系統角色應具備以下核心功能：

#### 資料儲存、管理功能（LTC_REPOSITORY 角色）

- 能夠接收來自各種生理量測設備的數據，包括但不限於血壓、血糖、體溫、血氧飽和度、心率等生理指標。
- 支援即時或批次上傳／查詢模式，確保資料傳輸的穩定性與完整性。
  - 必須支援以 POST 方式上傳資料。
  - 必須支援以 GET 方式查詢資料。
  - 必須支援以 PUT 方式更新／上傳資料。
  - 選擇性支援以 POST Bundle 方式上傳資料。
- 遵循 FHIR R4 Observation 資源格式，將生理量測數據儲存至 FHIR Server 中，並提供查詢功能。


#### 資料上傳功能（LTC_MANAGEMENT 角色）

- 必須能以 POST 方式上傳單筆或批次生理量測資訊。
- 必須提供介面，讓使用者輸入量測資訊後進行資料上傳，若實作系統為儀器設備，則必須能夠自動上傳量測資訊後，提供一個可驗證的介面，讓使用者確認上傳的資訊（可以是 Console 或是應用程式介面）。
- 必須支援以下量測項目：

| 項目 | 類型 | Code system | Code | Unit | Unit Code (UCUM Code) |
|---|---|---|---|---|---|
| 一組生命徵象檢驗檢查 | Observation Vital Signs | LoincCode | 85353-1 | - | - |
| 身高 | Observation Vital Signs | LoincCode | 8302-2 | cm | cm |
| 體重 | Observation Vital Signs | LoincCode | 29463-7 | kg | kg |
| 體溫 | Observation Vital Signs | LoincCode | 8310-5 | 攝氏 | Cel |
| 血壓 | Observation Vital Signs | LoincCode | 85354-9 | mmHg | mm[Hg] |
| 收縮壓 | Observation Vital Signs | LoincCode | 8480-6 | mmHg | mm[Hg] |
| 舒張壓 | Observation Vital Signs | LoincCode | 8462-4 | mmHg | mm[Hg] |
| 心率 | Observation Vital Signs | LoincCode | 8867-4 | /分鐘 | /min |
| 進食後血糖 | Observation Laboratory Data | LoincCode | 87422-2 | mg/dL | mg/dL |
| 進食前血糖 | Observation Laboratory Data | LoincCode | 88365-2 | mg/dL | mg/dL |


#### 資料查詢功能（LTC_CONSUMER 角色）

- 必須能以 GET 方式查詢生理量測資訊。
- 必須提供查詢介面，支援以多種條件查詢生理量測資訊，並支援以 _history 參數查詢歷史資料。
- 必須支援以下查詢條件：
  - 依據個案編號查詢
  - 依據量測項目查詢
  - 依據量測時間查詢

#### 情境 2：照護活動管理

照護活動管理情境模擬日照中心個案的各項照護活動紀錄與資料管理流程。在此情境中，照護人員會透過工作站系統記錄個案參與的各項照護活動，包括復健訓練、認知活動、社交互動、日常生活協助等，並透過標準化的資料交換機制上傳至日照中心管理系統。

本情境會使用到 Procedure 資源，各系統角色應具備以下核心功能：

#### 資料儲存、管理功能（LTC_REPOSITORY 角色）

- 能夠接收來自照護人員工作站的照護活動資料，包括但不限於復健訓練、認知活動、社交互動、日常生活協助等處置紀錄。
- 支援即時或批次上傳／查詢模式，確保資料傳輸的穩定性與完整性。
  - 必須支援以 POST 方式上傳資料。
  - 必須支援以 GET 方式查詢資料。
  - 必須支援以 PUT 方式更新／上傳資料。
  - 選擇性支援以 POST Bundle 方式上傳資料。
- 遵循 FHIR R4 Procedure 資源格式，將照護活動紀錄儲存至 FHIR Server 中，並提供查詢功能。

#### 資料上傳功能（LTC_MANAGEMENT 角色）

- 必須能以 POST 方式上傳單筆或批次照護活動紀錄。
- 必須提供介面，讓照護人員輸入活動資訊後進行資料上傳，並提供一個可驗證的介面，讓使用者確認上傳的資訊。
- 必須支援以下照護活動項目：

| 項目 | 類型 | Code system | Code | Display | 備註 |
|---|---|---|---|---|---| 
| 進食協助 | Procedure | SNOMED CT | 226010006 | Assisting with eating and drinking |  |
| 沐浴/擦澡 | Procedure | SNOMED CT | 60369001 | Bathing patient |  |
| 個人衛生協助 | Procedure | SNOMED CT | 225964003 | Assisting with personal hygiene |  |
| 穿衣 | Procedure | SNOMED CT | 313332003 | Dressing patient |  |
| 如廁協助 | Procedure | SNOMED CT | 313420001 | Assisting with toileting |  |
| 陪同到廁所 | Procedure | SNOMED CT | 223454002 | Escorting subject to toilet |  |
| 移位/移動協助 | Procedure | SNOMED CT | 710803000 | Assistance with mobility |  |
| 床上移動協助 | Procedure | SNOMED CT | 713138001 | Assistance with mobility in bed |  |
| 更換尿布 | Procedure | SNOMED CT | 733923007 | Change of diaper |  |

其他照護活動項目，可參考 International Classification of Nursing Practice (ICNP) 的照護活動分類，或參考 SNOMED CT 的照護活動相關代碼。參測單位可根據實際需求選擇適當的代碼。

#### 資料查詢功能（LTC_CONSUMER 角色）

- 必須能以 GET 方式查詢照護活動紀錄。
- 必須提供查詢介面，支援以多種條件查詢照護活動資訊，並支援以 _history 參數查詢歷史資料。
- 必須支援以下查詢條件：
  - 依據個案編號查詢
  - 依據服務項目查詢
  - 依據執行時間查詢
  - 依據執行狀態查詢

#### 情境 3：用藥紀錄管理

用藥紀錄管理情境模擬日照中心個案的用藥紀錄與資料管理流程。在此情境中，照護人員會透過工作站系統記錄個案的用藥紀錄，包括藥品名稱、劑量、用法、用藥時間等，並透過標準化的資料交換機制上傳至日照中心管理系統。

本情境會使用到 Medication 資源，各系統角色應具備以下核心功能：


#### 資料儲存、管理功能（LTC_REPOSITORY 角色）

- 能夠接收來自照護人員工作站的用藥紀錄資料，包括但不限於藥品名稱、劑量、用法、用藥時間等。
- 支援即時或批次上傳／查詢模式，確保資料傳輸的穩定性與完整性。
  - 必須支援以 POST 方式上傳資料。
  - 必須支援以 GET 方式查詢資料。
  - 必須支援以 PUT 方式更新／上傳資料。
  - 選擇性支援以 POST Bundle 方式上傳資料。
- 遵循 FHIR R4 Medication 資源格式，將用藥紀錄儲存至 FHIR Server 中，並提供查詢功能。

#### 資料上傳功能（LTC_MANAGEMENT 角色）

- 必須能以 POST 方式上傳單筆或批次用藥紀錄。
- 必須提供介面，讓照護人員輸入用藥資訊後進行資料上傳，並提供一個可驗證的介面，讓使用者確認上傳的資訊。

#### 資料查詢功能（LTC_CONSUMER 角色）

- 必須能以 GET 方式查詢用藥紀錄。
- 必須提供查詢介面，支援以多種條件查詢用藥資訊，並支援以 _history 參數查詢歷史資料。
- 必須支援以下查詢條件：
  - 依據個案編號查詢
  - 依據用藥品項查詢
  - 依據用藥時間查詢


### 交易 (Transactions)

| 交易 ID | 說明 | 發送方 (From) | 接收方 (To) |
|---|---|---|---|
| LTC-111 | 上傳生理量測數據 | 生理量測設備 | 日照中心系統 |
| LTC-112 | 查詢生理量測數據 | 日照中心系統 | 家屬行動 App |
| LTC-121 | 上傳照護活動 | 照護人員工作站 | 日照中心系統 |
| LTC-122 | 查詢照護活動 | 日照中心系統 | 家屬行動 App |
| LTC-131 | 上傳用藥紀錄 | 照護人員工作站 | 日照中心系統 |
| LTC-132 | 查詢用藥紀錄 | 日照中心系統 | 家屬行動 App |


