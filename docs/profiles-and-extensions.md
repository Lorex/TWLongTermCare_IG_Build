# Profiles and Extensions - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* **Profiles and Extensions**

## Profiles and Extensions

本頁列出本 IG 中定義的所有 FHIR Profiles 和 Extensions。

本 IG 之 Profiles 依業務情境劃分為四大類別：

1. **共用資料元素**：跨所有業務端共同引用的基礎資料，包括個案、關係人、服務人員、機構與問卷架構。
1. **醫院端**：醫事機構產出的診斷與病情、失智與認知評估及醫師專業意見資料。
1. **臨床端（長照機構／照護現場）**：長照機構日常照護紀錄、照護狀況、安全監測、照護規劃與運動復能資料。
1. **行政與申報端（照顧協調／核定申報）**：照顧管理中心評估收案文件、照顧管理流程，以及長照 SDK 系統介接與申報資料。

### Resources 之 Profiles

以下為台灣長期照顧實作指引（TW LTC IG）使用到的所有 Profiles。

#### 一、共用資料元素

跨醫院端、臨床端、行政與申報端共同引用的基礎資料。

* [住民基本資料（LTC Patient）](StructureDefinition-LTCPatient.md)
* [關係人（LTC RelatedPerson）](StructureDefinition-LTCRelatedPerson.md)
* [照顧服務提供者（LTC Practitioner）](StructureDefinition-LTCPractitioner.md)
* [服務人員角色（LTC PractitionerRole）](StructureDefinition-LTCPractitionerRole.md)
* [機構（LTC Organization）](StructureDefinition-Organization-twltc.md)
* [問卷（LTC Questionnaire）](StructureDefinition-LTCQuestionnaire.md)
* [問卷回覆（LTC QuestionnaireResponse）](StructureDefinition-LTCQuestionnaireResponse.md)

#### 二、醫院端

醫事機構產出之診斷、評估與專業意見資料。

##### 診斷與病情

* [病情、問題或診斷（LTC Condition）](StructureDefinition-LTCCondition.md)
* [主要疾病（LTC Condition Problem）](StructureDefinition-LTCConditionProblem.md)
* [主要問題及需求（LTC Condition Need）](StructureDefinition-LTCConditionNeed.md)

##### 失智與認知評估

* [簡易智能狀態測驗回覆（LTC QuestionnaireResponse MMSE）](StructureDefinition-LTCQuestionnaireResponseMMSE.md)
* [臨床失智評估量表回覆（LTC QuestionnaireResponse CDR）](StructureDefinition-LTCQuestionnaireResponseCDR.md)

##### 醫師專業意見

* [長期照護醫師意見書問卷回覆（LTC QuestionnaireResponse AA12）](StructureDefinition-LTCQuestionnaireResponseAA12.md)

#### 三、臨床端（長照機構／照護現場）

長照機構照護現場之日常照護、安全監測、照護規劃與運動復能資料。

##### 日常照護紀錄

* [生命體徵（LTC Observation Vital Signs）](StructureDefinition-LTCObservationVitalSigns.md)
* [一組生命徵象檢驗檢查（LTC Observation Vital Signs Panel）](StructureDefinition-LTCObservationVitalSignsPanel.md)
* [用藥資料（LTC Medication Administration）](StructureDefinition-LTCMedicationAdministration.md)
* [照護活動（LTC Procedure Care Activity）](StructureDefinition-LTCProcedureCareActivity.md)

##### 照護狀況紀錄

* [壓傷狀況（LTC Condition Crush）](StructureDefinition-LTCConditionCrush.md)
* [管路裝設狀況（LTC Condition Tube）](StructureDefinition-LTCConditionTube.md)
* [居住狀況（LTC Condition Residence）](StructureDefinition-LTCConditionResidence.md)
* [看護狀況（LTC Condition Caregiver）](StructureDefinition-LTCConditionCaregiver.md)
* [身心障礙手冊持有狀態（LTC Condition Disability）](StructureDefinition-LTCConditionDisability.md)
* [身心障礙類型（LTC Condition Disability Type）](StructureDefinition-LTCConditionDisabilityType.md)

##### 安全監測

* [個案位置監測（LTC Location）](StructureDefinition-Location-twltc.md)
* [異常事件警報（LTC AdverseEvent）](StructureDefinition-AdverseEvent-twltc.md)
* [跌倒紀錄（LTC Observation Falling History）](StructureDefinition-LTCObservationFallingHistory.md)

##### 照護規劃

* [照顧團隊（LTC CareTeam）](StructureDefinition-LTCCareTeam.md)
* [照顧目標（LTC Goal）](StructureDefinition-LTCGoal.md)
* [照顧計畫（LTC CarePlan）](StructureDefinition-LTCCarePlan.md)

##### 運動處方

* [服務請求（PA Sport ServiceRequest）](StructureDefinition-PASportServiceRequest.md)
* [病史（PA Sport Condition Medical History）](StructureDefinition-PASportConditionMedicalHistory.md)
* [運動史（PA Sport Condition Exercise History）](StructureDefinition-PASportConditionExerciseHistory.md)
* [運動計畫（PA Sport CarePlan）](StructureDefinition-PASportCarePlan.md)
* [運動目標（PA Sport Goal）](StructureDefinition-PASportGoal.md)

##### 基礎生理量測

* [身高（PA Sport Observation Height）](StructureDefinition-PASportObservationHeight.md)
* [體重（PA Sport Observation Weight）](StructureDefinition-PASportObservationWeight.md)
* [腰圍（PA Sport Observation Waist）](StructureDefinition-PASportObservationWaist.md)
* [血壓（PA Sport Observation Blood Pressure）](StructureDefinition-PASportObservationBloodPressure.md)
* [脈搏血氧飽和度（PA Sport Observation Pulse Oximetry）](StructureDefinition-PASportObservationPeripheralOxygenSaturation.md)
* [血糖（PA Sport Observation Blood Glucose）](StructureDefinition-PASportObservationGlucose.md)
* [心率（PA Sport Observation Heart Rate）](StructureDefinition-PASportObservationHeartRate.md)
* [安靜心率（PA Sport Observation Resting Heart Rate）](StructureDefinition-PASportObservationRestingHeartRate.md)
* [平均心率（PA Sport Observation Average Heart Rate）](StructureDefinition-PASportObservationMeanHeartRate.md)
* [心率變異性（PA Sport Observation Heart Rate Variability）](StructureDefinition-PASportObservationHeartRateVariability.md)
* [體溫（PA Sport Observation Body Temperature）](StructureDefinition-PASportObservationBodyTemperature.md)
* [呼吸速率（PA Sport Observation Respiratory Rate）](StructureDefinition-PASportObservationRespiratoryRate.md)

##### 身體組成分析儀

* [身體總水分（PA Sport Observation Total Body Water）](StructureDefinition-PASportObservationTotalBodyWater.md)
* [細胞內水分（PA Sport Observation Intracellular Water）](StructureDefinition-PASportObservationIntracellularWater.md)
* [細胞外水分（PA Sport Observation Extracellular Water）](StructureDefinition-PASportObservationExtracellularWater.md)
* [蛋白質重（PA Sport Observation Protein）](StructureDefinition-PASportObservationProtein.md)
* [礦物質重（PA Sport Observation Mineral）](StructureDefinition-PASportObservationMineral.md)
* [體脂肪重（PA Sport Observation Body Fat Mass）](StructureDefinition-PASportObservationBodyFatMass.md)
* [骨骼肌重（PA Sport Observation Skeletal Muscle Mass）](StructureDefinition-PASportObservationSkeletalMuscleMass.md)
* [肌肉質量指數（PA Sport Observation Skeletal Muscle Mass Index）](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.md)
* [身體質量指數（PA Sport Observation Body Mass Index）](StructureDefinition-PASportObservationBodyMassIndex.md)
* [體脂率（PA Sport Observation Body Fat Percentage）](StructureDefinition-PASportObservationBodyFatPercentage.md)
* [基礎代謝率（PA Sport Observation Basal Metabolic Rate）](StructureDefinition-PASportObservationBasalMetabolicRate.md)
* [去脂體重（PA Sport Observation Fat Free Mass）](StructureDefinition-PASportObservationFatFreeMass.md)
* [內臟脂肪指數（PA Sport Observation Visceral Fat Index）](StructureDefinition-PASportObservationVisceralFatIndex.md)
* [內臟脂肪面積（PA Sport Observation Visceral Fat Area）](StructureDefinition-PASportObservationVisceralFatArea.md)
* [腰臀圍比（PA Sport Observation Waist-Hip Ratio）](StructureDefinition-PASportObservationWaistHipRate.md)
* [肥胖度（PA Sport Observation Obesity Degree）](StructureDefinition-PASportObservationObesityDegree.md)
* [體內年齡（PA Sport Observation Body Age）](StructureDefinition-PASportObservationBodyAge.md)
* [肌肉量（PA Sport Observation Soft Lean Mass）](StructureDefinition-PASportObservationSoftLeanMass.md)
* [細胞量（PA Sport Observation Cell Mass）](StructureDefinition-PASportObservationCellMass.md)
* [推定骨量（PA Sport Observation Body Bone Mass）](StructureDefinition-PASportObservationBodyBoneMass.md)
* [水腫指數（PA Sport Observation Extracellular Water Ratio）](StructureDefinition-PASportObservationExtracellularWaterRatio.md)

##### 穿戴裝置

* [步態週期（PA Sport Observation Gait Cycle）](StructureDefinition-PASportObservationGaitCycle.md)
* [步態分析（PA Sport Observation Gait Type）](StructureDefinition-PASportObservationGaitType.md)

##### 運動項目

* [跑步機（PA Sport Observation Treadmill）](StructureDefinition-PASportObservationTreadmill.md)
* [重量訓練（PA Sport Observation Weight Training）](StructureDefinition-PASportObservationWeightTraining.md)

#### 四、行政與申報端（照顧協調／核定申報）

照顧管理中心評估收案、照顧管理流程與長照 SDK 系統介接申報資料。

##### 個案服務初篩表／轉介單

由醫院或社區單位發起、照顧管理中心收案之跨端文件。

* [長期照護管理中心個案服務初篩表/轉介單文件打包（LTC Bundle Referral）](StructureDefinition-LTCBundleReferral.md)
* [長期照護管理中心個案服務初篩表/轉介單文件架構（LTC Composition Referral）](StructureDefinition-LTCCompositionReferral.md)
* [個案基本資料（LTC Patient Referral）](StructureDefinition-LTCPatientReferral.md)
* [服務種類（LTC CarePlan Referral）](StructureDefinition-LTCCarePlanReferral.md)
* [照顧者問卷回覆（LTC QuestionnaireResponse Referral Caregiver）](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.md)
* [衰弱評估問卷回覆（LTC QuestionnaireResponse Referral SOF）](StructureDefinition-LTCQuestionnaireResponseReferralSOF.md)

##### 照顧管理評估量表（CMS 量表）

* [照顧管理評估量表文件打包（LTC Bundle CMS）](StructureDefinition-LTCBundleCMS.md)
* [照顧管理評估量表文件架構（LTC Composition CMS）](StructureDefinition-LTCCompositionCMS.md)
* [個案基本資料（LTC Patient CMS）](StructureDefinition-LTCPatientCMS.md)
* [主要照顧者工作與支持（LTC QuestionnaireResponse CMS Caregiver Support）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.md)
* [主要照顧者負荷問卷回覆（LTC QuestionnaireResponse CMS Caregiver Load）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.md)
* [個案溝通能力問卷回覆（LTC QuestionnaireResponse CMS Communication）](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.md)
* [個案短期記憶力問卷回覆（LTC QuestionnaireResponse CMS Memory）](StructureDefinition-LTCQuestionnaireResponseCMSMemory.md)
* [居家環境與社會參與（LTC QuestionnaireResponse CMS Society）](StructureDefinition-LTCQuestionnaireResponseCMSSociety.md)
* [情緒及行為型態問卷回覆（LTC QuestionnaireResponse CMS Mental）](StructureDefinition-LTCQuestionnaireResponseCMSMental.md)
* [特殊複雜照護需要問卷回覆（LTC QuestionnaireResponse CMS Special Care）](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.md)

##### 共用評估量表

以下量表同時被照顧管理評估量表（CMS）與個案服務初篩表／轉介單引用。

* [日常生活能力問卷回覆（LTC QuestionnaireResponse ADL）](StructureDefinition-LTCQuestionnaireResponseADL.md)
* [工具性日常活動功能問卷回覆（LTC QuestionnaireResponse IADL）](StructureDefinition-LTCQuestionnaireResponseIADL.md)

##### 照顧管理流程（AA01／AA02）

* [AA01 照顧計畫擬訂與服務連結問卷回覆（LTC QuestionnaireResponse AA01）](StructureDefinition-LTCQuestionnaireResponseAA01.md)
* [AA02 照顧管理追蹤問卷回覆（LTC QuestionnaireResponse AA02）](StructureDefinition-LTCQuestionnaireResponseAA02.md)
* [服務請求（LTC ServiceRequest）](StructureDefinition-LTCServiceRequest.md)
* [任務管理（LTC Task）](StructureDefinition-LTCTask.md)

##### 文件與案件共用基礎

供各情境特化 Profile 繼承之共用基礎（Common Base）Profile。

* [文件組成基礎（LTC Composition Base）](StructureDefinition-LTCCompositionBase.md)
* [案件管理基礎（LTC EpisodeOfCare Base）](StructureDefinition-LTCEpisodeOfCareBase.md)
* [評估核定摘要基礎（LTC Observation Assessment Base）](StructureDefinition-LTCObservationAssessmentBase.md)

##### 個案總查詢（CS100）

* [個案總查詢文件架構（LTC Composition CS100）](StructureDefinition-LTC-Composition-CS100.md)
* [照顧計畫（LTC CarePlan CS100）](StructureDefinition-LTC-CarePlan-CS100.md)
* [長照案件（LTC EpisodeOfCare CS100）](StructureDefinition-LTC-EpisodeOfCare-CS100.md)
* [評估核定摘要（LTC Observation Assessment CS100）](StructureDefinition-LTC-Observation-Assessment-CS100.md)

##### 長照 SDK 回傳包

* [回傳包（4合1）（LTC Bundle Payload）](StructureDefinition-LTC-Bundle-Payload.md)
* [照顧計畫（不含輔具）（LTC CarePlan Payload）](StructureDefinition-LTC-CarePlan-Payload.md)
* [長照案件（LTC EpisodeOfCare Payload）](StructureDefinition-LTC-EpisodeOfCare-Payload.md)
* [評估核定摘要（LTC Observation Assessment Payload）](StructureDefinition-LTC-Observation-Assessment-Payload.md)

##### 申報匯出與檢核

* [照管全量匯出（LTC Claim Export）](StructureDefinition-LTC-Claim-Export.md)
* [照管全量匯出（LTC ClaimResponse Export）](StructureDefinition-LTC-ClaimResponse-Export.md)
* [核定額度（LTC CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.md)
* [服務活動紀錄 SERVICE_A（LTC Communication ServiceA）](StructureDefinition-LTC-Communication-ServiceA.md)
* [跨月檢核結果 QP_O（LTC OperationOutcome Check）](StructureDefinition-LTC-OperationOutcome-Check.md)

### Extensions

以下 [Extensions](http://hl7.org/fhir/R4/extensibility.html) 已定義為台灣長期照顧實作指引（TW LTC IG）的一部分，同樣依業務類別劃分。

#### 共用資料元素

* [病患教育程度（Patient Education Status）](StructureDefinition-ExtPatientEducationStatus-TWLTC.md)
* [病患身分別（Patient Identity）](StructureDefinition-ExtPatientIdentity-TWLTC.md)
* [病患經濟狀況（Patient Economy Status）](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md)
* [關係人是否為主要照顧者（Related Person Is Primary）](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.md)

#### 醫院端（認知評估）

* [MMSE 總分（MMSE Total Score）](StructureDefinition-mmse-total-score.md)
* [CDR 總分（CDR Total Score）](StructureDefinition-cdr-total-score.md)

#### 臨床端（異常事件）

* [異常事件文字描述（AdverseEvent Description）](StructureDefinition-Ext-TW-LTC-AdverseEvent-Description.md)
* [異常事件通報方式（AdverseEvent Notification Method）](StructureDefinition-Ext-TW-LTC-AdverseEvent-NotifMethod.md)
* [異常事件關聯案件（AdverseEvent About）](StructureDefinition-Ext-TW-LTC-AdverseEvent-About.md)

#### 行政與申報端（長照 SDK）

* [案件申請來源（Case Source）](StructureDefinition-Ext-TW-LTC-Case-Source.md)
* [案件編號 CASENO（Export CaseNo）](StructureDefinition-Ext-TW-LTC-Export-CaseNo.md)
* [評估案號 EVA_ID（Export EvaId）](StructureDefinition-Ext-TW-LTC-Export-EvaId.md)
* [民國年月 YYYMM（Export YYYMM ROC）](StructureDefinition-Ext-TW-LTC-Export-YYYMM-ROC.md)
* [單位資訊 PIA/PIB/CENTER/MAN_*（Export Unit）](StructureDefinition-Ext-TW-LTC-Export-Unit.md)
* [錯誤訊息（Export Error）](StructureDefinition-Ext-TW-LTC-Export-Error.md)
* [單價（Unit Price）](StructureDefinition-Ext-TW-LTC-UnitPrice.md)

#### 居家護理照護管理系統

居護 Profile 沿用長照個案、收案、照護計畫、目標、問卷回覆與任務，並補充來源表單、收案關聯及措施停止資訊。請參考 [居家護理主題](home-nursing.md)。

#### 在宅急症照護

在宅急症子主題優先重用既有 LTC 與 TW Core 定義，新增的臨床限制、繼承理由與三個 Extension 請見[在宅急症主題](hah.md)。

