本頁列出本 IG 中定義的所有 FHIR Profiles 和 Extensions。

本 IG 之 Profiles 依業務情境劃分為四大類別：

1. **共用資料元素**：跨所有業務端共同引用的基礎資料，包括個案、關係人、服務人員、機構與問卷架構。
2. **醫院端**：醫事機構產出的診斷與病情、失智與認知評估及醫師專業意見資料。
3. **臨床端（長照機構／照護現場）**：長照機構日常照護紀錄、照護狀況、安全監測、照護規劃與運動復能資料。
4. **行政與申報端（照顧協調／核定申報）**：照顧管理中心評估收案文件、照顧管理流程、長照 SDK 系統介接與申報資料，以及支付審查（照管平台服務記錄申報與分案審核）資料。

### Resources 之 Profiles
以下為台灣長期照顧實作指引（TW LTC IG）使用到的所有 Profiles。

#### 一、共用資料元素

跨醫院端、臨床端、行政與申報端共同引用的基礎資料。

- [住民基本資料（LTC Patient）](StructureDefinition-LTCPatient.html)
- [關係人（LTC RelatedPerson）](StructureDefinition-LTCRelatedPerson.html)
- [照顧服務提供者（LTC Practitioner）](StructureDefinition-LTCPractitioner.html)
- [服務人員角色（LTC PractitionerRole）](StructureDefinition-LTCPractitionerRole.html)
- [機構（LTC Organization）](StructureDefinition-Organization-twltc.html)
- [問卷（LTC Questionnaire）](StructureDefinition-LTCQuestionnaire.html)
- [問卷回覆（LTC QuestionnaireResponse）](StructureDefinition-LTCQuestionnaireResponse.html)

#### 二、醫院端

醫事機構產出之診斷、評估與專業意見資料。

##### 診斷與病情

- [病情、問題或診斷（LTC Condition）](StructureDefinition-LTCCondition.html)
- [主要疾病（LTC Condition Problem）](StructureDefinition-LTCConditionProblem.html)
- [主要問題及需求（LTC Condition Need）](StructureDefinition-LTCConditionNeed.html)

##### 失智與認知評估

- [簡易智能狀態測驗回覆（LTC QuestionnaireResponse MMSE）](StructureDefinition-LTCQuestionnaireResponseMMSE.html)
- [臨床失智評估量表回覆（LTC QuestionnaireResponse CDR）](StructureDefinition-LTCQuestionnaireResponseCDR.html)

##### 醫師專業意見

- [長期照護醫師意見書問卷回覆（LTC QuestionnaireResponse AA12）](StructureDefinition-LTCQuestionnaireResponseAA12.html)

#### 三、臨床端（長照機構／照護現場）

長照機構照護現場之日常照護、安全監測、照護規劃與運動復能資料。

##### 日常照護紀錄

- [生命體徵（LTC Observation Vital Signs）](StructureDefinition-LTCObservationVitalSigns.html)
- [一組生命徵象檢驗檢查（LTC Observation Vital Signs Panel）](StructureDefinition-LTCObservationVitalSignsPanel.html)
- [用藥資料（LTC Medication Administration）](StructureDefinition-LTCMedicationAdministration.html)
- [照護活動（LTC Procedure Care Activity）](StructureDefinition-LTCProcedureCareActivity.html)

##### 照護狀況紀錄

- [壓傷狀況（LTC Condition Crush）](StructureDefinition-LTCConditionCrush.html)
- [管路裝設狀況（LTC Condition Tube）](StructureDefinition-LTCConditionTube.html)
- [居住狀況（LTC Condition Residence）](StructureDefinition-LTCConditionResidence.html)
- [看護狀況（LTC Condition Caregiver）](StructureDefinition-LTCConditionCaregiver.html)
- [身心障礙手冊持有狀態（LTC Condition Disability）](StructureDefinition-LTCConditionDisability.html)
- [身心障礙類型（LTC Condition Disability Type）](StructureDefinition-LTCConditionDisabilityType.html)

##### 安全監測

- [個案位置監測（LTC Location）](StructureDefinition-Location-twltc.html)
- [異常事件警報（LTC AdverseEvent）](StructureDefinition-AdverseEvent-twltc.html)
- [跌倒紀錄（LTC Observation Falling History）](StructureDefinition-LTCObservationFallingHistory.html)

##### 照護規劃

- [照顧團隊（LTC CareTeam）](StructureDefinition-LTCCareTeam.html)
- [照顧目標（LTC Goal）](StructureDefinition-LTCGoal.html)
- [照顧計畫（LTC CarePlan）](StructureDefinition-LTCCarePlan.html)

##### 運動處方

- [服務請求（PA Sport ServiceRequest）](StructureDefinition-PASportServiceRequest.html)
- [病史（PA Sport Condition Medical History）](StructureDefinition-PASportConditionMedicalHistory.html)
- [運動史（PA Sport Condition Exercise History）](StructureDefinition-PASportConditionExerciseHistory.html)
- [運動計畫（PA Sport CarePlan）](StructureDefinition-PASportCarePlan.html)
- [運動目標（PA Sport Goal）](StructureDefinition-PASportGoal.html)

##### 基礎生理量測

- [身高（PA Sport Observation Height）](StructureDefinition-PASportObservationHeight.html)
- [體重（PA Sport Observation Weight）](StructureDefinition-PASportObservationWeight.html)
- [腰圍（PA Sport Observation Waist）](StructureDefinition-PASportObservationWaist.html)
- [血壓（PA Sport Observation Blood Pressure）](StructureDefinition-PASportObservationBloodPressure.html)
- [脈搏血氧飽和度（PA Sport Observation Pulse Oximetry）](StructureDefinition-PASportObservationPeripheralOxygenSaturation.html)
- [血糖（PA Sport Observation Blood Glucose）](StructureDefinition-PASportObservationGlucose.html)
- [心率（PA Sport Observation Heart Rate）](StructureDefinition-PASportObservationHeartRate.html)
- [安靜心率（PA Sport Observation Resting Heart Rate）](StructureDefinition-PASportObservationRestingHeartRate.html)
- [平均心率（PA Sport Observation Average Heart Rate）](StructureDefinition-PASportObservationMeanHeartRate.html)
- [心率變異性（PA Sport Observation Heart Rate Variability）](StructureDefinition-PASportObservationHeartRateVariability.html)
- [體溫（PA Sport Observation Body Temperature）](StructureDefinition-PASportObservationBodyTemperature.html)
- [呼吸速率（PA Sport Observation Respiratory Rate）](StructureDefinition-PASportObservationRespiratoryRate.html)

##### 身體組成分析儀

- [身體總水分（PA Sport Observation Total Body Water）](StructureDefinition-PASportObservationTotalBodyWater.html)
- [細胞內水分（PA Sport Observation Intracellular Water）](StructureDefinition-PASportObservationIntracellularWater.html)
- [細胞外水分（PA Sport Observation Extracellular Water）](StructureDefinition-PASportObservationExtracellularWater.html)
- [蛋白質重（PA Sport Observation Protein）](StructureDefinition-PASportObservationProtein.html)
- [礦物質重（PA Sport Observation Mineral）](StructureDefinition-PASportObservationMineral.html)
- [體脂肪重（PA Sport Observation Body Fat Mass）](StructureDefinition-PASportObservationBodyFatMass.html)
- [骨骼肌重（PA Sport Observation Skeletal Muscle Mass）](StructureDefinition-PASportObservationSkeletalMuscleMass.html)
- [肌肉質量指數（PA Sport Observation Skeletal Muscle Mass Index）](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.html)
- [身體質量指數（PA Sport Observation Body Mass Index）](StructureDefinition-PASportObservationBodyMassIndex.html)
- [體脂率（PA Sport Observation Body Fat Percentage）](StructureDefinition-PASportObservationBodyFatPercentage.html)
- [基礎代謝率（PA Sport Observation Basal Metabolic Rate）](StructureDefinition-PASportObservationBasalMetabolicRate.html)
- [去脂體重（PA Sport Observation Fat Free Mass）](StructureDefinition-PASportObservationFatFreeMass.html)
- [內臟脂肪指數（PA Sport Observation Visceral Fat Index）](StructureDefinition-PASportObservationVisceralFatIndex.html)
- [內臟脂肪面積（PA Sport Observation Visceral Fat Area）](StructureDefinition-PASportObservationVisceralFatArea.html)
- [腰臀圍比（PA Sport Observation Waist-Hip Ratio）](StructureDefinition-PASportObservationWaistHipRate.html)
- [肥胖度（PA Sport Observation Obesity Degree）](StructureDefinition-PASportObservationObesityDegree.html)
- [體內年齡（PA Sport Observation Body Age）](StructureDefinition-PASportObservationBodyAge.html)
- [肌肉量（PA Sport Observation Soft Lean Mass）](StructureDefinition-PASportObservationSoftLeanMass.html)
- [細胞量（PA Sport Observation Cell Mass）](StructureDefinition-PASportObservationCellMass.html)
- [推定骨量（PA Sport Observation Body Bone Mass）](StructureDefinition-PASportObservationBodyBoneMass.html)
- [水腫指數（PA Sport Observation Extracellular Water Ratio）](StructureDefinition-PASportObservationExtracellularWaterRatio.html)

##### 穿戴裝置

- [步態週期（PA Sport Observation Gait Cycle）](StructureDefinition-PASportObservationGaitCycle.html)
- [步態分析（PA Sport Observation Gait Type）](StructureDefinition-PASportObservationGaitType.html)

##### 運動項目

- [跑步機（PA Sport Observation Treadmill）](StructureDefinition-PASportObservationTreadmill.html)
- [重量訓練（PA Sport Observation Weight Training）](StructureDefinition-PASportObservationWeightTraining.html)

#### 四、行政與申報端（照顧協調／核定申報）

照顧管理中心評估收案、照顧管理流程與長照 SDK 系統介接申報資料。

##### 個案服務初篩表／轉介單

由醫院或社區單位發起、照顧管理中心收案之跨端文件。

- [長期照護管理中心個案服務初篩表/轉介單文件打包（LTC Bundle Referral）](StructureDefinition-LTCBundleReferral.html)
- [長期照護管理中心個案服務初篩表/轉介單文件架構（LTC Composition Referral）](StructureDefinition-LTCCompositionReferral.html)
- [個案基本資料（LTC Patient Referral）](StructureDefinition-LTCPatientReferral.html)
- [服務種類（LTC CarePlan Referral）](StructureDefinition-LTCCarePlanReferral.html)
- [照顧者問卷回覆（LTC QuestionnaireResponse Referral Caregiver）](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.html)
- [衰弱評估問卷回覆（LTC QuestionnaireResponse Referral SOF）](StructureDefinition-LTCQuestionnaireResponseReferralSOF.html)

##### 照顧管理評估量表（CMS 量表）

- [照顧管理評估量表文件打包（LTC Bundle CMS）](StructureDefinition-LTCBundleCMS.html)
- [照顧管理評估量表文件架構（LTC Composition CMS）](StructureDefinition-LTCCompositionCMS.html)
- [個案基本資料（LTC Patient CMS）](StructureDefinition-LTCPatientCMS.html)
- [主要照顧者工作與支持（LTC QuestionnaireResponse CMS Caregiver Support）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.html)
- [主要照顧者負荷問卷回覆（LTC QuestionnaireResponse CMS Caregiver Load）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.html)
- [個案溝通能力問卷回覆（LTC QuestionnaireResponse CMS Communication）](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.html)
- [個案短期記憶力問卷回覆（LTC QuestionnaireResponse CMS Memory）](StructureDefinition-LTCQuestionnaireResponseCMSMemory.html)
- [居家環境與社會參與（LTC QuestionnaireResponse CMS Society）](StructureDefinition-LTCQuestionnaireResponseCMSSociety.html)
- [情緒及行為型態問卷回覆（LTC QuestionnaireResponse CMS Mental）](StructureDefinition-LTCQuestionnaireResponseCMSMental.html)
- [特殊複雜照護需要問卷回覆（LTC QuestionnaireResponse CMS Special Care）](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.html)

##### 共用評估量表

以下量表同時被照顧管理評估量表（CMS）與個案服務初篩表／轉介單引用。

- [日常生活能力問卷回覆（LTC QuestionnaireResponse ADL）](StructureDefinition-LTCQuestionnaireResponseADL.html)
- [工具性日常活動功能問卷回覆（LTC QuestionnaireResponse IADL）](StructureDefinition-LTCQuestionnaireResponseIADL.html)

##### 照顧管理流程（AA01／AA02）

- [AA01 照顧計畫擬訂與服務連結問卷回覆（LTC QuestionnaireResponse AA01）](StructureDefinition-LTCQuestionnaireResponseAA01.html)
- [AA02 照顧管理追蹤問卷回覆（LTC QuestionnaireResponse AA02）](StructureDefinition-LTCQuestionnaireResponseAA02.html)
- [服務請求（LTC ServiceRequest）](StructureDefinition-LTCServiceRequest.html)
- [任務管理（LTC Task）](StructureDefinition-LTCTask.html)

##### 文件與案件共用基礎

供各情境特化 Profile 繼承之共用基礎（Common Base）Profile。

- [文件組成基礎（LTC Composition Base）](StructureDefinition-LTCCompositionBase.html)
- [案件管理基礎（LTC EpisodeOfCare Base）](StructureDefinition-LTCEpisodeOfCareBase.html)
- [評估核定摘要基礎（LTC Observation Assessment Base）](StructureDefinition-LTCObservationAssessmentBase.html)

##### 個案總查詢（CS100）

- [個案總查詢文件架構（LTC Composition CS100）](StructureDefinition-LTC-Composition-CS100.html)
- [照顧計畫（LTC CarePlan CS100）](StructureDefinition-LTC-CarePlan-CS100.html)
- [長照案件（LTC EpisodeOfCare CS100）](StructureDefinition-LTC-EpisodeOfCare-CS100.html)
- [評估核定摘要（LTC Observation Assessment CS100）](StructureDefinition-LTC-Observation-Assessment-CS100.html)

##### 長照 SDK 回傳包

- [回傳包（4合1）（LTC Bundle Payload）](StructureDefinition-LTC-Bundle-Payload.html)
- [照顧計畫（不含輔具）（LTC CarePlan Payload）](StructureDefinition-LTC-CarePlan-Payload.html)
- [長照案件（LTC EpisodeOfCare Payload）](StructureDefinition-LTC-EpisodeOfCare-Payload.html)
- [評估核定摘要（LTC Observation Assessment Payload）](StructureDefinition-LTC-Observation-Assessment-Payload.html)

##### 申報匯出與檢核

- [照管全量匯出（LTC Claim Export）](StructureDefinition-LTC-Claim-Export.html)
- [照管全量匯出（LTC ClaimResponse Export）](StructureDefinition-LTC-ClaimResponse-Export.html)
- [核定額度（LTC CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.html)
- [服務活動紀錄 SERVICE_A（LTC Communication ServiceA）](StructureDefinition-LTC-Communication-ServiceA.html)
- [跨月檢核結果 QP_O（LTC OperationOutcome Check）](StructureDefinition-LTC-OperationOutcome-Check.html)

##### 支付審查（照管平台申報）

服務提供單位向照管平台申報服務記錄、支付審核系統回覆分案審核結果，以及申報交易狀態查詢之資料。詳細情境說明請參閱[長照支付審查](fee-audit.html)頁面。

###### 服務記錄申報

- [個案服務紀錄申報（LTC Claim Fee Apply）](StructureDefinition-LTCClaimFeeApply.html)
- [服務記錄申報文件打包（LTC Bundle Fee Apply）](StructureDefinition-LTCBundleFeeApply.html)
- [交通接送起訖地（LTC Location Fee Audit Place）](StructureDefinition-LTCLocationFeeAuditPlace.html)

###### 分案審核回覆

- [分案審核明細（LTC ClaimResponse Fee Audit）](StructureDefinition-LTCClaimResponseFeeAudit.html)
- [分案審核明細回覆打包（LTC Bundle Fee Audit Response）](StructureDefinition-LTCBundleFeeAuditResponse.html)

###### 申報交易與工作流

- [申報交易任務（LTC Task Fee Audit）](StructureDefinition-LTCTaskFeeAudit.html)
- [分案審核狀態回覆打包（LTC Bundle Fee Audit Status）](StructureDefinition-LTCBundleFeeAuditStatus.html)

###### 申報檢核結果

- [申報檢核結果（LTC OperationOutcome Fee Audit）](StructureDefinition-LTCOperationOutcomeFeeAudit.html)

### Extensions
以下 [Extensions]({{site.data.fhir.path}}extensibility.html) 已定義為台灣長期照顧實作指引（TW LTC IG）的一部分，同樣依業務類別劃分。

#### 共用資料元素

- [病患教育程度（Patient Education Status）](StructureDefinition-ExtPatientEducationStatus-TWLTC.html)
- [病患身分別（Patient Identity）](StructureDefinition-ExtPatientIdentity-TWLTC.html)
- [病患經濟狀況（Patient Economy Status）](StructureDefinition-ExtPatientEconomyStatus-TWLTC.html)
- [關係人是否為主要照顧者（Related Person Is Primary）](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.html)

#### 醫院端（認知評估）

- [MMSE 總分（MMSE Total Score）](StructureDefinition-mmse-total-score.html)
- [CDR 總分（CDR Total Score）](StructureDefinition-cdr-total-score.html)

#### 臨床端（異常事件）

- [異常事件文字描述（AdverseEvent Description）](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.html)
- [異常事件通報方式（AdverseEvent Notification Method）](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.html)
- [異常事件關聯案件（AdverseEvent About）](StructureDefinition-Ext-TW-LTC-AdverseEvent-About.html)

#### 行政與申報端（長照 SDK）

- [案件申請來源（Case Source）](StructureDefinition-Ext-TW-LTC-Case-Source.html)
- [案件編號 CASENO（Export CaseNo）](StructureDefinition-Ext-TW-LTC-Export-CaseNo.html)
- [評估案號 EVA_ID（Export EvaId）](StructureDefinition-Ext-TW-LTC-Export-EvaId.html)
- [民國年月 YYYMM（Export YYYMM ROC）](StructureDefinition-Ext-TW-LTC-Export-YYYMM-ROC.html)
- [單位資訊 PIA/PIB/CENTER/MAN_*（Export Unit）](StructureDefinition-Ext-TW-LTC-Export-Unit.html)
- [錯誤訊息（Export Error）](StructureDefinition-Ext-TW-LTC-Export-Error.html)
- [單價（Unit Price）](StructureDefinition-Ext-TW-LTC-UnitPrice.html)

#### 行政與申報端（支付審查）

- [清冊文件下載路徑（FeeAudit DocUrl）](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html)
- [分案審核統計與承辦資訊（FeeAudit AuditSummary）](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html)
- [服務記錄識別資訊（FeeAudit RecordRef）](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html)
