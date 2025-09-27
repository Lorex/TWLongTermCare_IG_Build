### 查詢參數及操作定義

以下為臺灣長期照顧實作指引（TW LTC IG）中各 Profile 可使用的查詢參數（SearchParameter）及操作定義（OperationDefinition）。

#### Bundle

- **查詢參數：**
  - `type` (token) - Bundle 類型

#### Composition

- **查詢參數：**
  - `subject` (reference) - 文件主體
  - `date` (date) - 文件日期
  - `type` (token) - 文件類型

#### Patient

- **查詢參數：**
  - `identifier` (token) - 住民識別碼
  - `name` (string) - 住民姓名
  - `birthdate` (date) - 出生日期
  - `gender` (token) - 性別

#### CarePlan

- **查詢參數：**
  - `subject` (reference) - 照顧計畫主體
  - `status` (token) - 照顧計畫狀態
  - `intent` (token) - 照顧計畫意圖

#### CareTeam

- **查詢參數：**
  - `subject` (reference) - 照護團隊主體
  - `status` (token) - 照護團隊狀態

#### Condition

- **查詢參數：**
  - `subject` (reference) - 病情主體
  - `code` (token) - 病情代碼
  - `clinical-status` (token) - 臨床狀態

#### Goal

- **查詢參數：**
  - `subject` (reference) - 目標主體
  - `status` (token) - 目標狀態

#### MedicationAdministration

- **查詢參數：**
  - `subject` (reference) - 用藥主體
  - `medication` (reference) - 藥物
  - `effective-time` (date) - 用藥時間

#### Observation

- **查詢參數：**
  - `subject` (reference) - 觀察主體
  - `code` (token) - 觀察代碼
  - `date` (date) - 觀察日期

#### Organization

- **查詢參數：**
  - `identifier` (token) - 機構識別碼
  - `name` (string) - 機構名稱

#### Practitioner

- **查詢參數：**
  - `identifier` (token) - 醫事人員識別碼
  - `name` (string) - 醫事人員姓名

#### PractitionerRole

- **查詢參數：**
  - `practitioner` (reference) - 醫事人員
  - `organization` (reference) - 所屬機構

#### Questionnaire

- **查詢參數：**
  - `identifier` (token) - 問卷識別碼
  - `title` (string) - 問卷標題

#### QuestionnaireResponse

- **查詢參數：**
  - `subject` (reference) - 問卷回應主體
  - `questionnaire` (reference) - 問卷
  - `authored` (date) - 填寫日期

#### RelatedPerson

- **查詢參數：**
  - `patient` (reference) - 相關人員主體
  - `relationship` (token) - 關係類型

#### Location

- **查詢參數：**
  - `name` (string) - 位置名稱
  - `address` (string) - 位置地址
  - `status` (token) - 位置狀態

### 查詢參數類型說明

- **token**: 代碼值，用於搜尋編碼資料
- **string**: 字串值，用於文字搜尋
- **date**: 日期值，用於日期範圍搜尋
- **reference**: 參考值，用於搜尋相關資源

### 使用範例

以下為使用查詢參數的範例：

```
# 搜尋特定住民的照顧計畫
GET /CarePlan?subject=Patient/123

# 搜尋特定日期的觀察記錄
GET /Observation?subject=Patient/123&date=2024-01-01

# 搜尋特定機構的醫事人員
GET /PractitionerRole?organization=Organization/456

# 搜尋特定問卷的回應
GET /QuestionnaireResponse?questionnaire=Questionnaire/789&subject=Patient/123
```
