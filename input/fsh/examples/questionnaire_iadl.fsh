Instance: ltc-questionnaire-iadl
InstanceOf: LTCQuestionnaire
Title: "工具性日常活動功能問卷"
Description: "CMS評估表中IADL問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* name = "LTCQuestionnaireIADL"
* status = #active
* item[0].linkId = "F1"
* item[0].type = #choice
* item[0].text = "使用電話"
* item[0].answerOption[0].valueInteger = 4
* item[0].answerOption[0].initialSelected = true
* item[0].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能獨立使用電話，含查電話簿、撥號等"
* item[0].answerOption[1].valueInteger = 3
* item[0].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "僅能撥熟悉的電話號碼"
* item[0].answerOption[2].valueInteger = 2
* item[0].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "僅能接電話，但不能撥電話"
* item[0].answerOption[3].valueInteger = 1
* item[0].answerOption[3].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "完全不能使用電話"

* item[1].linkId = "F2"
* item[1].type = #choice
* item[1].text = "購物"
* item[1].answerOption[0].valueInteger = 4
* item[1].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能獨立完成所有購物需求"
* item[1].answerOption[1].valueInteger = 3
* item[1].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "只能獨立購買日常生活用品"
* item[1].answerOption[2].valueInteger = 2
* item[1].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "每一次購物都需要有人陪"
* item[1].answerOption[3].valueInteger = 1
* item[1].answerOption[3].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "完全不能獨自購物"

* item[2].linkId = "F3"
* item[2].type = #choice
* item[2].text = "備餐"
* item[2].answerOption[0].valueInteger = 4
* item[2].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能獨立計畫、準備食材及佐料、烹煮和擺設一頓飯菜"
* item[2].answerOption[1].valueInteger = 3
* item[2].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "如果準備好一切食材及佐料，能做一頓飯菜"
* item[2].answerOption[2].valueInteger = 2
* item[2].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能將已做好的飯菜加熱"
* item[2].answerOption[3].valueInteger = 1
* item[2].answerOption[3].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "需要別人把飯菜煮好、擺好"

* item[3].linkId = "F4"
* item[3].type = #choice
* item[3].text = "處理家務"
* item[3].answerOption[0].valueInteger = 4
* item[3].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能單獨處理家事，或偶爾需要協助較繁重的家事"
* item[3].answerOption[1].valueInteger = 3
* item[3].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能做較簡單的家事，如洗碗、擦桌子"
* item[3].answerOption[2].valueInteger = 2
* item[3].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能做較簡單的家事，但不能達到可接受的清潔程度"
* item[3].answerOption[3].valueInteger = 1
* item[3].answerOption[3].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "所有的家事都需要別人協助方能完成"

* item[4].linkId = "F5"
* item[4].type = #choice
* item[4].text = "洗衣服"
* item[4].answerOption[0].valueInteger = 3
* item[4].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "自己清洗所有衣物"
* item[4].answerOption[1].valueInteger = 2
* item[4].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "需部份協助"
* item[4].answerOption[2].valueInteger = 1
* item[4].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "需完全協助"

* item[5].linkId = "F6"
* item[5].type = #choice
* item[5].text = "外出"
* item[5].answerOption[0].valueInteger = 5
* item[5].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能夠自己開車、騎車或自己搭乘大眾運輸工具"
* item[5].answerOption[1].valueInteger = 4
* item[5].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能夠自己搭乘計程車，但不能搭乘大眾運輸工具"
* item[5].answerOption[2].valueInteger = 3
* item[5].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "當有人陪同時，可搭乘大眾運輸工具"
* item[5].answerOption[3].valueInteger = 2
* item[5].answerOption[3].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "只能在有人協助或陪同時，可搭乘計程車或自用車"
* item[5].answerOption[4].valueInteger = 1
* item[5].answerOption[4].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "完全不能出門"

* item[6].linkId = "F7"
* item[6].type = #choice
* item[6].text = "服用藥物"
* item[6].answerOption[0].valueInteger = 3
* item[6].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "能自己負責在正確的時間用正確的藥物"
* item[6].answerOption[1].valueInteger = 2
* item[6].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "如果事先準備好服用的藥物份量，可自行服用"
* item[6].answerOption[2].valueInteger = 1
* item[6].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "完全不能自己服用藥物"

* item[7].linkId = "F8"
* item[7].type = #choice
* item[7].text = "處理財務的能力"
* item[7].answerOption[0].valueInteger = 3
* item[7].answerOption[0].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "可以獨立處理財務"
* item[7].answerOption[1].valueInteger = 2
* item[7].answerOption[1].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "可以處理日常的購買，但需別人協助與銀行往來或大宗買賣"
* item[7].answerOption[2].valueInteger = 1
* item[7].answerOption[2].extension[http://hl7.org/fhir/StructureDefinition/rendering-style].valueString = "完全不能處理錢財"


