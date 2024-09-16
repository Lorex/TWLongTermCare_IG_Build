Profile: LTCQuestionnaireResponseCMSSociety
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSSociety
Title: "TWLTC QuestionnaireResponse CMS Society"
Description: "照顧管理評估量表－居家環境與社會參與"

* item 4..11 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-H1a 1..1 MS and
    item-H1b 0..1 MS and
    item-H1c 0..1 MS and
    item-H1d 0..1 MS and
    item-H1e 0..1 MS and
    item-H1e1 0..1 MS and
    item-H2a 1..1 MS and
    item-H2b 1..1 MS and
    item-H2c 1..1 MS and
    item-H2c1 0..1 MS and
    item-H2c2 0..1 MS
* item[item-H1a] ^short = "H1a. 請問個案目前的居住狀況？"
* item[item-H1a].linkId 1..1 MS
* item[item-H1a].linkId = "H1a"
* item[item-H1a].text 1..1 MS
* item[item-H1a].text = "請問個案目前的居住狀況？"
* item[item-H1a].answer 1..1 MS
* item[item-H1a].answer.value[x] 1..1 MS
* item[item-H1a].answer.value[x] only string
* item[item-H1a].answer.valueString 1..1 MS
* item[item-H1a].answer.valueString ^short = "請問個案目前的居住狀況？[應填入以下字串之一：獨居 | 與家人或其他人同住 | 住在機構 | 政府補助居住服務 | 其他]"
* item[item-H1b] ^short = "H1b. 請問目前哪些人與個案同住？"
* item[item-H1b].linkId 1..1 MS
* item[item-H1b].linkId = "H1b"
* item[item-H1b].text 1..1 MS
* item[item-H1b].text = "請問目前哪些人與個案同住？"
* item[item-H1b].answer 1..1 MS
* item[item-H1b].answer.value[x] 1..1 MS
* item[item-H1b].answer.value[x] only string
* item[item-H1b].answer.valueString 1..1 MS
* item[item-H1b].answer.valueString ^short = "請問目前哪些人與個案同住？[可複選：配偶或同居人 | 父親（含配偶或同居人的父親） | 母親（含配偶或同居人的母親） | 子女（含媳婿） | 兄弟姐妹 | （外）祖父母 | （外）孫子女 | 其他親戚 | 子女家輪流住 | 同儕朋友 | 其他]"
* item[item-H1c] ^short = "H1c. 請問個案居住在幾樓？"
* item[item-H1c].linkId 1..1 MS
* item[item-H1c].linkId = "H1c"
* item[item-H1c].text 1..1 MS
* item[item-H1c].text = "請問個案居住在幾樓？"
* item[item-H1c].answer 1..1 MS
* item[item-H1c].answer.value[x] 1..1 MS
* item[item-H1c].answer.value[x] only string
* item[item-H1c].answer.valueString 1..1 MS
* item[item-H1c].answer.valueString ^short = "請問個案居住在幾樓？"
* item[item-H1d] ^short = "H1d. 請問是否有電梯？"
* item[item-H1d].linkId 1..1 MS
* item[item-H1d].linkId = "H1d"
* item[item-H1d].text 1..1 MS
* item[item-H1d].text = "請問是否有電梯？"
* item[item-H1d].answer 1..1 MS
* item[item-H1d].answer.value[x] 1..1 MS
* item[item-H1d].answer.value[x] only boolean
* item[item-H1e] ^short = "H1e. 請問個案居住處是否有任何環境上的障礙會影響到日常生活？"
* item[item-H1e].linkId 1..1 MS
* item[item-H1e].linkId = "H1e"
* item[item-H1e].text 1..1 MS
* item[item-H1e].text = "請問個案居住處是否有任何環境上的障礙會影響到日常生活？"
* item[item-H1e].answer 1..* MS
* item[item-H1e].answer.value[x] 1..1 MS
* item[item-H1e].answer.value[x] only string
* item[item-H1e].answer.valueString 1..1 MS
* item[item-H1e].answer.valueString ^short = "請問個案居住處是否有任何環境上的障礙會影響到日常生活？[應填入以下字串之一：環境構造上的障礙並不構成問題 | 個案的活動範圍有階梯 | 個案的活動範圍有跌倒風險 | 個案從室內到室外有階梯或門檻 | 個案使用助行器或輪椅，室內走道過於狹窄或有阻礙 | 空間不夠置放額外的醫療設備或器材 | 其他 | 不適用]"
* item[item-H1e1] ^short = "H1e1. 有跌倒風險地點"
* item[item-H1e1].linkId 1..1 MS
* item[item-H1e1].linkId = "H1e1"
* item[item-H1e1].text 1..1 MS
* item[item-H1e1].text = "有跌倒風險地點"
* item[item-H1e1].answer 1..* MS
* item[item-H1e1].answer.value[x] 1..1 MS
* item[item-H1e1].answer.value[x] only string
* item[item-H1e1].answer.valueString 1..1 MS
* item[item-H1e1].answer.valueString ^short = "有跌倒風險地點[可複選：客廳 | 臥室 | 走道 | 樓梯 | 陽台 | 吃飯處 | 書房 | 浴室 | 居家出入口 | 其他]"
* item[item-H2a] ^short = "H2a. 請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？"
* item[item-H2a].linkId 1..1 MS
* item[item-H2a].linkId = "H2a"
* item[item-H2a].text 1..1 MS
* item[item-H2a].text = "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？"
* item[item-H2a].answer 1..1 MS
* item[item-H2a].answer.value[x] 1..1 MS
* item[item-H2a].answer.value[x] only string
* item[item-H2a].answer.valueString 1..1 MS
* item[item-H2a].answer.valueString ^short = "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？[應填入以下字串之一：沒有親朋好友 | 從不聯絡 | 很少聯絡 | 每個月至少 1 次 | 每週至少 1 次]"
* item[item-H2b] ^short = "H2b. 請問個案目前是否有參與下列的活動？"
* item[item-H2b].linkId 1..1 MS
* item[item-H2b].linkId = "H2b"
* item[item-H2b].text 1..1 MS
* item[item-H2b].text = "請問個案目前是否有參與下列的活動？"
* item[item-H2b].answer 1..1 MS
* item[item-H2b].answer.value[x] 1..1 MS
* item[item-H2b].answer.value[x] only string
* item[item-H2b].answer.valueString 1..1 MS
* item[item-H2b].answer.valueString ^short = "請問個案目前是否有參與下列的活動？[應填入以下字串之一：沒有 | 每年至少 1 次 | 每六個月至少 1 次 | 每三個月至少 1 次 | 每一個月至少 1 次 | 每週至少 1 次]"
* item[item-H2c] ^short = "H2c. 請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？"
* item[item-H2c].linkId 1..1 MS
* item[item-H2c].linkId = "H2c"
* item[item-H2c].text 1..1 MS
* item[item-H2c].text = "請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？"
* item[item-H2c].answer 1..1 MS
* item[item-H2c].answer.value[x] 1..1 MS
* item[item-H2c].answer.value[x] only boolean
* item[item-H2c1] ^short = "H2c1. 請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？"
* item[item-H2c1].linkId 1..1 MS
* item[item-H2c1].linkId = "H2c1"
* item[item-H2c1].text 1..1 MS
* item[item-H2c1].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？"
* item[item-H2c1].answer 1..1 MS
* item[item-H2c1].answer.value[x] 1..1 MS
* item[item-H2c1].answer.value[x] only string
* item[item-H2c1].answer.valueString 1..1 MS
* item[item-H2c1].answer.valueString ^short = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？[應填入以下字串之一：監督陪同 | 口頭/手勢的提示 | 部分肢體協助 | 完全肢體協助]"
* item[item-H2c2] ^short = "H2c2. 請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？"
* item[item-H2c2].linkId 1..1 MS
* item[item-H2c2].linkId = "H2c2"
* item[item-H2c2].text 1..1 MS
* item[item-H2c2].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？"
* item[item-H2c2].answer 1..1 MS
* item[item-H2c2].answer.value[x] 1..1 MS
* item[item-H2c2].answer.value[x] only string
* item[item-H2c2].answer.valueString 1..1 MS
* item[item-H2c2].answer.valueString ^short = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？[應填入以下字串之一：一個月不到 1 次 | 至少一個月 1 次，但不是每個星期 | 至少一星期 1 次]"
