本頁列出本 IG 中定義的所有 FHIR Profiles 和 Extensions。

本 IG 之 Profiles 依業務情境劃分為四大類別：

1. **共用資料元素**：跨所有業務端共同引用的基礎資料，包括個案、關係人、服務人員、機構與問卷架構。
2. **醫院端**：醫事機構產出的診斷與病情、失智與認知評估及醫師專業意見資料。
3. **臨床端（長照機構／照護現場）**：長照機構日常照護紀錄、照護狀況、安全監測、照護規劃、運動復能、居家護理與在宅急症資料。
4. **行政與申報端（照顧協調／核定申報）**：照顧管理中心評估收案文件、照顧管理流程、長照 SDK 系統介接與申報，以及長照支付審查資料。

### Resources 之 Profiles
以下為台灣長期照顧實作指引（TW LTC IG）使用到的所有 Profiles。

#### 一、共用資料元素

跨醫院端、臨床端、行政與申報端共同引用的基礎資料。

- [長期照顧－住民基本資料（LTCPatient）](StructureDefinition-LTCPatient.html)
- [長期照顧－關係人（LTCRelatedPerson）](StructureDefinition-LTCRelatedPerson.html)
- [長期照顧－照顧服務提供者（LTCPractitioner）](StructureDefinition-LTCPractitioner.html)
- [長期照顧－服務人員角色（LTCPractitionerRole）](StructureDefinition-LTCPractitionerRole.html)
- [長期照顧－機構（Organization-twltc）](StructureDefinition-Organization-twltc.html)
- [長期照顧－問卷（LTCQuestionnaire）](StructureDefinition-LTCQuestionnaire.html)
- [長期照顧－問卷回覆（LTCQuestionnaireResponse）](StructureDefinition-LTCQuestionnaireResponse.html)

#### 二、醫院端

醫事機構產出之診斷、評估與專業意見資料。

##### 診斷與病情

- [長期照顧－病情、問題或診斷（LTCCondition）](StructureDefinition-LTCCondition.html)
- [長期照顧－主要疾病（LTCConditionProblem）](StructureDefinition-LTCConditionProblem.html)
- [長期照顧－主要問題及需求（LTCConditionNeed）](StructureDefinition-LTCConditionNeed.html)

##### 失智與認知評估

- [長期照顧－簡易智能狀態測驗回覆（LTCQuestionnaireResponseMMSE）](StructureDefinition-LTCQuestionnaireResponseMMSE.html)
- [長期照顧－臨床失智評估量表回覆（LTCQuestionnaireResponseCDR）](StructureDefinition-LTCQuestionnaireResponseCDR.html)

##### 醫師專業意見

- [長期照護醫師意見書問卷回覆 (AA12)（LTCQuestionnaireResponseAA12）](StructureDefinition-LTCQuestionnaireResponseAA12.html)

#### 三、臨床端（長照機構／照護現場）

長照機構照護現場之日常照護、安全監測、照護規劃、運動復能，以及居家護理與在宅急症資料。

##### 日常照護紀錄

- [長期照顧－生命體徵（LTCObservationVitalSigns）](StructureDefinition-LTCObservationVitalSigns.html)
- [長期照顧－一組生命徵象檢驗檢查（LTCObservationVitalSignsPanel）](StructureDefinition-LTCObservationVitalSignsPanel.html)
- [長期照顧－用藥資料（LTCMedicationAdministration）](StructureDefinition-LTCMedicationAdministration.html)
- [長期照顧－照護活動（LTCProcedureCareActivity）](StructureDefinition-LTCProcedureCareActivity.html)

##### 照護狀況紀錄

- [長期照顧－壓傷狀況（LTCConditionCrush）](StructureDefinition-LTCConditionCrush.html)
- [長期照顧－管路裝設狀況（LTCConditionTube）](StructureDefinition-LTCConditionTube.html)
- [長期照顧－居住狀況（LTCConditionResidence）](StructureDefinition-LTCConditionResidence.html)
- [長期照顧－看護狀況（LTCConditionCaregiver）](StructureDefinition-LTCConditionCaregiver.html)
- [長期照顧－身心障礙手冊持有狀態（LTCConditionDisability）](StructureDefinition-LTCConditionDisability.html)
- [長期照顧－身心障礙類型（LTCConditionDisabilityType）](StructureDefinition-LTCConditionDisabilityType.html)

##### 安全監測

- [長期照顧－個案位置監測（Location-twltc）](StructureDefinition-Location-twltc.html)
- [長期照顧－異常事件警報（AdverseEvent-twltc）](StructureDefinition-AdverseEvent-twltc.html)
- [安全防護－跌倒紀錄（LTCObservationFallingHistory）](StructureDefinition-LTCObservationFallingHistory.html)

##### 照護規劃

- [長期照顧－照顧團隊（LTCCareTeam）](StructureDefinition-LTCCareTeam.html)
- [長期照顧－照顧目標（LTCGoal）](StructureDefinition-LTCGoal.html)
- [長期照顧－照顧計畫（LTCCarePlan）](StructureDefinition-LTCCarePlan.html)

##### 運動處方

- [運動處方－服務請求（PASportServiceRequest）](StructureDefinition-PASportServiceRequest.html)
- [運動處方－病史（PASportConditionMedicalHistory）](StructureDefinition-PASportConditionMedicalHistory.html)
- [運動處方－運動史（PASportConditionExerciseHistory）](StructureDefinition-PASportConditionExerciseHistory.html)
- [運動處方－運動計畫（PASportCarePlan）](StructureDefinition-PASportCarePlan.html)
- [運動處方－運動目標（PASportGoal）](StructureDefinition-PASportGoal.html)

##### 基礎生理量測

- [基礎生理量測－身高（PASportObservationHeight）](StructureDefinition-PASportObservationHeight.html)
- [基礎生理量測－體重（PASportObservationWeight）](StructureDefinition-PASportObservationWeight.html)
- [基礎生理量測－腰圍（PASportObservationWaist）](StructureDefinition-PASportObservationWaist.html)
- [基礎生理量測－血壓（PASportObservationBloodPressure）](StructureDefinition-PASportObservationBloodPressure.html)
- [基礎生理量測－脈搏血氧飽和度（PASportObservationPeripheralOxygenSaturation）](StructureDefinition-PASportObservationPeripheralOxygenSaturation.html)
- [基礎生理量測－血糖（PASportObservationGlucose）](StructureDefinition-PASportObservationGlucose.html)
- [基礎生理量測－心率（PASportObservationHeartRate）](StructureDefinition-PASportObservationHeartRate.html)
- [基礎生理量測－安靜心率（PASportObservationRestingHeartRate）](StructureDefinition-PASportObservationRestingHeartRate.html)
- [基礎生理量測－平均心率（PASportObservationMeanHeartRate）](StructureDefinition-PASportObservationMeanHeartRate.html)
- [基礎生理量測－心率變異性（PASportObservationHeartRateVariability）](StructureDefinition-PASportObservationHeartRateVariability.html)
- [基礎生理量測－體溫（PASportObservationBodyTemperature）](StructureDefinition-PASportObservationBodyTemperature.html)
- [基礎生理量測－呼吸速率（PASportObservationRespiratoryRate）](StructureDefinition-PASportObservationRespiratoryRate.html)

##### 身體組成分析儀

- [身體組成分析儀－身體總水分（PASportObservationTotalBodyWater）](StructureDefinition-PASportObservationTotalBodyWater.html)
- [身體組成分析儀－細胞內水分（PASportObservationIntracellularWater）](StructureDefinition-PASportObservationIntracellularWater.html)
- [身體組成分析儀－細胞外水分（PASportObservationExtracellularWater）](StructureDefinition-PASportObservationExtracellularWater.html)
- [身體組成分析儀－蛋白質重（PASportObservationProtein）](StructureDefinition-PASportObservationProtein.html)
- [身體組成分析儀－礦物質重（PASportObservationMineral）](StructureDefinition-PASportObservationMineral.html)
- [身體組成分析儀－體脂肪重（PASportObservationBodyFatMass）](StructureDefinition-PASportObservationBodyFatMass.html)
- [身體組成分析儀－骨骼肌重（PASportObservationSkeletalMuscleMass）](StructureDefinition-PASportObservationSkeletalMuscleMass.html)
- [身體組成分析儀－肌肉質量指數（PASportObservationSkeletalMuscleMassIndex）](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.html)
- [身體組成分析儀－身體質量指數（PASportObservationBodyMassIndex）](StructureDefinition-PASportObservationBodyMassIndex.html)
- [身體組成分析儀－體脂率（PASportObservationBodyFatPercentage）](StructureDefinition-PASportObservationBodyFatPercentage.html)
- [身體組成分析儀－基礎代謝率（PASportObservationBasalMetabolicRate）](StructureDefinition-PASportObservationBasalMetabolicRate.html)
- [身體組成分析儀－去脂體重（PASportObservationFatFreeMass）](StructureDefinition-PASportObservationFatFreeMass.html)
- [身體組成分析儀－內臟脂肪指數（PASportObservationVisceralFatIndex）](StructureDefinition-PASportObservationVisceralFatIndex.html)
- [身體組成分析儀－內臟脂肪面積（PASportObservationVisceralFatArea）](StructureDefinition-PASportObservationVisceralFatArea.html)
- [身體組成分析儀－腰臀圍比（PASportObservationWaistHipRate）](StructureDefinition-PASportObservationWaistHipRate.html)
- [身體組成分析儀－肥胖度（PASportObservationObesityDegree）](StructureDefinition-PASportObservationObesityDegree.html)
- [身體組成分析儀－體內年齡（PASportObservationBodyAge）](StructureDefinition-PASportObservationBodyAge.html)
- [身體組成分析儀－肌肉量（PASportObservationSoftLeanMass）](StructureDefinition-PASportObservationSoftLeanMass.html)
- [身體組成分析儀－細胞量（PASportObservationCellMass）](StructureDefinition-PASportObservationCellMass.html)
- [身體組成分析儀－推定骨量（PASportObservationBodyBoneMass）](StructureDefinition-PASportObservationBodyBoneMass.html)
- [身體組成分析儀－水腫指數（PASportObservationExtracellularWaterRatio）](StructureDefinition-PASportObservationExtracellularWaterRatio.html)

##### 穿戴裝置

- [穿戴裝置－步態週期（PASportObservationGaitCycle）](StructureDefinition-PASportObservationGaitCycle.html)
- [穿戴裝置－步態分析（PASportObservationGaitType）](StructureDefinition-PASportObservationGaitType.html)

##### 運動項目

- [運動項目－跑步機（PASportObservationTreadmill）](StructureDefinition-PASportObservationTreadmill.html)
- [運動項目－重量訓練（PASportObservationWeightTraining）](StructureDefinition-PASportObservationWeightTraining.html)

##### 居家護理照護管理系統

- [居家護理－日常生活功能評估表單（HNADLsResponse）](StructureDefinition-HNADLsResponse.html)
- [居家護理－介接作業（HNAPITask）](StructureDefinition-HNAPITask.html)
- [居家護理－個案基本資料表單（HNBaseDataResponse）](StructureDefinition-HNBaseDataResponse.html)
- [居家護理－身體評估評估表單（HNBodyEvaluationsResponse）](StructureDefinition-HNBodyEvaluationsResponse.html)
- [居家護理－照護計畫（HNCarePlan）](StructureDefinition-HNCarePlan.html)
- [居家護理－照護計畫結案表單（HNCarePlanCloseResponse）](StructureDefinition-HNCarePlanCloseResponse.html)
- [居家護理－照護計畫交易（HNCarePlanTransaction）](StructureDefinition-HNCarePlanTransaction.html)
- [居家護理－照護紀錄表單（HNCareRecordResponse）](StructureDefinition-HNCareRecordResponse.html)
- [居家護理－個案結案表單（HNCaseCloseResponse）](StructureDefinition-HNCaseCloseResponse.html)
- [居家護理－共照紀錄表單（HNCaseDescResponse）](StructureDefinition-HNCaseDescResponse.html)
- [居家護理－需求摘要表單（HNCaseSummaryResponse）](StructureDefinition-HNCaseSummaryResponse.html)
- [居家護理－共照紀錄（HNCommunication）](StructureDefinition-HNCommunication.html)
- [居家護理－認知功能評估表單（HNDementiasResponse）](StructureDefinition-HNDementiasResponse.html)
- [居家護理－藥物安全性評估表單（HNDrugSafetiesResponse）](StructureDefinition-HNDrugSafetiesResponse.html)
- [居家護理－收案歷程（HNEpisodeOfCare）](StructureDefinition-HNEpisodeOfCare.html)
- [居家護理－照護計畫評值紀錄表單（HNEvaluationsResponse）](StructureDefinition-HNEvaluationsResponse.html)
- [居家護理－跌倒危險性評估表單（HNFallRisksResponse）](StructureDefinition-HNFallRisksResponse.html)
- [居家護理－情緒問題評估表單（HNGeriatricDepressionScalesResponse）](StructureDefinition-HNGeriatricDepressionScalesResponse.html)
- [居家護理－照護目標（HNGoal）](StructureDefinition-HNGoal.html)
- [居家護理－健康紀錄評估表單（HNHealthyHabitsResponse）](StructureDefinition-HNHealthyHabitsResponse.html)
- [居家護理－工具性日常生活活動功能評估表單（HNIADLsResponse）](StructureDefinition-HNIADLsResponse.html)
- [居家護理－簡易營養評估表單（HNMNASFsResponse）](StructureDefinition-HNMNASFsResponse.html)
- [居家護理－照護計畫措施表單（HNMeasuresResponse）](StructureDefinition-HNMeasuresResponse.html)
- [居家護理－疾病史評估表單（HNMedicalHistoriesResponse）](StructureDefinition-HNMedicalHistoriesResponse.html)
- [居家護理－介接訊息（HNOperationOutcome）](StructureDefinition-HNOperationOutcome.html)
- [居家護理－疼痛評估表單（HNPainEvaluationsResponse）](StructureDefinition-HNPainEvaluationsResponse.html)
- [居家護理－個案（HNPatient）](StructureDefinition-HNPatient.html)
- [居家護理－壓力性損傷危險評估表單（HNPressureInjuriesResponse）](StructureDefinition-HNPressureInjuriesResponse.html)
- [居家護理－衰弱評估表單（HNSOFsResponse）](StructureDefinition-HNSOFsResponse.html)
- [居家護理－人員緊急事件表單（HNStaffEgyResponse）](StructureDefinition-HNStaffEgyResponse.html)
- [居家護理－照護計畫目標表單（HNTargetsResponse）](StructureDefinition-HNTargetsResponse.html)
- [居家護理－生命徵象表單（HNVitalSignResponse）](StructureDefinition-HNVitalSignResponse.html)
- [居家護理－生命徵象（HNVitalSigns）](StructureDefinition-HNVitalSigns.html)
- [居家護理－生命徵象交換集合（HNVitalSignsBundle）](StructureDefinition-HNVitalSignsBundle.html)
- [居家護理－傷口紀錄（HNWound）](StructureDefinition-HNWound.html)

##### 在宅急症照護

- [在宅急症－整段照護（HAHAdmissionEncounter）](StructureDefinition-HAHAdmissionEncounter.html)
- [在宅急症－過敏資訊（HAHAllergyIntolerance）](StructureDefinition-HAHAllergyIntolerance.html)
- [在宅急症－收案評估回覆（HAHAssessmentResponse）](StructureDefinition-HAHAssessmentResponse.html)
- [在宅急症－摘要文件 Bundle（HAHBundleSummary）](StructureDefinition-HAHBundleSummary.html)
- [在宅急症－照護計畫（HAHCarePlan）](StructureDefinition-HAHCarePlan.html)
- [在宅急症－照護團隊（HAHCareTeam）](StructureDefinition-HAHCareTeam.html)
- [在宅急症－臨床評估（HAHClinicalImpression）](StructureDefinition-HAHClinicalImpression.html)
- [在宅急症－照會與交班（HAHCommunication）](StructureDefinition-HAHCommunication.html)
- [在宅急症－結案與轉銜摘要（HAHCompositionSummary）](StructureDefinition-HAHCompositionSummary.html)
- [在宅急症－診斷與照護問題（HAHCondition）](StructureDefinition-HAHCondition.html)
- [在宅急症－照護同意（HAHConsent）](StructureDefinition-HAHConsent.html)
- [在宅急症－量測設備（HAHDevice）](StructureDefinition-HAHDevice.html)
- [在宅急症－檢驗報告（HAHDiagnosticReport）](StructureDefinition-HAHDiagnosticReport.html)
- [在宅急症－照護附件（HAHDocumentReference）](StructureDefinition-HAHDocumentReference.html)
- [在宅急症－就診基礎（HAHEncounter）](StructureDefinition-HAHEncounter.html)
- [在宅急症－收案療程（HAHEpisodeOfCare）](StructureDefinition-HAHEpisodeOfCare.html)
- [在宅急症－照護目標（HAHGoal）](StructureDefinition-HAHGoal.html)
- [在宅急症－給藥與輸注（HAHMedicationAdministration）](StructureDefinition-HAHMedicationAdministration.html)
- [在宅急症－給藥處方（HAHMedicationRequest）](StructureDefinition-HAHMedicationRequest.html)
- [在宅急症－檢驗結果（HAHObservationLab）](StructureDefinition-HAHObservationLab.html)
- [在宅急症－個案（HAHPatient）](StructureDefinition-HAHPatient.html)
- [在宅急症－處置紀錄（HAHProcedure）](StructureDefinition-HAHProcedure.html)
- [在宅急症－服務請求（HAHServiceRequest）](StructureDefinition-HAHServiceRequest.html)
- [在宅急症－單次訪視（HAHVisitEncounter）](StructureDefinition-HAHVisitEncounter.html)
- [在宅急症－照護工作（HAHVisitTask）](StructureDefinition-HAHVisitTask.html)

#### 四、行政與申報端（照顧協調／核定申報）

照顧管理中心評估收案、照顧管理流程、長照 SDK 系統介接申報與長照支付審查資料。

##### 個案服務初篩表／轉介單

由醫院或社區單位發起、照顧管理中心收案之跨端文件。

- [長期照顧管理中心個案服務初篩表/轉介單文件打包（LTCBundleReferral）](StructureDefinition-LTCBundleReferral.html)
- [長期照護管理中心個案服務初篩表/轉介單文件架構（LTCCompositionReferral）](StructureDefinition-LTCCompositionReferral.html)
- [轉介單－個案基本資料（LTCPatientReferral）](StructureDefinition-LTCPatientReferral.html)
- [轉介單－服務種類（LTCCarePlanReferral）](StructureDefinition-LTCCarePlanReferral.html)
- [轉介單－照顧者問卷回覆（LTCQuestionnaireResponseReferralCaregiver）](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.html)
- [轉介單－衰弱評估問卷回覆（LTCQuestionnaireResponseReferralSOF）](StructureDefinition-LTCQuestionnaireResponseReferralSOF.html)

##### 照顧管理評估量表（CMS 量表）

- [照顧管理評估量表文件打包（LTCBundleCMS）](StructureDefinition-LTCBundleCMS.html)
- [照顧管理評估量表文件架構（LTCCompositionCMS）](StructureDefinition-LTCCompositionCMS.html)
- [照顧管理評估量表－個案基本資料（LTCPatientCMS）](StructureDefinition-LTCPatientCMS.html)
- [照顧管理評估量表－主要照顧者工作與支持（LTCQuestionnaireResponseCMSCaregiverSupport）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.html)
- [照顧管理評估量表－主要照顧者負荷問卷回覆（LTCQuestionnaireResponseCMSCaregiverLoad）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.html)
- [照顧管理評估量表－個案溝通能力問卷回覆（LTCQuestionnaireResponseCMSCommunication）](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.html)
- [照顧管理評估量表－個案短期記憶力問卷回覆（LTCQuestionnaireResponseCMSMemory）](StructureDefinition-LTCQuestionnaireResponseCMSMemory.html)
- [照顧管理評估量表－居家環境與社會參與問卷回覆（LTCQuestionnaireResponseCMSSociety）](StructureDefinition-LTCQuestionnaireResponseCMSSociety.html)
- [照顧管理評估量表－情緒及行為型態問卷回覆（LTCQuestionnaireResponseCMSMental）](StructureDefinition-LTCQuestionnaireResponseCMSMental.html)
- [照顧管理評估量表－特殊複雜照護需要問卷回覆（LTCQuestionnaireResponseCMSSpecialCare）](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.html)

##### 共用評估量表

以下量表同時被照顧管理評估量表（CMS）與個案服務初篩表／轉介單引用。

- [ADL 問卷回覆（LTCQuestionnaireResponseADL）](StructureDefinition-LTCQuestionnaireResponseADL.html)
- [IADL 問卷回覆（LTCQuestionnaireResponseIADL）](StructureDefinition-LTCQuestionnaireResponseIADL.html)

##### 照顧管理流程（AA01／AA02）

- [長期照顧－AA01照顧計畫擬訂與服務連結問卷回應（LTCQuestionnaireResponseAA01）](StructureDefinition-LTCQuestionnaireResponseAA01.html)
- [長期照顧－AA02照顧管理追蹤問卷回覆（LTCQuestionnaireResponseAA02）](StructureDefinition-LTCQuestionnaireResponseAA02.html)
- [長期照顧－服務請求（LTCServiceRequest）](StructureDefinition-LTCServiceRequest.html)
- [長期照顧－任務管理（LTCTask）](StructureDefinition-LTCTask.html)

##### 文件與案件共用基礎

供各情境特化 Profile 繼承之共用基礎（Common Base）Profile。

- [長期照顧－文件組成基礎（LTCCompositionBase）](StructureDefinition-LTCCompositionBase.html)
- [長期照顧－案件管理基礎（LTCEpisodeOfCareBase）](StructureDefinition-LTCEpisodeOfCareBase.html)
- [長期照顧－評估核定摘要基礎（LTCObservationAssessmentBase）](StructureDefinition-LTCObservationAssessmentBase.html)

##### 個案總查詢（CS100）

- [個案總查詢（CS100 對應版）Case Summary（LTC-Composition-CS100）](StructureDefinition-LTC-Composition-CS100.html)
- [長照 SDK－照顧計畫（CS100）（LTC-CarePlan-CS100）](StructureDefinition-LTC-CarePlan-CS100.html)
- [長照案件（CS100 專用版）（LTC-EpisodeOfCare-CS100）](StructureDefinition-LTC-EpisodeOfCare-CS100.html)
- [長照 SDK－評估核定摘要（Observation）（LTC-Observation-Assessment-CS100）](StructureDefinition-LTC-Observation-Assessment-CS100.html)

##### 長照 SDK 回傳包

- [長照 SDK－回傳包（4合1）（LTC-Bundle-Payload）](StructureDefinition-LTC-Bundle-Payload.html)
- [長照 SDK－照顧計畫（不含輔具）（LTC-CarePlan-Payload）](StructureDefinition-LTC-CarePlan-Payload.html)
- [長照 SDK－長照案件（LTC-EpisodeOfCare-Payload）](StructureDefinition-LTC-EpisodeOfCare-Payload.html)
- [長照 SDK－評估核定摘要（LTC-Observation-Assessment-Payload）](StructureDefinition-LTC-Observation-Assessment-Payload.html)

##### 申報匯出與檢核

- [長照 SDK－照管全量匯出（Claim）（LTC-Claim-Export）](StructureDefinition-LTC-Claim-Export.html)
- [長照 SDK－照管全量匯出（ClaimResponse）（LTC-ClaimResponse-Export）](StructureDefinition-LTC-ClaimResponse-Export.html)
- [長照－核定額度（CoverageEligibilityResponse）（LTC-CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.html)
- [長照 SDK－服務活動紀錄（SERVICE_A）（LTC-Communication-ServiceA）](StructureDefinition-LTC-Communication-ServiceA.html)
- [長照 SDK－跨月檢核結果（QP_O）（LTC-OperationOutcome-Check）](StructureDefinition-LTC-OperationOutcome-Check.html)

##### 長照支付審查

- [長照支付審查－服務記錄申報文件打包（LTCBundleFeeApply）](StructureDefinition-LTCBundleFeeApply.html)
- [長照支付審查－分案審核明細回覆打包（LTCBundleFeeAuditResponse）](StructureDefinition-LTCBundleFeeAuditResponse.html)
- [長照支付審查－分案審核狀態回覆打包（LTCBundleFeeAuditStatus）](StructureDefinition-LTCBundleFeeAuditStatus.html)
- [長照支付審查－個案服務紀錄申報（LTCClaimFeeApply）](StructureDefinition-LTCClaimFeeApply.html)
- [長照支付審查－分案審核明細（LTCClaimResponseFeeAudit）](StructureDefinition-LTCClaimResponseFeeAudit.html)
- [長照支付審查－交通接送起訖地（LTCLocationFeeAuditPlace）](StructureDefinition-LTCLocationFeeAuditPlace.html)
- [長照支付審查－申報檢核結果（LTCOperationOutcomeFeeAudit）](StructureDefinition-LTCOperationOutcomeFeeAudit.html)
- [長照支付審查－申報交易任務（LTCTaskFeeAudit）](StructureDefinition-LTCTaskFeeAudit.html)

### Extensions
以下 [Extensions]({{site.data.fhir.path}}extensibility.html) 已定義為台灣長期照顧實作指引（TW LTC IG）的一部分，同樣依業務類別劃分。

#### 共用資料元素

- [長照機構住民教育程度（ExtPatientEducationStatus-TWLTC）](StructureDefinition-ExtPatientEducationStatus-TWLTC.html)
- [個案身分別（ExtPatientIdentity-TWLTC）](StructureDefinition-ExtPatientIdentity-TWLTC.html)
- [長照機構住民經濟狀況（ExtPatientEconomyStatus-TWLTC）](StructureDefinition-ExtPatientEconomyStatus-TWLTC.html)
- [是否為主要照顧者（ExtRelatedPersonIsPrimary-TWLTC）](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.html)

#### 醫院端（認知評估）

- [MMSE 總分（mmse-total-score）](StructureDefinition-mmse-total-score.html)
- [CDR 總分（cdr-total-score）](StructureDefinition-cdr-total-score.html)

#### 臨床端（異常事件）

- [長期照顧－異常事件文字描述（Ext-TW-LTC-AdverseEvent-Description）](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.html)
- [長期照顧－異常事件通報方式（Ext-TW-LTC-AdverseEvent-NotifMethod）](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.html)
- [長期照顧－異常事件關聯案件（Ext-TW-LTC-AdverseEvent-About）](StructureDefinition-Ext-TW-LTC-AdverseEvent-About.html)

#### 行政與申報端（長照 SDK）

- [長照 SDK－案件－申請來源（Ext-TW-LTC-Case-Source）](StructureDefinition-Ext-TW-LTC-Case-Source.html)
- [長照 SDK－案件編號（CASENO）（Ext-TW-LTC-Export-CaseNo）](StructureDefinition-Ext-TW-LTC-Export-CaseNo.html)
- [長照 SDK－評估案號（EVA_ID）（Ext-TW-LTC-Export-EvaId）](StructureDefinition-Ext-TW-LTC-Export-EvaId.html)
- [長照 SDK－民國年月（YYYMM）（Ext-TW-LTC-Export-YYYMM-ROC）](StructureDefinition-Ext-TW-LTC-Export-YYYMM-ROC.html)
- [長照 SDK－單位資訊（PIA/PIB/CENTER/MAN_*）（Ext-TW-LTC-Export-Unit）](StructureDefinition-Ext-TW-LTC-Export-Unit.html)
- [長照 SDK－錯誤訊息（Ext-TW-LTC-Export-Error）](StructureDefinition-Ext-TW-LTC-Export-Error.html)
- [單價（Ext-TW-LTC-UnitPrice）](StructureDefinition-Ext-TW-LTC-UnitPrice.html)

#### 居家護理照護管理系統

- [居家護理－共照團隊更新指示（ExtHNCollectionUpdate）](StructureDefinition-ExtHNCollectionUpdate.html)
- [居家護理－收案關聯（ExtHNEpisode）](StructureDefinition-ExtHNEpisode.html)
- [居家護理－主要目標（ExtHNMainTarget）](StructureDefinition-ExtHNMainTarget.html)
- [居家護理－措施停止資訊（ExtHNMeasureStop）](StructureDefinition-ExtHNMeasureStop.html)
- [居家護理－來源表單（ExtHNSourceForm）](StructureDefinition-ExtHNSourceForm.html)

#### 在宅急症照護

- [在宅急症－療程關聯（ExtHAHEpisode）](StructureDefinition-ExtHAHEpisode.html)
- [在宅急症－療程結束原因（ExtHAHOutcome）](StructureDefinition-ExtHAHOutcome.html)
- [在宅急症－訪視方式（ExtHAHVisitMode）](StructureDefinition-ExtHAHVisitMode.html)

#### 長照支付審查

- [長照支付審查－分案審核統計與承辦資訊（Ext-TW-LTC-FeeAudit-AuditSummary）](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html)
- [長照支付審查－清冊文件下載路徑（Ext-TW-LTC-FeeAudit-DocUrl）](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html)
- [長照支付審查－服務記錄識別資訊（Ext-TW-LTC-FeeAudit-RecordRef）](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html)
