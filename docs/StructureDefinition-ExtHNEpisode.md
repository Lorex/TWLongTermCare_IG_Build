# 居家護理－收案關聯 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－收案關聯**

## Extension: 居家護理－收案關聯 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtHNEpisode |

參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [居家護理－日常生活功能評估表單](StructureDefinition-HNADLsResponse.md), [居家護理－個案基本資料表單](StructureDefinition-HNBaseDataResponse.md), [居家護理－身體評估評估表單](StructureDefinition-HNBodyEvaluationsResponse.md), [居家護理－照護計畫](StructureDefinition-HNCarePlan.md)... Show 24 more, [居家護理－照護計畫結案表單](StructureDefinition-HNCarePlanCloseResponse.md), [居家護理－照護紀錄表單](StructureDefinition-HNCareRecordResponse.md), [居家護理－個案結案表單](StructureDefinition-HNCaseCloseResponse.md), [居家護理－共照紀錄表單](StructureDefinition-HNCaseDescResponse.md), [居家護理－需求摘要表單](StructureDefinition-HNCaseSummaryResponse.md), [居家護理－共照紀錄](StructureDefinition-HNCommunication.md), [居家護理－認知功能評估表單](StructureDefinition-HNDementiasResponse.md), [居家護理－藥物安全性評估表單](StructureDefinition-HNDrugSafetiesResponse.md), [居家護理－照護計畫評值紀錄表單](StructureDefinition-HNEvaluationsResponse.md), [居家護理－跌倒危險性評估表單](StructureDefinition-HNFallRisksResponse.md), [居家護理－情緒問題評估表單](StructureDefinition-HNGeriatricDepressionScalesResponse.md), [居家護理－照護目標](StructureDefinition-HNGoal.md), [居家護理－健康紀錄評估表單](StructureDefinition-HNHealthyHabitsResponse.md), [居家護理－工具性日常生活活動功能評估表單](StructureDefinition-HNIADLsResponse.md), [居家護理－簡易營養評估表單](StructureDefinition-HNMNASFsResponse.md), [居家護理－照護計畫措施表單](StructureDefinition-HNMeasuresResponse.md), [居家護理－疾病史評估表單](StructureDefinition-HNMedicalHistoriesResponse.md), [居家護理－疼痛評估表單](StructureDefinition-HNPainEvaluationsResponse.md), [居家護理－壓力性損傷危險評估表單](StructureDefinition-HNPressureInjuriesResponse.md), [居家護理－衰弱評估表單](StructureDefinition-HNSOFsResponse.md), [居家護理－照護計畫目標表單](StructureDefinition-HNTargetsResponse.md), [居家護理－生命徵象表單](StructureDefinition-HNVitalSignResponse.md), [居家護理－生命徵象](StructureDefinition-HNVitalSigns.md) and [居家護理－傷口紀錄](StructureDefinition-HNWound.md)
* Examples for this Extension: [Bundle/hn-careplan-transaction-example](Bundle-hn-careplan-transaction-example.md), [Bundle/hn-vital-bundle-example](Bundle-hn-vital-bundle-example.md), [CarePlan/hn-careplan-example](CarePlan-hn-careplan-example.md), [Communication/hn-communication-example](Communication-hn-communication-example.md)... Show 33 more, [Goal/hn-goal-example](Goal-hn-goal-example.md), [Observation/hn-vital-signs-example](Observation-hn-vital-signs-example.md), [Observation/hn-wound-iad-example](Observation-hn-wound-iad-example.md), [Observation/hn-wound-other-example](Observation-hn-wound-other-example.md), [Observation/hn-wound-pressure-example](Observation-hn-wound-pressure-example.md), [QuestionnaireResponse/hn-adls-example](QuestionnaireResponse-hn-adls-example.md), [QuestionnaireResponse/hn-basedata-example](QuestionnaireResponse-hn-basedata-example.md), [QuestionnaireResponse/hn-basedata-foot-example](QuestionnaireResponse-hn-basedata-foot-example.md), [QuestionnaireResponse/hn-bodyevaluations-example](QuestionnaireResponse-hn-bodyevaluations-example.md), [QuestionnaireResponse/hn-careplanclose-example](QuestionnaireResponse-hn-careplanclose-example.md), [QuestionnaireResponse/hn-carerecord-example](QuestionnaireResponse-hn-carerecord-example.md), [QuestionnaireResponse/hn-carerecord-wounds-example](QuestionnaireResponse-hn-carerecord-wounds-example.md), [QuestionnaireResponse/hn-caseclose-example](QuestionnaireResponse-hn-caseclose-example.md), [QuestionnaireResponse/hn-casedesc-example](QuestionnaireResponse-hn-casedesc-example.md), [QuestionnaireResponse/hn-casesummary-example](QuestionnaireResponse-hn-casesummary-example.md), [QuestionnaireResponse/hn-dementias-example](QuestionnaireResponse-hn-dementias-example.md), [QuestionnaireResponse/hn-drugsafeties-example](QuestionnaireResponse-hn-drugsafeties-example.md), [QuestionnaireResponse/hn-evaluations-example](QuestionnaireResponse-hn-evaluations-example.md), [QuestionnaireResponse/hn-fallrisks-example](QuestionnaireResponse-hn-fallrisks-example.md), [QuestionnaireResponse/hn-foot-record-example](QuestionnaireResponse-hn-foot-record-example.md), [QuestionnaireResponse/hn-geriatricdepressionscales-example](QuestionnaireResponse-hn-geriatricdepressionscales-example.md), [QuestionnaireResponse/hn-healthyhabits-example](QuestionnaireResponse-hn-healthyhabits-example.md), [QuestionnaireResponse/hn-iadls-example](QuestionnaireResponse-hn-iadls-example.md), [QuestionnaireResponse/hn-measures-example](QuestionnaireResponse-hn-measures-example.md), [QuestionnaireResponse/hn-medicalhistories-example](QuestionnaireResponse-hn-medicalhistories-example.md), [QuestionnaireResponse/hn-mnasfs-example](QuestionnaireResponse-hn-mnasfs-example.md), [QuestionnaireResponse/hn-pain-nonverbal-example](QuestionnaireResponse-hn-pain-nonverbal-example.md), [QuestionnaireResponse/hn-pain-verbal-example](QuestionnaireResponse-hn-pain-verbal-example.md), [QuestionnaireResponse/hn-painevaluations-example](QuestionnaireResponse-hn-painevaluations-example.md), [QuestionnaireResponse/hn-pressureinjuries-example](QuestionnaireResponse-hn-pressureinjuries-example.md), [QuestionnaireResponse/hn-sofs-example](QuestionnaireResponse-hn-sofs-example.md), [QuestionnaireResponse/hn-targets-example](QuestionnaireResponse-hn-targets-example.md) and [QuestionnaireResponse/hn-vitalsign-example](QuestionnaireResponse-hn-vitalsign-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHNEpisode.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHNEpisode.csv), [Excel](StructureDefinition-ExtHNEpisode.xlsx), [Schematron](StructureDefinition-ExtHNEpisode.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHNEpisode",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
  "version" : "1.1.0",
  "name" : "ExtHNEpisode",
  "title" : "居家護理－收案關聯",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "QuestionnaireResponse"
  },
  {
    "type" : "element",
    "expression" : "CarePlan"
  },
  {
    "type" : "element",
    "expression" : "Goal"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  },
  {
    "type" : "element",
    "expression" : "Communication"
  },
  {
    "type" : "element",
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "居家護理－收案關聯",
      "definition" : "參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare"]
      }]
    }]
  }
}

```
