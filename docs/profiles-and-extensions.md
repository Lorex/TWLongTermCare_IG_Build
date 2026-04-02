# Profiles and Extensions - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* **Profiles and Extensions**

## Profiles and Extensions

本頁列出本 IG 中定義的所有 FHIR Profiles 和 Extensions。

### Resources 之 Profiles

以下為台灣長期照顧實作指引（TW LTC IG）使用到的所有 Profiles。

#### 長期照顧

* [住民基本資料（LTC Patient）](StructureDefinition-LTCPatient.md)
* [問卷（LTC Questionnaire）](StructureDefinition-LTCQuestionnaire.md)
* [問卷回覆（LTC QuestionnaireResponse）](StructureDefinition-LTCQuestionnaireResponse.md)
* [壓傷狀況（LTC Condition Crush）](StructureDefinition-LTCConditionCrush.md)
* [居住狀況（LTC Condition Residence）](StructureDefinition-LTCConditionResidence.md)
* [服務人員角色（LTC PractitionerRole）](StructureDefinition-LTCPractitionerRole.md)
* [機構（LTC Organization）](StructureDefinition-Organization-twltc.md)
* [照顧團隊（LTC CareTeam）](StructureDefinition-LTCCareTeam.md)
* [照顧服務提供者（LTC Practitioner）](StructureDefinition-LTCPractitioner.md)
* [照顧目標（LTC Goal）](StructureDefinition-LTCGoal.md)
* [照顧計畫（LTC CarePlan）](StructureDefinition-LTCCarePlan.md)
* [生命體徵（LTC Observation Vital Signs）](StructureDefinition-LTCObservationVitalSigns.md)
* [用藥資料（LTC Medication Administration）](StructureDefinition-LTCMedicationAdministration.md)
* [病情、問題或診斷（LTC Condition）](StructureDefinition-LTCCondition.md)
* [看護狀況（LTC Condition Caregiver）](StructureDefinition-LTCConditionCaregiver.md)
* [管路裝設狀況（LTC Condition Tube）](StructureDefinition-LTCConditionTube.md)
* [身心障礙手冊持有狀態（LTC Condition Disability）](StructureDefinition-LTCConditionDisability.md)
* [身心障礙類型（LTC Condition Disability Type）](StructureDefinition-LTCConditionDisabilityType.md)
* [關係人（LTC RelatedPerson）](StructureDefinition-LTCRelatedPerson.md)
* [個案位置監測（LTC Location）](StructureDefinition-Location-twltc.md)
* [異常事件警報（LTC AdverseEvent）](StructureDefinition-AdverseEvent-twltc.md)
* [服務請求（LTC ServiceRequest）](StructureDefinition-LTCServiceRequest.md)
* [任務管理（LTC Task）](StructureDefinition-LTCTask.md)

#### 照顧管理評估量表

* [照顧管理評估量表文件打包（LTC Bundle CMS）](StructureDefinition-LTCBundleCMS.md)
* [照顧管理評估量表文件架構（LTC Composition CMS）](StructureDefinition-LTCCompositionCMS.md)
* [主要照顧者工作與支持（LTC QuestionnaireResponse CMS Caregiver Support）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverSupport.md)
* [主要照顧者負荷問卷回覆（LTC QuestionnaireResponse CMS Caregiver Load）](StructureDefinition-LTCQuestionnaireResponseCMSCaregiverLoad.md)
* [個案基本資料 (LTC Patient CMS)](StructureDefinition-LTCPatientCMS.md)
* [日常生活能力問卷回覆（LTC QuestionnaireResponse ADL）](StructureDefinition-LTCQuestionnaireResponseADL.md)
* [個案溝通能力問卷回覆（LTC QuestionnaireResponse CMS Communication）](StructureDefinition-LTCQuestionnaireResponseCMSCommunication.md)
* [個案獨立生活能力問卷回覆（LTC QuestionnaireResponse IADL）](StructureDefinition-LTCQuestionnaireResponseIADL.md)
* [個案短期記憶力問卷回覆（LTC QuestionnaireResponse CMS Memory）](StructureDefinition-LTCQuestionnaireResponseCMSMemory.md)
* [居家環境與社會參與（LTC QuestionnaireResponse CMS Society）](StructureDefinition-LTCQuestionnaireResponseCMSSociety.md)
* [情緒及行為型態問卷回覆（LTC QuestionnaireResponse CMS Mental）](StructureDefinition-LTCQuestionnaireResponseCMSMental.md)
* [特殊複雜照護需要問卷回覆（LTC QuestionnaireResponse CMS Special Care）](StructureDefinition-LTCQuestionnaireResponseCMSSpecialCare.md)

#### 轉介單/初篩單

* [長期照護管理中心個案服務初篩表/轉介單文件打包（LTC Bundle Referral）](StructureDefinition-LTCBundleReferral.md)
* [長期照護管理中心個案服務初篩表/轉介單文件架構（LTC Composition Referral）](StructureDefinition-LTCCompositionReferral.md)
* [工具性日常活動功能問卷回覆（LTC QuestionnaireResponse IADL）](StructureDefinition-LTCQuestionnaireResponseIADL.md)
* [個案基本資料（LTC Patient Referral）](StructureDefinition-LTCPatientReferral.md)
* [服務種類（LTC CarePlan Referral）](StructureDefinition-LTCCarePlanReferral.md)
* [照顧者問卷回覆（LTC QuestionnaireResponse Referral Caregiver）](StructureDefinition-LTCQuestionnaireResponseReferralCaregiver.md)
* [衰弱評估問卷回覆（LTC QuestionnaireResponse Referral SOF）](StructureDefinition-LTCQuestionnaireResponseReferralSOF.md)

#### 長期照護醫師意見書 (AA12)

* [長期照護醫師意見書問卷回覆（LTC QuestionnaireResponse AA12）](StructureDefinition-LTCQuestionnaireResponseAA12.md)

#### 運動處方

* [服務請求（PA Sport ServiceRequest）](StructureDefinition-PASportServiceRequest.md)
* [病史（PA Sport Condition Medical History）](StructureDefinition-PASportConditionMedicalHistory.md)
* [運動史（PA Sport Condition Exercise History）](StructureDefinition-PASportConditionExerciseHistory.md)
* [運動計畫（PA Sport CarePlan）](StructureDefinition-PASportCarePlan.md)
* [運動目標（PA Sport Goal）](StructureDefinition-PASportGoal.md)
* [機構（LTC Organization）](StructureDefinition-Organization-twltc.md)
* [照顧服務提供者（LTC Practitioner）](StructureDefinition-LTCPractitioner.md)
* [住民基本資料（LTC Patient）](StructureDefinition-LTCPatient.md)

#### 基礎生理量測

* [身高（PA Sport Observation Height）](StructureDefinition-PASportObservationHeight.md)
* [體重（PA Sport Observation Weight）](StructureDefinition-PASportObservationWeight.md)
* [腰圍（PA Sport Observation Waist）](StructureDefinition-PASportObservationWaist.md)
* [血壓（PA Sport Observation Blood Pressure）](StructureDefinition-PASportObservationBloodPressure.md)
* [脈搏血氧飽和度（PA Sport Observation Pulse Oximetry）](StructureDefinition-PASportObservationPeripheralOxygenSaturation.md)
* [血糖（PA Sport Observation Blood Glucose）](StructureDefinition-PASportObservationGlucose.md)
* [平均心率（PA Sport Observation Average Heart Rate）](StructureDefinition-PASportObservationMeanHeartRate.md)
* [心率變異性（PA Sport Observation Heart Rate Variability）](StructureDefinition-PASportObservationHeartRateVariability.md)
* [體溫（PA Sport Observation Body Temperature）](StructureDefinition-PASportObservationBodyTemperature.md)
* [呼吸速率（PA Sport Observation Respiratory Rate）](StructureDefinition-PASportObservationRespiratoryRate.md)

#### 身體組成分析儀

* [身體總水分（PA Sport Observation Total Body Water）](StructureDefinition-PASportObservationTotalBodyWater.md)
* [細胞內水分（PA Sport Observation Intracellular Water）](StructureDefinition-PASportObservationIntracellularWater.md)
* [細胞外水分（PA Sport Observation Extracellular Water）](StructureDefinition-PASportObservationExtracellularWater.md)
* [蛋白質重（PA Sport Observation Protein）](StructureDefinition-PASportObservationProtein.md)
* [礦物質重（PA Sport Observation Mineral）](StructureDefinition-PASportObservationMineral.md)
* [體脂肪重（PA Sport Observation Body Fat Mass）](StructureDefinition-PASportObservationBodyFatMass.md)
* [體重（PA Sport Observation Weight）](StructureDefinition-PASportObservationWeight.md)
* [身高（PA Sport Observation Height）](StructureDefinition-PASportObservationHeight.md)
* [骼骨肌重（PA Sport Observation Skeletal Muscle Mass）](StructureDefinition-PASportObservationSkeletalMuscleMass.md)
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

#### 穿戴裝置

* [步態週期（PA Sport Observation Gait Cycle）](StructureDefinition-PASportObservationGaitCycle.md)
* [步態分析（PA Sport Observation Gait Type）](StructureDefinition-PASportObservationGaitType.md)

#### 運動項目

* [跑步機（PA Sport Observation Treadmill）](StructureDefinition-PASportObservationTreadmill.md)
* [重量訓練（PA Sport Observation Weight Training）](StructureDefinition-PASportObservationWeightTraining.md)

### Extensions

以下 [Extensions](http://hl7.org/fhir/R4/extensibility.html) 已定義為台灣長期照顧實作指引（TW LTC IG）的一部分。

* [病患教育程度（Patient Education Status）](StructureDefinition-ExtPatientEducationStatus-TWLTC.md)
* [病患身分別（Patient Identity）](StructureDefinition-ExtPatientIdentity-TWLTC.md)
* [病患經濟狀況（Patient Economy Status）](StructureDefinition-ExtPatientEconomyStatus-TWLTC.md)
* [關係人是否為主要照顧者（Related Person Is Primary）](StructureDefinition-ExtRelatedPersonIsPrimary-TWLTC.md)

