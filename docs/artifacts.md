# Artifacts Summary - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md) | 此 CapabilityStatement 定義了臺灣長期照顧實作指引中伺服端系統必須支援的 FHIR RESTful API 功能。 |
| [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) | 此 CapabilityStatement 定義了臺灣長期照顧實作指引中用戶端系統建議支援的 FHIR RESTful API 功能。 |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [個案位置監測邏輯模型](StructureDefinition-LTCLocationModel.md) | 此邏輯模型以失智症照護監測賽道的情境2為基礎，用以描述個案位置監測的資料結構與欄位準備指引。支援記錄個案所在的地點名稱與經緯度座標資訊。 |
| [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md) | 依在宅急症系統盤點建立的資料交換模型，涵蓋正式收案、訪視、照護、檢驗、給藥與轉銜。新增的臨床結構不代表來源系統已實作；來源差異見專用對照表。 |
| [居家護理－上傳接收回覆邏輯模型](StructureDefinition-HNUploadAcknowledgementModel.md) | 描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。 |
| [居家護理－人員緊急事件 API 邏輯模型](StructureDefinition-HNStaffEgyAPIModel.md) | 描述人員緊急事件 API 的請求資料。來源為 V5.0.16 印刷頁 126–129，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－人員緊急事件邏輯模型](StructureDefinition-HNStaffEgyModel.md) | 描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－依日期查詢處理結果 API 邏輯模型](StructureDefinition-HNGetLogAPIModel.md) | 描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－依追蹤碼查詢處理結果 API 邏輯模型](StructureDefinition-HNGetLogByTicketAPIModel.md) | 描述依追蹤碼查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－個案基本資料 API 邏輯模型](StructureDefinition-HNBaseDataAPIModel.md) | 描述個案基本資料 API 的請求資料。來源為 V5.0.16 印刷頁 1–13，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－個案基本資料邏輯模型](StructureDefinition-HNBaseDataModel.md) | 描述居家護理個案基本資料的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－個案結案 API 邏輯模型](StructureDefinition-HNCaseCloseAPIModel.md) | 描述個案結案 API 的請求資料。來源為 V5.0.16 印刷頁 130–132，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－個案結案邏輯模型](StructureDefinition-HNCaseCloseModel.md) | 描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－健康紀錄評估邏輯模型](StructureDefinition-HNHealthyHabitsModel.md) | 描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md) | 描述全人評估 API 的請求資料。來源為 V5.0.16 印刷頁 14–70，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－共照紀錄 API 邏輯模型](StructureDefinition-HNCaseDescAPIModel.md) | 描述共照紀錄 API 的請求資料。來源為 V5.0.16 印刷頁 122–125，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－共照紀錄邏輯模型](StructureDefinition-HNCaseDescModel.md) | 描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－壓力性損傷危險評估邏輯模型](StructureDefinition-HNPressureInjuriesModel.md) | 描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－工具性日常生活活動功能評估邏輯模型](StructureDefinition-HNIADLsModel.md) | 描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－情緒問題評估邏輯模型](StructureDefinition-HNGeriatricDepressionScalesModel.md) | 描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－日常生活功能評估邏輯模型](StructureDefinition-HNADLsModel.md) | 描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－照護紀錄 API 邏輯模型](StructureDefinition-HNCareRecordAPIModel.md) | 描述照護紀錄 API 的請求資料。來源為 V5.0.16 印刷頁 81–121，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－照護紀錄邏輯模型](StructureDefinition-HNCareRecordModel.md) | 描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－照護計畫 API 邏輯模型](StructureDefinition-HNCarePlanAPIModel.md) | 描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－照護計畫措施邏輯模型](StructureDefinition-HNMeasuresModel.md) | 描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－照護計畫目標邏輯模型](StructureDefinition-HNTargetsModel.md) | 描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－照護計畫結案 API 邏輯模型](StructureDefinition-HNCarePlanCloseAPIModel.md) | 描述照護計畫結案 API 的請求資料。來源為 V5.0.16 印刷頁 133–135，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－照護計畫結案邏輯模型](StructureDefinition-HNCarePlanCloseModel.md) | 描述居家護理照護計畫結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－照護計畫評值紀錄邏輯模型](StructureDefinition-HNEvaluationsModel.md) | 描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－生命徵象 API 邏輯模型](StructureDefinition-HNVitalSignAPIModel.md) | 描述生命徵象 API 的請求資料。來源為 V5.0.16 印刷頁 136–138，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－生命徵象邏輯模型](StructureDefinition-HNVitalSignModel.md) | 描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－疼痛評估邏輯模型](StructureDefinition-HNPainEvaluationsModel.md) | 描述居家護理疼痛評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－疾病史評估邏輯模型](StructureDefinition-HNMedicalHistoriesModel.md) | 描述居家護理疾病史評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－簡易營養評估邏輯模型](StructureDefinition-HNMNASFsModel.md) | 描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－藥物安全性評估邏輯模型](StructureDefinition-HNDrugSafetiesModel.md) | 描述居家護理藥物安全性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－衰弱評估邏輯模型](StructureDefinition-HNSOFsModel.md) | 描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－認知功能評估邏輯模型](StructureDefinition-HNDementiasModel.md) | 描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－跌倒危險性評估邏輯模型](StructureDefinition-HNFallRisksModel.md) | 描述居家護理跌倒危險性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－身體評估評估邏輯模型](StructureDefinition-HNBodyEvaluationsModel.md) | 描述居家護理身體評估評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [居家護理－需求摘要 API 邏輯模型](StructureDefinition-HNCaseSummaryAPIModel.md) | 描述需求摘要 API 的請求資料。來源為 V5.0.16 印刷頁 71–74，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 |
| [居家護理－需求摘要邏輯模型](StructureDefinition-HNCaseSummaryModel.md) | 描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 |
| [照顧管理評估量表邏輯模型](StructureDefinition-LTCCMSModel.md) | 此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。 |
| [異常事件警報邏輯模型](StructureDefinition-LTCAdverseEventModel.md) | 此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。 |
| [簡易智能狀態測驗評估](StructureDefinition-LTCMMSEAssessmentModel.md) | 簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估 |
| [臨床失智評估量表評估](StructureDefinition-LTCCDRAssessmentModel.md) | 臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估 |
| [長期照護醫師意見書 (AA12) 邏輯模型](StructureDefinition-AA12Model.md) | 此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。 |
| [長期照顧管理中心個案服務初篩表/轉介單邏輯模型](StructureDefinition-LTCRferralModel.md) | 此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。 |
| [長照支付審查－分案審核明細邏輯模型](StructureDefinition-LTCFeeAuditDetailModel.md) | 此邏輯模型以《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「五、(查詢B)分案審核明細查詢」為基礎，用以描述分案審核明細查詢之傳送資料與回覆明細的資料結構與欄位準備指引。需先執行（查詢A）取得案件之核銷案號、核銷狀況與總表版次，當為新核銷案號或核銷狀況、總表版次有異動時，才執行（查詢B）取得該案件之明細資料。 |
| [長照支付審查－分案審核狀態與交易處理結果邏輯模型](StructureDefinition-LTCFeeAuditStatusModel.md) | 此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。 |
| [長照支付審查－服務記錄申報邏輯模型](StructureDefinition-LTCFeeApplyModel.md) | 此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。 |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [在宅急症收案評估問卷](Questionnaire-hah-intake-assessment.md) | 本 IG 定義的收案資料交換表單；正式計畫條件須依實際採用的版本評估。 |
| [居家護理－人員緊急事件問卷](Questionnaire-hn-staffegy.md) | V5.0.16 人員緊急事件的問題結構與輸入型態。 |
| [居家護理－個案基本資料問卷](Questionnaire-hn-basedata.md) | V5.0.16 個案基本資料的問題結構與輸入型態。 |
| [居家護理－個案結案問卷](Questionnaire-hn-caseclose.md) | V5.0.16 個案結案的問題結構與輸入型態。 |
| [居家護理－健康紀錄評估問卷](Questionnaire-hn-healthyhabits.md) | V5.0.16 健康紀錄評估的問題結構與輸入型態。 |
| [居家護理－共照紀錄問卷](Questionnaire-hn-casedesc.md) | V5.0.16 共照紀錄的問題結構與輸入型態。 |
| [居家護理－壓力性損傷危險評估問卷](Questionnaire-hn-pressureinjuries.md) | V5.0.16 壓力性損傷危險評估的問題結構與輸入型態。 |
| [居家護理－工具性日常生活活動功能評估問卷](Questionnaire-hn-iadls.md) | V5.0.16 工具性日常生活活動功能評估的問題結構與輸入型態。 |
| [居家護理－情緒問題評估問卷](Questionnaire-hn-geriatricdepressionscales.md) | V5.0.16 情緒問題評估的問題結構與輸入型態。 |
| [居家護理－日常生活功能評估問卷](Questionnaire-hn-adls.md) | V5.0.16 日常生活功能評估的問題結構與輸入型態。 |
| [居家護理－照護紀錄問卷](Questionnaire-hn-carerecord.md) | V5.0.16 照護紀錄的問題結構與輸入型態。 |
| [居家護理－照護計畫措施問卷](Questionnaire-hn-measures.md) | V5.0.16 照護計畫措施的問題結構與輸入型態。 |
| [居家護理－照護計畫目標問卷](Questionnaire-hn-targets.md) | V5.0.16 照護計畫目標的問題結構與輸入型態。 |
| [居家護理－照護計畫結案問卷](Questionnaire-hn-careplanclose.md) | V5.0.16 照護計畫結案的問題結構與輸入型態。 |
| [居家護理－照護計畫評值紀錄問卷](Questionnaire-hn-evaluations.md) | V5.0.16 照護計畫評值紀錄的問題結構與輸入型態。 |
| [居家護理－生命徵象問卷](Questionnaire-hn-vitalsign.md) | V5.0.16 生命徵象的問題結構與輸入型態。 |
| [居家護理－疼痛評估問卷](Questionnaire-hn-painevaluations.md) | V5.0.16 疼痛評估的問題結構與輸入型態。 |
| [居家護理－疾病史評估問卷](Questionnaire-hn-medicalhistories.md) | V5.0.16 疾病史評估的問題結構與輸入型態。 |
| [居家護理－簡易營養評估問卷](Questionnaire-hn-mnasfs.md) | V5.0.16 簡易營養評估的問題結構與輸入型態。 |
| [居家護理－藥物安全性評估問卷](Questionnaire-hn-drugsafeties.md) | V5.0.16 藥物安全性評估的問題結構與輸入型態。 |
| [居家護理－衰弱評估問卷](Questionnaire-hn-sofs.md) | V5.0.16 衰弱評估的問題結構與輸入型態。 |
| [居家護理－認知功能評估問卷](Questionnaire-hn-dementias.md) | V5.0.16 認知功能評估的問題結構與輸入型態。 |
| [居家護理－跌倒危險性評估問卷](Questionnaire-hn-fallrisks.md) | V5.0.16 跌倒危險性評估的問題結構與輸入型態。 |
| [居家護理－身體評估評估問卷](Questionnaire-hn-bodyevaluations.md) | V5.0.16 身體評估評估的問題結構與輸入型態。 |
| [居家護理－需求摘要問卷](Questionnaire-hn-casesummary.md) | V5.0.16 需求摘要的問題結構與輸入型態。 |
| [照顧管理問卷 (AA02)](Questionnaire-questionnaire-aa02-example.md) | 依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。 |
| [照顧計畫擬訂與服務連結問卷 (AA01)](Questionnaire-questionnaire-aa01-example.md) | AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫 |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ADL 問卷回覆](StructureDefinition-LTCQuestionnaireResponseADL.md) | 此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。 |
| [IADL 問卷回覆](StructureDefinition-LTCQuestionnaireResponseIADL.md) | 此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。 |
| [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md) | 本文件為『個案總查詢（Case Summary）』之 CS100 專用版本， 其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能 《CS100 個案總查詢》之查詢結果欄位與區塊。 |
| [在宅急症－個案](StructureDefinition-HAHPatient.md) | 正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。 |
| [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.md) | 每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。預約或通知不能當成已完成訪視。 |
| [在宅急症－就診基礎](StructureDefinition-HAHEncounter.md) | 在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。 |
| [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.md) | 以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。 |
| [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md) | 每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。 |
| [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.md) | 記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。 |
| [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.md) | 表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示本資料集的在宅住院照護分類，不代表照護地點在醫院。 |
| [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md) | 沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用適切標準代碼，無適切概念時才使用本地分類並補充文字。 |
| [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.md) | 以一份報告串聯醫囑、檢體與檢驗結果，可附原始報告檔案。 |
| [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.md) | 一筆檢驗項目一筆結果。保留檢體、方法、單位與參考區間；缺少結果時填 dataAbsentReason，不填零值代替。 |
| [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md) | 沿用服務活動紀錄，交換照會回覆、交班與衛教內容。接收訊息不代表已完成待辦工作。 |
| [在宅急症－照護同意](StructureDefinition-HAHConsent.md) | 記錄照護同意的狀態、範圍、時間及來源文件。此資源不取代可執行的醫囑，也不以一般同意代替 DNR 決定。 |
| [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.md) | 記錄主責及共照人員、機構、角色與參與期間。既有長照團隊不允許機構成員，因此由共同 TW Core 父層衍生。 |
| [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md) | 記錄訪視、送藥等執行工作。因長照任務的 owner 不允許 CareTeam，此處由 FHIR Task 衍生以支援團隊指派。 |
| [在宅急症－照護目標](StructureDefinition-HAHGoal.md) | 記錄個案預期達到的結果、期限及評值。照護問題應另記錄於 Condition，不以目標取代問題。 |
| [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md) | 沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。 |
| [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.md) | 記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。 |
| [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) | 彙整本次療程與接續照護所需的資訊。每個章節均提供可閱讀文字，資料不足時說明未知或未評估，不得推定為無。 |
| [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md) | 記錄實際給藥時間點或輸注期間。既有長照給藥強制 effectiveDateTime，因此由 FHIR 父層衍生以支援 effectivePeriod 及未給藥。 |
| [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.md) | 記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。 |
| [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.md) | 記錄評估人員對病情的判斷、發現與摘要。生命徵象、檢驗、已執行處置及費用不應只以 JSON 字串塞入 note。 |
| [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md) | 沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。 |
| [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.md) | 記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。 |
| [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.md) | 記錄過敏物質、確認狀態及反應。無紀錄不能推定無過敏；未評估與已確認無過敏應分開表達。 |
| [在宅急症－量測設備](StructureDefinition-HAHDevice.md) | 記錄居家量測設備的識別與類型。一般設備編號使用 identifier；只有正式 UDI 才填入 udiCarrier。 |
| [基礎生理量測－呼吸速率](StructureDefinition-PASportObservationRespiratoryRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之呼吸速率資料。 |
| [基礎生理量測－安靜心率](StructureDefinition-PASportObservationRestingHeartRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之安靜心率資料。 |
| [基礎生理量測－平均心率](StructureDefinition-PASportObservationMeanHeartRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之平均心率資料。 |
| [基礎生理量測－心率](StructureDefinition-PASportObservationHeartRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之心率資料。 |
| [基礎生理量測－心率變異性](StructureDefinition-PASportObservationHeartRateVariability.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之心率變異性資料。 |
| [基礎生理量測－脈搏血氧飽和度](StructureDefinition-PASportObservationPeripheralOxygenSaturation.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之脈搏血氧飽和度資料。 |
| [基礎生理量測－腰圍](StructureDefinition-PASportObservationWaist.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之腰圍資料。 |
| [基礎生理量測－血壓](StructureDefinition-PASportObservationBloodPressure.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血壓資料。 |
| [基礎生理量測－血糖](StructureDefinition-PASportObservationGlucose.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血糖資料。 |
| [基礎生理量測－身高](StructureDefinition-PASportObservationHeight.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之身高資料。 |
| [基礎生理量測－體溫](StructureDefinition-PASportObservationBodyTemperature.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之體溫資料。 |
| [基礎生理量測－體重](StructureDefinition-PASportObservationWeight.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之體重資料。 |
| [安全防護－跌倒紀錄](StructureDefinition-LTCObservationFallingHistory.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的跌倒紀錄。 |
| [居家護理－人員緊急事件表單](StructureDefinition-HNStaffEgyResponse.md) | 記錄人員緊急事件的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－介接作業](StructureDefinition-HNAPITask.md) | 記錄上傳及查詢工作。上傳成功僅表示已接收；須依後續處理結果另行更新任務狀態。 |
| [居家護理－介接訊息](StructureDefinition-HNOperationOutcome.md) | 表達接收或處理訊息。原規範未列出 GetLog 回覆結構及完整錯誤碼，因此不自訂假定的錯誤碼表。 |
| [居家護理－個案](StructureDefinition-HNPatient.md) | 沿用長照個案基本資料。機構另配發住民識別碼，來源表單記錄居護社會背景與共照名單。 |
| [居家護理－個案基本資料表單](StructureDefinition-HNBaseDataResponse.md) | 記錄個案基本資料的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－個案結案表單](StructureDefinition-HNCaseCloseResponse.md) | 記錄個案結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－健康紀錄評估表單](StructureDefinition-HNHealthyHabitsResponse.md) | 記錄健康紀錄評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－傷口紀錄](StructureDefinition-HNWound.md) | 每個傷口建立一筆紀錄。沿用 TW Core 簡易觀察，因既有壓傷 Condition 不適用失禁性皮膚炎及其他傷口。原規範未明訂尺寸單位，不從來源數字推定單位。 |
| [居家護理－共照紀錄](StructureDefinition-HNCommunication.md) | 記錄共照人員提供的照護紀錄。沿用既有服務活動 Communication，新增收案與來源表單關聯。 |
| [居家護理－共照紀錄表單](StructureDefinition-HNCaseDescResponse.md) | 記錄共照紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－壓力性損傷危險評估表單](StructureDefinition-HNPressureInjuriesResponse.md) | 記錄壓力性損傷危險評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－工具性日常生活活動功能評估表單](StructureDefinition-HNIADLsResponse.md) | 記錄工具性日常生活活動功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－情緒問題評估表單](StructureDefinition-HNGeriatricDepressionScalesResponse.md) | 記錄情緒問題評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－收案歷程](StructureDefinition-HNEpisodeOfCare.md) | 以機構、個案與收案日期識別一次居護收案，結案時記錄結束日期及來源表單。 |
| [居家護理－日常生活功能評估表單](StructureDefinition-HNADLsResponse.md) | 記錄日常生活功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－照護目標](StructureDefinition-HNGoal.md) | 沿用長照照顧目標，記錄目標敘述、預期達到日期及是否為主要目標。 |
| [居家護理－照護紀錄表單](StructureDefinition-HNCareRecordResponse.md) | 記錄照護紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－照護計畫](StructureDefinition-HNCarePlan.md) | 沿用長照照顧計畫，串聯需求摘要、目標、措施與評值表單。 |
| [居家護理－照護計畫交易](StructureDefinition-HNCarePlanTransaction.md) | 以 FHIR transaction 一次提交目標、措施、評值及其臨床資源。任一 entry 失敗時不得僅儲存部分資料。原 API 的檔案仍須依其格式另外轉換。 |
| [居家護理－照護計畫措施表單](StructureDefinition-HNMeasuresResponse.md) | 記錄照護計畫措施的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－照護計畫目標表單](StructureDefinition-HNTargetsResponse.md) | 記錄照護計畫目標的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－照護計畫結案表單](StructureDefinition-HNCarePlanCloseResponse.md) | 記錄照護計畫結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－照護計畫評值紀錄表單](StructureDefinition-HNEvaluationsResponse.md) | 記錄照護計畫評值紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－生命徵象](StructureDefinition-HNVitalSigns.md) | 沿用 FHIR R4 生命徵象量測組，以 hasMember 連結既有體溫、心率、呼吸、血壓與血氧 Profile；血糖以既有血糖 Profile 與共同來源表單串聯。 |
| [居家護理－生命徵象交換集合](StructureDefinition-HNVitalSignsBundle.md) | 彙集同一次量測的生命徵象與血糖。量測組的 hasMember 限生命徵象 Profile，故以 Bundle 串聯既有血糖 Profile。 |
| [居家護理－生命徵象表單](StructureDefinition-HNVitalSignResponse.md) | 記錄生命徵象的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－疼痛評估表單](StructureDefinition-HNPainEvaluationsResponse.md) | 記錄疼痛評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－疾病史評估表單](StructureDefinition-HNMedicalHistoriesResponse.md) | 記錄疾病史評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－簡易營養評估表單](StructureDefinition-HNMNASFsResponse.md) | 記錄簡易營養評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－藥物安全性評估表單](StructureDefinition-HNDrugSafetiesResponse.md) | 記錄藥物安全性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－衰弱評估表單](StructureDefinition-HNSOFsResponse.md) | 記錄衰弱評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－認知功能評估表單](StructureDefinition-HNDementiasResponse.md) | 記錄認知功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－跌倒危險性評估表單](StructureDefinition-HNFallRisksResponse.md) | 記錄跌倒危險性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－身體評估評估表單](StructureDefinition-HNBodyEvaluationsResponse.md) | 記錄身體評估評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [居家護理－需求摘要表單](StructureDefinition-HNCaseSummaryResponse.md) | 記錄需求摘要的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 |
| [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) | 此 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件打包結構。 |
| [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md) | 此 Composition 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。 |
| [照顧管理評估量表－主要照顧者工作與支持](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者工作與支持的回覆資料。 |
| [照顧管理評估量表－主要照顧者負荷問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－主要照顧者負荷問卷的回覆資料。 |
| [照顧管理評估量表－個案基本資料](StructureDefinition-LTCPatientCMS.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。 |
| [照顧管理評估量表－個案溝通能力問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案溝通能力問卷的回覆資料。 |
| [照顧管理評估量表－個案短期記憶力問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSMemory.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案短期記憶力問卷的回覆資料。 |
| [照顧管理評估量表－居家環境與社會參與問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSSociety.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－居家環境與社會參與問卷的回覆資料。 |
| [照顧管理評估量表－情緒及行為型態問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSMental.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－情緒及行為型態問卷的回覆資料。 |
| [照顧管理評估量表－特殊複雜照護需要問卷回覆](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－特殊複雜照護需要問卷的回覆資料。 |
| [穿戴裝置－步態分析](StructureDefinition-PASportObservationGaitType.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態分析資料。 |
| [穿戴裝置－步態週期](StructureDefinition-PASportObservationGaitCycle.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態週期資料。 |
| [身體組成分析儀－內臟脂肪指數](StructureDefinition-PASportObservationVisceralFatIndex.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之內臟脂肪指數資料。 |
| [身體組成分析儀－內臟脂肪面積](StructureDefinition-PASportObservationVisceralFatArea.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之內臟脂肪面積資料。 |
| [身體組成分析儀－去脂體重](StructureDefinition-PASportObservationFatFreeMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之去脂體重資料。 |
| [身體組成分析儀－基礎代謝率](StructureDefinition-PASportObservationBasalMetabolicRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之基礎代謝率資料。 |
| [身體組成分析儀－推定骨量](StructureDefinition-PASportObservationBodyBoneMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之推定骨量資料。 |
| [身體組成分析儀－水腫指數](StructureDefinition-PASportObservationExtracellularWaterRatio.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之水腫指數資料。 |
| [身體組成分析儀－礦物質重](StructureDefinition-PASportObservationMineral.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之礦物質重資料。 |
| [身體組成分析儀－細胞內水分](StructureDefinition-PASportObservationIntracellularWater.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞內水分資料。 |
| [身體組成分析儀－細胞外水分](StructureDefinition-PASportObservationExtracellularWater.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞外水分資料。 |
| [身體組成分析儀－細胞量](StructureDefinition-PASportObservationCellMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之細胞量資料。 |
| [身體組成分析儀－肌肉質量指數](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肌肉質量指數資料。 |
| [身體組成分析儀－肌肉量](StructureDefinition-PASportObservationSoftLeanMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肌肉量資料。 |
| [身體組成分析儀－肥胖度](StructureDefinition-PASportObservationObesityDegree.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肥胖度資料。 |
| [身體組成分析儀－腰臀圍比](StructureDefinition-PASportObservationWaistHipRate.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之腰臀圍比資料。 |
| [身體組成分析儀－蛋白質重](StructureDefinition-PASportObservationProtein.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之蛋白質重資料。 |
| [身體組成分析儀－身體總水分](StructureDefinition-PASportObservationTotalBodyWater.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之身體總水分資料。 |
| [身體組成分析儀－身體質量指數](StructureDefinition-PASportObservationBodyMassIndex.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。 |
| [身體組成分析儀－骨骼肌重](StructureDefinition-PASportObservationSkeletalMuscleMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之骨骼肌重資料。 |
| [身體組成分析儀－體內年齡](StructureDefinition-PASportObservationBodyAge.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體內年齡資料。 |
| [身體組成分析儀－體脂率](StructureDefinition-PASportObservationBodyFatPercentage.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體脂率資料。 |
| [身體組成分析儀－體脂肪重](StructureDefinition-PASportObservationBodyFatMass.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體脂肪重資料。 |
| [轉介單－個案基本資料](StructureDefinition-LTCPatientReferral.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。 |
| [轉介單－服務種類](StructureDefinition-LTCCarePlanReferral.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現轉診單中欲申請之服務種類。 |
| [轉介單－照顧者問卷回覆](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－照顧者問卷的回覆資料。 |
| [轉介單－衰弱評估問卷回覆](StructureDefinition-LTCQuestionnaireResponseReferralSOF.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－衰弱評估問卷的回覆資料。 |
| [運動處方－服務請求](StructureDefinition-PASportServiceRequest.md) | 長照機構住民運動處方的服務請求資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data ServiceRequest Profile。 |
| [運動處方－病史](StructureDefinition-PASportConditionMedicalHistory.md) | 長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。 |
| [運動處方－運動史](StructureDefinition-PASportConditionExerciseHistory.md) | 長照機構住民運動處方的運動史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。 |
| [運動處方－運動目標](StructureDefinition-PASportGoal.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現運動處方中涉及之運動目標內容。 |
| [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之運動計畫內容。 |
| [運動項目－跑步機](StructureDefinition-PASportObservationTreadmill.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之跑步機資料。 |
| [運動項目－重量訓練](StructureDefinition-PASportObservationWeightTraining.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之重量訓練資料。 |
| [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md) | 此 Composition 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件結構。 |
| [長期照護醫師意見書問卷回覆 (AA12)](StructureDefinition-LTCQuestionnaireResponseAA12.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照護醫師意見書的問卷回覆內容。 |
| [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md) | 此 Bundle 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件打包結構。注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。 |
| [長期照顧－AA01照顧計畫擬訂與服務連結問卷回應](StructureDefinition-LTCQuestionnaireResponseAA01.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中 AA01 照顧計畫擬訂與服務連結問卷的回應內容。 |
| [長期照顧－AA02照顧管理追蹤問卷回覆](StructureDefinition-LTCQuestionnaireResponseAA02.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現 AA02 照顧管理追蹤問卷的回覆內容。 |
| [長期照顧－一組生命徵象檢驗檢查](StructureDefinition-LTCObservationVitalSignsPanel.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的一組生命徵象檢驗檢查資料。 |
| [長期照顧－主要問題及需求](StructureDefinition-LTCConditionNeed.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要問題及照護需求。 |
| [長期照顧－主要疾病](StructureDefinition-LTCConditionProblem.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要疾病資料。 |
| [長期照顧－任務管理](StructureDefinition-LTCTask.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現長期照顧情境中的轉介確認、照顧計畫狀態更新等任務管理需求。 |
| [長期照顧－住民基本資料](StructureDefinition-LTCPatient.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。 |
| [長期照顧－個案位置監測](StructureDefinition-Location-twltc.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。 |
| [長期照顧－問卷](StructureDefinition-LTCQuestionnaire.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。 |
| [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中涉及之問卷或量表回覆內容。 |
| [長期照顧－壓傷狀況](StructureDefinition-LTCConditionCrush.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。 |
| [長期照顧－居住狀況](StructureDefinition-LTCConditionResidence.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的居住狀況。 |
| [長期照顧－文件組成基礎](StructureDefinition-LTCCompositionBase.md) | 此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。 |
| [長期照顧－服務人員角色](StructureDefinition-LTCPractitionerRole.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html) 中的說明。 |
| [長期照顧－服務請求](StructureDefinition-LTCServiceRequest.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 ServiceRequest Resource，以呈現長期照顧情境中的轉介申請及服務請求需求。 |
| [長期照顧－案件管理基礎](StructureDefinition-LTCEpisodeOfCareBase.md) | 此 Profile 為所有長期照顧 EpisodeOfCare Profile 的共用基礎，定義案件管理之基本結構與共用欄位。 |
| [長期照顧－機構](StructureDefinition-Organization-twltc.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。 |
| [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Procedure Resource，以呈現長照機構住民的照護活動紀錄。 |
| [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CareTeam Resource，以呈現長期照顧情境中涉及之照顧團隊資訊。 |
| [長期照顧－照顧服務提供者](StructureDefinition-LTCPractitioner.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。 |
| [長期照顧－照顧目標](StructureDefinition-LTCGoal.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現長期照顧情境中涉及之照顧目標內容。 |
| [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之照顧計畫內容。 |
| [長期照顧－生命體徵](StructureDefinition-LTCObservationVitalSigns.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的生命體徵資料。 |
| [長期照顧－用藥資料](StructureDefinition-LTCMedicationAdministration.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 MedicationAdministration Resource，以呈現長照機構住民的用藥資料。 |
| [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現長照個案異常事件的資料，包括事件類型、嚴重程度、發生時間、位置、通報方式、多段文字描述與關聯案件等資訊。同時適用於失智照顧及 SDK 異常服務通報場景。 |
| [長期照顧－病情、問題或診斷](StructureDefinition-LTCCondition.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的病情、問題或診斷資料。 |
| [長期照顧－看護狀況](StructureDefinition-LTCConditionCaregiver.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長期照顧情境中住民的看護狀況資料。 |
| [長期照顧－管路裝設狀況](StructureDefinition-LTCConditionTube.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的管路裝設狀況與類別。 |
| [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現簡易智能狀態測驗 (MMSE) 的回覆內容。 |
| [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現臨床失智評估量表 (CDR) 的回覆內容。 |
| [長期照顧－評估核定摘要基礎](StructureDefinition-LTCObservationAssessmentBase.md) | 此 Profile 為評估核定摘要 Observation 的共用基礎 Profile，定義評估結果之基本結構與共用欄位。 |
| [長期照顧－身心障礙手冊持有狀態](StructureDefinition-LTCConditionDisability.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙手冊持有狀態。 |
| [長期照顧－身心障礙類型](StructureDefinition-LTCConditionDisabilityType.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙類型。 |
| [長期照顧－關係人](StructureDefinition-LTCRelatedPerson.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 RelatedPerson Resource，以呈現住民的關係人，包含家屬、照顧者、法定代理人等與住民有關的人員資料。 |
| [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現長照 SDK 回傳之資料包，包含案件、評估、核定額度及照顧計畫等資源之集合。 |
| [長照 SDK－服務活動紀錄（SERVICE_A）](StructureDefinition-LTC-Communication-ServiceA.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Communication Resource，以呈現長照服務活動紀錄，包含電訪、家訪等過程資料。 |
| [長照 SDK－照管全量匯出（ClaimResponse）](StructureDefinition-LTC-ClaimResponse-Export.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現長照照管全量匯出之審核結果與檢核錯誤資訊。 |
| [長照 SDK－照管全量匯出（Claim）](StructureDefinition-LTC-Claim-Export.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現長照照管全量匯出之服務代碼、數量、單價及小計等申報資料。 |
| [長照 SDK－照顧計畫（CS100）](StructureDefinition-LTC-CarePlan-CS100.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現 CS100 個案總查詢之照顧計畫資料，規則同 LTCCarePlanPayload。 |
| [長照 SDK－照顧計畫（不含輔具）](StructureDefinition-LTC-CarePlan-Payload.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長照 SDK 回傳之照顧計畫，包含服務項目代碼、金額、數量及頻率等資料。 |
| [長照 SDK－評估核定摘要](StructureDefinition-LTC-Observation-Assessment-Payload.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照 SDK 回傳之評估核定摘要，包含福利身分、CMS 等級、評估類型及計畫起訖等資訊。 |
| [長照 SDK－評估核定摘要（Observation）](StructureDefinition-LTC-Observation-Assessment-CS100.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現 CS100 個案總查詢之評估核定摘要，包含 CMS 等級、福利身分及評估類型等資訊。 |
| [長照 SDK－跨月檢核結果（QP_O）](StructureDefinition-LTC-OperationOutcome-Check.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現長照 SDK 跨月金額與月份檢核之錯誤旗標與訊息。 |
| [長照 SDK－長照案件](StructureDefinition-LTC-EpisodeOfCare-Payload.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 EpisodeOfCare Resource，以呈現長照 SDK 回傳之案件資訊，包含案件流水號、個案狀態、開結案時間及主責機構等資料。 |
| [長照支付審查－交通接送起訖地](StructureDefinition-LTCLocationFeeAuditPlace.md) | 此 Location 以衛生福利部支付審核系統的交通接送資料為基礎，用以表述個案接送的出發地、目的地及經緯度。 |
| [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md) | 此 Claim 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一筆個案服務紀錄的申報內容。 |
| [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md) | 此 ClaimResponse 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述一個核銷案號的審核結果。 |
| [長照支付審查－分案審核明細回覆打包](StructureDefinition-LTCBundleFeeAuditResponse.md) | 此 Bundle 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述單一核銷案號的審核明細回覆結構。 |
| [長照支付審查－分案審核狀態回覆打包](StructureDefinition-LTCBundleFeeAuditStatus.md) | 此 Bundle 以衛生福利部支付審核系統的服務單位各分案審核狀態查詢結果為基礎，用以表述申報交易與分案審核狀態的回覆結構。 |
| [長照支付審查－服務記錄申報文件打包](StructureDefinition-LTCBundleFeeApply.md) | 此 Bundle 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一次申報交易的資料打包結構。 |
| [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md) | 此 Task 以衛生福利部支付審核系統的申報交易資料為基礎，用以表述申報確認、服務紀錄刪除、撤回與取消結果回報等任務及處理狀態。 |
| [長照支付審查－申報檢核結果](StructureDefinition-LTCOperationOutcomeFeeAudit.md) | 此 OperationOutcome 以衛生福利部支付審核系統的回覆資料為基礎，用以表述服務紀錄的檢核錯誤與申報處理結果。 |
| [長照案件（CS100 專用版）](StructureDefinition-LTC-EpisodeOfCare-CS100.md) | 對應衛生福利部照顧服務管理資訊平臺『CS100 個案總查詢』之案件列資料。 作為 CS100 匯出資料列的病例/案件載體，提供個案管理之基礎欄位（案件編號、狀態、期間、主責機構、個管等）。 |
| [長照－核定額度（CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 CoverageEligibilityResponse Resource，以呈現長照各服務別之核定額度摘要，包含總額、補助金額、自付額及比率等資料。 |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CDR 總分](StructureDefinition-cdr-total-score.md) | 臨床失智評估量表的總分 |
| [MMSE 總分](StructureDefinition-mmse-total-score.md) | 簡易智能狀態測驗的總分 |
| [個案身分別](StructureDefinition-ExtPatientIdentity-TWLTC.md) | 此 Extension 用以表述個案的身分別。 |
| [單價](StructureDefinition-Ext-TW-LTC-UnitPrice.md) | 此 Extension 用於表示長照服務項目的單價金額。 |
| [在宅急症－療程結束原因](StructureDefinition-ExtHAHOutcome.md) | 療程結束時填入原因。其他原因應另填文字說明。 |
| [在宅急症－療程關聯](StructureDefinition-ExtHAHEpisode.md) | 參照本次在宅急症收案。用於沒有原生 EpisodeOfCare 欄位的資源；不同次收案應參照不同資源。 |
| [在宅急症－訪視方式](StructureDefinition-ExtHAHVisitMode.md) | 填入此次訪視為實地、視訊或電話評估。 |
| [居家護理－主要目標](StructureDefinition-ExtHNMainTarget.md) | 填入此目標是否為主要照護目標。 |
| [居家護理－來源表單](StructureDefinition-ExtHNSourceForm.md) | 參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。 |
| [居家護理－共照團隊更新指示](StructureDefinition-ExtHNCollectionUpdate.md) | 記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。 |
| [居家護理－措施停止資訊](StructureDefinition-ExtHNMeasureStop.md) | 措施停止時填入停止日期、原因與護理人員。 |
| [居家護理－收案關聯](StructureDefinition-ExtHNEpisode.md) | 參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。 |
| [是否為主要照顧者](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.md) | 此 Extension 用以表述關係人是否為主要照顧者。 |
| [長期照顧－異常事件文字描述](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.md) | 記錄異常事件的多段文字描述，包含事件描述、發生過程、後續處理、改善建議等 |
| [長期照顧－異常事件通報方式](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.md) | 記錄異常事件的通報方式（如電話、機構通報、LINE 等） |
| [長期照顧－異常事件關聯案件](StructureDefinition-Ext-TW-LTC-AdverseEvent-About.md) | 關聯的案件（EpisodeOfCare）或照顧計畫（CarePlan） |
| [長照 SDK－單位資訊（PIA/PIB/CENTER/MAN_*）](StructureDefinition-Ext-TW-LTC-Export-Unit.md) | 此 Extension 用於表示長照 SDK 的單位資訊，包含特約單位、照管中心、個管員等相關資訊，適用於 Claim 及 ClaimResponse 資源。 |
| [長照 SDK－案件編號（CASENO）](StructureDefinition-Ext-TW-LTC-Export-CaseNo.md) | 此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。 |
| [長照 SDK－案件－申請來源](StructureDefinition-Ext-TW-LTC-Case-Source.md) | 案件（EpisodeOfCare）之申請來源。 |
| [長照 SDK－民國年月（YYYMM）](StructureDefinition-Ext-TW-LTC-Export-YYYMM-ROC.md) | 此 Extension 用於表示長照 SDK 的民國年月（YYYMM 格式），適用於 Claim、ClaimResponse 或 OperationOutcome 資源。 |
| [長照 SDK－評估案號（EVA_ID）](StructureDefinition-Ext-TW-LTC-Export-EvaId.md) | 此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。 |
| [長照 SDK－錯誤訊息](StructureDefinition-Ext-TW-LTC-Export-Error.md) | 此 Extension 用於表示長照 SDK 回傳的錯誤訊息，適用於 ClaimResponse 或 OperationOutcome.issue。 |
| [長照支付審查－分案審核統計與承辦資訊](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.md) | 此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。 |
| [長照支付審查－服務記錄識別資訊](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.md) | 此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載每一筆服務記錄的識別資訊：服務記錄識別碼（objid／ref_objid，長度 20）、來源系統別（source_system／ref_source_system，長度 20）與申報交易序號（trans_no，長度 10）。適用於審核通過服務記錄（ClaimResponse.item）、錯誤服務記錄（ClaimResponse.error）與 A 碼加成資料區（ClaimResponse.addItem，此時承載所加成之審核通過服務記錄之 ref_objid 與 ref_source_system）。因 ClaimResponse 之各 itemSequence 元素於 FHIR R4 為 positiveInt 且語意上僅能指向單一 Claim 內之項目序號，無法承載跨 Claim 之字串識別碼，故以本 Extension 表達。 |
| [長照支付審查－清冊文件下載路徑](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.md) | 此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。 |
| [長照機構住民教育程度](StructureDefinition-ExtPatientEducationStatus-TWLTC.md) | 此 Extension 用以表述長照機構住民的教育程度。 |
| [長照機構住民經濟狀況](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md) | 此 Extension 用以表述長照機構住民的經濟狀況。 |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [個案經濟狀況值集](ValueSet-EconomyStatusVS-TWLTC.md) | 用以表述個案經濟狀況之值集，包含個案經濟狀況之描述內容。 |
| [個案身分別值集](ValueSet-PatientIdentityVS-TWLTC.md) | 個案身分別的值集 |
| [在宅急症－摘要種類值集](ValueSet-hah-summary-type.md) | 結案或轉銜摘要。 |
| [在宅急症－摘要章節值集](ValueSet-hah-section.md) | 摘要文件中的臨床章節。 |
| [在宅急症－收案評估結果值集](ValueSet-hah-eligibility.md) | 本次收案評估的建議結果。 |
| [在宅急症－服務項目值集](ValueSet-hah-service.md) | 服務請求與工作可用的本地分類；詳細檢驗或處置仍應使用適切標準代碼。 |
| [在宅急症－溝通類型值集](ValueSet-hah-communication.md) | 區分照會、交班與衛教內容。 |
| [在宅急症－療程結束原因值集](ValueSet-hah-outcome.md) | 本次療程已結束時填寫的原因。 |
| [在宅急症－訪視方式值集](ValueSet-hah-visit-mode.md) | 實地、視訊或電話評估。 |
| [地址用途擴展值集](ValueSet-AddressUseVS-TWLTC.md) | 地址的用途，新增戶籍地與現居地等代碼 |
| [壓傷狀況值集](ValueSet-ReferralConditionCrushVS-TWLTC.md) | 個案壓傷的狀況 |
| [居住狀況值集](ValueSet-ReferralConditionResidenceVS-TWLTC.md) | 個案的居住狀況 |
| [居家護理－API 作業值集](ValueSet-hn-api.md) | 限定 V5.0.16 的十二支 API 名稱。 |
| [居家護理－主要照顧時間選項](ValueSet-hn-vs-a946985c2125.md) | 限定主要照顧時間可填入的 V5.0.16 選項。 |
| [居家護理－主要照顧者關係選項](ValueSet-hn-vs-738f974cf008.md) | 限定主要照顧者關係可填入的 V5.0.16 選項。 |
| [居家護理－主要職業選項](ValueSet-hn-vs-9bf58092b1d4.md) | 限定主要職業可填入的 V5.0.16 選項。 |
| [居家護理－主要醫療決定者關係選項](ValueSet-hn-vs-b63e1293c409.md) | 限定主要醫療決定者關係可填入的 V5.0.16 選項。 |
| [居家護理－事件類型選項](ValueSet-hn-vs-4abebe47a94c.md) | 限定事件類型可填入的 V5.0.16 選項。 |
| [居家護理－交通選項](ValueSet-hn-vs-543807b1d856.md) | 限定交通可填入的 V5.0.16 選項。 |
| [居家護理－今天是幾年幾月幾日？__年__月__日選項](ValueSet-hn-vs-2a3bd76ba6eb.md) | 限定今天是幾年幾月幾日？__年__月__日可填入的 V5.0.16 選項。 |
| [居家護理－使用資源多選選項](ValueSet-hn-vs-38762eb1c742.md) | 限定使用資源多選可填入的 V5.0.16 選項。 |
| [居家護理－個案類型選項](ValueSet-hn-vs-082869c8d896.md) | 限定個案類型可填入的 V5.0.16 選項。 |
| [居家護理－假牙狀況多選選項](ValueSet-hn-vs-eee6be407d0e.md) | 限定假牙狀況多選可填入的 V5.0.16 選項。 |
| [居家護理－假牙狀況選項](ValueSet-hn-vs-a051b2c062af.md) | 限定假牙狀況可填入的 V5.0.16 選項。 |
| [居家護理－備食選項](ValueSet-hn-vs-15ba9c15ead1.md) | 限定備食可填入的 V5.0.16 選項。 |
| [居家護理－傷口分類](ValueSet-hn-wound-category.md) | V5.0.16 傷口分類；依分類選擇等級。 |
| [居家護理－傷口分類選項](ValueSet-hn-vs-ab16e9d81e7b.md) | 限定傷口分類可填入的 V5.0.16 選項。 |
| [居家護理－傷口等級](ValueSet-hn-wound-level.md) | V5.0.16 傷口等級；依分類選擇等級。 |
| [居家護理－傷口等級選項](ValueSet-hn-vs-de533dbea66c.md) | 限定傷口等級可填入的 V5.0.16 選項。 |
| [居家護理－共照名單更新方式](ValueSet-hn-update-action.md) | 區分未填或 null 的保留、非空陣列的取代及空陣列的清空。 |
| [居家護理－共照名單種類](ValueSet-hn-collection.md) | 指定需更新的共照名單。 |
| [居家護理－口腔外觀多選選項](ValueSet-hn-vs-415683173294.md) | 限定口腔外觀多選可填入的 V5.0.16 選項。 |
| [居家護理－口腔外觀選項](ValueSet-hn-vs-7c98e63372ac.md) | 限定口腔外觀可填入的 V5.0.16 選項。 |
| [居家護理－吸菸狀態選項](ValueSet-hn-vs-85c814c9b8ba.md) | 限定吸菸狀態可填入的 V5.0.16 選項。 |
| [居家護理－嚼食檳榔狀態選項](ValueSet-hn-vs-a5f17d46becb.md) | 限定嚼食檳榔狀態可填入的 V5.0.16 選項。 |
| [居家護理－大便選項](ValueSet-hn-vs-8c7bcb320a01.md) | 限定大便可填入的 V5.0.16 選項。 |
| [居家護理－如廁選項](ValueSet-hn-vs-5a0da2e50fde.md) | 限定如廁可填入的 V5.0.16 選項。 |
| [居家護理－婚姻狀況選項](ValueSet-hn-vs-924b837448d2.md) | 限定婚姻狀況可填入的 V5.0.16 選項。 |
| [居家護理－宗教信仰選項](ValueSet-hn-vs-f6130a2de850.md) | 限定宗教信仰可填入的 V5.0.16 選項。 |
| [居家護理－家務選項](ValueSet-hn-vs-b455f8b9ce05.md) | 限定家務可填入的 V5.0.16 選項。 |
| [居家護理－家庭經濟狀況選項](ValueSet-hn-vs-4a8dcdb04d9b.md) | 限定家庭經濟狀況可填入的 V5.0.16 選項。 |
| [居家護理－小便選項](ValueSet-hn-vs-d20974b4a161.md) | 限定小便可填入的 V5.0.16 選項。 |
| [居家護理－居住所選項](ValueSet-hn-vs-d93b34f7b736.md) | 限定居住所可填入的 V5.0.16 選項。 |
| [居家護理－左上肢選項](ValueSet-hn-vs-00697b86a7bc.md) | 限定左上肢可填入的 V5.0.16 選項。 |
| [居家護理－心臟問題(只包含心臟)選項](ValueSet-hn-vs-d782d810cfdd.md) | 限定心臟問題(只包含心臟)可填入的 V5.0.16 選項。 |
| [居家護理－性別選項](ValueSet-hn-vs-c8f650cb37b1.md) | 限定性別可填入的 V5.0.16 選項。 |
| [居家護理－成員職稱選項](ValueSet-hn-vs-94d2d2fdf018.md) | 限定成員職稱可填入的 V5.0.16 選項。 |
| [居家護理－排便型態選項](ValueSet-hn-vs-7f8a5cfdf9c9.md) | 限定排便型態可填入的 V5.0.16 選項。 |
| [居家護理－排便輔助多選選項](ValueSet-hn-vs-0467df08a056.md) | 限定排便輔助多選可填入的 V5.0.16 選項。 |
| [居家護理－排便顏色選項](ValueSet-hn-vs-a88d0ac6ee1a.md) | 限定排便顏色可填入的 V5.0.16 選項。 |
| [居家護理－排尿型態多選選項](ValueSet-hn-vs-b5e899beaa3a.md) | 限定排尿型態多選可填入的 V5.0.16 選項。 |
| [居家護理－排尿型態選項](ValueSet-hn-vs-5cb9bbd6d620.md) | 限定排尿型態可填入的 V5.0.16 選項。 |
| [居家護理－排尿輔助多選選項](ValueSet-hn-vs-ec686161641f.md) | 限定排尿輔助多選可填入的 V5.0.16 選項。 |
| [居家護理－排尿顏色選項](ValueSet-hn-vs-c0e4f2d08eec.md) | 限定排尿顏色可填入的 V5.0.16 選項。 |
| [居家護理－損傷類型選項](ValueSet-hn-vs-b0ba220a4535.md) | 限定損傷類型可填入的 V5.0.16 選項。 |
| [居家護理－摩擦力/剪力選項](ValueSet-hn-vs-bcd0a25d02b9.md) | 限定摩擦力/剪力可填入的 V5.0.16 選項。 |
| [居家護理－操作項目與流程選項](ValueSet-hn-vs-dfa44a5bba0b.md) | 限定操作項目與流程可填入的 V5.0.16 選項。 |
| [居家護理－收案來源選項](ValueSet-hn-vs-ef3233b113ad.md) | 限定收案來源可填入的 V5.0.16 選項。 |
| [居家護理－教育程度選項](ValueSet-hn-vs-8bcd09f153b7.md) | 限定教育程度可填入的 V5.0.16 選項。 |
| [居家護理－是否存在多重用藥問題選項](ValueSet-hn-vs-523a43c4a46a.md) | 限定是否存在多重用藥問題可填入的 V5.0.16 選項。 |
| [居家護理－是否選項](ValueSet-hn-vs-58e4d598f859.md) | 限定是否可填入的 V5.0.16 選項。 |
| [居家護理－有無與未知選項](ValueSet-hn-vs-19264db8df7b.md) | 限定有無與未知可填入的 V5.0.16 選項。 |
| [居家護理－有無選項](ValueSet-hn-vs-49fe20230ec3.md) | 限定有無可填入的 V5.0.16 選項。 |
| [居家護理－有輔助器多選選項](ValueSet-hn-vs-1c644096303f.md) | 限定有輔助器多選可填入的 V5.0.16 選項。 |
| [居家護理－有輔助器選項](ValueSet-hn-vs-8aa8b9aed3b2.md) | 限定有輔助器可填入的 V5.0.16 選項。 |
| [居家護理－服務項目多選選項](ValueSet-hn-vs-c8a0ace9ffad.md) | 限定服務項目多選可填入的 V5.0.16 選項。 |
| [居家護理－服用頻率選項](ValueSet-hn-vs-cf479df80e62.md) | 限定服用頻率可填入的 V5.0.16 選項。 |
| [居家護理－服藥選項](ValueSet-hn-vs-1c0dbbd93870.md) | 限定服藥可填入的 V5.0.16 選項。 |
| [居家護理－樓梯選項](ValueSet-hn-vs-076f2d014436.md) | 限定樓梯可填入的 V5.0.16 選項。 |
| [居家護理－水腫等級選項](ValueSet-hn-vs-c93d67023284.md) | 限定水腫等級可填入的 V5.0.16 選項。 |
| [居家護理－洗澡選項](ValueSet-hn-vs-3c038851248f.md) | 限定洗澡可填入的 V5.0.16 選項。 |
| [居家護理－洗衣選項](ValueSet-hn-vs-3435e7a5a84d.md) | 限定洗衣可填入的 V5.0.16 選項。 |
| [居家護理－活動能力選項](ValueSet-hn-vs-78444472aa70.md) | 限定活動能力可填入的 V5.0.16 選項。 |
| [居家護理－消化狀態選項](ValueSet-hn-vs-7ce3f119b854.md) | 限定消化狀態可填入的 V5.0.16 選項。 |
| [居家護理－溝通-影響日常活動選項](ValueSet-hn-vs-d9301962abbf.md) | 限定溝通-影響日常活動可填入的 V5.0.16 選項。 |
| [居家護理－溝通選項](ValueSet-hn-vs-0655870f5454.md) | 限定溝通可填入的 V5.0.16 選項。 |
| [居家護理－溫度選項](ValueSet-hn-vs-13d13792ca45.md) | 限定溫度可填入的 V5.0.16 選項。 |
| [居家護理－潮溼程度選項](ValueSet-hn-vs-548098d5ace2.md) | 限定潮溼程度可填入的 V5.0.16 選項。 |
| [居家護理－濕度選項](ValueSet-hn-vs-acfe4f6c5f3a.md) | 限定濕度可填入的 V5.0.16 選項。 |
| [居家護理－營養攝取選項](ValueSet-hn-vs-9d4f84a14066.md) | 限定營養攝取可填入的 V5.0.16 選項。 |
| [居家護理－特殊進食多選選項](ValueSet-hn-vs-3435b7eace88.md) | 限定特殊進食多選可填入的 V5.0.16 選項。 |
| [居家護理－理解選項](ValueSet-hn-vs-dc054900d0e6.md) | 限定理解可填入的 V5.0.16 選項。 |
| [居家護理－理財選項](ValueSet-hn-vs-41cb9f76208c.md) | 限定理財可填入的 V5.0.16 選項。 |
| [居家護理－發生時段選項](ValueSet-hn-vs-7d118ae5ad21.md) | 限定發生時段可填入的 V5.0.16 選項。 |
| [居家護理－睜眼選項](ValueSet-hn-vs-6380f9a50deb.md) | 限定睜眼可填入的 V5.0.16 選項。 |
| [居家護理－睡眠多選選項](ValueSet-hn-vs-c34dc3f43d82.md) | 限定睡眠多選可填入的 V5.0.16 選項。 |
| [居家護理－知覺感受選項](ValueSet-hn-vs-66dfb92df102.md) | 限定知覺感受可填入的 V5.0.16 選項。 |
| [居家護理－神經精神問題選項](ValueSet-hn-vs-5f4a5d3ebea4.md) | 限定神經精神問題可填入的 V5.0.16 選項。 |
| [居家護理－福利種類多選選項](ValueSet-hn-vs-40193bb109d6.md) | 限定福利種類多選可填入的 V5.0.16 選項。 |
| [居家護理－移位選項](ValueSet-hn-vs-5509cc9b0f4c.md) | 限定移位可填入的 V5.0.16 選項。 |
| [居家護理－移動能力選項](ValueSet-hn-vs-f466b3393017.md) | 限定移動能力可填入的 V5.0.16 選項。 |
| [居家護理－穿脫選項](ValueSet-hn-vs-723d296bd93d.md) | 限定穿脫可填入的 V5.0.16 選項。 |
| [居家護理－紀錄來源選項](ValueSet-hn-vs-04e9c37073f4.md) | 限定紀錄來源可填入的 V5.0.16 選項。 |
| [居家護理－結案原因選項](ValueSet-hn-vs-75dc5876369b.md) | 限定結案原因可填入的 V5.0.16 選項。 |
| [居家護理－緊急事件類型選項](ValueSet-hn-vs-6892f4f30c24.md) | 限定緊急事件類型可填入的 V5.0.16 選項。 |
| [居家護理－緊急聯絡人關係選項](ValueSet-hn-vs-2029890a4c12.md) | 限定緊急聯絡人關係可填入的 V5.0.16 選項。 |
| [居家護理－聽力-輔具多選選項](ValueSet-hn-vs-f0b4522906b6.md) | 限定聽力-輔具多選可填入的 V5.0.16 選項。 |
| [居家護理－聽力-部位多選選項](ValueSet-hn-vs-7bc89358fe37.md) | 限定聽力-部位多選可填入的 V5.0.16 選項。 |
| [居家護理－肌力-輔具多選選項](ValueSet-hn-vs-1a72d15a5965.md) | 限定肌力-輔具多選可填入的 V5.0.16 選項。 |
| [居家護理－腸蠕動選項](ValueSet-hn-vs-3d4ed1f2575b.md) | 限定腸蠕動可填入的 V5.0.16 選項。 |
| [居家護理－腹部狀態選項](ValueSet-hn-vs-b42a51b1139e.md) | 限定腹部狀態可填入的 V5.0.16 選項。 |
| [居家護理－若BMI 無法取得，用小腿圍或臂中圍代替(公分)選項](ValueSet-hn-vs-5d29c89b2d60.md) | 限定若BMI 無法取得，用小腿圍或臂中圍代替(公分)可填入的 V5.0.16 選項。 |
| [居家護理－藥物類別多選選項](ValueSet-hn-vs-6d733f47d6f4.md) | 限定藥物類別多選可填入的 V5.0.16 選項。 |
| [居家護理－行動力選項](ValueSet-hn-vs-3baefb430e5b.md) | 限定行動力可填入的 V5.0.16 選項。 |
| [居家護理－行動能力問題選項](ValueSet-hn-vs-1ffa1d5d3bef.md) | 限定行動能力問題可填入的 V5.0.16 選項。 |
| [居家護理－行為多選選項](ValueSet-hn-vs-46c8866533a0.md) | 限定行為多選可填入的 V5.0.16 選項。 |
| [居家護理－行為選項](ValueSet-hn-vs-365bfce838bb.md) | 限定行為可填入的 V5.0.16 選項。 |
| [居家護理－衛生選項](ValueSet-hn-vs-c1223cdffc0c.md) | 限定衛生可填入的 V5.0.16 選項。 |
| [居家護理－視力-輔具多選選項](ValueSet-hn-vs-afadc3bb2a88.md) | 限定視力-輔具多選可填入的 V5.0.16 選項。 |
| [居家護理－視力-部位多選選項](ValueSet-hn-vs-2fd20e6427ff.md) | 限定視力-部位多選可填入的 V5.0.16 選項。 |
| [居家護理－視力選項](ValueSet-hn-vs-ef4daeacd99a.md) | 限定視力可填入的 V5.0.16 選項。 |
| [居家護理－言語狀態選項](ValueSet-hn-vs-a370027f399e.md) | 限定言語狀態可填入的 V5.0.16 選項。 |
| [居家護理－評估項目選項](ValueSet-hn-vs-14764e5914f7.md) | 限定評估項目可填入的 V5.0.16 選項。 |
| [居家護理－語言選項](ValueSet-hn-vs-d2f289370ed0.md) | 限定語言可填入的 V5.0.16 選項。 |
| [居家護理－說話選項](ValueSet-hn-vs-3330cbe2f937.md) | 限定說話可填入的 V5.0.16 選項。 |
| [居家護理－購物選項](ValueSet-hn-vs-cbfa2194bae7.md) | 限定購物可填入的 V5.0.16 選項。 |
| [居家護理－走動選項](ValueSet-hn-vs-9a2ed66b6061.md) | 限定走動可填入的 V5.0.16 選項。 |
| [居家護理－足部護理評估狀態選項](ValueSet-hn-vs-5154109e8985.md) | 限定足部護理評估狀態可填入的 V5.0.16 選項。 |
| [居家護理－跌倒多選選項](ValueSet-hn-vs-3bbfa4b4f8db.md) | 限定跌倒多選可填入的 V5.0.16 選項。 |
| [居家護理－身障類別](ValueSet-hn-disability-type.md) | 重用長照新制身心障礙類型代碼，限居護 V5.0.16 的第一至第八類。 |
| [居家護理－身體質量指數(BMI)=體重(公斤)/身高(公尺)2選項](ValueSet-hn-vs-b8e0b67e2012.md) | 限定身體質量指數(BMI)=體重(公斤)/身高(公尺)2可填入的 V5.0.16 選項。 |
| [居家護理－近三個月體重變化選項](ValueSet-hn-vs-bff7df80c996.md) | 限定近三個月體重變化可填入的 V5.0.16 選項。 |
| [居家護理－進食選項](ValueSet-hn-vs-c020bc6f582f.md) | 限定進食可填入的 V5.0.16 選項。 |
| [居家護理－運動選項](ValueSet-hn-vs-784e3567e13b.md) | 限定運動可填入的 V5.0.16 選項。 |
| [居家護理－過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？選項](ValueSet-hn-vs-cfb0b454818b.md) | 限定過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？可填入的 V5.0.16 選項。 |
| [居家護理－重大事件項目多選選項](ValueSet-hn-vs-fe3736bbd09e.md) | 限定重大事件項目多選可填入的 V5.0.16 選項。 |
| [居家護理－關係選項](ValueSet-hn-vs-9570830f5a60.md) | 限定關係可填入的 V5.0.16 選項。 |
| [居家護理－電話選項](ValueSet-hn-vs-fa9ab3cef6b1.md) | 限定電話可填入的 V5.0.16 選項。 |
| [居家護理－需求類型選項](ValueSet-hn-vs-bc943cb432ce.md) | 限定需求類型可填入的 V5.0.16 選項。 |
| [居家護理－項目分類選項](ValueSet-hn-vs-0a65df60cccf.md) | 限定項目分類可填入的 V5.0.16 選項。 |
| [居家護理－顏色選項](ValueSet-hn-vs-ed3fafa578d2.md) | 限定顏色可填入的 V5.0.16 選項。 |
| [居家護理－飲酒狀態選項](ValueSet-hn-vs-5f96e05811ec.md) | 限定飲酒狀態可填入的 V5.0.16 選項。 |
| [支付審查－AA10 申報狀態](ValueSet-vs-tw-ltc-feeaudit-aa10-status.md) | 此 ValueSet 用於表示支付審核系統服務記錄申報之 AA10（夜間緊急服務）申報狀態（aa10_status）。 |
| [支付審查－API 功能](ValueSet-vs-tw-ltc-feeaudit-api-function.md) | 此 ValueSet 用於表示支付審核系統的 API 功能名稱，代碼包含：FeeApply（服務記錄申報）、ObjDel（服務紀錄刪除）、appCompletionNotice（申報確認通知）、appCancel（服務單位撤回）、CancelResultResponse（取消交易單處理結果回報）。 |
| [支付審查－API 回覆結果代碼](ValueSet-vs-tw-ltc-feeaudit-rtncode.md) | 此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式所定義之回覆結果代碼（rtncode），用於表示 API 交易之處理結果，代碼包含：0（成功回傳）、1～14（請求參數與申報條件檢核錯誤）、20（無訪問權限）、25（執行頻率限制）、30（輸入參數錯誤）、40（查無資料）、50（DB 錯誤）、90（發生無法預期錯誤）。 |
| [支付審查－API 執行狀況](ValueSet-vs-tw-ltc-feeaudit-api-status.md) | 此 ValueSet 用於表示支付審核系統 API 交易單的執行狀況，代碼包含：0（待處理）、1（處理中）、3（錯誤）、4（處理完成）。 |
| [支付審查－專業服務復能目標達成情形](ValueSet-vs-tw-ltc-feeaudit-svcc-goal-type.md) | 此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type），申報 C 碼時填寫。 |
| [支付審查－服務對象](ValueSet-vs-tw-ltc-feeaudit-svc-people.md) | 此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people），申報 AA00 必填寫。 |
| [支付審查－服務紀錄補充資訊類別](ValueSet-vs-tw-ltc-feeaudit-supporting-info.md) | 此 ValueSet 涵蓋支付審核系統「服務記錄申報（FeeApply）」中隨照顧組合代碼特化之補充資訊分類碼，適用於 Claim.supportingInfo.category，包含 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等類別。 |
| [支付審查－服務重點](ValueSet-vs-tw-ltc-feeaudit-svc-point.md) | 此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point），申報 AA00 填寫。 |
| [支付審查－服務項目](ValueSet-vs-tw-ltc-feeaudit-svc-item.md) | 此 ValueSet 用於表示支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item），申報 AA00 必填寫。 |
| [支付審查－服務類別](ValueSet-vs-tw-ltc-feeaudit-fee-type.md) | 此 ValueSet 用於表示支付審核系統服務記錄申報之服務類別（svc_fee_tp），區分補助與自費。 |
| [支付審查－核定金額類別](ValueSet-vs-tw-ltc-feeaudit-adjudication.md) | 此 ValueSet 用於表示支付審核分案審核明細中各項金額的類別，代碼包含：approveFee（核定金額）、incInAcc（核增金額）、decInAcc（核減金額）、copayment（自付額）、aSvcFee（政策鼓勵金額）、tempPaymentFee（分案暫付金額）、price（單價）、submitted（申請核銷金額）。 |
| [支付審查－核銷狀況](ValueSet-vs-tw-ltc-feeaudit-case-status.md) | 此 ValueSet 用於表示支付審核系統中分案的核銷狀況，代碼包含：0（已分案待電腦審核處理）、1（待通知收件）、2（已通知待收件）、3（審核中）、4（等待總表）、5（審計待審）、6（結案）。 |
| [支付審查－清冊文件類別](ValueSet-vs-tw-ltc-feeaudit-doc-type.md) | 此 ValueSet 用於表示支付審核分案審核明細所提供之清冊與總表文件類別，代碼包含：tempPaymentDoc（暫付總表）、caseSummaryNotice（總表）、caseSvcList（清冊）、caseSvcListExcel（清冊EXCEL）、caseASvcList（A碼清冊）、caseASvcListExcel（A碼清冊EXCEL）、caseErrList（申請記錄不通過清冊）、caseErrListExcel（申請記錄不通過EXCEL清冊）。 |
| [支付審查－社區式服務交通接送服務使用類型](ValueSet-vs-tw-ltc-feeaudit-bd03-type.md) | 此 ValueSet 用於表示支付審核系統服務記錄申報之社區式服務交通接送（BD03）服務使用類型（bd03_type）。 |
| [支付審查－縣市代碼](ValueSet-vs-tw-ltc-feeaudit-city.md) | 此 ValueSet 用於表示支付審核系統中分案、申請單與服務紀錄所屬之縣市，代碼取自 city_cd 代碼表，共 22 個直轄市、縣（市）：09007（連江縣）、09020（金門縣）、10002（宜蘭縣）、10004（新竹縣）、10005（苗栗縣）、10007（彰化縣）、10008（南投縣）、10009（雲林縣）、10010（嘉義縣）、10013（屏東縣）、10014（臺東縣）、10015（花蓮縣）、10016（澎湖縣）、10017（基隆市）、10018（新竹市）、10020（嘉義市）、63000（臺北市）、64000（高雄市）、65000（新北市）、66000（臺中市）、67000（臺南市）、68000（桃園市）。 |
| [支付審查－錯誤代碼](ValueSet-vs-tw-ltc-feeaudit-error-code.md) | 此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》所定義之全部錯誤代碼（err_code），用於服務紀錄申報、撤回、審查結果回覆等交易之錯誤原因表達，包含欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）共 176 項代碼。 |
| [教育程度值集](ValueSet-EducationStatusVS-TWLTC.md) | 用以表述教育程度之值集，包含教育程度之描述內容。 |
| [照顧目標描述值集](ValueSet-GoalDescriptionVS-TWLTC.md) | 照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集列舉臺灣長期照顧情境常用之 SNOMED CT 照顧目標代碼，綁定強度為 extensible，實作者可依需求使用其他 SNOMED CT 或 LOINC 代碼。 |
| [疾病嚴重度擴展值集](ValueSet-ConditionSeverityVS-TWLTC.md) | 用以表述疾病嚴重度之擴展值集，包含疾病嚴重度之描述內容。配合身心障礙手冊障礙程度分級，包含輕度、中度、重度、極重度等代碼。 |
| [看護狀況值集](ValueSet-ReferralConditionCaregiverVS-TWLTC.md) | 個案雇用看護的狀況 |
| [管路狀況值集](ValueSet-ReferralConditionTubeVS-TWLTC.md) | 個案持有管路的狀況 |
| [臺灣 2023 年中文版 ICD-10-PCS-F 值集](ValueSet-ICD-10-PCS-2023-TW-F-VS.md) | 臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [臺灣長照服務項目](ValueSet-vs-tw-ltc-service-item.md) | 此 ValueSet 涵蓋臺灣長照 2.0 給付之所有服務項目代碼，適用於長照服務之申請、核定與使用紀錄，包含照顧組合、專業服務、交通接送、喘息服務等項目。 |
| [跌倒紀錄結果值集](ValueSet-FallHistoryResultVS-TWLTC.md) | 紀錄住民跌倒的偵測結果。 |
| [身心障礙手冊持有狀況值集](ValueSet-ConditionDisabilityVS-TWLTC.md) | 個案持有身心障礙手冊的狀況 |
| [身心障礙類型值集](ValueSet-ConditionDisabilityTypeVS-TWLTC.md) | 個案身心障礙類型 |
| [身體活動量測-暫用代碼值集](ValueSet-TempCodeVS-Sport.md) | 身體活動量測暫時使用的代碼，目前無官方代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合官方代碼更新。 |
| [身體活動量測-最近(目前)運動史值集](ValueSet-ExerciseHistoryVS-Sport.md) | 最近(目前)運動史。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-步態分析值集](ValueSet-GaitTypeVS-Sport.md) | 用於描述步態（walking gait）時腳的着地位置和運動模式。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-步態週期值集](ValueSet-GaitCycleVS-Sport.md) | 一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-跑步機類型值集](ValueSet-TreadmillTypeVS-Sport.md) | 用於描述跑步機的類型。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-適用運動處方之服務請求代碼值集](ValueSet-ServiceRequestPAVS-Sport.md) | 適用運動處方之服務請求代碼。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-重量訓練代碼值集](ValueSet-SportTrainingVS-Sport.md) | 定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [轉介單申請服務種類值集](ValueSet-ReferralCarePlanVS-TWLTC.md) | 轉介單申請服務種類的值集 |
| [長照 SDK－CMS 等級](ValueSet-vs-tw-ltc-cmslevel.md) | 此 ValueSet 用於表示長照 SDK 中的 CMS（照顧管理評估量表）等級。 |
| [長照 SDK－個案狀態](ValueSet-vs-tw-ltc-case-status.md) | 此 ValueSet 用於表示長照 SDK 中個案的狀態，使用 FHIR EpisodeOfCare status 對應碼：active（服務中）、onhold（暫停服務）、finished（已結案）。 |
| [長照 SDK－服務別（核定）](ValueSet-vs-tw-ltc-service-group.md) | 此 ValueSet 用於表示長照 SDK 中的服務別（核定）。 |
| [長照 SDK－服務活動](ValueSet-vs-tw-ltc-service-activity.md) | 此 ValueSet 彙整長照照管服務活動紀錄使用之代碼。 |
| [長照 SDK－核定額度欄位](ValueSet-vs-tw-ltc-benefit-type.md) | 此 ValueSet 用於表示長照 SDK 中的核定額度欄位。 |
| [長照 SDK－申請來源](ValueSet-vs-tw-ltc-case-source.md) | 此 ValueSet 用於表示長照 SDK 中個案的申請來源。 |
| [長照 SDK－異常紀錄－文字區塊類型](ValueSet-vs-tw-ltc-incident-texttype.md) | 此 ValueSet 用於表示長照 SDK 異常紀錄中的文字區塊類型。 |
| [長照 SDK－異常紀錄－異常類別](ValueSet-vs-tw-ltc-incident-category.md) | 此 ValueSet 用於表示長照 SDK 異常紀錄的異常類別。 |
| [長照 SDK－異常紀錄－通報方式](ValueSet-vs-tw-ltc-incident-notifmethod.md) | 此 ValueSet 用於表示長照 SDK 異常紀錄的通報方式。 |
| [長照 SDK－評估核定摘要欄位碼](ValueSet-vs-tw-ltc-assessment-component.md) | 此 ValueSet 用於表示長照 SDK 評估核定摘要的欄位碼。 |
| [長照 SDK－評估類型](ValueSet-vs-tw-ltc-assessment-type.md) | 此 ValueSet 用於表示長照 SDK 中的評估類型。 |
| [長照 SDK－長照福利身分](ValueSet-vs-tw-ltc-welfare-identity.md) | 此 ValueSet 用於表示長照 SDK 中的長照福利身分。 |
| [關係類型擴展值集](ValueSet-RelationshipTypeVS-TWLTC.md) | 關係人與個案的關係類型擴展代碼值集，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼 |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [個案身分別代碼](CodeSystem-PatientIdentityCS-TWLTC.md) | 個案身分別代碼 |
| [個案身心障礙手冊持有狀態代碼](CodeSystem-ConditionDisabilityCS-TWLTC.md) | 用於表述個案的身心障礙手冊持有狀態代碼。 |
| [個案身心障礙類型代碼（新制）](CodeSystem-ConditionDisabilityTypeCS-TWLTC.md) | 用於表述個案的身心障礙類型代碼（新制）。 |
| [個案身心障礙類型代碼（舊制）](CodeSystem-ConditionDisabilityLegacyTypeCS-TWLTC.md) | 用於表述個案的身心障礙類型代碼（舊制）。 |
| [在宅急症－摘要種類與章節代碼](CodeSystem-hah-document.md) | 本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。 |
| [在宅急症－收案評估結果代碼](CodeSystem-hah-eligibility.md) | 評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。 |
| [在宅急症－照護活動代碼](CodeSystem-hah-activity.md) | 本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。 |
| [在宅急症－療程結束原因代碼](CodeSystem-hah-outcome.md) | 區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。 |
| [在宅急症－訪視方式代碼](CodeSystem-hah-visit-mode.md) | 記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。 |
| [地址用途擴展識別碼](CodeSystem-AddressUseCS-TWLTC.md) | 地址用途的擴展識別碼，新增戶籍地與現居地等代碼 |
| [居家護理－介接作業代碼](CodeSystem-hn-workflow.md) | 居家護理 API 作業名稱及本 IG 的更新指示。 |
| [居家護理－表單選項代碼](CodeSystem-hn-answer.md) | 依 V5.0.16 有效選項定義；代碼由本 IG 配發，原 API 傳輸中文顯示文字。相同選項共用代碼，各 ValueSet 限定適用欄位。 |
| [支付審查－AA10 申報狀態](CodeSystem-cs-tw-ltc-feeaudit-aa10-status.md) | 衛生福利部支付審核系統 API（照管平台）服務記錄申報之「AA10 申報狀態」（aa10_status）代碼，用以表示夜間緊急服務（AA10）之申報與確認情形，預設為 0（未申報）。 |
| [支付審查－API 功能](CodeSystem-cs-tw-ltc-feeaudit-api-function.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「API Function－API Function 名稱」之代碼，用於表示交易單所對應的支付審核系統 API 功能。 |
| [支付審查－API 回覆結果代碼](CodeSystem-cs-tw-ltc-feeaudit-rtncode.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式中「rtncode－回覆結果代碼」之代碼，用於表示支付審核系統對服務提供單位所送 API 請求之處理結果，包含成功回傳、參數檢核錯誤、權限與流量限制及系統異常等情形。 |
| [支付審查－API 執行狀況](CodeSystem-cs-tw-ltc-feeaudit-api-status.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－API執行狀況」之代碼，用於表示服務單位所送交易單於支付審核系統之處理狀況。 |
| [支付審查－專業服務復能目標達成情形](CodeSystem-cs-tw-ltc-feeaudit-svcc-goal-type.md) | 支付審核系統（照管平台）個案服務紀錄之「專業服務復能目標達成情形」（svcc_goal_type）代碼，申報 C 碼（專業服務）時填寫，單選。 |
| [支付審查－服務對象](CodeSystem-cs-tw-ltc-feeaudit-svc-people.md) | 
| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people）代碼，申報 AA00 必填寫，可複選（原始電文以「 | 」分隔多個選項）。 |
 |
| [支付審查－服務紀錄補充資訊類別](CodeSystem-cs-tw-ltc-feeaudit-supporting-info.md) | 《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「服務記錄申報（FeeApply）」中，隨照顧組合代碼（gov_item_cd）而特化之欄位分類碼，作為 Claim.supportingInfo.category 之取值，用以承載 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等補充資訊。 |
| [支付審查－服務重點](CodeSystem-cs-tw-ltc-feeaudit-svc-point.md) | 
| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point）代碼，申報 AA00 填寫，可複選（原始電文以「 | 」分隔多個選項）。 |
 |
| [支付審查－服務項目](CodeSystem-cs-tw-ltc-feeaudit-svc-item.md) | 
| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item）代碼，申報 AA00 必填寫，可複選（原始電文以「 | 」分隔多個選項）。 |
 |
| [支付審查－服務類別](CodeSystem-cs-tw-ltc-feeaudit-fee-type.md) | 衛生福利部支付審核系統 API（照管平台）服務記錄申報之「服務類別」（svc_fee_tp）代碼，用以區分該筆個案服務紀錄係由政府補助或由民眾自費支付。 |
| [支付審查－核定金額類別](CodeSystem-cs-tw-ltc-feeaudit-adjudication.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項金額欄位之類別代碼，供 ClaimResponse.total.category 與 ClaimResponse.item.adjudication.category 使用。其中核定金額（approveFee）、核增金額（incInAcc）、核減金額（decInAcc）、政策鼓勵金額（aSvcFee）、分案暫付金額（tempPaymentFee）為長照支付審查特有、國際標準無對應者；申請核銷金額（submitted）、自付額（copayment）與單價（price）則與 HL7 標準代碼系統 http://terminology.hl7.org/CodeSystem/adjudication 之 submitted、copay、eligible 語意相近，本 CodeSystem 為保持同一組金額類別代碼之一致性而一併收錄，實作者於跨國情境交換時得改用該標準代碼。 |
| [支付審查－核銷狀況](CodeSystem-cs-tw-ltc-feeaudit-case-status.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－核銷狀況」之代碼，用於表示分案在支付審核流程中的核銷處理狀況。 |
| [支付審查－清冊文件類別](CodeSystem-cs-tw-ltc-feeaudit-doc-type.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項下載路徑所對應的清冊與總表文件類別代碼。 |
| [支付審查－社區式服務交通接送服務使用類型](CodeSystem-cs-tw-ltc-feeaudit-bd03-type.md) | 衛生福利部支付審核系統 API（照管平台）服務記錄申報之「社區式服務交通接送（BD03）服務使用類型」（bd03_type）代碼，申報 BD03 照顧組合時必填，預設為 1（社區式長照機構）。 |
| [支付審查－縣市代碼](CodeSystem-cs-tw-ltc-feeaudit-city.md) | 衛生福利部支付審核系統（照管平台）API 規格說明書 v2.2.1 之 city_cd（縣市名稱）代碼表，共 22 個直轄市、縣（市），用於標示分案、申請單與服務紀錄所屬之縣市。本代碼系統為支付審核系統專用代碼，與 TW Core IG 之郵遞區號代碼系統（TWPostalCode3／TWPostalCode5／TWPostalCode6，https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw 等）用途不同，郵遞區號用於表述地址之投遞區域，本代碼系統則用於表述支付審核業務之行政轄區歸屬，兩者不可互相替代。 |
| [支付審查－錯誤代碼](CodeSystem-cs-tw-ltc-feeaudit-error-code.md) | 此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「err_code－錯誤代碼與訊息」之代碼，用於表示服務紀錄申報、審查與回覆過程中所產生之各項錯誤原因，涵蓋欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）。 |
| [教育程度代碼](CodeSystem-EducationStatusCS-TWLTC.md) | 用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。 |
| [經濟狀況代碼](CodeSystem-EconomyStatusCS-TWLTC.md) | 用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。 此代碼比照警政署偵查筆錄制式格式之選項進行設計。 |
| [臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學](CodeSystem-ICD-10-PCS-2023-TW-F-CS.md) | 臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [臺灣長照服務項目代碼](CodeSystem-cs-tw-ltc-service-item.md) | 臺灣長照 2.0 給付之服務項目代碼（AA..GA 系列），涵蓋照顧組合、專業服務、交通接送、喘息服務等項目，適用於長照服務之申請、核定與使用紀錄。 |
| [身體活動量測-暫用代碼](CodeSystem-TempCodeCS-Sport.md) | 身體活動量測暫時使用的代碼，目前無官方代碼。本 CodeSystem 繼承自身體活動量測 IG，後續將配合官方代碼更新。 |
| [身體活動量測-步態週期](CodeSystem-GaitCycleCS-Sport.md) | 一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [身體活動量測-重量訓練代碼系統](CodeSystem-SportTrainingCS-Sport.md) | 此代碼系統定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
| [轉介單壓傷狀況代碼](CodeSystem-ReferralConditionCrushCS-TWLTC.md) | 用於表述個案的壓傷狀況。 |
| [轉介單居住狀況代碼](CodeSystem-ReferralConditionResidenceCS-TWLTC.md) | 用於表述個案的居住狀況 |
| [轉介單申請服務種類代碼](CodeSystem-ReferralCarePlanCS-TWLTC.md) | 用於表述個案欲申請的服務項目。 |
| [轉介單看護狀況代碼](CodeSystem-ReferralConditionCaregiverCS-TWLTC.md) | 用於表述個案雇用看護的狀況。 |
| [轉介單管路狀況代碼](CodeSystem-ReferralConditionTubeCS-TWLTC.md) | 用於表述轉介單的狀況代碼，包含身心障礙手冊、管路、壓傷、居住狀況、看護、主要問題及需求等。 |
| [長照 SDK－CMS 等級](CodeSystem-cs-tw-ltc-cmslevel.md) | 對應 r2.5：1, 1a, 1b, 2..8。 |
| [長照 SDK－Composition 章節代碼](CodeSystem-cs-tw-ltc-section-code.md) | 用於長照 Composition 資源中各章節（section）的區段識別代碼。 |
| [長照 SDK－個案狀態](CodeSystem-cs-tw-ltc-case-status.md) | 對應 r1.3：服務中、暫停服務、已結案。使用 FHIR EpisodeOfCare status 對應碼。 |
| [長照 SDK－服務別（核定用）](CodeSystem-cs-tw-ltc-service-group.md) | 此 CodeSystem 定義長照 SDK 中的服務別（核定用）代碼。 |
| [長照 SDK－服務活動代碼](CodeSystem-cs-tw-ltc-service-activity.md) | 此 CodeSystem 定義長照照管服務活動紀錄所使用之代碼。 |
| [長照 SDK－核定額度－金流欄位](CodeSystem-cs-tw-ltc-benefit-type.md) | 此 CodeSystem 定義長照 SDK 核定額度中的金流欄位代碼。 |
| [長照 SDK－申請來源（暫行）](CodeSystem-cs-tw-ltc-case-source.md) | 申請來源常見分類（待以 Excel 實值更新）。 |
| [長照 SDK－異常紀錄－文字區塊類型](CodeSystem-cs-tw-ltc-incident-texttype.md) | 區分各段文字（描述、過程、後續處理、改善建議）。 |
| [長照 SDK－異常紀錄－異常類別](CodeSystem-cs-tw-ltc-incident-category.md) | 表單『異常類別』多選。 |
| [長照 SDK－異常紀錄－通報方式](CodeSystem-cs-tw-ltc-incident-notifmethod.md) | 表單『通報方式』多選。 |
| [長照 SDK－評估核定摘要－欄位碼](CodeSystem-cs-tw-ltc-assessment-component.md) | 此 CodeSystem 定義長照 SDK 評估核定摘要的欄位碼。 |
| [長照 SDK－評估類型](CodeSystem-cs-tw-ltc-assessment-type.md) | 對應 r2.8 / r3.21：出院銜接、初評、複評、計畫異動、舊系統無評估轉入、身障居服匯入、AA計劃異動。 |
| [長照 SDK－長照福利身分](CodeSystem-cs-tw-ltc-welfare-identity.md) | 此 CodeSystem 定義長照 SDK 中的長照福利身分代碼。 |
| [關係類型擴展代碼](CodeSystem-RelationshipTypeCS-TWLTC.md) | 關係人與個案的關係類型擴展代碼，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [CDR 評估範例](Binary-cdr-assessment-example.md) | 一個完整的 CDR 評估範例 |
| [CMS評估個案範例](Patient-ltc-patient-cms-example.md) | 一個接受CMS評估的長照個案範例 |
| [MMSE 評估範例](Binary-mmse-assessment-example.md) | 一個完整的 MMSE 評估範例 |
| [SOF問卷](Questionnaire-ltc-questionnaire-sof.md) | 轉介流程中SOF問卷 |
| [SOF問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-sof-example.md) | 轉介流程中SOF問卷的回應範例 |
| [一組生命徵象檢驗檢查範例](Observation-ltc-observation-vital-signs-panel-example.md) | 一個一組生命徵象檢驗檢查的範例，展示如何使用 LTCObservationVitalSignsPanel Profile |
| [主要照護者工作與支持問卷](Questionnaire-ltc-questionnaire-caregiver-support.md) | CMS評估表中主要照護者工作與支持問卷 |
| [主要照顧者範例](RelatedPerson-ltc-related-person-primary-caregiver-example.md) | 一個主要照顧者的範例，展示如何使用 LTCRelatedPerson Profile |
| [主要照顧者範例（轉介用）](RelatedPerson-ltc-related-person-primary-caregiver-referral-example.md) | 轉介單使用之主要照顧者範例，patient 指向轉介個案 |
| [主要照顧者負荷問卷](Questionnaire-ltc-questionnaire-caregiver-load.md) | CMS評估表中照顧者負荷問卷 |
| [內臟脂肪指數測量範例](Observation-pasport-observation-visceral-fat-index-example.md) | 一個內臟脂肪指數測量的範例，展示如何使用 PASportObservationVisceralFatIndex Profile 來記錄身體組成分析 |
| [內臟脂肪面積測量範例](Observation-pasport-observation-visceral-fat-area-example.md) | 一個內臟脂肪面積測量的範例，展示如何使用 PASportObservationVisceralFatArea Profile 來記錄身體組成分析 |
| [再次收案後轉院的療程範例](EpisodeOfCare-hah-transfer-episode.md) | 同一個案再次收案建立新療程，以轉院結束。 |
| [去脂體重測量範例](Observation-pasport-observation-fat-free-mass-example.md) | 一個去脂體重測量的範例，展示如何使用 PASportObservationFatFreeMass Profile 來記錄身體組成分析 |
| [呼吸速率測量範例](Observation-pasport-observation-respiratory-rate-example.md) | 一個呼吸速率測量的範例，展示如何使用 PASportObservationRespiratoryRate Profile 來記錄呼吸速率資料 |
| [問卷回覆範例](QuestionnaireResponse-ltc-questionnaire-response-example.md) | 一個問卷回覆的範例，展示如何使用 LTCQuestionnaireResponse Profile 來記錄問卷回覆 |
| [在宅急症個案範例](Patient-hah-patient.md) | 合成個案，供本主題所有臨床範例參照。 |
| [在宅急症同意文件附件範例](DocumentReference-hah-attachment.md) | 以內嵌文字示範附件交換，內容為合成資料。 |
| [在宅急症完成療程範例](EpisodeOfCare-hah-episode.md) | 本次合成療程完成治療後結案。 |
| [在宅急症實地訪視範例](Encounter-hah-visit.md) | 實地訪視，參照同一收案與整段照護。 |
| [在宅急症工作完成範例](Task-hah-task.md) | 團隊負責的檢驗工作，區分預定期限與實際執行時間。 |
| [在宅急症持續輸注範例](MedicationAdministration-hah-infusion.md) | 示範 effectivePeriod 與給藥速率，數值為合成資料。 |
| [在宅急症收案評估範例](QuestionnaireResponse-hah-assessment.md) | 合成評估內容，只示範資料結構，不代表任何給付資格判定。 |
| [在宅急症整段照護範例](Encounter-hah-admission.md) | 整段在宅照護，與多次實地及遠距訪視分開。 |
| [在宅急症服務機構範例](Organization-hah-organization.md) | 合成機構，重用長照機構 Profile。 |
| [在宅急症未給藥範例](MedicationAdministration-hah-medication-not-done.md) | 未執行時保留原因，不虛構給藥劑量。 |
| [在宅急症檢驗報告範例](DiagnosticReport-hah-report.md) | 檢驗報告參照單項結果、醫囑與檢體。 |
| [在宅急症檢驗請求範例](ServiceRequest-hah-lab-request.md) | 示範檢驗醫囑與後續檢驗報告連結。 |
| [在宅急症檢體範例](Specimen-hah-specimen.md) | 直接重用 TW Core 檢體 Profile。 |
| [在宅急症照會回覆範例](Communication-hah-communication.md) | 示範照會請求、回覆與接續工作之區別。 |
| [在宅急症照會請求範例](ServiceRequest-hah-consult-request.md) | 示範專業照會與回覆的關聯。 |
| [在宅急症照護同意範例](Consent-hah-consent.md) | 示範病人同意、來源文件及療程關聯，不代表 DNR 醫囑。 |
| [在宅急症照護地點範例](Location-hah-location.md) | 重用個案位置 Profile 表達個案自宅。 |
| [在宅急症照護目標範例](Goal-hah-goal.md) | 示範個別照護目標與預期完成日期。 |
| [在宅急症照護計畫範例](CarePlan-hah-plan.md) | 計畫參照結構化服務請求、診斷與目標。 |
| [在宅急症結案摘要範例](Composition-hah-summary.md) | 以七個章節整理完成療程的合成資料。 |
| [在宅急症結案文件範例](Bundle-hah-document.md) | 包含摘要與所有參照資源的合成文件。 |
| [在宅急症臨床評估範例](ClinicalImpression-hah-impression.md) | 以資源參照連結實測資料，避免重複塞入 note JSON。 |
| [在宅急症處置範例](Procedure-hah-procedure.md) | 示範已完成的照護處置及實際執行者。 |
| [在宅急症血糖檢驗範例](Observation-hah-glucose.md) | 血糖使用檢驗結果 Profile，不套用生命徵象分類。 |
| [在宅急症診斷範例](Condition-hah-condition.md) | 合成案例中的呼吸道感染診斷，不代表收案資格或治療建議。 |
| [在宅急症跨機構團隊範例](CareTeam-hah-team.md) | 示範同一團隊可包含人員與機構成員。 |
| [在宅急症輸注處方範例](MedicationRequest-hah-medication-order.md) | 僅示範資料結構的合成處方，不作臨床治療或劑量建議。 |
| [在宅急症轉院摘要範例](Composition-hah-transfer-summary.md) | 資訊不足的章節明確標示未提供，不能解讀為無疾病或無用藥。 |
| [在宅急症轉院整段照護範例](Encounter-hah-transfer-admission.md) | 將轉出時間與目的機構記錄在本次整段照護。 |
| [在宅急症轉院文件範例](Bundle-hah-transfer-document.md) | 包含摘要與所有參照資源的合成文件。 |
| [在宅急症轉院申請範例](ServiceRequest-hah-transfer-request.md) | 申請轉院與接收機構，不將申請狀態視為對方已完成就醫。 |
| [在宅急症過敏資訊範例](AllergyIntolerance-hah-allergy.md) | 示範已確認的物質與反應，不能由原始過敏布林旗標直接產生。 |
| [在宅急症遠距訪視範例](Encounter-hah-video-visit.md) | 已完成的視訊評估，並非視訊會議邀請。 |
| [在宅急症醫療人員範例](Practitioner-hah-practitioner.md) | 合成人員，重用長照醫事人員 Profile。 |
| [在宅急症體溫計範例](Device-hah-device.md) | 設備編號使用 identifier，不宣稱為正式 UDI。 |
| [在宅急症體溫量測範例](Observation-hah-temperature.md) | 直接重用既有基礎生理量測 Profile，補上在宅急症就診與設備參照。 |
| [基礎代謝率測量範例](Observation-pasport-observation-basal-metabolic-rate-example.md) | 一個基礎代謝率測量的範例，展示如何使用 PASportObservationBasalMetabolicRate Profile 來記錄身體組成分析 |
| [安靜心率測量範例](Observation-pasport-observation-resting-heart-rate-example.md) | 一個安靜心率測量的範例，展示如何使用 PASportObservationRestingHeartRate Profile 來記錄安靜心率資料 |
| [家庭照顧者狀況範例](Condition-ltc-condition-caregiver-family-example.md) | 一個家庭照顧者狀況的範例，展示如何使用 LTCConditionCaregiver Profile |
| [家庭照顧者狀況範例（轉介用）](Condition-ltc-condition-caregiver-family-referral-example.md) | 轉介單使用之家庭照顧者狀況 Condition 範例 |
| [居家環境與社會參與問卷](Questionnaire-ltc-questionnaire-society.md) | CMS評估表中居家環境與社會參與問卷 |
| [居家環境與社會參與問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-society-example.md) | CMS評估表中居家環境與社會參與問卷的回應範例 |
| [居家護理上傳已接收範例](Task-hn-upload-task-example.md) | code 200 表示檔案已上傳，任務仍等待排程匯入；另示範只清空親友名單。 |
| [居家護理依日期查詢範例](Task-hn-getlog-task-example.md) | 指定起始日，省略結束日，由來源 API 採起始日隔天。 |
| [居家護理依追蹤碼查詢範例](Task-hn-ticket-task-example.md) | 示範保留追蹤碼前導零；此虛構追蹤碼不表示規範已定義其回傳欄位。 |
| [居家護理個案範例](Patient-hn-patient-example.md) | 虛構個案，沿用長照識別、聯絡方式及緊急聯絡人結構。 |
| [居家護理共照紀錄資源範例](Communication-hn-communication-example.md) | 將共照紀錄文字與提供者表達為 Communication，保留完整來源表單。 |
| [居家護理其他範例](Observation-hn-wound-other-example.md) | 示範 V5.0.16 分類與等級的搭配。 |
| [居家護理壓傷範例](Observation-hn-wound-pressure-example.md) | 示範 V5.0.16 分類與等級的搭配。 |
| [居家護理失禁性皮膚炎範例](Observation-hn-wound-iad-example.md) | 示範 V5.0.16 分類與等級的搭配。 |
| [居家護理工作人員範例](Practitioner-hn-staff-example.md) | 虛構非醫事人員，用於人員緊急事件。 |
| [居家護理接收訊息範例](OperationOutcome-hn-outcome-example.md) | 上傳成功的資訊訊息，並未宣告資料匯入完成。 |
| [居家護理收案範例](EpisodeOfCare-hn-episode-example.md) | 一次居護收案，以機構內識別碼串聯各次評估及照護紀錄。 |
| [居家護理機構範例](Organization-hn-organization-example.md) | 沿用長照機構 Profile，虛構機構代碼對應表單建立者與 API 機構標頭。 |
| [居家護理照護目標範例](Goal-hn-goal-example.md) | 記錄目標、預期達到日期與主要目標旗標。 |
| [居家護理照護計畫交易範例](Bundle-hn-careplan-transaction-example.md) | 將目標、措施、評值表單及臨床資源一起更新，所有 entry 成功才完成交易。 |
| [居家護理照護計畫範例](CarePlan-hn-careplan-example.md) | 串聯需求、目標、措施與評值；示範措施停止時保留原因及停止人員。 |
| [居家護理生命徵象與血糖集合範例](Bundle-hn-vital-bundle-example.md) | 同一次量測的生命徵象與血糖使用不同的既有資源基礎，共同放入集合。 |
| [居家護理生命徵象資源範例](Observation-hn-vital-signs-example.md) | 同一次量測的生命徵象，血糖重用既有基礎生理量測 Profile。 |
| [居家護理血糖範例](Observation-hn-glucose-example.md) | 沿用既有血糖 Profile，數值以 mg/dL 表達。 |
| [居家護理護理人員範例](Practitioner-hn-nurse-example.md) | 虛構護理人員，身分證字號用於對應居護表單。 |
| [居家護理足部護理收案範例](EpisodeOfCare-hn-episode-foot-example.md) | 同一個案的另一次足部護理收案，使用不同收案日期。 |
| [居家護理－人員緊急事件範例](QuestionnaireResponse-hn-staffegy-example.md) | 示範人員緊急事件結構與未作答欄位。資料為虛構。 |
| [居家護理－個案基本資料範例](QuestionnaireResponse-hn-basedata-example.md) | 示範個案基本資料結構與未作答欄位。資料為虛構。 |
| [居家護理－個案基本資料範例](QuestionnaireResponse-hn-basedata-foot-example.md) | 示範個案基本資料結構與未作答欄位。資料為虛構。 |
| [居家護理－個案結案範例](QuestionnaireResponse-hn-caseclose-example.md) | 示範個案結案結構與未作答欄位。資料為虛構。 |
| [居家護理－健康紀錄評估範例](QuestionnaireResponse-hn-healthyhabits-example.md) | 示範健康紀錄評估結構與未作答欄位。資料為虛構。 |
| [居家護理－共照紀錄範例](QuestionnaireResponse-hn-casedesc-example.md) | 示範共照紀錄結構與未作答欄位。資料為虛構。 |
| [居家護理－呼吸量測範例](Observation-hn-respiration-example.md) | 直接重用既有基礎生理量測 Profile。 |
| [居家護理－壓力性損傷危險評估範例](QuestionnaireResponse-hn-pressureinjuries-example.md) | 示範壓力性損傷危險評估結構與未作答欄位。資料為虛構。 |
| [居家護理－多筆傷口照護紀錄範例](QuestionnaireResponse-hn-carerecord-wounds-example.md) | 示範照護紀錄結構與未作答欄位。資料為虛構。 |
| [居家護理－完整足部護理範例](QuestionnaireResponse-hn-foot-record-example.md) | 示範照護紀錄結構與未作答欄位。資料為虛構。 |
| [居家護理－工具性日常生活活動功能評估範例](QuestionnaireResponse-hn-iadls-example.md) | 示範工具性日常生活活動功能評估結構與未作答欄位。資料為虛構。 |
| [居家護理－情緒問題評估範例](QuestionnaireResponse-hn-geriatricdepressionscales-example.md) | 示範情緒問題評估結構與未作答欄位。資料為虛構。 |
| [居家護理－日常生活功能評估範例](QuestionnaireResponse-hn-adls-example.md) | 示範日常生活功能評估結構與未作答欄位。資料為虛構。 |
| [居家護理－照護紀錄範例](QuestionnaireResponse-hn-carerecord-example.md) | 示範照護紀錄結構與未作答欄位。資料為虛構。 |
| [居家護理－照護計畫措施範例](QuestionnaireResponse-hn-measures-example.md) | 示範照護計畫措施結構與未作答欄位。資料為虛構。 |
| [居家護理－照護計畫目標範例](QuestionnaireResponse-hn-targets-example.md) | 示範照護計畫目標結構與未作答欄位。資料為虛構。 |
| [居家護理－照護計畫結案範例](QuestionnaireResponse-hn-careplanclose-example.md) | 示範照護計畫結案結構與未作答欄位。資料為虛構。 |
| [居家護理－照護計畫評值紀錄範例](QuestionnaireResponse-hn-evaluations-example.md) | 示範照護計畫評值紀錄結構與未作答欄位。資料為虛構。 |
| [居家護理－生命徵象範例](QuestionnaireResponse-hn-vitalsign-example.md) | 示範生命徵象結構與未作答欄位。資料為虛構。 |
| [居家護理－疼痛評估可以言語範例](QuestionnaireResponse-hn-pain-verbal-example.md) | 示範疼痛評估結構與未作答欄位。資料為虛構。 |
| [居家護理－疼痛評估無法言語範例](QuestionnaireResponse-hn-pain-nonverbal-example.md) | 示範疼痛評估結構與未作答欄位。資料為虛構。 |
| [居家護理－疼痛評估範例](QuestionnaireResponse-hn-painevaluations-example.md) | 示範疼痛評估結構與未作答欄位。資料為虛構。 |
| [居家護理－疾病史評估範例](QuestionnaireResponse-hn-medicalhistories-example.md) | 示範疾病史評估結構與未作答欄位。資料為虛構。 |
| [居家護理－簡易營養評估範例](QuestionnaireResponse-hn-mnasfs-example.md) | 示範簡易營養評估結構與未作答欄位。資料為虛構。 |
| [居家護理－脈搏量測範例](Observation-hn-pulse-example.md) | 直接重用既有基礎生理量測 Profile。 |
| [居家護理－藥物安全性評估範例](QuestionnaireResponse-hn-drugsafeties-example.md) | 示範藥物安全性評估結構與未作答欄位。資料為虛構。 |
| [居家護理－血壓量測範例](Observation-hn-bloodpressure-example.md) | 直接重用既有基礎生理量測 Profile。 |
| [居家護理－血氧量測範例](Observation-hn-oxygen-example.md) | 直接重用既有基礎生理量測 Profile。 |
| [居家護理－衰弱評估範例](QuestionnaireResponse-hn-sofs-example.md) | 示範衰弱評估結構與未作答欄位。資料為虛構。 |
| [居家護理－認知功能評估範例](QuestionnaireResponse-hn-dementias-example.md) | 示範認知功能評估結構與未作答欄位。資料為虛構。 |
| [居家護理－跌倒危險性評估範例](QuestionnaireResponse-hn-fallrisks-example.md) | 示範跌倒危險性評估結構與未作答欄位。資料為虛構。 |
| [居家護理－身體評估評估範例](QuestionnaireResponse-hn-bodyevaluations-example.md) | 示範身體評估評估結構與未作答欄位。資料為虛構。 |
| [居家護理－需求摘要範例](QuestionnaireResponse-hn-casesummary-example.md) | 示範需求摘要結構與未作答欄位。資料為虛構。 |
| [居家護理－體溫量測範例](Observation-hn-temperature-example.md) | 直接重用既有基礎生理量測 Profile。 |
| [工具性日常活動功能問卷](Questionnaire-ltc-questionnaire-iadl.md) | CMS評估表中IADL問卷 |
| [工具性日常活動功能問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-iadl-example.md) | CMS評估表中IADL問卷的回應範例 |
| [平均心率測量範例](Observation-pasport-observation-mean-heart-rate-example.md) | 一個平均心率測量的範例，展示如何使用 PASportObservationMeanHeartRate Profile 來記錄平均心率資料 |
| [心率變異性測量範例](Observation-pasport-observation-heart-rate-variability-example.md) | 一個心率變異性測量的範例，展示如何使用 PASportObservationHeartRateVariability Profile 來記錄心率變異性資料 |
| [心率量測範例](Observation-pasport-observation-heart-rate-example.md) | 一個心率量測的範例，展示如何使用 PASportObservationHeartRate Profile 來記錄運動前後的心率變化 |
| [推定骨量測量範例](Observation-pasport-observation-body-bone-mass-example.md) | 一個推定骨量測量的範例，展示如何使用 PASportObservationBodyBoneMass Profile 來記錄身體組成分析 |
| [日常生活能力評估問卷回覆範例](QuestionnaireResponse-ltc-questionnaire-response-adl-example.md) | 一個日常生活能力評估問卷回覆的範例，展示如何使用 LTCQuestionnaireResponse Profile |
| [日常生活能力評估問卷範例](Questionnaire-ltc-questionnaire-adl-assessment-example.md) | 一個日常生活能力評估問卷的範例，展示如何使用 LTCQuestionnaire Profile |
| [步態分析測量範例](Observation-pasport-observation-gait-type-example.md) | 一個步態分析測量的範例，展示如何使用 PASportObservationGaitType Profile 來記錄步態類型分析 |
| [步態週期測量範例](Observation-pasport-observation-gait-cycle-example.md) | 一個步態週期測量的範例，展示如何使用 PASportObservationGaitCycle Profile 來記錄步態週期分析 |
| [水腫指數測量範例](Observation-pasport-observation-extracellular-water-ratio-example.md) | 一個水腫指數測量的範例，展示如何使用 PASportObservationExtracellularWaterRatio Profile 來記錄身體組成分析 |
| [沐浴協助範例](Procedure-ltc-procedure-bathing-example.md) | 一個沐浴協助的範例，展示如何使用 LTCProcedureCareActivity Profile |
| [溝通表達能力問卷](Questionnaire-ltc-questionnaire-communication.md) | CMS評估表中溝通表達能力問卷 |
| [溝通表達能力問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-communication-example.md) | CMS評估表中溝通表達能力問卷的回應範例 |
| [無壓傷狀況範例](Condition-ltc-condition-crush-none-example.md) | 一個無壓傷狀況的範例，展示如何使用 LTCConditionCrush Profile |
| [照顧管理評估量表住民範例](Patient-ltc-patient-cms-chen-ming-hui-example.md) | 一個照顧管理評估量表住民的範例，展示如何使用 LTCPatientCMS Profile |
| [照顧管理評估量表文件打包範例](Bundle-ltc-bundle-cms-example.md) | 一個照顧管理評估量表文件打包的範例，展示如何使用 LTCBundleCMS Profile |
| [照顧管理評估量表文件架構範例](Composition-ltc-composition-cms-example.md) | 一個照顧管理評估量表文件架構的範例，展示如何使用 LTCCompositionCMS Profile |
| [照顧管理評估量表邏輯模型範例](Binary-ltc-cms-model-example.md) | 一個照顧管理評估量表邏輯模型的範例，展示如何準備欄位資料 |
| [照顧者問卷](Questionnaire-ltc-questionnaire-caregiver.md) | 轉介流程中照顧者問卷 |
| [照顧者支持問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-caregiver-support-example.md) | CMS評估表中照顧者支持問卷的回應範例 |
| [照顧者負荷問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-caregiver-load-example.md) | CMS評估表中照顧者負荷問卷的回應範例 |
| [特殊複雜照護需要問卷](Questionnaire-ltc-questionnaire-special-care.md) | CMS評估表中特殊複雜照護需要問卷 |
| [特殊複雜照護需要問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-special-care-example.md) | CMS評估表中特殊複雜照護需要問卷的回應範例 |
| [病史記錄範例](Condition-pasport-condition-medical-history-example.md) | 一個病史記錄的範例，展示如何使用 PASportConditionMedicalHistory Profile 來記錄患者的病史 |
| [病情、問題或診斷範例](Condition-ltc-condition-example.md) | 一個病情的範例，展示如何使用 LTCCondition Profile 來記錄住民的病情資料 |
| [短期記憶力問卷](Questionnaire-ltc-questionnaire-memory.md) | CMS評估表中短期記憶力問卷 |
| [短期記憶力問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-memory-example.md) | CMS評估表中短期記憶力問卷的回應範例 |
| [礦物質重測量範例](Observation-pasport-observation-mineral-example.md) | 一個礦物質重測量的範例，展示如何使用 PASportObservationMineral Profile 來記錄身體組成分析 |
| [第二期壓傷範例](Condition-ltc-condition-crush-stage2-example.md) | 一個第二期壓傷的範例，展示如何使用 LTCConditionCrush Profile |
| [簡易智能狀態測驗 (MMSE)](Questionnaire-ltc-questionnaire-mmse.md) | 簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 問卷 |
| [簡易智能狀態測驗回覆範例](QuestionnaireResponse-ltc-questionnaire-response-mmse-example.md) | 一個簡易智能狀態測驗回覆的範例，展示如何使用 LTCQuestionnaireResponseMMSE Profile |
| [簡易智能狀態測驗完整回覆範例](QuestionnaireResponse-ltc-questionnaire-response-mmse-complete-example.md) | 一個完整的簡易智能狀態測驗回覆範例，展示所有 22 個項目的回答 |
| [簡易智能狀態測驗認知障礙回覆範例](QuestionnaireResponse-ltc-questionnaire-response-mmse-impaired-example.md) | 一個認知功能障礙患者的簡易智能狀態測驗回覆範例 |
| [糖尿病病情範例](Condition-ltc-condition-diabetes-example.md) | 一個糖尿病病情的範例，展示如何使用 LTCConditionProblem Profile |
| [糖尿病藥物給藥範例](MedicationAdministration-ltc-medication-administration-metformin-example.md) | 一個糖尿病藥物給藥的範例，展示如何使用 LTCMedicationAdministration Profile |
| [細胞內水分測量範例](Observation-pasport-observation-intracellular-water-example.md) | 一個細胞內水分測量的範例，展示如何使用 PASportObservationIntracellularWater Profile 來記錄身體組成分析 |
| [細胞外水分測量範例](Observation-pasport-observation-extracellular-water-example.md) | 一個細胞外水分測量的範例，展示如何使用 PASportObservationExtracellularWater Profile 來記錄身體組成分析 |
| [細胞量測量範例](Observation-pasport-observation-cell-mass-example.md) | 一個細胞量測量的範例，展示如何使用 PASportObservationCellMass Profile 來記錄身體組成分析 |
| [肌肉質量指數測量範例](Observation-pasport-observation-skeletal-muscle-mass-index-example.md) | 一個肌肉質量指數測量的範例，展示如何使用 PASportObservationSkeletalMuscleMassIndex Profile 來記錄身體組成分析 |
| [肌肉量測量範例](Observation-pasport-observation-soft-lean-mass-example.md) | 一個肌肉量測量的範例，展示如何使用 PASportObservationSoftLeanMass Profile 來記錄身體組成分析 |
| [肢體障礙類型範例](Condition-ltc-condition-disability-type-limb-example.md) | 一個肢體障礙類型的範例，展示如何使用 LTCConditionDisabilityType Profile |
| [肥胖度測量範例](Observation-pasport-observation-obesity-degree-example.md) | 一個肥胖度測量的範例，展示如何使用 PASportObservationObesityDegree Profile 來記錄肥胖度資料 |
| [脈搏血氧飽和度測量範例](Observation-pasport-observation-peripheral-oxygen-saturation-example.md) | 一個脈搏血氧飽和度測量的範例，展示如何使用 PASportObservationPeripheralOxygenSaturation Profile 來記錄脈搏血氧飽和度資料 |
| [腰圍測量範例](Observation-pasport-observation-waist-example.md) | 一個腰圍測量的範例，展示如何使用 PASportObservationWaist Profile 來記錄基礎生理量測 |
| [腰臀圍比測量範例](Observation-pasport-observation-waist-hip-rate-example.md) | 一個腰臀圍比測量的範例，展示如何使用 PASportObservationWaistHipRate Profile 來記錄身體組成分析 |
| [臨床失智評估量表 (CDR)](Questionnaire-ltc-questionnaire-cdr.md) | 臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 問卷 |
| [臨床失智評估量表中度失智回覆範例](QuestionnaireResponse-ltc-questionnaire-response-cdr-moderate-example.md) | 一個中度失智患者的臨床失智評估量表回覆範例 |
| [臨床失智評估量表回覆範例](QuestionnaireResponse-ltc-questionnaire-response-cdr-example.md) | 一個臨床失智評估量表回覆的範例，展示如何使用 LTCQuestionnaireResponseCDR Profile |
| [臨床失智評估量表完整回覆範例](QuestionnaireResponse-ltc-questionnaire-response-cdr-complete-example.md) | 一個完整的臨床失智評估量表回覆範例，展示所有 6 個領域的評估 |
| [與家人同住居住狀況範例](Condition-ltc-condition-residence-not-alone-example.md) | 一個與家人同住之居住狀況的範例，展示如何使用 LTCConditionResidence Profile |
| [蛋白質重測量範例](Observation-pasport-observation-protein-example.md) | 一個蛋白質重測量的範例，展示如何使用 PASportObservationProtein Profile 來記錄身體組成分析 |
| [血壓量測範例](Observation-ltc-observation-blood-pressure-example.md) | 一個血壓量測的範例，展示如何使用 LTCObservationVitalSigns Profile |
| [血壓量測範例](Observation-pasport-observation-blood-pressure-example.md) | 一個血壓量測的範例，展示如何使用 PASportObservationBloodPressure Profile 來記錄運動前後的血壓變化 |
| [血糖測量範例](Observation-pasport-observation-glucose-example.md) | 一個血糖測量的範例，展示如何使用 PASportObservationGlucose Profile 來記錄基礎生理量測 |
| [行動照顧計畫範例](CarePlan-ltc-careplan-mobility-example.md) | 一個行動照顧計畫的範例，展示如何使用 LTCCarePlan Profile |
| [行動能力改善目標範例](Goal-ltc-goal-mobility-improvement-example.md) | 一個行動能力改善目標的範例，展示如何使用 LTCGoal Profile |
| [認知功能與精神狀態問卷](Questionnaire-ltc-questionnaire-mental.md) | CMS評估表中認知功能與精神狀態問卷 |
| [認知功能與精神狀態問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-mental-example.md) | CMS評估表中認知功能與精神狀態問卷的回應範例 |
| [跌倒紀錄範例](Observation-ltc-observation-falling-history-example.md) | 一個跌倒紀錄的範例，展示如何使用 LTCObservationFallingHistory Profile |
| [跑步機運動記錄範例](Observation-pasport-observation-treadmill-example.md) | 一個跑步機運動記錄的範例，展示如何使用 PASportObservationTreadmill Profile 來記錄跑步機運動數據 |
| [身心障礙手冊持有狀態範例](Condition-ltc-condition-disability-example.md) | 一個身心障礙手冊持有狀態的範例，展示如何使用 LTCConditionDisability Profile |
| [身體總水分測量範例](Observation-pasport-observation-total-body-water-example.md) | 一個身體總水分測量的範例，展示如何使用 PASportObservationTotalBodyWater Profile 來記錄身體組成分析 |
| [身體質量指數測量範例](Observation-pasport-observation-bmi-example.md) | 一個BMI測量的範例，展示如何使用 PASportObservationBodyMassIndex Profile 來記錄身體質量指數 |
| [身高量測範例](Observation-pasport-observation-height-example.md) | 一個身高量測的範例，展示如何使用 PASportObservationHeight Profile 來記錄身高數據 |
| [轉介ADL問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-adl-referral-example.md) | 轉介流程中ADL問卷的回應範例 |
| [轉介IADL問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-iadl-referral-example.md) | 轉介流程中IADL問卷的回應範例 |
| [轉介個案範例](Patient-ltc-patient-referral-example.md) | 一個需要長照服務轉介的個案範例 |
| [轉介單住民範例](Patient-ltc-patient-referral-chen-ming-hui-example.md) | 一個轉介單住民的範例，展示如何使用 LTCPatientReferral Profile |
| [轉介單居家服務計畫範例](CarePlan-ltc-careplan-referral-home-service-example.md) | 一個轉介單居家服務計畫的範例，展示如何使用 LTCCarePlanReferral Profile |
| [轉介單文件打包範例](Bundle-ltc-bundle-referral-example.md) | 一個轉介單文件打包的範例，展示如何使用 LTCBundleReferral Profile |
| [轉介單文件架構範例](Composition-ltc-composition-referral-example.md) | 一個轉介單文件架構的範例，展示如何使用 LTCCompositionReferral Profile |
| [轉介單邏輯模型範例](Binary-ltc-referral-model-example.md) | 一個轉介單邏輯模型的範例，展示如何準備欄位資料 |
| [轉介照顧者問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-caregiver-referral-example.md) | 轉介流程中照顧者問卷的回應範例 |
| [轉介確認任務範例](Task-ltc-task-referral-acceptance-example.md) | 展示長照機構接受轉介個案的任務確認範例 |
| [轉介－身心障礙手冊持有狀態範例](Condition-ltc-condition-disability-referral-example.md) | 供轉介單使用的身心障礙手冊持有狀態 Condition 範例 |
| [轉介－身心障礙類型（肢體）範例](Condition-ltc-condition-disability-type-limb-referral-example.md) | 供轉介單使用的身心障礙類型（肢體） Condition 範例 |
| [轉院接收機構範例](Organization-hah-receiving-hospital.md) | 合成的轉院接收機構。 |
| [運動史記錄範例](Condition-pasport-condition-exercise-history-example.md) | 一個運動史記錄的範例，展示如何使用 PASportConditionExerciseHistory Profile 來記錄患者的運動背景 |
| [運動治療服務請求範例](ServiceRequest-pasport-servicerequest-exercise-therapy-example.md) | 一個運動治療服務請求的範例，展示如何使用 PASportServiceRequest Profile 來申請運動治療服務 |
| [運動目標－步行步數範例](Goal-pasport-goal-walking-steps-example.md) | 一個運動目標的範例，展示如何使用 PASportGoal Profile 來表示每日步行步數目標 |
| [運動計畫－步行運動範例](CarePlan-pasport-careplan-walking-exercise-example.md) | 一個運動計畫的範例，展示如何使用 PASportCarePlan Profile 來表示步行運動計畫 |
| [重量訓練記錄範例](Observation-pasport-observation-weight-training-example.md) | 一個重量訓練記錄的範例，展示如何使用 PASportObservationWeightTraining Profile 來記錄重量訓練數據 |
| [長期照護醫師意見書問卷回覆範例 (AA12)](QuestionnaireResponse-ltc-questionnaire-response-aa12-example.md) | 一個長期照護醫師意見書問卷回覆的範例，展示如何使用 LTCQuestionnaireResponseAA12 Profile |
| [長期照護醫師意見書問卷範例 (AA12)](Questionnaire-ltc-questionnaire-aa12-example.md) | 一個長期照護醫師意見書問卷的範例，展示如何使用 LTCQuestionnaire Profile |
| [長期照護醫師意見書醫師範例 (AA12)](Practitioner-ltc-practitioner-physician-aa12-example.md) | 一個長期照護醫師意見書的醫師範例，展示如何使用 TWCorePractitioner Profile |
| [長期照護醫師意見書醫院範例 (AA12)](Organization-twcore-organization-hospital-aa12-example.md) | 一個長期照護醫師意見書的醫院範例，展示如何使用 TWCoreOrganization Profile |
| [長期照顧住民範例](Patient-ltc-patient-chen-ming-hui.md) | 一個長期照顧機構住民的範例，展示如何使用 LTCPatient Profile |
| [長期照顧個案位置監測範例](Location-ltc-location-example.md) | 一個長期照顧個案位置監測的範例，展示如何使用 LTCLocation Profile |
| [長期照顧團隊範例](CareTeam-ltc-care-team-example.md) | 一個長期照顧團隊的範例，展示如何使用 LTCCareTeam Profile |
| [長期照顧就醫紀錄範例](Encounter-ltc-encounter-example.md) | 一個就醫紀錄的範例，用於轉介單中的出入院情形 |
| [長期照顧機構範例](Organization-ltc-organization-example.md) | 一個長期照顧機構的範例，展示如何使用 LTCOrganization Profile |
| [長期照顧異常事件範例－SDK 異常服務通報（跌倒）](AdverseEvent-ltc-adverse-event-incident-example.md) | 展示 SDK 異常服務通報場景：電話通報跌倒事件，包含異常類別、通報方式、多段文字描述及關聯案件 |
| [長期照顧異常事件警報範例](AdverseEvent-ltc-adverse-event-example.md) | 一個長期照顧異常事件警報的範例，展示如何使用 LTCAdverseEvent Profile |
| [長期照顧護理師範例](Practitioner-ltc-practitioner-nurse-example.md) | 一個長期照顧護理師的範例，展示如何使用 LTCPractitioner Profile |
| [長期照顧護理師角色範例](PractitionerRole-ltc-practitioner-role-nurse-example.md) | 一個長期照顧護理師角色的範例，展示如何使用 LTCPractitionerRole Profile |
| [長期照顧－AA01照顧計畫擬訂與服務連結問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-aa01-example.md) | 一個AA01照顧計畫擬訂與服務連結問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA01 Profile |
| [長期照顧－AA02照顧管理追蹤問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-aa02-example.md) | 一個AA02照顧管理追蹤問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA02 Profile |
| [長照 CS100－保險覆蓋（Coverage）範例](Coverage-ltc-coverage-cs100-example.md) | 長照 CS100 範例用的保險覆蓋（Coverage）資源。 |
| [長照 CS100－個案管理員（Practitioner）範例](Practitioner-ltc-practitioner-cs100-example.md) | 長照 CS100 範例用的個案管理員（Practitioner）資源。 |
| [長照 CS100－個案總查詢（Composition）範例](Composition-ltc-bundle-cs100-example.md) | 長照 CS100 個案總查詢的範例，展示如何使用 Composition 資源整合個案的完整資訊。 |
| [長照 CS100－個案（Patient）範例](Patient-ltc-patient-cs100-example.md) | 長照 CS100 範例用的個案（Patient）資源。 |
| [長照 CS100－核定請求（CoverageEligibilityRequest）範例](CoverageEligibilityRequest-ltc-coverageeligibilityrequest-cs100-example.md) | 長照 CS100 範例用的核定請求（CoverageEligibilityRequest）資源。 |
| [長照 CS100－核定額度回應（CoverageEligibilityResponse）範例](CoverageEligibilityResponse-ltc-coverageeligibilityresponse-cs100-example.md) | 長照 CS100 範例用的核定額度回應（CoverageEligibilityResponse）資源。 |
| [長照 CS100－照顧計畫獨立（CarePlan）範例](CarePlan-ltc-careplan-cs100-standalone-example.md) | 長照 CS100 個案總查詢之照顧計畫範例，展示如何使用 LTCCarePlanCS100 Profile。 |
| [長照 CS100－照顧計畫（CarePlan）範例](CarePlan-ltc-careplan-cs100-example.md) | 長照 CS100 範例用的照顧計畫（CarePlan）資源。 |
| [長照 CS100－異常事件（AdverseEvent）範例](AdverseEvent-ltc-adverseevent-cs100-example.md) | 長照 CS100 範例用的異常事件（AdverseEvent）資源。 |
| [長照 CS100－評估核定摘要（Observation）範例](Observation-ltc-observation-assessment-cs100-example.md) | 長照 CS100 範例用的評估核定摘要（Observation）資源。 |
| [長照 CS100－長照案件（EpisodeOfCare）範例](EpisodeOfCare-ltc-episodeofcare-cs100-example.md) | 長照 CS100 範例用的長照案件（EpisodeOfCare）資源。 |
| [長照 CS100－長照管理中心（Organization）範例](Organization-ltc-organization-cs100-example.md) | 長照 CS100 範例用的長照管理中心（Organization）資源。 |
| [長照 SDK－保險覆蓋（Coverage）範例](Coverage-ltc-coverage-sdk-example.md) | 長照 SDK 範例用的保險覆蓋（Coverage）資源。 |
| [長照 SDK－個案（Patient）範例](Patient-ltc-patient-sdk-example.md) | 長照 SDK 範例用的個案（Patient）資源。 |
| [長照 SDK－回傳包（4合1）範例](Bundle-ltc-bundle-payload-example.md) | 長照 SDK 回傳資料包範例，包含案件、評估、核定額度及照顧計畫等資源之集合。 |
| [長照 SDK－核定請求（CoverageEligibilityRequest）範例](CoverageEligibilityRequest-ltc-coverageeligibilityrequest-sdk-example.md) | 長照 SDK 範例用的核定請求（CoverageEligibilityRequest）資源。 |
| [長照 SDK－核定額度回應（CoverageEligibilityResponse）範例](CoverageEligibilityResponse-ltc-coverageeligibilityresponse-sdk-example.md) | 長照 SDK 範例用的核定額度回應（CoverageEligibilityResponse）資源。 |
| [長照 SDK－照顧管理專員（Practitioner）範例](Practitioner-ltc-practitioner-sdk-example.md) | 長照 SDK 範例用的照顧管理專員（Practitioner）資源。 |
| [長照 SDK－照顧計畫（CarePlan）範例](CarePlan-ltc-careplan-sdk-example.md) | 長照 SDK 範例用的照顧計畫（CarePlan）資源。 |
| [長照 SDK－評估核定摘要（Observation）範例](Observation-ltc-observation-assessment-sdk-example.md) | 長照 SDK 範例用的評估核定摘要（Observation）資源。 |
| [長照 SDK－長照案件（EpisodeOfCare）範例](EpisodeOfCare-ltc-episodeofcare-sdk-example.md) | 長照 SDK 範例用的長照案件（EpisodeOfCare）資源。 |
| [長照 SDK－長照管理中心（Organization）範例](Organization-ltc-organization-sdk-example.md) | 長照 SDK 範例用的長期照顧管理中心（Organization）資源。 |
| [長照支付審查－A 單位服務紀錄（AA00）申報範例](Claim-ltc-claim-feeapply-aa00-example.md) | 
| | | | |
| :--- | :--- | :--- | :--- |
| A 個管單位向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 AA00（A 單位服務紀錄）；AA00 已收錄於臺灣長照服務項目代碼系統（CS_TW_LTC_ServiceItem），故以 item.productOrService.coding 承載，使本 IG 之條件必填檢核（invariant ltc-feeaudit-3）得以觸發。本範例示範 AA00 之必填特化欄位：服務項目（svc_item = 1 | 2，電訪與家訪，以兩個 supportingInfo 切片表示）、服務對象（svc_people = 1 | 2，服務使用者與家庭照顧者）與服務內容（svc_content）；並示範選填欄位：服務重點（svc_point = 1 | 2）、追蹤服務適應與介入情形（svc_trace）、各項服務目標及整體計畫目標達成情形（svc_goal）、整體計畫的適切性及需求異動（svc_suitable）、備註（remark）與各項預設旗標。照顧服務員身分證字號 1（svc_user_no1）依規格書表 1 為必填，於 AA00 應帶入 A 個管之身分證字號，以 careTeam.sequence = 1 之 careTeam 呈現。 |
 |
| [長照支付審查－C 碼專業服務紀錄申報範例](Claim-ltc-claim-feeapply-c-code-example.md) | C 單位（專業服務提供單位）向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 CA03（ADLs 復能照護－居家）。本範例示範規格書中申報 C 碼時填寫之五個專業服務欄位：專業服務復能目標達成情形（svcc_goal_type）、專業服務復能目標（svcc_goal）、專業服務指導對象（svcc_content_target）、專業服務服務內容（svcc_content）與專業服務指導建議摘要（svcc_suggest）。依規格書表 1，申報 C 碼時照顧服務員身分證字號 1（svc_user_no1）、數量與起訖時段為必填，服務項目（svc_item）、服務對象（svc_people）與服務內容（svc_content）則不填寫。 |
| [長照支付審查－交通接送出發地（個案住家）範例](Location-ltc-location-feeapply-home-example.md) | 服務記錄申報（FeeApply）DA01 交通接送之出發地範例，對應規格書欄位 addr1（出發地）「個案住家」，並以 Location.position 承載出發地緯度（addrlat1）與出發地經度（addrlng1）。地點類型為個案住所（PTRES）。 |
| [長照支付審查－交通接送目的地（亞東醫院）範例](Location-ltc-location-feeapply-hospital-example.md) | 服務記錄申報（FeeApply）DA01 交通接送之目的地範例，對應規格書欄位 addr2（目的地）「亞東醫院」，並以 Location.position 承載目的地緯度（addrlat2）與目的地經度（addrlng2）。地點類型為醫院（HOSP），非個案住所。 |
| [長照支付審查－個案服務紀錄申報（DA01 交通接送）範例](Claim-ltc-claim-feeapply-da01-example.md) | 服務記錄申報（FeeApply）之單筆個案服務紀錄範例，對應規格書 PAGE 14-15 範例電文之 case_svc_records[0]：服務紀錄識別碼（objid）00000000000000000006、個案身分證字號（idn）A123456789、服務日期（svc_dt）2019 年 1 月 5 日、照顧組合代碼（gov_item_cd）DA01 交通接送、服務類別（svc_fee_tp）補助、單價（price）430 元、數量（amount）1、服務時段 13:30 至 14:00、出發地（addr1）個案住家、目的地（addr2）亞東醫院、車號（car_no）1111-AA、駕駛員（driver）黃OO。 |
| [長照支付審查－分案審核明細回覆打包（Bundle）範例](Bundle-ltc-bundle-feeaudit-response-example.md) | 支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）回覆之 searchset Bundle 範例，收納核銷案號 201907C010163 之分案審核明細（ClaimResponse）一筆，以及該分案錯誤服務記錄之申報檢核結果（OperationOutcome）一筆。 |
| [長照支付審查－分案審核明細（ClaimResponse）範例](ClaimResponse-ltc-claimresponse-feeaudit-example.md) | 支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）之回覆明細範例。核銷案號 201907C010163、支審年月 201907、總表版次 006、版次時間 20190723154351，申請核銷金額 4500 元、核定金額 1596 元、政策鼓勵金額 400 元、核增 4000 元（因個案身分異動）、核減 500 元（因個案CMS等級異動）、分案暫付金額 17500 元；含審核通過服務記錄一筆（單價 400 元、自付額 85 元）與 A 碼加成資料一筆（AA05，單價 200 元），並示範八份總表與清冊下載路徑；分案層級統計值（服務記錄筆數 3、個案數 2、核定個案數 2、核定服務記錄數 1）、暫付申請狀態、分案已處理之單號與承辦人員則以 auditSummary Extension 承載。 |
| [長照支付審查－分案審核狀態回覆打包範例](Bundle-ltc-bundle-feeaudit-status-example.md) | (查詢A)服務單位各分案審核狀態查詢（……/appResultQuery，query_type = A）之回覆打包範例。以 searchset 型態彙整支審年月 201901 各交易單之 API 執行結果（webapi_process_info），包含服務記錄申報（FeeApply）、申報確認通知（appCompletionNotice，依縣市拆為兩筆）、服務紀錄刪除（ObjDel）、服務單位撤回（appCancel）與取消交易單處理結果回報（CancelResultResponse）共六筆交易任務，並一併回傳分案異常資料（exception_records）與服務紀錄刪除失敗資料（delete_exception_records）之錯誤訊息（search.mode = outcome，不計入 total）。 |
| [長照支付審查－分案異常資料範例](OperationOutcome-ltc-operationoutcome-feeaudit-exception-example.md) | (查詢A)服務單位各分案審核狀態查詢回覆之分案異常資料（exception_records）範例。展示服務紀錄識別碼 19260121 因錯誤碼 E4015 而分案失敗之錯誤訊息，該筆服務紀錄可修改後重新上傳至支審系統。 |
| [長照支付審查－取消交易單處理結果回報交易任務範例](Task-ltc-task-cancel-result-response-example.md) | 取消交易單處理結果回報（CancelResultResponse）之交易任務範例。服務單位以本作業取消 (查詢A)服務單位各分案審核狀態查詢之 API 執行結果資料中，某一交易單的處理結果回報。本範例以本次作業之交易序號（trans_no）CR001 為 groupIdentifier，並以 input[cancelTransNo] 承載所要取消結果回報之交易序號 TranQ00083，同時以 partOf 參照該原交易單之 Task（ltc-task-feeapply-example）。 |
| [長照支付審查－服務單位撤回交易任務範例](Task-ltc-task-cancel-example.md) | 服務單位撤回（appCancel）之交易任務範例。傳入縣市代碼與核銷案號時，表示將指定核銷案號該來源系統別所申報之服務記錄撤回；未傳入者則將該服務單位本月該來源系統別所申報之服務記錄一併撤回。若承辦人已收件處理，則不允許執行撤回。本範例對應規格書傳送資料範例 2，並以 output 記錄「服務紀錄撤回完成!」之批次處理結果。 |
| [長照支付審查－服務紀錄刪除交易任務範例](Task-ltc-task-objdel-example.md) | 服務紀錄刪除（ObjDel）之交易任務範例。刪除該系統商指定識別碼（objid）之服務紀錄；若該服務紀錄之案件已執行申報確認通知，則不允許刪除。本範例以 input 承載所要刪除之服務紀錄識別碼，並以 output 呈現批次處理 6 筆、成功 4 筆、失敗 2 筆之結果，包含刪除成功資料（delete_records）之識別碼清單，以及刪除失敗資料（delete_exception_records）所參照之錯誤訊息（錯誤碼 E4032）。 |
| [長照支付審查－服務紀錄刪除失敗資料範例（一）](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-example.md) | 服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 123456789 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。 |
| [長照支付審查－服務紀錄刪除失敗資料範例（二）](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-2-example.md) | 服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 987654321 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。 |
| [長照支付審查－服務記錄申報交易任務範例](Task-ltc-task-feeapply-example.md) | 服務記錄申報（FeeApply）交易單之處理狀態範例。展示以 (查詢A)服務單位各分案審核狀態查詢所取得之交易單資訊：交易序號 TranQ00083、API 執行狀況為 4:處理完成、分案核銷狀況為 1:待通知收件，批次處理 3000 筆、成功 2999 筆、失敗 1 筆，並以 output 參照分案異常資料（exception_records）之錯誤訊息。 |
| [長照支付審查－服務記錄申報交易（DA01 交通接送）範例](Bundle-ltc-bundle-feeapply-da01-example.md) | 服務記錄申報（FeeApply）一次申報交易之打包範例，對應規格書 PAGE 14-15 範例電文：交易序號（trans_no）A0001、支審年月（writeoff_yyyymm）201901、服務紀錄筆數（records）1 筆、個案數（cases）1 位。Bundle 以 collection 型態收納該次申報之個案服務紀錄（Claim）、服務對象（Patient）、服務提供單位（Organization）、照顧服務員（Practitioner）及交通接送之出發地與目的地（Location）。 |
| [長照支付審查－申報檢核結果（OperationOutcome）範例](OperationOutcome-ltc-operationoutcome-feeaudit-example.md) | 支付審核系統回覆之服務紀錄檢核錯誤範例，對應核銷案號 201907C010163 之錯誤服務記錄（err_records），示範錯誤碼 E4015「單位已執行申報確認通知，不在受理新的服務紀錄申報」，錯誤服務記錄識別碼（objid）為 882601914，來源系統別 TranCareCenter、交易序號 00106。 |
| [長照支付審查－申報確認通知交易任務範例（縣市 10020）](Task-ltc-task-completion-notice-city2-example.md) | 申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第二個縣市）。以 input 承載縣市代碼 10020 及其下之兩筆案件編號（case_no：C12345678、D12345678）。本筆與 ltc-task-completion-notice-example 共用同一交易序號（trans_no = CN001），共同構成規格書範例中 city_info 之完整內容。 |
| [長照支付審查－申報確認通知交易任務範例（縣市 65000）](Task-ltc-task-completion-notice-example.md) | 申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第一個縣市）。服務單位確認服務紀錄無誤後執行本作業，以通知縣市承辦人員收件並審查服務紀錄；執行後支審系統不再受理服務紀錄申報及異動。本範例以 input 承載縣市代碼 65000 及其下之兩筆案件編號（case_no：A12345678、B12345678），並以 output 記錄「申報確認通知完成!」之批次處理結果。同一次作業之另一個縣市（10020）另見 ltc-task-completion-notice-city2-example。 |
| [長照支付審查－縣市主管機關（Organization）範例](Organization-ltc-organization-feeaudit-authority-example.md) | 受理「(查詢B)分案審核明細查詢」該分案之縣市主管機關範例，對應規格書縣市代碼（city_cd）65000 新北市，供 LTCClaimResponseFeeAudit 之 insurer 元素參照。 |
| [長照轉介服務請求範例](ServiceRequest-ltc-servicerequest-referral-example.md) | 展示醫療院所向長照機構發送轉介服務請求的範例 |
| [長照醫事人員範例](Practitioner-ltc-practitioner-example.md) | 一個執行長照服務和運動處方的醫事人員範例 |
| [長照－照管全量匯出審核結果（ClaimResponse）範例](ClaimResponse-ltc-claimresponse-export-example.md) | 長照照管全量匯出之審核結果與檢核錯誤資訊範例，展示如何使用 LTCClaimResponseExport Profile。 |
| [長照－照管可提供服務（Claim）範例](Claim-ltc-claim-export-dispatch-example.md) | 長照 SDK 照管CASE可提供服務的範例，展示如何使用 Claim 資源記錄個案可提供的服務項目。 |
| [長照－照管計畫與金額（Claim）範例](Claim-ltc-claim-export-example.md) | 長照 SDK 照管PLAN計畫與金額的範例，展示如何使用 Claim 資源記錄長照服務計畫與費用。 |
| [長照－照管電訪活動（Communication）範例](Communication-ltc-communication-servicea-example.md) | 長照 SDK 照管SERVICE_A電訪的範例，展示如何記錄照顧管理服務活動。 |
| [長照－跨月檢核（OperationOutcome）範例](OperationOutcome-ltc-operationoutcome-check-example.md) | 長照 SDK 照管QP_O跨月檢核的範例，展示如何使用 OperationOutcome 資源記錄跨月金額檢核結果。 |
| [需要照護協助狀況範例](Condition-ltc-condition-need-assistance-example.md) | 個案需要長期照護協助的狀況範例，用於轉介Bundle中 |
| [骨骼肌重測量範例](Observation-pasport-observation-skeletal-muscle-mass-example.md) | 一個骨骼肌重測量的範例，展示如何使用 PASportObservationSkeletalMuscleMass Profile 來記錄肌肉量變化 |
| [體內年齡測量範例](Observation-pasport-observation-body-age-example.md) | 一個體內年齡測量的範例，展示如何使用 PASportObservationBodyAge Profile 來記錄體內年齡資料 |
| [體溫測量範例](Observation-pasport-observation-body-temperature-example.md) | 一個體溫測量的範例，展示如何使用 PASportObservationBodyTemperature Profile 來記錄體溫資料 |
| [體脂率測量範例](Observation-pasport-observation-body-fat-percentage-example.md) | 一個體脂率測量的範例，展示如何使用 PASportObservationBodyFatPercentage Profile 來記錄身體組成分析 |
| [體脂肪重測量範例](Observation-pasport-observation-body-fat-mass-example.md) | 一個體脂肪重測量的範例，展示如何使用 PASportObservationBodyFatMass Profile 來記錄身體組成分析 |
| [體重量測範例](Observation-pasport-observation-weight-example.md) | 一個體重量測的範例，展示如何使用 PASportObservationWeight Profile 來記錄運動計畫中的體重監測 |
| [鼻胃管管路狀況範例](Condition-ltc-condition-tube-nasogastric-example.md) | 一個鼻胃管的管路狀況範例，展示如何使用 LTCConditionTube Profile |

