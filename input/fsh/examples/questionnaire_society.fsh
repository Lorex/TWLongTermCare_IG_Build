Instance: ltc-questionnaire-society
InstanceOf: LTCQuestionnaire
Title: "居家環境與社會參與問卷"
Description: "CMS評估表中居家環境與社會參與問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society"
* name = "LTCQuestionnaireSociety"
* status = #active
* item[0].linkId = "H1a"
* item[0].type = #string
* item[0].text = "請問個案目前的居住狀況？"
* item[1].linkId = "H2a"
* item[1].type = #string
* item[1].text = "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？"
* item[2].linkId = "H2b"
* item[2].type = #string
* item[2].text = "請問個案目前是否有參與下列的活動？"
* item[3].linkId = "H2c"
* item[3].type = #boolean
* item[3].text = "請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？"
* item[4].linkId = "H2c1"
* item[4].type = #string
* item[4].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？"
* item[5].linkId = "H2c2"
* item[5].type = #string
* item[5].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？"


