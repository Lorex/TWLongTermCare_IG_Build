# CDR 評估範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CDR 評估範例**

## Example Binary: CDR 評估範例

This content is an example of the [臨床失智評估量表評估](StructureDefinition-LTCCDRAssessmentModel.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://ltc-ig.fhir.tw/StructureDefinition/LTCCDRAssessmentModel",
  "assessmentDate": "2024-01-15T14:30:00+08:00",
  "assessor": {
    "reference": "Practitioner/ltc-practitioner-physician-aa12-example"
  },
  "subject": {
    "reference": "Patient/ltc-patient-chen-ming-hui"
  },
  "memory": {
    "score": 1,
    "description": "輕度健忘，只記得事件的部分"
  },
  "orientation": {
    "score": 1,
    "description": "完全定向，但時間/日期稍有困難"
  },
  "problemSolving": {
    "score": 1,
    "description": "問題解決能力稍有困難"
  },
  "communityActivities": {
    "score": 1,
    "description": "社區活動能力稍有受損"
  },
  "homeHobbies": {
    "score": 1,
    "description": "家居嗜好稍有受損"
  },
  "selfCare": {
    "score": 0,
    "description": "完全自我照料"
  },
  "totalScore": 1,
  "dementiaStage": "輕度失智",
  "assessmentNotes": "患者配合度良好，評估過程順利完成"
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
