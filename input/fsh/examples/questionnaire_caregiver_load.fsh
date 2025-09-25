Instance: ltc-questionnaire-caregiver-load
InstanceOf: LTCQuestionnaire
Title: "主要照顧者負荷問卷"
Description: "CMS評估表中照顧者負荷問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load"
* name = "LTCQuestionnaireCaregiverLoad"
* status = #active

* item[0].linkId = "J01"
* item[0].type = #boolean
* item[0].text = "睡眠受到干擾"

* item[1].linkId = "J02"
* item[1].type = #boolean
* item[1].text = "體力上的負荷"

* item[2].linkId = "J03"
* item[2].type = #boolean
* item[2].text = "需分配時間照顧其他家人"

* item[3].linkId = "J04"
* item[3].type = #boolean
* item[3].text = "對個案的行為感到困擾"

* item[4].linkId = "J05"
* item[4].type = #boolean
* item[4].text = "無法承受照顧壓力"


