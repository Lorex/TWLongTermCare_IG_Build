# 在宅急症－個案 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－個案**

## Resource Profile: 在宅急症－個案 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHPatient |

 
正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。 

**Usages:**

* Use this Profile: [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.md)
* Refer to this Profile: [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.md), [在宅急症－收案評估回覆](StructureDefinition-HAHAssessmentResponse.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.md)... Show 17 more, [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.md), [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md), [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.md), [在宅急症－照護同意](StructureDefinition-HAHConsent.md), [在宅急症－量測設備](StructureDefinition-HAHDevice.md), [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.md), [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.md), [在宅急症－就診基礎](StructureDefinition-HAHEncounter.md), [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md), [在宅急症－照護目標](StructureDefinition-HAHGoal.md), [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md), [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.md), [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.md), [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md), [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md) and [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)
* Examples for this Profile: [Patient/hah-patient](Patient-hah-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHPatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHPatient.csv), [Excel](StructureDefinition-HAHPatient.xlsx), [Schematron](StructureDefinition-HAHPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHPatient",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient",
  "version" : "1.1.0",
  "name" : "HAHPatient",
  "title" : "在宅急症－個案",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.active",
      "path" : "Patient.active",
      "short" : "個案主檔是否仍使用。[不可直接作為本次療程的結案旗標]"
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    }]
  }
}

```
