# 居家護理照護計畫範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理照護計畫範例**

## Example CarePlan: 居家護理照護計畫範例

陳明慧的居家護理照護計畫：降低跌倒風險。原措施為每日檢查走道障礙物，已停止並改採個別移位協助措施。照護者應依護理人員指導執行。



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "hn-careplan-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlan"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hn-episode-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-targets-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-measures-example"
    }
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
      "code" : "assess-plan"
    }]
  }],
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "period" : {
    "start" : "2025-12-08"
  },
  "author" : {
    "reference" : "Practitioner/hn-nurse-example"
  },
  "supportingInfo" : [{
    "reference" : "QuestionnaireResponse/hn-casesummary-example"
  }],
  "goal" : [{
    "reference" : "Goal/hn-goal-example"
  }],
  "activity" : [{
    "extension" : [{
      "extension" : [{
        "url" : "date",
        "valueDate" : "2025-12-09"
      },
      {
        "url" : "reason",
        "valueString" : "改採個別移位協助措施"
      },
      {
        "url" : "nurse",
        "valueReference" : {
          "reference" : "Practitioner/hn-nurse-example"
        }
      }],
      "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMeasureStop"
    }],
    "outcomeReference" : [{
      "reference" : "QuestionnaireResponse/hn-evaluations-example"
    }],
    "detail" : {
      "goal" : [{
        "reference" : "Goal/hn-goal-example"
      }],
      "status" : "stopped",
      "scheduledPeriod" : {
        "start" : "2025-12-08"
      },
      "description" : "每日檢查走道障礙物"
    }
  }]
}

```
