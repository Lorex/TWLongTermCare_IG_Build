# 臨床失智評估量表 (CDR) - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臨床失智評估量表 (CDR)**

## Questionnaire: 臨床失智評估量表 (CDR) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:CDR |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#CDR-001 (use: official, ) | |

 
Clinical Dementia Rating scale [CDR] - 臨床失智評估量表 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-cdr",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr",
  "identifier" : [{
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "CDR-001"
  }],
  "version" : "0.4.1",
  "name" : "CDR",
  "title" : "臨床失智評估量表",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "Clinical Dementia Rating scale [CDR] - 臨床失智評估量表",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "72088-8",
    "display" : "Clinical Dementia Rating scale [CDR]"
  }],
  "item" : [{
    "linkId" : "CDR-1",
    "prefix" : "1.",
    "text" : "記憶力",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 無記憶障礙"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 輕度健忘，只記得事件的部分"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 中度記憶障礙，特別是近期事件"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 嚴重記憶障礙，只記得高度學習的事實"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 深度記憶障礙，只記得片段"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-2",
    "prefix" : "2.",
    "text" : "定向感",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 完全定向"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 完全定向，但時間/日期稍有困難"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 時間/日期/地點定向中度困難"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 時間/日期/地點定向嚴重困難"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 只維持對人的定向"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-3",
    "prefix" : "3.",
    "text" : "解決問題能力",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 良好的問題解決能力"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 問題解決能力稍有困難"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 問題解決能力中度困難"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 問題解決能力嚴重受損"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 無法做出判斷或解決問題"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-4",
    "prefix" : "4.",
    "text" : "社區活動能力",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 獨立的社區活動"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 社區活動能力稍有受損"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 無法完全參與社區活動"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 無法處理獨立工作/購物"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 無法處理獨立工作/購物"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-5",
    "prefix" : "5.",
    "text" : "家居嗜好",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 良好的家居嗜好"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 家居嗜好稍有受損"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 家居生活輕度受損"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 很少嗜好，難以維持"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 無法做家務"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-6",
    "prefix" : "6.",
    "text" : "自我照料",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "無 - 完全自我照料"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "可疑 - 完全自我照料"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "輕度 - 自我照料需要偶爾提醒"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "中度 - 個人照料需要幫助"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "嚴重 - 個人照料需要顯著幫助"
      }],
      "valueInteger" : 4
    }]
  },
  {
    "linkId" : "CDR-Total",
    "prefix" : "總分期",
    "text" : "目前的失智期",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "0 - 沒有失智"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "0.5 - 未確定或待觀察"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "1 - 輕度失智"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "2 - 中度失智"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "3 - 重度失智"
      }],
      "valueInteger" : 4
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "4 - 深度失智"
      }],
      "valueInteger" : 5
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "5 - 末期失智"
      }],
      "valueInteger" : 6
    }]
  }]
}

```
