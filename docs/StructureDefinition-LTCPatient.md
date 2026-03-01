# 長期照顧－住民基本資料 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－住民基本資料**

## Resource Profile: 長期照顧－住民基本資料 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCPatient |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。 

**Usages:**

* Derived from this Profile: [照顧管理評估量表－個案基本資料](StructureDefinition-LTCPatientCMS.md) and [轉介單－個案基本資料](StructureDefinition-LTCPatientReferral.md)
* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md)
* Refer to this Profile: [長期照顧－異常事件警報](StructureDefinition-AdverseEvent-twltc.md), [長照 SDK－照顧計畫（不含輔具）](StructureDefinition-LTC-CarePlan-Payload.md), [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md), [長照－核定額度（CoverageEligibilityResponse）](StructureDefinition-LTC-CoverageEligibilityResponse.md)... Show 49 more, [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md), [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md), [長期照顧－病情、問題或診斷](StructureDefinition-LTCCondition.md), [長期照顧－案件管理基礎](StructureDefinition-LTCEpisodeOfCareBase.md), [長期照顧－照顧目標](StructureDefinition-LTCGoal.md), [長期照顧－評估核定摘要基礎](StructureDefinition-LTCObservationAssessmentBase.md), [長期照顧－一組生命徵象檢驗檢查](StructureDefinition-LTCObservationVitalSignsPanel.md), [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md), [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md), [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md), [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md), [長期照顧－關係人](StructureDefinition-LTCRelatedPerson.md), [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md), [運動處方－運動目標](StructureDefinition-PASportGoal.md), [身體組成分析儀－基礎代謝率](StructureDefinition-PASportObservationBasalMetabolicRate.md), [身體組成分析儀－體內年齡](StructureDefinition-PASportObservationBodyAge.md), [身體組成分析儀－推定骨量](StructureDefinition-PASportObservationBodyBoneMass.md), [身體組成分析儀－體脂肪重](StructureDefinition-PASportObservationBodyFatMass.md), [身體組成分析儀－體脂率](StructureDefinition-PASportObservationBodyFatPercentage.md), [基礎生理量測－體溫](StructureDefinition-PASportObservationBodyTemperature.md), [身體組成分析儀－細胞量](StructureDefinition-PASportObservationCellMass.md), [身體組成分析儀－細胞外水分](StructureDefinition-PASportObservationExtracellularWater.md), [身體組成分析儀－水腫指數](StructureDefinition-PASportObservationExtracellularWaterRatio.md), [身體組成分析儀－去脂體重](StructureDefinition-PASportObservationFatFreeMass.md), [穿戴裝置－步態週期](StructureDefinition-PASportObservationGaitCycle.md), [穿戴裝置－步態分析](StructureDefinition-PASportObservationGaitType.md), [基礎生理量測－血糖](StructureDefinition-PASportObservationGlucose.md), [基礎生理量測－心率](StructureDefinition-PASportObservationHeartRate.md), [基礎生理量測－心率變異性](StructureDefinition-PASportObservationHeartRateVariability.md), [基礎生理量測－身高](StructureDefinition-PASportObservationHeight.md), [身體組成分析儀－細胞內水分](StructureDefinition-PASportObservationIntracellularWater.md), [基礎生理量測－平均心率](StructureDefinition-PASportObservationMeanHeartRate.md), [身體組成分析儀－礦物質重](StructureDefinition-PASportObservationMineral.md), [身體組成分析儀－肥胖度](StructureDefinition-PASportObservationObesityDegree.md), [基礎生理量測－脈搏血氧飽和度](StructureDefinition-PASportObservationPeripheralOxygenSaturation.md), [身體組成分析儀－蛋白質重](StructureDefinition-PASportObservationProtein.md), [基礎生理量測－呼吸速率](StructureDefinition-PASportObservationRespiratoryRate.md), [基礎生理量測－安靜心率](StructureDefinition-PASportObservationRestingHeartRate.md), [身體組成分析儀－骨骼肌重](StructureDefinition-PASportObservationSkeletalMuscleMass.md), [身體組成分析儀－肌肉質量指數](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.md), [身體組成分析儀－肌肉量](StructureDefinition-PASportObservationSoftLeanMass.md), [身體組成分析儀－身體總水分](StructureDefinition-PASportObservationTotalBodyWater.md), [運動項目－跑步機](StructureDefinition-PASportObservationTreadmill.md), [身體組成分析儀－內臟脂肪面積](StructureDefinition-PASportObservationVisceralFatArea.md), [身體組成分析儀－內臟脂肪指數](StructureDefinition-PASportObservationVisceralFatIndex.md), [基礎生理量測－腰圍](StructureDefinition-PASportObservationWaist.md), [身體組成分析儀－腰臀圍比](StructureDefinition-PASportObservationWaistHipRate.md), [基礎生理量測－體重](StructureDefinition-PASportObservationWeight.md) and [運動項目－重量訓練](StructureDefinition-PASportObservationWeightTraining.md)
* Examples for this Profile: [Patient/ltc-patient-chen-ming-hui](Patient-ltc-patient-chen-ming-hui.md) and [Patient/ltc-patient-sdk-example](Patient-ltc-patient-sdk-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCPatient.csv), [Excel](StructureDefinition-LTCPatient.xlsx), [Schematron](StructureDefinition-LTCPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCPatient",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
  "version" : "1.0.0",
  "name" : "LTCPatient",
  "title" : "長期照顧－住民基本資料",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.identifier",
      "path" : "Patient.identifier"
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "short" : "住民唯一識別碼。[應擇一填入身分證字號／護照號碼／居留證號碼／長照機構住民代號]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:idCardNumber",
      "path" : "Patient.identifier",
      "sliceName" : "idCardNumber"
    },
    {
      "id" : "Patient.identifier:idCardNumber.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:passportNumber",
      "path" : "Patient.identifier",
      "sliceName" : "passportNumber"
    },
    {
      "id" : "Patient.identifier:passportNumber.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:residentNumber",
      "path" : "Patient.identifier",
      "sliceName" : "residentNumber"
    },
    {
      "id" : "Patient.identifier:residentNumber.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:medicalRecord",
      "path" : "Patient.identifier",
      "sliceName" : "medicalRecord"
    },
    {
      "id" : "Patient.identifier:medicalRecord.value",
      "path" : "Patient.identifier.value",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:member",
      "path" : "Patient.identifier",
      "sliceName" : "member",
      "short" : "住民在機構中的身分識別碼",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:member.use",
      "path" : "Patient.identifier.use",
      "patternCode" : "official",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:member.type",
      "path" : "Patient.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:member.type.coding",
      "path" : "Patient.identifier.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:member.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:member.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "PRN"
    },
    {
      "id" : "Patient.identifier:member.system",
      "path" : "Patient.identifier.system",
      "short" : "住民在機構中的身分識別碼的系統。[應填入機構網址]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:member.value",
      "path" : "Patient.identifier.value",
      "short" : "住民在機構中的身分識別碼。[應填入機構住民代號]"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name:official",
      "path" : "Patient.name",
      "sliceName" : "official",
      "short" : "住民英文姓名"
    },
    {
      "id" : "Patient.name:official.text",
      "path" : "Patient.name.text",
      "short" : "住民的英文全名",
      "definition" : "住民的完整姓名，包括姓氏和名字。",
      "min" : 1
    },
    {
      "id" : "Patient.name:usual",
      "path" : "Patient.name",
      "sliceName" : "usual",
      "short" : "住民中文姓名"
    },
    {
      "id" : "Patient.name:usual.text",
      "path" : "Patient.name.text",
      "short" : "住民的中文全名",
      "definition" : "住民的完整姓名，包括姓氏和名字。",
      "min" : 1
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "short" : "住民聯絡方式",
      "min" : 1
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "short" : "實際的聯絡方式之細節。[應輸入聯絡電話]"
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "short" : "住民的出生年月日"
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "description" : "Slice based on address.use",
        "rules" : "open"
      },
      "short" : "使用郵政規範表達住民的地址",
      "min" : 1,
      "max" : "2"
    },
    {
      "id" : "Patient.address:home",
      "path" : "Patient.address",
      "sliceName" : "home",
      "short" : "住民的現居地址",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:home.use",
      "path" : "Patient.address.use",
      "min" : 1,
      "patternCode" : "home"
    },
    {
      "id" : "Patient.address:home.text",
      "path" : "Patient.address.text",
      "short" : "住民的現居地址。[應輸入完整地址]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:billing",
      "path" : "Patient.address",
      "sliceName" : "billing",
      "short" : "住民的戶籍地址",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address:billing.use",
      "path" : "Patient.address.use",
      "min" : 1,
      "patternCode" : "billing"
    },
    {
      "id" : "Patient.address:billing.text",
      "path" : "Patient.address.text",
      "short" : "住民的戶籍地址。[應輸入完整地址]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "short" : "住民的緊急聯絡人",
      "min" : 1
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "short" : "緊急連絡人與住民的關係",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "short" : "緊急聯絡人姓名",
      "min" : 1
    },
    {
      "id" : "Patient.contact.name.text",
      "path" : "Patient.contact.name.text",
      "short" : "緊急聯絡人的全名",
      "min" : 1
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "short" : "緊急聯絡人的聯絡方式。[應輸入緊急聯絡人電話]",
      "min" : 1
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "short" : "住民所屬的長照機構",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "Patient.managingOrganization.reference",
      "path" : "Patient.managingOrganization.reference",
      "short" : "住民所屬的長照機構。[應輸入 Organization Resource ID]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
