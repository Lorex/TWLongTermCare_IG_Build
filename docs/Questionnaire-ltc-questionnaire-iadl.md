# 工具性日常活動功能問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **工具性日常活動功能問卷**

## Questionnaire: 工具性日常活動功能問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireIADL |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-iadl",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireIADL",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "F1",
    "text" : "使用電話",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能獨立使用電話，含查電話簿、撥號等"
      }],
      "valueInteger" : 4,
      "initialSelected" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "僅能撥熟悉的電話號碼"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "僅能接電話，但不能撥電話"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全不能使用電話"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F2",
    "text" : "購物",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能獨立完成所有購物需求"
      }],
      "valueInteger" : 4
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "只能獨立購買日常生活用品"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "每一次購物都需要有人陪"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全不能獨自購物"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F3",
    "text" : "備餐",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能獨立計畫、準備食材及佐料、烹煮和擺設一頓飯菜"
      }],
      "valueInteger" : 4
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "如果準備好一切食材及佐料，能做一頓飯菜"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能將已做好的飯菜加熱"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需要別人把飯菜煮好、擺好"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F4",
    "text" : "處理家務",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能單獨處理家事，或偶爾需要協助較繁重的家事"
      }],
      "valueInteger" : 4
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能做較簡單的家事，如洗碗、擦桌子"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能做較簡單的家事，但不能達到可接受的清潔程度"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "所有的家事都需要別人協助方能完成"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F5",
    "text" : "洗衣服",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "自己清洗所有衣物"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需部份協助"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需完全協助"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F6",
    "text" : "外出",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能夠自己開車、騎車或自己搭乘大眾運輸工具"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能夠自己搭乘計程車，但不能搭乘大眾運輸工具"
      }],
      "valueInteger" : 4
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "當有人陪同時，可搭乘大眾運輸工具"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "只能在有人協助或陪同時，可搭乘計程車或自用車"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全不能出門"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F7",
    "text" : "服用藥物",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "能自己負責在正確的時間用正確的藥物"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "如果事先準備好服用的藥物份量，可自行服用"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全不能自己服用藥物"
      }],
      "valueInteger" : 1
    }]
  },
  {
    "linkId" : "F8",
    "text" : "處理財務的能力",
    "type" : "choice",
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可以獨立處理財務"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可以處理日常的購買，但需別人協助與銀行往來或大宗買賣"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全不能處理錢財"
      }],
      "valueInteger" : 1
    }]
  }]
}

```
