# Home Nursing - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* **Home Nursing**

## Home Nursing

### 居家護理照護管理系統

本主題說明居家護理照護管理系統的資料交換架構。內容涵蓋 12 支 API 請求 Logical Model、24 項結構化表單、臨床資源 Profile 與範例。

詳細欄位對照請參閱[欄位對應表](home-nursing-mapping.md)。所有結構定義與範例均可由[規範文件](artifacts.md)下載。

#### API 清單與介接規格

居家護理系統提供 12 支資料介接 API。傳輸方式均為 HTTP POST 方法。請求標頭包含機構代碼 `AGENCY_ID` 與認證金鑰 `SecretKey`。

| | | |
| :--- | :--- | :--- |
| `BaseData` | 個案基本資料、收案登記、家庭社會背景、主要照顧者與共照團隊。 | [基本資料](StructureDefinition-HNBaseDataAPIModel.md) |
| `Evaluation` | 全人評估十三類評估量表，支援同一個案各評估日期的多筆紀錄。 | [全人評估](StructureDefinition-HNEvaluationAPIModel.md) |
| `CaseSummary` | 全人評估後歸納之照護需求項目與摘要備註。 | [需求摘要](StructureDefinition-HNCaseSummaryAPIModel.md) |
| `CarePlan` | 依據需求摘要擬定之照護目標、護理措施與定期評值。 | [照護計畫](StructureDefinition-HNCarePlanAPIModel.md) |
| `CareRecord` | 訪視照護紀錄、耗用資源、處置事件、生理量測與多筆傷口觀察。 | [照護紀錄](StructureDefinition-HNCareRecordAPIModel.md) |
| `CaseDesc` | 共同照護團隊成員之訪視時段與服務紀錄。 | [共照紀錄](StructureDefinition-HNCaseDescAPIModel.md) |
| `StaffEgy` | 工作人員緊急事件通報與處置紀錄。 | [人員緊急事件](StructureDefinition-HNStaffEgyAPIModel.md) |
| `CaseClose` | 個案結案紀錄、結案日期、執行人員與結案原因。 | [個案結案](StructureDefinition-HNCaseCloseAPIModel.md) |
| `CarePlanClose` | 指定照護目標結案作業、結案日期與結案人員。 | [計畫結案](StructureDefinition-HNCarePlanCloseAPIModel.md) |
| `VitalSign` | 個案生理徵象量測數值獨立上傳。 | [生命徵象](StructureDefinition-HNVitalSignAPIModel.md) |
| `GetLog` | 指定日期區間查詢資料處理紀錄與結果。 | [日期查詢](StructureDefinition-HNGetLogAPIModel.md) |
| `GetLogByTicket` | 依八位數追蹤碼查詢單筆資料處理結果。 | [追蹤碼查詢](StructureDefinition-HNGetLogByTicketAPIModel.md) |

#### 資料流程與識別架構

系統介接由個案收案開始。建檔後依序上傳全人評估、需求摘要與照護計畫。服務期間持續累計照護紀錄與生理量測。服務終止時執行計畫結案與個案結案。

| | | |
| :--- | :--- | :--- |
| 個案識別 | `CaseID` | `HNPatient.identifier[idCardNumber]` |
| 收案歷程 | `AGENCY_ID`、`CaseID`、`EndDate` | `HNEpisodeOfCare`（managingOrganization、patient、period.start） |
| 需求摘要 | 收案關聯、摘要日期、項目代碼 | `HNCaseSummaryResponse`固定切片 |
| 照護目標 | 需求摘要項目、目標敘述、建立日期 | `HNGoal`與`HNTargetsResponse` |
| 措施與評值 | 照護計畫關聯、目標關聯與措施項目 | `HNCarePlan.activity`與對應措施評值表單 |
| 介接任務與查詢 | API 名稱、八位數追蹤碼 | `HNAPITask`（code、identifier、input） |

#### 資源 Profile 與繼承關係

居家護理採用之臨床資源 Profile 繼承自長照共用規格（TW LTC）與 TW Core 標準。各資源維持一致的個案識別與表單追蹤機制。

| | | |
| :--- | :--- | :--- |
| [HNPatient](StructureDefinition-HNPatient.md) | `LTCPatient` | 個案基本資料。包含身分證字號、姓名、居住地址、緊急聯絡人與來源表單關聯。 |
| [HNEpisodeOfCare](StructureDefinition-HNEpisodeOfCare.md) | `LTCEpisodeOfCareBase` | 個案收案歷程。記錄負責機構、主責人員、收案起訖日期與結案狀態。 |
| [HNCarePlan](StructureDefinition-HNCarePlan.md) | `LTCCarePlan` | 居家照護計畫。串聯照護需求、目標、護理措施與定期評值。 |
| [HNGoal](StructureDefinition-HNGoal.md) | `LTCGoal` | 照護目標。記錄目標敘述、預期達成日期與主要目標標記。 |
| [HNCommunication](StructureDefinition-HNCommunication.md) | `LTCCommunicationServiceA` | 共同照護紀錄。記錄團隊成員訪視內容與溝通紀錄。 |
| [HNVitalSigns](StructureDefinition-HNVitalSigns.md) | `vitalspanel` | 整合生理徵象面板。透過 hasMember 整合體溫、脈搏、呼吸、血壓與血氧。 |
| 血糖量測 | `PASportObservationGlucose` | 血糖數值。採用 LOINC 2339-0 與單位 mg/dL。 |
| [HNWound](StructureDefinition-HNWound.md) | `Observation-simple` | 傷口觀察紀錄。記錄傷口種類、部位、外觀與面積，每處傷口獨立建檔。 |
| [HNAPITask](StructureDefinition-HNAPITask.md) | `LTCTask` | API 處理任務。記錄 12 支 API 上傳與查詢任務，包含處理狀態與查詢參數。 |
| [HNOperationOutcome](StructureDefinition-HNOperationOutcome.md) | `OperationOutcome` | API 處理結果。回覆處理成功與錯誤代碼訊息。 |
| 個案表單回覆（23 種） | `LTCQuestionnaireResponse` | 各類個案評估與訪視紀錄。綁定對應問卷定義、固定切片與選項值集。 |
| [HNStaffEgyResponse](StructureDefinition-HNStaffEgyResponse.md) | `QuestionnaireResponse` | 工作人員緊急事件。以 Practitioner 為主體，Organization 為申報機構。 |
| 表單定義（24 張） | `LTCQuestionnaire` | 定義居家護理全數問卷結構、題項階層與選項內容。 |

#### 全人評估表單

全人評估包含十三類專業評估量表。各表單依個案評估日期獨立填寫並上傳。

| | | |
| :--- | :--- | :--- |
| `HealthyHabits` | [健康紀錄](StructureDefinition-HNHealthyHabitsResponse.md) | 菸酒檳榔生活習慣、過敏史與預防接種紀錄。 |
| `MedicalHistories` | [疾病史](StructureDefinition-HNMedicalHistoriesResponse.md) | 主要診斷、次要診斷與重大病史。 |
| `DrugSafeties` | [用藥安全](StructureDefinition-HNDrugSafetiesResponse.md) | 長期用藥狀況、多重用藥情形、中草藥與自購藥物。 |
| `BodyEvaluations` | [身體評估](StructureDefinition-HNBodyEvaluationsResponse.md) | 意識狀態、視聽機能、進食排泄、皮膚外觀、肌力與呼吸輔助。 |
| `PressureInjuries` | [壓傷危險](StructureDefinition-HNPressureInjuriesResponse.md) | 壓傷危險指標與綜合分級。 |
| `FallRisks` | [跌倒危險](StructureDefinition-HNFallRisksResponse.md) | 跌倒危險因子與居家防護處置。 |
| `ADLs` | [日常生活功能](StructureDefinition-HNADLsResponse.md) | 巴氏量表十項基礎日常生活活動自理能力。 |
| `IADLs` | [工具性日常生活活動](StructureDefinition-HNIADLsResponse.md) | 八項工具性日常生活活動能力。 |
| `Dementias` | [認知功能](StructureDefinition-HNDementiasResponse.md) | 時空定向感、記憶力與計算題項。 |
| `GeriatricDepressionScales` | [情緒評估](StructureDefinition-HNGeriatricDepressionScalesResponse.md) | 簡短老人憂鬱量表五項情緒指標。 |
| `MNASFs` | [微營養評估](StructureDefinition-HNMNASFsResponse.md) | 飲食狀態、體重變化與身體圍度指標。 |
| `PainEvaluations` | [疼痛評估](StructureDefinition-HNPainEvaluationsResponse.md) | 口語表達疼痛量表與行為觀察疼痛量表。 |
| `SOFs` | [衰弱評估](StructureDefinition-HNSOFsResponse.md) | 體重減輕情形、起立活動表現與活力衰退指標。 |

#### 範例

本 IG 提供完整的居家護理實例供系統驗證參考。

| | | |
| :--- | :--- | :--- |
| 生理量測封裝 | [生理徵象 Bundle 範例](Bundle-hn-vital-bundle-example.md) | 整合體溫、血壓、脈搏、呼吸、血氧與血糖數值。 |
| 個案收案 | [個案範例](Patient-hn-patient-example.md)、[收案歷程範例](EpisodeOfCare-hn-episode-example.md) | 個案識別、身分證字號與收案起訖日期。 |
| 計畫與目標 | [照護計畫範例](CarePlan-hn-careplan-example.md)、[照護目標範例](Goal-hn-goal-example.md) | 關聯收案歷程，設定照護目標與護理措施。 |
| 傷口照護 | [壓傷觀察範例](Observation-hn-wound-pressure-example.md) | 記錄傷口部位、外觀狀態與處置紀錄。 |
| 任務查詢 | [追蹤碼查詢任務範例](Task-hn-ticket-task-example.md) | 包含八位數追蹤碼與任務執行結果。 |

