# Artifacts Summary - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

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
| [照顧管理評估量表邏輯模型](StructureDefinition-LTCCMSModel.md) | 此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。 |
| [異常事件警報邏輯模型](StructureDefinition-LTCAdverseEventModel.md) | 此邏輯模型以失智症照護監測賽道的情境3為基礎，用以描述異常事件警報的資料結構與欄位準備指引。支援記錄異常事件類型、嚴重程度、發生時間、位置等資訊。 |
| [簡易智能狀態測驗評估](StructureDefinition-LTCMMSEAssessmentModel.md) | 簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估 |
| [臨床失智評估量表評估](StructureDefinition-LTCCDRAssessmentModel.md) | 臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估 |
| [長期照護醫師意見書 (AA12) 邏輯模型](StructureDefinition-AA12Model.md) | 此邏輯模型以衛生福利部 AA12 長期照護醫師意見書為基礎，用以描述醫師意見書的資料結構與欄位準備指引。 |
| [長期照顧管理中心個案服務初篩表/轉介單邏輯模型](StructureDefinition-LTCRferralModel.md) | 此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。 |

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [照顧管理問卷 (AA02)](Questionnaire-questionnaire-aa02-example.md) | 依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。 |
| [照顧計畫擬訂與服務連結問卷 (AA01)](Questionnaire-questionnaire-aa01-example.md) | AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫 |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ADL 問卷回覆](StructureDefinition-LTCQuestionnaireResponseADL.md) | 此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。 |
| [IADL 問卷回覆](StructureDefinition-LTCQuestionnaireResponseIADL.md) | 此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。 |
| [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md) | 本文件為『個案總查詢（Case Summary）』之 CS100 專用版本， 其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能 《CS100 個案總查詢》之查詢結果欄位與區塊。 |
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
| [長期照顧－住民基本資料](StructureDefinition-LTCPatient.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。 |
| [長期照顧－個案位置監測](StructureDefinition-Location-twltc.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Location Resource，以呈現失智症個案的位置監測資料，包括所在地名稱與經緯度座標資訊。 |
| [長期照顧－問卷](StructureDefinition-LTCQuestionnaire.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。 |
| [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中涉及之問卷或量表回覆內容。 |
| [長期照顧－壓傷狀況](StructureDefinition-LTCConditionCrush.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。 |
| [長期照顧－居住狀況](StructureDefinition-LTCConditionResidence.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的居住狀況。 |
| [長期照顧－文件組成基礎](StructureDefinition-LTCCompositionBase.md) | 此 Profile 為所有長期照顧 Composition Profile 的共用基礎，定義文件組成之基本結構與共用欄位。 |
| [長期照顧－服務人員角色](StructureDefinition-LTCPractitionerRole.md) | 此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現長期照顧服務人員的角色資料。有關 PractitionerRole 與 Practitioner 的差異及相關解釋，請參照 [TW Core IG](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html) 中的說明。 |
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
| [長照機構住民教育程度](StructureDefinition-ExtPatientEducationStatus-TWLTC.md) | 此 Extension 用以表述長照機構住民的教育程度。 |
| [長照機構住民經濟狀況](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md) | 此 Extension 用以表述長照機構住民的經濟狀況。 |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [個案經濟狀況值集](ValueSet-EconomyStatusVS-TWLTC.md) | 用以表述個案經濟狀況之值集，包含個案經濟狀況之描述內容。 |
| [個案身分別值集](ValueSet-PatientIdentityVS-TWLTC.md) | 個案身分別的值集 |
| [地址用途擴展值集](ValueSet-AddressUseVS-TWLTC.md) | 地址的用途，新增戶籍地與現居地等代碼 |
| [壓傷狀況值集](ValueSet-ReferralConditionCrushVS-TWLTC.md) | 個案壓傷的狀況 |
| [居住狀況值集](ValueSet-ReferralConditionResidenceVS-TWLTC.md) | 個案的居住狀況 |
| [教育程度值集](ValueSet-EducationStatusVS-TWLTC.md) | 用以表述教育程度之值集，包含教育程度之描述內容。 |
| [照顧目標描述值集](ValueSet-GoalDescriptionVS-TWLTC.md) | 照顧目標的描述值集，用以表述長期照顧情境中涉及之照顧目標描述內容。本值集列舉臺灣長期照顧情境常用之 SNOMED CT 照顧目標代碼，綁定強度為 extensible，實作者可依需求使用其他 SNOMED CT 或 LOINC 代碼。 |
| [疾病嚴重度擴展值集](ValueSet-ConditionSeverityVS-TWLTC.md) | 用以表述疾病嚴重度之擴展值集，包含疾病嚴重度之描述內容。配合身心障礙手冊障礙程度分級，包含輕度、中度、重度、極重度等代碼。 |
| [看護狀況值集](ValueSet-ReferralConditionCaregiverVS-TWLTC.md) | 個案雇用看護的狀況 |
| [管路狀況值集](ValueSet-ReferralConditionTubeVS-TWLTC.md) | 個案持有管路的狀況 |
| [臺灣 2023 年中文版 ICD-10-PCS-F 值集](ValueSet-ICD-10-PCS-2023-TW-F-VS.md) | 臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 ValueSet 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
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
| [長照 SDK－服務項目（計畫）](ValueSet-vs-tw-ltc-service-item.md) | 此 ValueSet 用於表示長照 SDK 中的服務項目（計畫）。 |
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
| [地址用途擴展識別碼](CodeSystem-AddressUseCS-TWLTC.md) | 地址用途的擴展識別碼，新增戶籍地與現居地等代碼 |
| [教育程度代碼](CodeSystem-EducationStatusCS-TWLTC.md) | 用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。 |
| [經濟狀況代碼](CodeSystem-EconomyStatusCS-TWLTC.md) | 用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。 此代碼比照警政署偵查筆錄制式格式之選項進行設計。 |
| [臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學](CodeSystem-ICD-10-PCS-2023-TW-F-CS.md) | 臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 |
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
| [長照 SDK－服務項目代碼](CodeSystem-cs-tw-ltc-service-item.md) | 對應 r4.* 臺灣長照給付『照顧組合／輔具／無障礙修繕』服務項目代碼（AA..FA 系列），來源：清單.xlsx。 |
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
| [去脂體重測量範例](Observation-pasport-observation-fat-free-mass-example.md) | 一個去脂體重測量的範例，展示如何使用 PASportObservationFatFreeMass Profile 來記錄身體組成分析 |
| [呼吸速率測量範例](Observation-pasport-observation-respiratory-rate-example.md) | 一個呼吸速率測量的範例，展示如何使用 PASportObservationRespiratoryRate Profile 來記錄呼吸速率資料 |
| [問卷回覆範例](QuestionnaireResponse-ltc-questionnaire-response-example.md) | 一個問卷回覆的範例，展示如何使用 LTCQuestionnaireResponse Profile 來記錄問卷回覆 |
| [基礎代謝率測量範例](Observation-pasport-observation-basal-metabolic-rate-example.md) | 一個基礎代謝率測量的範例，展示如何使用 PASportObservationBasalMetabolicRate Profile 來記錄身體組成分析 |
| [安靜心率測量範例](Observation-pasport-observation-resting-heart-rate-example.md) | 一個安靜心率測量的範例，展示如何使用 PASportObservationRestingHeartRate Profile 來記錄安靜心率資料 |
| [家庭照顧者狀況範例](Condition-ltc-condition-caregiver-family-example.md) | 一個家庭照顧者狀況的範例，展示如何使用 LTCConditionCaregiver Profile |
| [家庭照顧者狀況範例（轉介用）](Condition-ltc-condition-caregiver-family-referral-example.md) | 轉介單使用之家庭照顧者狀況 Condition 範例 |
| [居家環境與社會參與問卷](Questionnaire-ltc-questionnaire-society.md) | CMS評估表中居家環境與社會參與問卷 |
| [居家環境與社會參與問卷回應範例](QuestionnaireResponse-ltc-questionnaire-response-society-example.md) | CMS評估表中居家環境與社會參與問卷的回應範例 |
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
| [轉介－身心障礙手冊持有狀態範例](Condition-ltc-condition-disability-referral-example.md) | 供轉介單使用的身心障礙手冊持有狀態 Condition 範例 |
| [轉介－身心障礙類型（肢體）範例](Condition-ltc-condition-disability-type-limb-referral-example.md) | 供轉介單使用的身心障礙類型（肢體） Condition 範例 |
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

