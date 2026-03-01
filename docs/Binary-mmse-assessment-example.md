# MMSE 評估範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MMSE 評估範例**

## Example Binary: MMSE 評估範例

This content is an example of the [簡易智能狀態測驗評估](StructureDefinition-LTCMMSEAssessmentModel.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "http://ltc-ig.fhir.tw/StructureDefinition/LTCMMSEAssessmentModel",
  "assessmentDate": "2024-01-15T14:30:00+08:00",
  "assessor": {
    "reference": "Practitioner/ltc-practitioner-physician-aa12-example"
  },
  "subject": {
    "reference": "Patient/ltc-patient-chen-ming-hui"
  },
  "orientation": {
    "year": 1,
    "season": 1,
    "date": 1,
    "dayOfWeek": 1,
    "month": 1,
    "province": 1,
    "city": 1,
    "district": 1,
    "facility": 1,
    "floor": 1,
    "score": 10
  },
  "registration": {
    "word1": 1,
    "word2": 1,
    "word3": 1,
    "score": 3
  },
  "attention": {
    "serial7s": 5,
    "score": 5
  },
  "recall": {
    "recallWord1": 1,
    "recallWord2": 1,
    "recallWord3": 1,
    "score": 3
  },
  "naming": {
    "watch": 1,
    "pencil": 1,
    "score": 2
  },
  "repetition": {
    "sentence": 1,
    "score": 1
  },
  "command": {
    "closeEyes": 1,
    "threeStepTask": 3,
    "score": 4
  },
  "writing": {
    "sentence": 1,
    "score": 1
  },
  "copying": {
    "figure": 1,
    "score": 1
  },
  "totalScore": 30,
  "assessmentNotes": "患者配合度良好，評估過程順利完成"
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
