# 日常生活能力評估問卷範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **日常生活能力評估問卷範例**

## Questionnaire: 日常生活能力評估問卷範例 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-adl-assessment-example | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:ADLAssessment |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#ADL-001 (use: official, ) | |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-adl-assessment-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-adl-assessment-example",
  "identifier" : [{
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "ADL-001"
  }],
  "version" : "1.0.0",
  "name" : "ADLAssessment",
  "title" : "日常生活能力評估量表",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "E1",
    "prefix" : "1.",
    "text" : "吃飯",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "自已在合理時間內可用筷子取食或需用輔具時應自行穿脫"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "偶爾需他人在旁協助或口頭提醒"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無法自行取食或需他人餵食"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E2",
    "prefix" : "2.",
    "text" : "洗澡",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可獨立完成，不需他人在旁"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需他人協助"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E3",
    "prefix" : "3.",
    "text" : "穿脫衣物",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可自行穿脫衣褲及鞋襪等"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "在別人協助下可自行完成一半"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需別人協助"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E4",
    "prefix" : "4.",
    "text" : "個人修飾",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可自行洗臉、洗手、刷牙及梳頭等"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需別人協助"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E5",
    "prefix" : "5.",
    "text" : "大便控制",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不會失禁，並可自行使用塞劑"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "偶而會失禁或需協助使用塞劑"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全依賴"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E6",
    "prefix" : "6.",
    "text" : "小便控制",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無失禁（控）"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "偶爾失禁（控）"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全依賴"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E7",
    "prefix" : "7.",
    "text" : "上廁所",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可自行上下馬桶並整理衣物等"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需部分協助或提醒"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全依賴"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E8",
    "prefix" : "8.",
    "text" : "移位",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可獨立完成含輪椅之基本移轉"
      }],
      "valueInteger" : 15
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需少部分協助"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需大部分協助"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全依賴"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E9",
    "prefix" : "9.",
    "text" : "走路",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "使用或不使用輔具可行走≥50公尺"
      }],
      "valueInteger" : 15
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需扶持可行走≥50公尺"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可操縱輪椅50公尺"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無法步行且無法操縱輪椅"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E10",
    "prefix" : "10.",
    "text" : "上下樓梯",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可安全上下樓梯"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需協助或監督"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無法上下樓"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "E11",
    "prefix" : "11.",
    "text" : "床椅移位",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可自行由床至椅或相反方向移位"
      }],
      "valueInteger" : 10
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "需部分協助"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "完全依賴"
      }],
      "valueInteger" : 0
    }]
  }]
}

```
