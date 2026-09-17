Instance: hn-vital-bundle-example
InstanceOf: HNVitalSignsBundle
Title: "居家護理生命徵象與血糖集合範例"
Description: "同一次量測的生命徵象與血糖使用不同的既有資源基礎，共同放入集合。"
Usage: #example
* entry[vitals].fullUrl = "https://example.org/fhir/Observation/hn-vital-signs-example"
* entry[vitals].resource = hn-vital-signs-example
* entry[glucose].fullUrl = "https://example.org/fhir/Observation/hn-glucose-example"
* entry[glucose].resource = hn-glucose-example

* entry[temperature].fullUrl = "https://example.org/fhir/Observation/hn-temperature-example"
* entry[temperature].resource = hn-temperature-example
* entry[pulse].fullUrl = "https://example.org/fhir/Observation/hn-pulse-example"
* entry[pulse].resource = hn-pulse-example
* entry[respiration].fullUrl = "https://example.org/fhir/Observation/hn-respiration-example"
* entry[respiration].resource = hn-respiration-example
* entry[bloodPressure].fullUrl = "https://example.org/fhir/Observation/hn-bloodpressure-example"
* entry[bloodPressure].resource = hn-bloodpressure-example
* entry[oxygen].fullUrl = "https://example.org/fhir/Observation/hn-oxygen-example"
* entry[oxygen].resource = hn-oxygen-example

Instance: hn-careplan-transaction-example
InstanceOf: HNCarePlanTransaction
Title: "居家護理照護計畫交易範例"
Description: "將目標、措施、評值表單及臨床資源一起更新，所有 entry 成功才完成交易。"
Usage: #example
* entry[0].fullUrl = "https://example.org/fhir/QuestionnaireResponse/hn-targets-example"
* entry[0].resource = hn-targets-example
* entry[0].request.method = #PUT
* entry[0].request.url = "QuestionnaireResponse/hn-targets-example"
* entry[1].fullUrl = "https://example.org/fhir/QuestionnaireResponse/hn-measures-example"
* entry[1].resource = hn-measures-example
* entry[1].request.method = #PUT
* entry[1].request.url = "QuestionnaireResponse/hn-measures-example"
* entry[2].fullUrl = "https://example.org/fhir/QuestionnaireResponse/hn-evaluations-example"
* entry[2].resource = hn-evaluations-example
* entry[2].request.method = #PUT
* entry[2].request.url = "QuestionnaireResponse/hn-evaluations-example"
* entry[3].fullUrl = "https://example.org/fhir/Goal/hn-goal-example"
* entry[3].resource = hn-goal-example
* entry[3].request.method = #PUT
* entry[3].request.url = "Goal/hn-goal-example"
* entry[4].fullUrl = "https://example.org/fhir/CarePlan/hn-careplan-example"
* entry[4].resource = hn-careplan-example
* entry[4].request.method = #PUT
* entry[4].request.url = "CarePlan/hn-careplan-example"
