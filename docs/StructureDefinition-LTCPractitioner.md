# 長期照顧－照顧服務提供者 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－照顧服務提供者**

## Resource Profile: 長期照顧－照顧服務提供者 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCPractitioner |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md), [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md), [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md), [長期照顧－病情、問題或診斷](StructureDefinition-LTCCondition.md)... Show 46 more, [長期照顧－照顧目標](StructureDefinition-LTCGoal.md), [長期照顧－一組生命徵象檢驗檢查](StructureDefinition-LTCObservationVitalSignsPanel.md), [長期照顧－服務人員角色](StructureDefinition-LTCPractitionerRole.md), [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md), [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md), [長期照顧－AA01照顧計畫擬訂與服務連結問卷回應](StructureDefinition-LTCQuestionnaireResponseAA01.md), [長期照顧－AA02照顧管理追蹤問卷回覆](StructureDefinition-LTCQuestionnaireResponseAA02.md), [長期照護醫師意見書問卷回覆 (AA12)](StructureDefinition-LTCQuestionnaireResponseAA12.md), [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md), [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md), [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md), [身體組成分析儀－基礎代謝率](StructureDefinition-PASportObservationBasalMetabolicRate.md), [身體組成分析儀－體內年齡](StructureDefinition-PASportObservationBodyAge.md), [身體組成分析儀－推定骨量](StructureDefinition-PASportObservationBodyBoneMass.md), [身體組成分析儀－體脂肪重](StructureDefinition-PASportObservationBodyFatMass.md), [身體組成分析儀－體脂率](StructureDefinition-PASportObservationBodyFatPercentage.md), [基礎生理量測－體溫](StructureDefinition-PASportObservationBodyTemperature.md), [身體組成分析儀－細胞量](StructureDefinition-PASportObservationCellMass.md), [身體組成分析儀－細胞外水分](StructureDefinition-PASportObservationExtracellularWater.md), [身體組成分析儀－水腫指數](StructureDefinition-PASportObservationExtracellularWaterRatio.md), [身體組成分析儀－去脂體重](StructureDefinition-PASportObservationFatFreeMass.md), [穿戴裝置－步態週期](StructureDefinition-PASportObservationGaitCycle.md), [穿戴裝置－步態分析](StructureDefinition-PASportObservationGaitType.md), [基礎生理量測－血糖](StructureDefinition-PASportObservationGlucose.md), [基礎生理量測－心率](StructureDefinition-PASportObservationHeartRate.md), [基礎生理量測－心率變異性](StructureDefinition-PASportObservationHeartRateVariability.md), [基礎生理量測－身高](StructureDefinition-PASportObservationHeight.md), [身體組成分析儀－細胞內水分](StructureDefinition-PASportObservationIntracellularWater.md), [基礎生理量測－平均心率](StructureDefinition-PASportObservationMeanHeartRate.md), [身體組成分析儀－礦物質重](StructureDefinition-PASportObservationMineral.md), [身體組成分析儀－肥胖度](StructureDefinition-PASportObservationObesityDegree.md), [基礎生理量測－脈搏血氧飽和度](StructureDefinition-PASportObservationPeripheralOxygenSaturation.md), [身體組成分析儀－蛋白質重](StructureDefinition-PASportObservationProtein.md), [基礎生理量測－呼吸速率](StructureDefinition-PASportObservationRespiratoryRate.md), [基礎生理量測－安靜心率](StructureDefinition-PASportObservationRestingHeartRate.md), [身體組成分析儀－骨骼肌重](StructureDefinition-PASportObservationSkeletalMuscleMass.md), [身體組成分析儀－肌肉質量指數](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.md), [身體組成分析儀－肌肉量](StructureDefinition-PASportObservationSoftLeanMass.md), [身體組成分析儀－身體總水分](StructureDefinition-PASportObservationTotalBodyWater.md), [運動項目－跑步機](StructureDefinition-PASportObservationTreadmill.md), [身體組成分析儀－內臟脂肪面積](StructureDefinition-PASportObservationVisceralFatArea.md), [身體組成分析儀－內臟脂肪指數](StructureDefinition-PASportObservationVisceralFatIndex.md), [基礎生理量測－腰圍](StructureDefinition-PASportObservationWaist.md), [身體組成分析儀－腰臀圍比](StructureDefinition-PASportObservationWaistHipRate.md), [基礎生理量測－體重](StructureDefinition-PASportObservationWeight.md) and [運動項目－重量訓練](StructureDefinition-PASportObservationWeightTraining.md)
* Examples for this Profile: [Practitioner/ltc-practitioner-example](Practitioner-ltc-practitioner-example.md), [Practitioner/ltc-practitioner-nurse-example](Practitioner-ltc-practitioner-nurse-example.md) and [Practitioner/ltc-practitioner-physician-aa12-example](Practitioner-ltc-practitioner-physician-aa12-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCPractitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCPractitioner.csv), [Excel](StructureDefinition-LTCPractitioner.xlsx), [Schematron](StructureDefinition-LTCPractitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCPractitioner",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
  "version" : "0.4.1",
  "name" : "LTCPractitioner",
  "title" : "長期照顧－照顧服務提供者",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "short" : "照顧服務提供者的身分識別碼",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "照顧服務提供者的姓名",
      "min" : 1
    }]
  }
}

```
