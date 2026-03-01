# 簡易智能狀態測驗 (MMSE) - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **簡易智能狀態測驗 (MMSE)**

## Questionnaire: 簡易智能狀態測驗 (MMSE) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mmse | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:MMSE |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#MMSE-001 (use: official, ) | |

 
Mini-Mental State Examination [MMSE] - 簡易智能狀態測驗 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-mmse",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mmse",
  "identifier" : [{
    "use" : "official",
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "MMSE-001"
  }],
  "version" : "1.0.0",
  "name" : "MMSE",
  "title" : "簡易智能狀態測驗",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "Mini-Mental State Examination [MMSE] - 簡易智能狀態測驗",
  "code" : [{
    "system" : "http://loinc.org",
    "code" : "72107-6",
    "display" : "Mini-Mental State Examination [MMSE]"
  }],
  "item" : [{
    "linkId" : "MMSE-1",
    "prefix" : "1.",
    "text" : "今年是那一年?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-2",
    "prefix" : "2.",
    "text" : "現在是什麼季節?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-3",
    "prefix" : "3.",
    "text" : "今天是幾號?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-4",
    "prefix" : "4.",
    "text" : "今天是禮拜幾?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-5",
    "prefix" : "5.",
    "text" : "現在是那一個月份?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-6",
    "prefix" : "6.",
    "text" : "我們現在是在那一個省?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-7",
    "prefix" : "7.",
    "text" : "我們現在是在那一個縣、市?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-8",
    "prefix" : "8.",
    "text" : "這裡屬於哪一個區或是鄉鎮?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-9",
    "prefix" : "9.",
    "text" : "這個社區單位(醫院、診所)的名稱?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-10",
    "prefix" : "10.",
    "text" : "現在我們是在幾樓?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "不明"
      }],
      "valueInteger" : 9
    }]
  },
  {
    "linkId" : "MMSE-11",
    "prefix" : "11.",
    "text" : "請重複這三個名稱,按第一次複述結果計分",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "三個都對"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "二個對"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "一個對"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "都不對"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-12",
    "prefix" : "12.",
    "text" : "請從100開始連續減7,一直減7直到我說停為止。(每減對一次得一分)",
    "type" : "integer",
    "required" : true,
    "maxLength" : 2
  },
  {
    "linkId" : "MMSE-13",
    "prefix" : "13.",
    "text" : "藍色",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-14",
    "prefix" : "14.",
    "text" : "悲傷",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-15",
    "prefix" : "15.",
    "text" : "火車",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-16",
    "prefix" : "16.",
    "text" : "(拿出手錶)這是什麼?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-17",
    "prefix" : "17.",
    "text" : "(拿出鉛筆)這是什麼?",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-18",
    "prefix" : "18.",
    "text" : "請跟我唸一句話『白紙真正寫黑字』",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-19",
    "prefix" : "19.",
    "text" : "請唸一遍並做做看『請閉上眼睛』",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-20",
    "prefix" : "20.",
    "text" : "請用左/右手(非利手)拿這張紙(三步驟指令,每對一步驟得一分)",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "三個步驟都對"
      }],
      "valueInteger" : 3
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "二個步驟對"
      }],
      "valueInteger" : 2
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "一個步驟對"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "都不對"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-21",
    "prefix" : "21.",
    "text" : "請在紙上寫一句語意完整的句子。(含主詞動詞且語意完整的句子)",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  },
  {
    "linkId" : "MMSE-22",
    "prefix" : "22.",
    "text" : "這裡有一個圖形,請在旁邊畫出一個相同的圖形。(兩五邊形,交一四邊形,有兩交點,則給分)",
    "type" : "choice",
    "required" : true,
    "answerOption" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "正確"
      }],
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/rendering-style",
        "valueString" : "錯誤"
      }],
      "valueInteger" : 0
    }]
  }]
}

```
