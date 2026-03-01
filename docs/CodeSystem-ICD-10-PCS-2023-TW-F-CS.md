# 臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學**

## CodeSystem: 臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS | *Version*:1.0.0 |
| Active as of 2024-06-04 | *Computable Name*:ICD10PCS2023TWFCS |

 
臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ICD10PCS2023TWFVS](ValueSet-ICD-10-PCS-2023-TW-F-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ICD-10-PCS-2023-TW-F-CS",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ICD-10-PCS-2023-TW-F-CS",
  "version" : "1.0.0",
  "name" : "ICD10PCS2023TWFCS",
  "title" : "臺灣 2023 年中文版 ICD-10-PCS-F-復健及診斷性聽力學",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-04",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "臺灣 2023 年中文版 ICD-10-PCS 復健及診斷性聽力學(Physical Rehabilitation and Diagnostic Audiology)，章節數值為「F」。 包括：復健、診斷性聽力學。 代碼出版日期：2023-11-10；資料所屬單位：衛生福利部中央健康保險署。 因原始資料無代碼版本資訊，故使用其法規「公布日期」作為版本資訊。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1380,
  "concept" : [{
    "code" : "F003GKZ",
    "display" : "全身神經系統溝通/認知整合技能評估，使用視聽設備",
    "definition" : "全身神經系統溝通/認知整合技能評估，使用視聽設備"
  },
  {
    "code" : "F003GMZ",
    "display" : "全身神經系統溝通/認知整合技能評估，使用輔助性/替代交流",
    "definition" : "全身神經系統溝通/認知整合技能評估，使用輔助性/替代交流"
  },
  {
    "code" : "F003GPZ",
    "display" : "全身神經系統溝通/認知整合技能評估，使用電腦",
    "definition" : "全身神經系統溝通/認知整合技能評估，使用電腦"
  },
  {
    "code" : "F003GYZ",
    "display" : "全身神經系統溝通/認知整合技能評估，使用其他設備",
    "definition" : "全身神經系統溝通/認知整合技能評估，使用其他設備"
  },
  {
    "code" : "F003GZZ",
    "display" : "全身神經系統溝通/認知整合技能評估",
    "definition" : "全身神經系統溝通/認知整合技能評估"
  },
  {
    "code" : "F00Z01Z",
    "display" : "濾波語音評估，使用聽力計",
    "definition" : "濾波語音評估，使用聽力計"
  },
  {
    "code" : "F00Z02Z",
    "display" : "濾波語音評估，使用聲場/隔音室",
    "definition" : "濾波語音評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z0KZ",
    "display" : "濾波語音評估，使用視聽設備",
    "definition" : "濾波語音評估，使用視聽設備"
  },
  {
    "code" : "F00Z0ZZ",
    "display" : "濾波語音評估",
    "definition" : "濾波語音評估"
  },
  {
    "code" : "F00Z11Z",
    "display" : "語言閾值評估，使用聽力計",
    "definition" : "語言閾值評估，使用聽力計"
  },
  {
    "code" : "F00Z12Z",
    "display" : "語言閾值評估，使用聲場/隔音室",
    "definition" : "語言閾值評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z19Z",
    "display" : "語言閾值評估，使用人工電子耳",
    "definition" : "語言閾值評估，使用人工電子耳"
  },
  {
    "code" : "F00Z1KZ",
    "display" : "語言閾值評估，使用視聽設備",
    "definition" : "語言閾值評估，使用視聽設備"
  },
  {
    "code" : "F00Z1ZZ",
    "display" : "語言閾值評估",
    "definition" : "語言閾值評估"
  },
  {
    "code" : "F00Z21Z",
    "display" : "語言/文字識別評估，使用聽力計",
    "definition" : "語言/文字識別評估，使用聽力計"
  },
  {
    "code" : "F00Z22Z",
    "display" : "語言/文字識別評估，使用聲場/隔音室",
    "definition" : "語言/文字識別評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z29Z",
    "display" : "語言/文字識別評估，使用人工電子耳",
    "definition" : "語言/文字識別評估，使用人工電子耳"
  },
  {
    "code" : "F00Z2KZ",
    "display" : "語言/文字識別評估，使用視聽設備",
    "definition" : "語言/文字識別評估，使用視聽設備"
  },
  {
    "code" : "F00Z2ZZ",
    "display" : "語言/文字識別評估",
    "definition" : "語言/文字識別評估"
  },
  {
    "code" : "F00Z31Z",
    "display" : "疊詞語音評估，使用聽力計",
    "definition" : "疊詞語音評估，使用聽力計"
  },
  {
    "code" : "F00Z32Z",
    "display" : "疊詞語音評估，使用聲場/隔音室",
    "definition" : "疊詞語音評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z3KZ",
    "display" : "疊詞語音評估，使用視聽設備",
    "definition" : "疊詞語音評估，使用視聽設備"
  },
  {
    "code" : "F00Z3ZZ",
    "display" : "疊詞語音評估",
    "definition" : "疊詞語音評估"
  },
  {
    "code" : "F00Z41Z",
    "display" : "感覺神經敏銳度評估，使用聽力計",
    "definition" : "感覺神經敏銳度評估，使用聽力計"
  },
  {
    "code" : "F00Z42Z",
    "display" : "感覺神經敏銳度評估，使用聲場/隔音室",
    "definition" : "感覺神經敏銳度評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z4ZZ",
    "display" : "感覺神經敏銳度評估",
    "definition" : "感覺神經敏銳度評估"
  },
  {
    "code" : "F00Z51Z",
    "display" : "合成句子識別評估，使用聽力計",
    "definition" : "合成句子識別評估，使用聽力計"
  },
  {
    "code" : "F00Z52Z",
    "display" : "合成句子識別評估，使用聲場/隔音室",
    "definition" : "合成句子識別評估，使用聲場/隔音室"
  },
  {
    "code" : "F00Z59Z",
    "display" : "合成句子識別評估，使用人工電子耳",
    "definition" : "合成句子識別評估，使用人工電子耳"
  },
  {
    "code" : "F00Z5KZ",
    "display" : "合成句子識別評估，使用視聽設備",
    "definition" : "合成句子識別評估，使用視聽設備"
  },
  {
    "code" : "F00Z6KZ",
    "display" : "言語和/或語言篩檢評估，使用視聽設備",
    "definition" : "言語和/或語言篩檢評估，使用視聽設備"
  },
  {
    "code" : "F00Z6MZ",
    "display" : "言語和/或語言篩檢評估，使用輔助性/替代交流",
    "definition" : "言語和/或語言篩檢評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00Z6PZ",
    "display" : "言語和/或語言篩檢評估，使用電腦",
    "definition" : "言語和/或語言篩檢評估，使用電腦"
  },
  {
    "code" : "F00Z6YZ",
    "display" : "言語和/或語言篩檢評估，使用其他設備",
    "definition" : "言語和/或語言篩檢評估，使用其他設備"
  },
  {
    "code" : "F00Z6ZZ",
    "display" : "言語和/或語言篩檢評估",
    "definition" : "言語和/或語言篩檢評估"
  },
  {
    "code" : "F00Z7KZ",
    "display" : "非口語語言評估，使用視聽設備",
    "definition" : "非口語語言評估，使用視聽設備"
  },
  {
    "code" : "F00Z7MZ",
    "display" : "非口語語言評估，使用輔助性/替代交流",
    "definition" : "非口語語言評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00Z7PZ",
    "display" : "非口語語言評估，使用電腦",
    "definition" : "非口語語言評估，使用電腦"
  },
  {
    "code" : "F00Z7YZ",
    "display" : "非口語語言評估，使用其他設備",
    "definition" : "非口語語言評估，使用其他設備"
  },
  {
    "code" : "F00Z7ZZ",
    "display" : "非口語語言評估",
    "definition" : "非口語語言評估"
  },
  {
    "code" : "F00Z8KZ",
    "display" : "接受性/表達性語言評估，使用視聽設備",
    "definition" : "接受性/表達性語言評估，使用視聽設備"
  },
  {
    "code" : "F00Z8MZ",
    "display" : "接受性/表達性語言評估，使用輔助性/替代交流",
    "definition" : "接受性/表達性語言評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00Z8PZ",
    "display" : "接受性/表達性語言評估，使用電腦",
    "definition" : "接受性/表達性語言評估，使用電腦"
  },
  {
    "code" : "F00Z8YZ",
    "display" : "接受性/表達性語言評估，使用其他設備",
    "definition" : "接受性/表達性語言評估，使用其他設備"
  },
  {
    "code" : "F00Z8ZZ",
    "display" : "接受性/表達性語言評估",
    "definition" : "接受性/表達性語言評估"
  },
  {
    "code" : "F00Z9KZ",
    "display" : "構音/音韻評估，使用視聽設備",
    "definition" : "構音/音韻評估，使用視聽設備"
  },
  {
    "code" : "F00Z9PZ",
    "display" : "構音/音韻評估，使用電腦",
    "definition" : "構音/音韻評估，使用電腦"
  },
  {
    "code" : "F00Z9QZ",
    "display" : "構音/音韻評估，使用語言分析",
    "definition" : "構音/音韻評估，使用語言分析"
  },
  {
    "code" : "F00Z9YZ",
    "display" : "構音/音韻評估，使用其他設備",
    "definition" : "構音/音韻評估，使用其他設備"
  },
  {
    "code" : "F00Z9ZZ",
    "display" : "構音/音韻評估",
    "definition" : "構音/音韻評估"
  },
  {
    "code" : "F00ZBKZ",
    "display" : "運動言語評估，使用視聽設備",
    "definition" : "運動言語評估，使用視聽設備"
  },
  {
    "code" : "F00ZBNZ",
    "display" : "運動言語評估，使用生物感覺反饋設備",
    "definition" : "運動言語評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F00ZBPZ",
    "display" : "運動言語評估，使用電腦",
    "definition" : "運動言語評估，使用電腦"
  },
  {
    "code" : "F00ZBQZ",
    "display" : "運動言語評估，使用語言分析",
    "definition" : "運動言語評估，使用語言分析"
  },
  {
    "code" : "F00ZBTZ",
    "display" : "運動言語評估，使用氣動學設備",
    "definition" : "運動言語評估，使用氣動學設備"
  },
  {
    "code" : "F00ZBYZ",
    "display" : "運動言語評估，使用其他設備",
    "definition" : "運動言語評估，使用其他設備"
  },
  {
    "code" : "F00ZBZZ",
    "display" : "運動言語評估",
    "definition" : "運動言語評估"
  },
  {
    "code" : "F00ZCKZ",
    "display" : "失語評估，使用視聽設備",
    "definition" : "失語評估，使用視聽設備"
  },
  {
    "code" : "F00ZCMZ",
    "display" : "失語評估，使用輔助性/替代交流",
    "definition" : "失語評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00ZCPZ",
    "display" : "失語評估，使用電腦",
    "definition" : "失語評估，使用電腦"
  },
  {
    "code" : "F00ZCYZ",
    "display" : "失語評估，使用其他設備",
    "definition" : "失語評估，使用其他設備"
  },
  {
    "code" : "F00ZCZZ",
    "display" : "失語評估",
    "definition" : "失語評估"
  },
  {
    "code" : "F00ZDKZ",
    "display" : "語暢評估，使用視聽設備",
    "definition" : "語暢評估，使用視聽設備"
  },
  {
    "code" : "F00ZDNZ",
    "display" : "語暢評估，使用生物感覺反饋設備",
    "definition" : "語暢評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F00ZDPZ",
    "display" : "語暢評估，使用電腦",
    "definition" : "語暢評估，使用電腦"
  },
  {
    "code" : "F00ZDQZ",
    "display" : "語暢評估，使用語言分析",
    "definition" : "語暢評估，使用語言分析"
  },
  {
    "code" : "F00ZDSZ",
    "display" : "語暢評估，使用嗓音分析設備",
    "definition" : "語暢評估，使用嗓音分析設備"
  },
  {
    "code" : "F00ZDTZ",
    "display" : "語暢評估，使用氣動學設備",
    "definition" : "語暢評估，使用氣動學設備"
  },
  {
    "code" : "F00ZDYZ",
    "display" : "語暢評估，使用其他設備",
    "definition" : "語暢評估，使用其他設備"
  },
  {
    "code" : "F00ZDZZ",
    "display" : "語暢評估",
    "definition" : "語暢評估"
  },
  {
    "code" : "F00ZFKZ",
    "display" : "聲音評估，使用視聽設備",
    "definition" : "聲音評估，使用視聽設備"
  },
  {
    "code" : "F00ZFNZ",
    "display" : "聲音評估，使用生物感覺反饋設備",
    "definition" : "聲音評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F00ZFPZ",
    "display" : "聲音評估，使用電腦",
    "definition" : "聲音評估，使用電腦"
  },
  {
    "code" : "F00ZFSZ",
    "display" : "聲音評估，使用嗓音分析設備",
    "definition" : "聲音評估，使用嗓音分析設備"
  },
  {
    "code" : "F00ZFTZ",
    "display" : "聲音評估，使用氣動學設備",
    "definition" : "聲音評估，使用氣動學設備"
  },
  {
    "code" : "F00ZFYZ",
    "display" : "聲音評估，使用其他設備",
    "definition" : "聲音評估，使用其他設備"
  },
  {
    "code" : "F00ZFZZ",
    "display" : "聲音評估",
    "definition" : "聲音評估"
  },
  {
    "code" : "F00ZGKZ",
    "display" : "溝通/認知整合技能評估，使用視聽設備",
    "definition" : "溝通/認知整合技能評估，使用視聽設備"
  },
  {
    "code" : "F00ZGMZ",
    "display" : "溝通/認知整合技能評估，使用輔助性/替代交流",
    "definition" : "溝通/認知整合技能評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00ZGPZ",
    "display" : "溝通/認知整合技能評估，使用電腦",
    "definition" : "溝通/認知整合技能評估，使用電腦"
  },
  {
    "code" : "F00ZGYZ",
    "display" : "溝通/認知整合技能評估，使用其他設備",
    "definition" : "溝通/認知整合技能評估，使用其他設備"
  },
  {
    "code" : "F00ZGZZ",
    "display" : "溝通/認知整合技能評估",
    "definition" : "溝通/認知整合技能評估"
  },
  {
    "code" : "F00ZHYZ",
    "display" : "臨床吞嚥及口腔功能評估，使用其他設備",
    "definition" : "臨床吞嚥及口腔功能評估，使用其他設備"
  },
  {
    "code" : "F00ZHZZ",
    "display" : "臨床吞嚥及口腔功能評估",
    "definition" : "臨床吞嚥及口腔功能評估"
  },
  {
    "code" : "F00ZJTZ",
    "display" : "工具吞嚥及口腔功能評估，使用氣動學設備",
    "definition" : "工具吞嚥及口腔功能評估，使用氣動學設備"
  },
  {
    "code" : "F00ZJWZ",
    "display" : "工具吞嚥及口腔功能評估，使用吞嚥",
    "definition" : "工具吞嚥及口腔功能評估，使用吞嚥"
  },
  {
    "code" : "F00ZJYZ",
    "display" : "工具吞嚥及口腔功能評估，使用其他設備",
    "definition" : "工具吞嚥及口腔功能評估，使用其他設備"
  },
  {
    "code" : "F00ZKKZ",
    "display" : "口面肌功能評估，使用視聽設備",
    "definition" : "口面肌功能評估，使用視聽設備"
  },
  {
    "code" : "F00ZKPZ",
    "display" : "口面肌功能評估，使用電腦",
    "definition" : "口面肌功能評估，使用電腦"
  },
  {
    "code" : "F00ZKYZ",
    "display" : "口面肌功能評估，使用其他設備",
    "definition" : "口面肌功能評估，使用其他設備"
  },
  {
    "code" : "F00ZKZZ",
    "display" : "口面肌功能評估",
    "definition" : "口面肌功能評估"
  },
  {
    "code" : "F00ZLKZ",
    "display" : "輔助性/替代性溝通系統評估，使用視聽設備",
    "definition" : "輔助性/替代性溝通系統評估，使用視聽設備"
  },
  {
    "code" : "F00ZLMZ",
    "display" : "輔助性/替代性溝通系統評估，使用輔助性/替代交流",
    "definition" : "輔助性/替代性溝通系統評估，使用輔助性/替代交流"
  },
  {
    "code" : "F00ZLPZ",
    "display" : "輔助性/替代性溝通系統評估，使用電腦",
    "definition" : "輔助性/替代性溝通系統評估，使用電腦"
  },
  {
    "code" : "F00ZLYZ",
    "display" : "輔助性/替代性溝通系統評估，使用其他設備",
    "definition" : "輔助性/替代性溝通系統評估，使用其他設備"
  },
  {
    "code" : "F00ZLZZ",
    "display" : "輔助性/替代性溝通系統評估",
    "definition" : "輔助性/替代性溝通系統評估"
  },
  {
    "code" : "F00ZMKZ",
    "display" : "發聲輔助器評估，使用視聽設備",
    "definition" : "發聲輔助器評估，使用視聽設備"
  },
  {
    "code" : "F00ZMPZ",
    "display" : "發聲輔助器評估，使用電腦",
    "definition" : "發聲輔助器評估，使用電腦"
  },
  {
    "code" : "F00ZMSZ",
    "display" : "發聲輔助器評估，使用嗓音分析設備",
    "definition" : "發聲輔助器評估，使用嗓音分析設備"
  },
  {
    "code" : "F00ZMVZ",
    "display" : "發聲輔助器評估，使用人工發聲器",
    "definition" : "發聲輔助器評估，使用人工發聲器"
  },
  {
    "code" : "F00ZMYZ",
    "display" : "發聲輔助器評估，使用其他設備",
    "definition" : "發聲輔助器評估，使用其他設備"
  },
  {
    "code" : "F00ZMZZ",
    "display" : "發聲輔助器評估",
    "definition" : "發聲輔助器評估"
  },
  {
    "code" : "F00ZNNZ",
    "display" : "非侵入性儀器狀態評估，使用生物感覺反饋設備",
    "definition" : "非侵入性儀器狀態評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F00ZNPZ",
    "display" : "非侵入性儀器狀態評估，使用電腦",
    "definition" : "非侵入性儀器狀態評估，使用電腦"
  },
  {
    "code" : "F00ZNQZ",
    "display" : "非侵入性儀器狀態評估，使用語言分析",
    "definition" : "非侵入性儀器狀態評估，使用語言分析"
  },
  {
    "code" : "F00ZNSZ",
    "display" : "非侵入性儀器狀態評估，使用嗓音分析設備",
    "definition" : "非侵入性儀器狀態評估，使用嗓音分析設備"
  },
  {
    "code" : "F00ZNTZ",
    "display" : "非侵入性儀器狀態評估，使用氣動學設備",
    "definition" : "非侵入性儀器狀態評估，使用氣動學設備"
  },
  {
    "code" : "F00ZNYZ",
    "display" : "非侵入性儀器狀態評估，使用其他設備",
    "definition" : "非侵入性儀器狀態評估，使用其他設備"
  },
  {
    "code" : "F00ZPYZ",
    "display" : "口腔週邊機制評估，使用其他設備",
    "definition" : "口腔週邊機制評估，使用其他設備"
  },
  {
    "code" : "F00ZPZZ",
    "display" : "口腔週邊機制評估",
    "definition" : "口腔週邊機制評估"
  },
  {
    "code" : "F00ZQ1Z",
    "display" : "音韻平衡語音音強聽辨評估，使用聽力計",
    "definition" : "音韻平衡語音音強聽辨評估，使用聽力計"
  },
  {
    "code" : "F00ZQ2Z",
    "display" : "音韻平衡語音音強聽辨評估，使用聲場/隔音室",
    "definition" : "音韻平衡語音音強聽辨評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZQKZ",
    "display" : "音韻平衡語音音強聽辨評估，使用視聽設備",
    "definition" : "音韻平衡語音音強聽辨評估，使用視聽設備"
  },
  {
    "code" : "F00ZQZZ",
    "display" : "音韻平衡語音音強聽辨評估",
    "definition" : "音韻平衡語音音強聽辨評估"
  },
  {
    "code" : "F00ZR1Z",
    "display" : "簡音刺激評估，使用聽力計",
    "definition" : "簡音刺激評估，使用聽力計"
  },
  {
    "code" : "F00ZR2Z",
    "display" : "簡音刺激評估，使用聲場/隔音室",
    "definition" : "簡音刺激評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZRKZ",
    "display" : "簡音刺激評估，使用視聽設備",
    "definition" : "簡音刺激評估，使用視聽設備"
  },
  {
    "code" : "F00ZRZZ",
    "display" : "簡音刺激評估",
    "definition" : "簡音刺激評估"
  },
  {
    "code" : "F00ZS1Z",
    "display" : "扭曲語音評估，使用聽力計",
    "definition" : "扭曲語音評估，使用聽力計"
  },
  {
    "code" : "F00ZS2Z",
    "display" : "扭曲語音評估，使用聲場/隔音室",
    "definition" : "扭曲語音評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZSKZ",
    "display" : "扭曲語音評估，使用視聽設備",
    "definition" : "扭曲語音評估，使用視聽設備"
  },
  {
    "code" : "F00ZSZZ",
    "display" : "扭曲語音評估",
    "definition" : "扭曲語音評估"
  },
  {
    "code" : "F00ZT1Z",
    "display" : "雙耳異訊刺激評估，使用聽力計",
    "definition" : "雙耳異訊刺激評估，使用聽力計"
  },
  {
    "code" : "F00ZT2Z",
    "display" : "雙耳異訊刺激評估，使用聲場/隔音室",
    "definition" : "雙耳異訊刺激評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZTKZ",
    "display" : "雙耳異訊刺激評估，使用視聽設備",
    "definition" : "雙耳異訊刺激評估，使用視聽設備"
  },
  {
    "code" : "F00ZTZZ",
    "display" : "雙耳異訊刺激評估",
    "definition" : "雙耳異訊刺激評估"
  },
  {
    "code" : "F00ZV1Z",
    "display" : "時間排序刺激評估，使用聽力計",
    "definition" : "時間排序刺激評估，使用聽力計"
  },
  {
    "code" : "F00ZV2Z",
    "display" : "時間排序刺激評估，使用聲場/隔音室",
    "definition" : "時間排序刺激評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZVKZ",
    "display" : "時間排序刺激評估，使用視聽設備",
    "definition" : "時間排序刺激評估，使用視聽設備"
  },
  {
    "code" : "F00ZVZZ",
    "display" : "時間排序刺激評估",
    "definition" : "時間排序刺激評估"
  },
  {
    "code" : "F00ZW1Z",
    "display" : "掩蔽模式評估，使用聽力計",
    "definition" : "掩蔽模式評估，使用聽力計"
  },
  {
    "code" : "F00ZW2Z",
    "display" : "掩蔽模式評估，使用聲場/隔音室",
    "definition" : "掩蔽模式評估，使用聲場/隔音室"
  },
  {
    "code" : "F00ZWKZ",
    "display" : "掩蔽模式評估，使用視聽設備",
    "definition" : "掩蔽模式評估，使用視聽設備"
  },
  {
    "code" : "F00ZWZZ",
    "display" : "掩蔽模式評估",
    "definition" : "掩蔽模式評估"
  },
  {
    "code" : "F00ZXZZ",
    "display" : "其他特定中央聽覺處理評估",
    "definition" : "其他特定中央聽覺處理評估"
  },
  {
    "code" : "F0100EZ",
    "display" : "頭及頸部神經系統肌肉功能評估，使用矯具",
    "definition" : "頭及頸部神經系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F0100FZ",
    "display" : "頭及頸部神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0100UZ",
    "display" : "頭及頸部神經系統肌肉功能評估，使用義肢",
    "definition" : "頭及頸部神經系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F0100YZ",
    "display" : "頭及頸部神經系統肌肉功能評估，使用其他設備",
    "definition" : "頭及頸部神經系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F0100ZZ",
    "display" : "頭及頸部神經系統肌肉功能評估",
    "definition" : "頭及頸部神經系統肌肉功能評估"
  },
  {
    "code" : "F0101ZZ",
    "display" : "頭及頸部神經系統外皮完整性評估",
    "definition" : "頭及頸部神經系統外皮完整性評估"
  },
  {
    "code" : "F0103ZZ",
    "display" : "頭及頸部神經系統協調/靈敏度評估",
    "definition" : "頭及頸部神經系統協調/靈敏度評估"
  },
  {
    "code" : "F0104ZZ",
    "display" : "頭及頸部神經系統運動功能評估",
    "definition" : "頭及頸部神經系統運動功能評估"
  },
  {
    "code" : "F0105YZ",
    "display" : "頭及頸部神經系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "頭及頸部神經系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F0105ZZ",
    "display" : "頭及頸部神經系統運動範圍及關節完整性評估",
    "definition" : "頭及頸部神經系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F0106YZ",
    "display" : "頭及頸部神經系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "頭及頸部神經系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F0106ZZ",
    "display" : "頭及頸部神經系統感官認識/處理/完整性評估",
    "definition" : "頭及頸部神經系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F010GZZ",
    "display" : "頭及頸部神經系統反射完整性評估",
    "definition" : "頭及頸部神經系統反射完整性評估"
  },
  {
    "code" : "F0110EZ",
    "display" : "上背/上肢神經系統肌肉功能評估，使用矯具",
    "definition" : "上背/上肢神經系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F0110FZ",
    "display" : "上背/上肢神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0110UZ",
    "display" : "上背/上肢神經系統肌肉功能評估，使用義肢",
    "definition" : "上背/上肢神經系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F0110YZ",
    "display" : "上背/上肢神經系統肌肉功能評估，使用其他設備",
    "definition" : "上背/上肢神經系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F0110ZZ",
    "display" : "上背/上肢神經系統肌肉功能評估",
    "definition" : "上背/上肢神經系統肌肉功能評估"
  },
  {
    "code" : "F0111ZZ",
    "display" : "上背/上肢神經系統外皮完整性評估",
    "definition" : "上背/上肢神經系統外皮完整性評估"
  },
  {
    "code" : "F0113ZZ",
    "display" : "上背/上肢神經系統協調/靈敏度評估",
    "definition" : "上背/上肢神經系統協調/靈敏度評估"
  },
  {
    "code" : "F0114ZZ",
    "display" : "上背/上肢神經系統運動功能評估",
    "definition" : "上背/上肢神經系統運動功能評估"
  },
  {
    "code" : "F0115YZ",
    "display" : "上背/上肢神經系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "上背/上肢神經系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F0115ZZ",
    "display" : "上背/上肢神經系統運動範圍及關節完整性評估",
    "definition" : "上背/上肢神經系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F0116YZ",
    "display" : "上背/上肢神經系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "上背/上肢神經系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F0116ZZ",
    "display" : "上背/上肢神經系統感官認識/處理/完整性評估",
    "definition" : "上背/上肢神經系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F011GZZ",
    "display" : "上背/上肢神經系統反射完整性評估",
    "definition" : "上背/上肢神經系統反射完整性評估"
  },
  {
    "code" : "F0120EZ",
    "display" : "下背/下肢神經系統肌肉功能評估，使用矯具",
    "definition" : "下背/下肢神經系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F0120FZ",
    "display" : "下背/下肢神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0120UZ",
    "display" : "下背/下肢神經系統肌肉功能評估，使用義肢",
    "definition" : "下背/下肢神經系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F0120YZ",
    "display" : "下背/下肢神經系統肌肉功能評估，使用其他設備",
    "definition" : "下背/下肢神經系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F0120ZZ",
    "display" : "下背/下肢神經系統肌肉功能評估",
    "definition" : "下背/下肢神經系統肌肉功能評估"
  },
  {
    "code" : "F0121ZZ",
    "display" : "下背/下肢神經系統外皮完整性評估",
    "definition" : "下背/下肢神經系統外皮完整性評估"
  },
  {
    "code" : "F0123ZZ",
    "display" : "下背/下肢神經系統協調/靈敏度評估",
    "definition" : "下背/下肢神經系統協調/靈敏度評估"
  },
  {
    "code" : "F0124ZZ",
    "display" : "下背/下肢神經系統運動功能評估",
    "definition" : "下背/下肢神經系統運動功能評估"
  },
  {
    "code" : "F0125YZ",
    "display" : "下背/下肢神經系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "下背/下肢神經系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F0125ZZ",
    "display" : "下背/下肢神經系統運動範圍及關節完整性評估",
    "definition" : "下背/下肢神經系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F0126YZ",
    "display" : "下背/下肢神經系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "下背/下肢神經系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F0126ZZ",
    "display" : "下背/下肢神經系統感官認識/處理/完整性評估",
    "definition" : "下背/下肢神經系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F012GZZ",
    "display" : "下背/下肢神經系統反射完整性評估",
    "definition" : "下背/下肢神經系統反射完整性評估"
  },
  {
    "code" : "F0130EZ",
    "display" : "全身神經系統肌肉功能評估，使用矯具",
    "definition" : "全身神經系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F0130FZ",
    "display" : "全身神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0130UZ",
    "display" : "全身神經系統肌肉功能評估，使用義肢",
    "definition" : "全身神經系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F0130YZ",
    "display" : "全身神經系統肌肉功能評估，使用其他設備",
    "definition" : "全身神經系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F0130ZZ",
    "display" : "全身神經系統肌肉功能評估",
    "definition" : "全身神經系統肌肉功能評估"
  },
  {
    "code" : "F0131ZZ",
    "display" : "全身神經系統外皮完整性評估",
    "definition" : "全身神經系統外皮完整性評估"
  },
  {
    "code" : "F0133ZZ",
    "display" : "全身神經系統協調/靈敏度評估",
    "definition" : "全身神經系統協調/靈敏度評估"
  },
  {
    "code" : "F0134ZZ",
    "display" : "全身神經系統運動功能評估",
    "definition" : "全身神經系統運動功能評估"
  },
  {
    "code" : "F0135YZ",
    "display" : "全身神經系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "全身神經系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F0135ZZ",
    "display" : "全身神經系統運動範圍及關節完整性評估",
    "definition" : "全身神經系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F0136YZ",
    "display" : "全身神經系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "全身神經系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F0136ZZ",
    "display" : "全身神經系統感官認識/處理/完整性評估",
    "definition" : "全身神經系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F013GZZ",
    "display" : "全身神經系統反射完整性評估",
    "definition" : "全身神經系統反射完整性評估"
  },
  {
    "code" : "F01D0EZ",
    "display" : "頭及頸部皮膚系統肌肉功能評估，使用矯具",
    "definition" : "頭及頸部皮膚系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01D0FZ",
    "display" : "頭及頸部皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01D0UZ",
    "display" : "頭及頸部皮膚系統肌肉功能評估，使用義肢",
    "definition" : "頭及頸部皮膚系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01D0YZ",
    "display" : "頭及頸部皮膚系統肌肉功能評估，使用其他設備",
    "definition" : "頭及頸部皮膚系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01D0ZZ",
    "display" : "頭及頸部皮膚系統肌肉功能評估",
    "definition" : "頭及頸部皮膚系統肌肉功能評估"
  },
  {
    "code" : "F01D1ZZ",
    "display" : "頭及頸部皮膚系統外皮完整性評估",
    "definition" : "頭及頸部皮膚系統外皮完整性評估"
  },
  {
    "code" : "F01D5YZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "頭及頸部皮膚系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01D5ZZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節完整性評估",
    "definition" : "頭及頸部皮膚系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01D6YZ",
    "display" : "頭及頸部皮膚系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "頭及頸部皮膚系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01D6ZZ",
    "display" : "頭及頸部皮膚系統感官認識/處理/完整性評估",
    "definition" : "頭及頸部皮膚系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01F0EZ",
    "display" : "上背/上肢皮膚系統肌肉功能評估，使用矯具",
    "definition" : "上背/上肢皮膚系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01F0FZ",
    "display" : "上背/上肢皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01F0UZ",
    "display" : "上背/上肢皮膚系統肌肉功能評估，使用義肢",
    "definition" : "上背/上肢皮膚系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01F0YZ",
    "display" : "上背/上肢皮膚系統肌肉功能評估，使用其他設備",
    "definition" : "上背/上肢皮膚系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01F0ZZ",
    "display" : "上背/上肢皮膚系統肌肉功能評估",
    "definition" : "上背/上肢皮膚系統肌肉功能評估"
  },
  {
    "code" : "F01F1ZZ",
    "display" : "上背/上肢皮膚系統外皮完整性評估",
    "definition" : "上背/上肢皮膚系統外皮完整性評估"
  },
  {
    "code" : "F01F5YZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "上背/上肢皮膚系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01F5ZZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節完整性評估",
    "definition" : "上背/上肢皮膚系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01F6YZ",
    "display" : "上背/上肢皮膚系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "上背/上肢皮膚系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01F6ZZ",
    "display" : "上背/上肢皮膚系統感官認識/處理/完整性評估",
    "definition" : "上背/上肢皮膚系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01G0EZ",
    "display" : "下背/下肢皮膚系統肌肉功能評估，使用矯具",
    "definition" : "下背/下肢皮膚系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01G0FZ",
    "display" : "下背/下肢皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01G0UZ",
    "display" : "下背/下肢皮膚系統肌肉功能評估，使用義肢",
    "definition" : "下背/下肢皮膚系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01G0YZ",
    "display" : "下背/下肢皮膚系統肌肉功能評估，使用其他設備",
    "definition" : "下背/下肢皮膚系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01G0ZZ",
    "display" : "下背/下肢皮膚系統肌肉功能評估",
    "definition" : "下背/下肢皮膚系統肌肉功能評估"
  },
  {
    "code" : "F01G1ZZ",
    "display" : "下背/下肢皮膚系統外皮完整性評估",
    "definition" : "下背/下肢皮膚系統外皮完整性評估"
  },
  {
    "code" : "F01G5YZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "下背/下肢皮膚系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01G5ZZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節完整性評估",
    "definition" : "下背/下肢皮膚系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01G6YZ",
    "display" : "下背/下肢皮膚系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "下背/下肢皮膚系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01G6ZZ",
    "display" : "下背/下肢皮膚系統感官認識/處理/完整性評估",
    "definition" : "下背/下肢皮膚系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01H0EZ",
    "display" : "全身皮膚系統肌肉功能評估，使用矯具",
    "definition" : "全身皮膚系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01H0FZ",
    "display" : "全身皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01H0UZ",
    "display" : "全身皮膚系統肌肉功能評估，使用義肢",
    "definition" : "全身皮膚系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01H0YZ",
    "display" : "全身皮膚系統肌肉功能評估，使用其他設備",
    "definition" : "全身皮膚系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01H0ZZ",
    "display" : "全身皮膚系統肌肉功能評估",
    "definition" : "全身皮膚系統肌肉功能評估"
  },
  {
    "code" : "F01H1ZZ",
    "display" : "全身皮膚系統外皮完整性評估",
    "definition" : "全身皮膚系統外皮完整性評估"
  },
  {
    "code" : "F01H5YZ",
    "display" : "全身皮膚系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "全身皮膚系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01H5ZZ",
    "display" : "全身皮膚系統運動範圍及關節完整性評估",
    "definition" : "全身皮膚系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01H6YZ",
    "display" : "全身皮膚系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "全身皮膚系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01H6ZZ",
    "display" : "全身皮膚系統感官認識/處理/完整性評估",
    "definition" : "全身皮膚系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01J0EZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01J0FZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01J0UZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01J0YZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01J0ZZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能評估",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能評估"
  },
  {
    "code" : "F01J1ZZ",
    "display" : "頭及頸部肌肉骨骼系統外皮完整性評估",
    "definition" : "頭及頸部肌肉骨骼系統外皮完整性評估"
  },
  {
    "code" : "F01J5YZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01J5ZZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節完整性評估",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01J6YZ",
    "display" : "頭及頸部肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01J6ZZ",
    "display" : "頭及頸部肌肉骨骼系統感官認識/處理/完整性評估",
    "definition" : "頭及頸部肌肉骨骼系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01K0EZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01K0FZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01K0UZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01K0YZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01K0ZZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能評估",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能評估"
  },
  {
    "code" : "F01K1ZZ",
    "display" : "上背/上肢肌肉骨骼系統外皮完整性評估",
    "definition" : "上背/上肢肌肉骨骼系統外皮完整性評估"
  },
  {
    "code" : "F01K5YZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01K5ZZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節完整性評估",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01K6YZ",
    "display" : "上背/上肢肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01K6ZZ",
    "display" : "上背/上肢肌肉骨骼系統感官認識/處理/完整性評估",
    "definition" : "上背/上肢肌肉骨骼系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01L0EZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01L0FZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01L0UZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01L0YZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01L0ZZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能評估",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能評估"
  },
  {
    "code" : "F01L1ZZ",
    "display" : "下背/下肢肌肉骨骼系統外皮完整性評估",
    "definition" : "下背/下肢肌肉骨骼系統外皮完整性評估"
  },
  {
    "code" : "F01L5YZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01L5ZZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節完整性評估",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01L6YZ",
    "display" : "下背/下肢肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01L6ZZ",
    "display" : "下背/下肢肌肉骨骼系統感官認識/處理/完整性評估",
    "definition" : "下背/下肢肌肉骨骼系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01M0EZ",
    "display" : "全身肌肉骨骼系統肌肉功能評估，使用矯具",
    "definition" : "全身肌肉骨骼系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01M0FZ",
    "display" : "全身肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01M0UZ",
    "display" : "全身肌肉骨骼系統肌肉功能評估，使用義肢",
    "definition" : "全身肌肉骨骼系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01M0YZ",
    "display" : "全身肌肉骨骼系統肌肉功能評估，使用其他設備",
    "definition" : "全身肌肉骨骼系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01M0ZZ",
    "display" : "全身肌肉骨骼系統肌肉功能評估",
    "definition" : "全身肌肉骨骼系統肌肉功能評估"
  },
  {
    "code" : "F01M1ZZ",
    "display" : "全身肌肉骨骼系統外皮完整性評估",
    "definition" : "全身肌肉骨骼系統外皮完整性評估"
  },
  {
    "code" : "F01M5YZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備",
    "definition" : "全身肌肉骨骼系統運動範圍及關節完整性評估，使用其他設備"
  },
  {
    "code" : "F01M5ZZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節完整性評估",
    "definition" : "全身肌肉骨骼系統運動範圍及關節完整性評估"
  },
  {
    "code" : "F01M6YZ",
    "display" : "全身肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備",
    "definition" : "全身肌肉骨骼系統感官認識/處理/完整性評估，使用其他設備"
  },
  {
    "code" : "F01M6ZZ",
    "display" : "全身肌肉骨骼系統感官認識/處理/完整性評估",
    "definition" : "全身肌肉骨骼系統感官認識/處理/完整性評估"
  },
  {
    "code" : "F01N0EZ",
    "display" : "生殖泌尿系統肌肉功能評估，使用矯具",
    "definition" : "生殖泌尿系統肌肉功能評估，使用矯具"
  },
  {
    "code" : "F01N0FZ",
    "display" : "生殖泌尿系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "生殖泌尿系統肌肉功能評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01N0UZ",
    "display" : "生殖泌尿系統肌肉功能評估，使用義肢",
    "definition" : "生殖泌尿系統肌肉功能評估，使用義肢"
  },
  {
    "code" : "F01N0YZ",
    "display" : "生殖泌尿系統肌肉功能評估，使用其他設備",
    "definition" : "生殖泌尿系統肌肉功能評估，使用其他設備"
  },
  {
    "code" : "F01N0ZZ",
    "display" : "生殖泌尿系統肌肉功能評估",
    "definition" : "生殖泌尿系統肌肉功能評估"
  },
  {
    "code" : "F01Z2KZ",
    "display" : "視覺動作整合評估，使用視聽設備",
    "definition" : "視覺動作整合評估，使用視聽設備"
  },
  {
    "code" : "F01Z2MZ",
    "display" : "視覺動作整合評估，使用輔助性/替代交流",
    "definition" : "視覺動作整合評估，使用輔助性/替代交流"
  },
  {
    "code" : "F01Z2NZ",
    "display" : "視覺動作整合評估，使用生物感覺反饋設備",
    "definition" : "視覺動作整合評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F01Z2PZ",
    "display" : "視覺動作整合評估，使用電腦",
    "definition" : "視覺動作整合評估，使用電腦"
  },
  {
    "code" : "F01Z2QZ",
    "display" : "視覺動作整合評估，使用語言分析",
    "definition" : "視覺動作整合評估，使用語言分析"
  },
  {
    "code" : "F01Z2SZ",
    "display" : "視覺動作整合評估，使用嗓音分析設備",
    "definition" : "視覺動作整合評估，使用嗓音分析設備"
  },
  {
    "code" : "F01Z2YZ",
    "display" : "視覺動作整合評估，使用其他設備",
    "definition" : "視覺動作整合評估，使用其他設備"
  },
  {
    "code" : "F01Z2ZZ",
    "display" : "視覺動作整合評估",
    "definition" : "視覺動作整合評估"
  },
  {
    "code" : "F01Z77Z",
    "display" : "顏面神經功能評估，使用電氣生理設備",
    "definition" : "顏面神經功能評估，使用電氣生理設備"
  },
  {
    "code" : "F01Z9JZ",
    "display" : "體感誘發電位評估，使用體感",
    "definition" : "體感誘發電位評估，使用體感"
  },
  {
    "code" : "F01ZBEZ",
    "display" : "床上活動評估，使用矯具",
    "definition" : "床上活動評估，使用矯具"
  },
  {
    "code" : "F01ZBFZ",
    "display" : "床上活動評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "床上活動評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01ZBUZ",
    "display" : "床上活動評估，使用義肢",
    "definition" : "床上活動評估，使用義肢"
  },
  {
    "code" : "F01ZBZZ",
    "display" : "床上活動評估",
    "definition" : "床上活動評估"
  },
  {
    "code" : "F01ZCEZ",
    "display" : "轉移評估，使用矯具",
    "definition" : "轉移評估，使用矯具"
  },
  {
    "code" : "F01ZCFZ",
    "display" : "轉移評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "轉移評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01ZCUZ",
    "display" : "轉移評估，使用義肢",
    "definition" : "轉移評估，使用義肢"
  },
  {
    "code" : "F01ZCZZ",
    "display" : "轉移評估",
    "definition" : "轉移評估"
  },
  {
    "code" : "F01ZDEZ",
    "display" : "步態和/或平衡評估，使用矯具",
    "definition" : "步態和/或平衡評估，使用矯具"
  },
  {
    "code" : "F01ZDFZ",
    "display" : "步態和/或平衡評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "步態和/或平衡評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01ZDUZ",
    "display" : "步態和/或平衡評估，使用義肢",
    "definition" : "步態和/或平衡評估，使用義肢"
  },
  {
    "code" : "F01ZDYZ",
    "display" : "步態和/或平衡評估，使用其他設備",
    "definition" : "步態和/或平衡評估，使用其他設備"
  },
  {
    "code" : "F01ZDZZ",
    "display" : "步態和/或平衡評估",
    "definition" : "步態和/或平衡評估"
  },
  {
    "code" : "F01ZFEZ",
    "display" : "輪椅移動評估，使用矯具",
    "definition" : "輪椅移動評估，使用矯具"
  },
  {
    "code" : "F01ZFFZ",
    "display" : "輪椅移動評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "輪椅移動評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F01ZFUZ",
    "display" : "輪椅移動評估，使用義肢",
    "definition" : "輪椅移動評估，使用義肢"
  },
  {
    "code" : "F01ZFZZ",
    "display" : "輪椅移動評估",
    "definition" : "輪椅移動評估"
  },
  {
    "code" : "F0209YZ",
    "display" : "頭及頸部神經系統顱神經完整性評估，使用其他設備",
    "definition" : "頭及頸部神經系統顱神經完整性評估，使用其他設備"
  },
  {
    "code" : "F0209ZZ",
    "display" : "頭及頸部神經系統顱神經完整性評估",
    "definition" : "頭及頸部神經系統顱神經完整性評估"
  },
  {
    "code" : "F020DYZ",
    "display" : "頭及頸部神經系統神經動作發展評估，使用其他設備",
    "definition" : "頭及頸部神經系統神經動作發展評估，使用其他設備"
  },
  {
    "code" : "F020DZZ",
    "display" : "頭及頸部神經系統神經動作發展評估",
    "definition" : "頭及頸部神經系統神經動作發展評估"
  },
  {
    "code" : "F021DYZ",
    "display" : "上背/上肢神經系統神經動作發展評估，使用其他設備",
    "definition" : "上背/上肢神經系統神經動作發展評估，使用其他設備"
  },
  {
    "code" : "F021DZZ",
    "display" : "上背/上肢神經系統神經動作發展評估",
    "definition" : "上背/上肢神經系統神經動作發展評估"
  },
  {
    "code" : "F022DYZ",
    "display" : "下背/下肢神經系統神經動作發展評估，使用其他設備",
    "definition" : "下背/下肢神經系統神經動作發展評估，使用其他設備"
  },
  {
    "code" : "F022DZZ",
    "display" : "下背/下肢神經系統神經動作發展評估",
    "definition" : "下背/下肢神經系統神經動作發展評估"
  },
  {
    "code" : "F023DYZ",
    "display" : "全身神經系統神經動作發展評估，使用其他設備",
    "definition" : "全身神經系統神經動作發展評估，使用其他設備"
  },
  {
    "code" : "F023DZZ",
    "display" : "全身神經系統神經動作發展評估",
    "definition" : "全身神經系統神經動作發展評估"
  },
  {
    "code" : "F024GCZ",
    "display" : "頭及頸部循環系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "頭及頸部循環系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F024GGZ",
    "display" : "頭及頸部循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "頭及頸部循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F024GYZ",
    "display" : "頭及頸部循環系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "頭及頸部循環系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F024GZZ",
    "display" : "頭及頸部循環系統通氣、呼吸及循環評估",
    "definition" : "頭及頸部循環系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F025GCZ",
    "display" : "上背/上肢循環系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "上背/上肢循環系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F025GGZ",
    "display" : "上背/上肢循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "上背/上肢循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F025GYZ",
    "display" : "上背/上肢循環系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "上背/上肢循環系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F025GZZ",
    "display" : "上背/上肢循環系統通氣、呼吸及循環評估",
    "definition" : "上背/上肢循環系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F026GCZ",
    "display" : "下背/下肢循環系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "下背/下肢循環系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F026GGZ",
    "display" : "下背/下肢循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "下背/下肢循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F026GYZ",
    "display" : "下背/下肢循環系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "下背/下肢循環系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F026GZZ",
    "display" : "下背/下肢循環系統通氣、呼吸及循環評估",
    "definition" : "下背/下肢循環系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F0277EZ",
    "display" : "全身循環系統有氧運動能力及耐力評估，使用矯具",
    "definition" : "全身循環系統有氧運動能力及耐力評估，使用矯具"
  },
  {
    "code" : "F0277GZ",
    "display" : "全身循環系統有氧運動能力及耐力評估，使用有氧耐力和體能設備",
    "definition" : "全身循環系統有氧運動能力及耐力評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0277UZ",
    "display" : "全身循環系統有氧運動能力及耐力評估，使用義肢",
    "definition" : "全身循環系統有氧運動能力及耐力評估，使用義肢"
  },
  {
    "code" : "F0277YZ",
    "display" : "全身循環系統有氧運動能力及耐力評估，使用其他設備",
    "definition" : "全身循環系統有氧運動能力及耐力評估，使用其他設備"
  },
  {
    "code" : "F0277ZZ",
    "display" : "全身循環系統有氧運動能力及耐力評估",
    "definition" : "全身循環系統有氧運動能力及耐力評估"
  },
  {
    "code" : "F027GCZ",
    "display" : "全身循環系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "全身循環系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F027GGZ",
    "display" : "全身循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "全身循環系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F027GYZ",
    "display" : "全身循環系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "全身循環系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F027GZZ",
    "display" : "全身循環系統通氣、呼吸及循環評估",
    "definition" : "全身循環系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F028GCZ",
    "display" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F028GGZ",
    "display" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F028GYZ",
    "display" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "頭及頸部呼吸系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F028GZZ",
    "display" : "頭及頸部呼吸系統通氣、呼吸及循環評估",
    "definition" : "頭及頸部呼吸系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F029GCZ",
    "display" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F029GGZ",
    "display" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F029GYZ",
    "display" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "上背/上肢呼吸系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F029GZZ",
    "display" : "上背/上肢呼吸系統通氣、呼吸及循環評估",
    "definition" : "上背/上肢呼吸系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F02BGCZ",
    "display" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F02BGGZ",
    "display" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F02BGYZ",
    "display" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "下背/下肢呼吸系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F02BGZZ",
    "display" : "下背/下肢呼吸系統通氣、呼吸及循環評估",
    "definition" : "下背/下肢呼吸系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F02C7EZ",
    "display" : "全身呼吸系統有氧運動能力及耐力評估，使用矯具",
    "definition" : "全身呼吸系統有氧運動能力及耐力評估，使用矯具"
  },
  {
    "code" : "F02C7GZ",
    "display" : "全身呼吸系統有氧運動能力及耐力評估，使用有氧耐力和體能設備",
    "definition" : "全身呼吸系統有氧運動能力及耐力評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F02C7UZ",
    "display" : "全身呼吸系統有氧運動能力及耐力評估，使用義肢",
    "definition" : "全身呼吸系統有氧運動能力及耐力評估，使用義肢"
  },
  {
    "code" : "F02C7YZ",
    "display" : "全身呼吸系統有氧運動能力及耐力評估，使用其他設備",
    "definition" : "全身呼吸系統有氧運動能力及耐力評估，使用其他設備"
  },
  {
    "code" : "F02C7ZZ",
    "display" : "全身呼吸系統有氧運動能力及耐力評估",
    "definition" : "全身呼吸系統有氧運動能力及耐力評估"
  },
  {
    "code" : "F02CGCZ",
    "display" : "全身呼吸系統通氣、呼吸及循環評估，使用機械設備",
    "definition" : "全身呼吸系統通氣、呼吸及循環評估，使用機械設備"
  },
  {
    "code" : "F02CGGZ",
    "display" : "全身呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備",
    "definition" : "全身呼吸系統通氣、呼吸及循環評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F02CGYZ",
    "display" : "全身呼吸系統通氣、呼吸及循環評估，使用其他設備",
    "definition" : "全身呼吸系統通氣、呼吸及循環評估，使用其他設備"
  },
  {
    "code" : "F02CGZZ",
    "display" : "全身呼吸系統通氣、呼吸及循環評估",
    "definition" : "全身呼吸系統通氣、呼吸及循環評估"
  },
  {
    "code" : "F02Z0EZ",
    "display" : "沐浴/淋浴評估，使用矯具",
    "definition" : "沐浴/淋浴評估，使用矯具"
  },
  {
    "code" : "F02Z0FZ",
    "display" : "沐浴/淋浴評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "沐浴/淋浴評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02Z0UZ",
    "display" : "沐浴/淋浴評估，使用義肢",
    "definition" : "沐浴/淋浴評估，使用義肢"
  },
  {
    "code" : "F02Z0ZZ",
    "display" : "沐浴/淋浴評估",
    "definition" : "沐浴/淋浴評估"
  },
  {
    "code" : "F02Z1EZ",
    "display" : "穿脫衣物評估，使用矯具",
    "definition" : "穿脫衣物評估，使用矯具"
  },
  {
    "code" : "F02Z1FZ",
    "display" : "穿脫衣物評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "穿脫衣物評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02Z1UZ",
    "display" : "穿脫衣物評估，使用義肢",
    "definition" : "穿脫衣物評估，使用義肢"
  },
  {
    "code" : "F02Z1ZZ",
    "display" : "穿脫衣物評估",
    "definition" : "穿脫衣物評估"
  },
  {
    "code" : "F02Z2YZ",
    "display" : "餵食/飲食評估，使用其他設備",
    "definition" : "餵食/飲食評估，使用其他設備"
  },
  {
    "code" : "F02Z2ZZ",
    "display" : "餵食/飲食評估",
    "definition" : "餵食/飲食評估"
  },
  {
    "code" : "F02Z3EZ",
    "display" : "盥洗/個人衛生評估，使用矯具",
    "definition" : "盥洗/個人衛生評估，使用矯具"
  },
  {
    "code" : "F02Z3FZ",
    "display" : "盥洗/個人衛生評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "盥洗/個人衛生評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02Z3UZ",
    "display" : "盥洗/個人衛生評估，使用義肢",
    "definition" : "盥洗/個人衛生評估，使用義肢"
  },
  {
    "code" : "F02Z3ZZ",
    "display" : "盥洗/個人衛生評估",
    "definition" : "盥洗/個人衛生評估"
  },
  {
    "code" : "F02Z4EZ",
    "display" : "家庭管理評估，使用矯具",
    "definition" : "家庭管理評估，使用矯具"
  },
  {
    "code" : "F02Z4FZ",
    "display" : "家庭管理評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "家庭管理評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02Z4UZ",
    "display" : "家庭管理評估，使用義肢",
    "definition" : "家庭管理評估，使用義肢"
  },
  {
    "code" : "F02Z4ZZ",
    "display" : "家庭管理評估",
    "definition" : "家庭管理評估"
  },
  {
    "code" : "F02Z5KZ",
    "display" : "知覺處理評估，使用視聽設備",
    "definition" : "知覺處理評估，使用視聽設備"
  },
  {
    "code" : "F02Z5MZ",
    "display" : "知覺處理評估，使用輔助性/替代交流",
    "definition" : "知覺處理評估，使用輔助性/替代交流"
  },
  {
    "code" : "F02Z5NZ",
    "display" : "知覺處理評估，使用生物感覺反饋設備",
    "definition" : "知覺處理評估，使用生物感覺反饋設備"
  },
  {
    "code" : "F02Z5PZ",
    "display" : "知覺處理評估，使用電腦",
    "definition" : "知覺處理評估，使用電腦"
  },
  {
    "code" : "F02Z5QZ",
    "display" : "知覺處理評估，使用語言分析",
    "definition" : "知覺處理評估，使用語言分析"
  },
  {
    "code" : "F02Z5SZ",
    "display" : "知覺處理評估，使用嗓音分析設備",
    "definition" : "知覺處理評估，使用嗓音分析設備"
  },
  {
    "code" : "F02Z5YZ",
    "display" : "知覺處理評估，使用其他設備",
    "definition" : "知覺處理評估，使用其他設備"
  },
  {
    "code" : "F02Z5ZZ",
    "display" : "知覺處理評估",
    "definition" : "知覺處理評估"
  },
  {
    "code" : "F02Z6ZZ",
    "display" : "心理社會技巧評估",
    "definition" : "心理社會技巧評估"
  },
  {
    "code" : "F02Z8YZ",
    "display" : "人體特徵評估，使用其他設備",
    "definition" : "人體特徵評估，使用其他設備"
  },
  {
    "code" : "F02Z8ZZ",
    "display" : "人體特徵評估",
    "definition" : "人體特徵評估"
  },
  {
    "code" : "F02ZBEZ",
    "display" : "家庭及工作環境障礙評估，使用矯具",
    "definition" : "家庭及工作環境障礙評估，使用矯具"
  },
  {
    "code" : "F02ZBFZ",
    "display" : "家庭及工作環境障礙評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "家庭及工作環境障礙評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02ZBUZ",
    "display" : "家庭及工作環境障礙評估，使用義肢",
    "definition" : "家庭及工作環境障礙評估，使用義肢"
  },
  {
    "code" : "F02ZBYZ",
    "display" : "家庭及工作環境障礙評估，使用其他設備",
    "definition" : "家庭及工作環境障礙評估，使用其他設備"
  },
  {
    "code" : "F02ZBZZ",
    "display" : "家庭及工作環境障礙評估",
    "definition" : "家庭及工作環境障礙評估"
  },
  {
    "code" : "F02ZCEZ",
    "display" : "人體工程學和人體力學評估，使用矯具",
    "definition" : "人體工程學和人體力學評估，使用矯具"
  },
  {
    "code" : "F02ZCFZ",
    "display" : "人體工程學和人體力學評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "人體工程學和人體力學評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02ZCUZ",
    "display" : "人體工程學和人體力學評估，使用義肢",
    "definition" : "人體工程學和人體力學評估，使用義肢"
  },
  {
    "code" : "F02ZCYZ",
    "display" : "人體工程學和人體力學評估，使用其他設備",
    "definition" : "人體工程學和人體力學評估，使用其他設備"
  },
  {
    "code" : "F02ZCZZ",
    "display" : "人體工程學和人體力學評估",
    "definition" : "人體工程學和人體力學評估"
  },
  {
    "code" : "F02ZFYZ",
    "display" : "疼痛評估，使用其他設備",
    "definition" : "疼痛評估，使用其他設備"
  },
  {
    "code" : "F02ZFZZ",
    "display" : "疼痛評估",
    "definition" : "疼痛評估"
  },
  {
    "code" : "F02ZHEZ",
    "display" : "職業活動及功能性社會或工作重整能力評估，使用矯具",
    "definition" : "職業活動及功能性社會或工作重整能力評估，使用矯具"
  },
  {
    "code" : "F02ZHFZ",
    "display" : "職業活動及功能性社會或工作重整能力評估，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "職業活動及功能性社會或工作重整能力評估，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F02ZHGZ",
    "display" : "職業活動及功能性社會或工作重整能力評估，使用有氧耐力和體能設備",
    "definition" : "職業活動及功能性社會或工作重整能力評估，使用有氧耐力和體能設備"
  },
  {
    "code" : "F02ZHUZ",
    "display" : "職業活動及功能性社會或工作重整能力評估，使用義肢",
    "definition" : "職業活動及功能性社會或工作重整能力評估，使用義肢"
  },
  {
    "code" : "F02ZHYZ",
    "display" : "職業活動及功能性社會或工作重整能力評估，使用其他設備",
    "definition" : "職業活動及功能性社會或工作重整能力評估，使用其他設備"
  },
  {
    "code" : "F02ZHZZ",
    "display" : "職業活動及功能性社會或工作重整能力評估",
    "definition" : "職業活動及功能性社會或工作重整能力評估"
  },
  {
    "code" : "F0636KZ",
    "display" : "全身神經系統溝通/認知整合技能治療，使用視聽設備",
    "definition" : "全身神經系統溝通/認知整合技能治療，使用視聽設備"
  },
  {
    "code" : "F0636MZ",
    "display" : "全身神經系統溝通/認知整合技能治療，使用輔助性/替代交流",
    "definition" : "全身神經系統溝通/認知整合技能治療，使用輔助性/替代交流"
  },
  {
    "code" : "F0636PZ",
    "display" : "全身神經系統溝通/認知整合技能治療，使用電腦",
    "definition" : "全身神經系統溝通/認知整合技能治療，使用電腦"
  },
  {
    "code" : "F0636YZ",
    "display" : "全身神經系統溝通/認知整合技能治療，使用其他設備",
    "definition" : "全身神經系統溝通/認知整合技能治療，使用其他設備"
  },
  {
    "code" : "F0636ZZ",
    "display" : "全身神經系統溝通/認知整合技能語言治療",
    "definition" : "全身神經系統溝通/認知整合技能語言治療"
  },
  {
    "code" : "F06Z0KZ",
    "display" : "非口語語言治療，使用視聽設備",
    "definition" : "非口語語言治療，使用視聽設備"
  },
  {
    "code" : "F06Z0MZ",
    "display" : "非口語語言治療，使用輔助性/替代交流",
    "definition" : "非口語語言治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06Z0PZ",
    "display" : "非口語語言治療，使用電腦",
    "definition" : "非口語語言治療，使用電腦"
  },
  {
    "code" : "F06Z0YZ",
    "display" : "非口語語言治療，使用其他設備",
    "definition" : "非口語語言治療，使用其他設備"
  },
  {
    "code" : "F06Z0ZZ",
    "display" : "非口語語言語言治療",
    "definition" : "非口語語言語言治療"
  },
  {
    "code" : "F06Z1KZ",
    "display" : "言語-語言病理學及相關疾病諮詢治療，使用視聽設備",
    "definition" : "言語-語言病理學及相關疾病諮詢治療，使用視聽設備"
  },
  {
    "code" : "F06Z1ZZ",
    "display" : "言語-語言病理學及相關疾病諮詢語言治療",
    "definition" : "言語-語言病理學及相關疾病諮詢語言治療"
  },
  {
    "code" : "F06Z2KZ",
    "display" : "言語-語言病理學及相關疾病的預防治療，使用視聽設備",
    "definition" : "言語-語言病理學及相關疾病的預防治療，使用視聽設備"
  },
  {
    "code" : "F06Z2ZZ",
    "display" : "言語-語言病理學及相關疾病的預防語言治療",
    "definition" : "言語-語言病理學及相關疾病的預防語言治療"
  },
  {
    "code" : "F06Z3KZ",
    "display" : "失語治療，使用視聽設備",
    "definition" : "失語治療，使用視聽設備"
  },
  {
    "code" : "F06Z3MZ",
    "display" : "失語治療，使用輔助性/替代交流",
    "definition" : "失語治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06Z3PZ",
    "display" : "失語治療，使用電腦",
    "definition" : "失語治療，使用電腦"
  },
  {
    "code" : "F06Z3YZ",
    "display" : "失語治療，使用其他設備",
    "definition" : "失語治療，使用其他設備"
  },
  {
    "code" : "F06Z3ZZ",
    "display" : "失語語言治療",
    "definition" : "失語語言治療"
  },
  {
    "code" : "F06Z4KZ",
    "display" : "構音/音韻治療，使用視聽設備",
    "definition" : "構音/音韻治療，使用視聽設備"
  },
  {
    "code" : "F06Z4PZ",
    "display" : "構音/音韻治療，使用電腦",
    "definition" : "構音/音韻治療，使用電腦"
  },
  {
    "code" : "F06Z4QZ",
    "display" : "構音/音韻治療，使用語言分析",
    "definition" : "構音/音韻治療，使用語言分析"
  },
  {
    "code" : "F06Z4TZ",
    "display" : "構音/音韻治療，使用氣動學設備",
    "definition" : "構音/音韻治療，使用氣動學設備"
  },
  {
    "code" : "F06Z4YZ",
    "display" : "構音/音韻治療，使用其他設備",
    "definition" : "構音/音韻治療，使用其他設備"
  },
  {
    "code" : "F06Z4ZZ",
    "display" : "構音/音韻語言治療",
    "definition" : "構音/音韻語言治療"
  },
  {
    "code" : "F06Z5KZ",
    "display" : "聽力復健治療，使用視聽設備",
    "definition" : "聽力復健治療，使用視聽設備"
  },
  {
    "code" : "F06Z5LZ",
    "display" : "聽力復健治療，使用助聽設備",
    "definition" : "聽力復健治療，使用助聽設備"
  },
  {
    "code" : "F06Z5MZ",
    "display" : "聽力復健治療，使用輔助性/替代交流",
    "definition" : "聽力復健治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06Z5NZ",
    "display" : "聽力復健治療，使用生物感覺反饋設備",
    "definition" : "聽力復健治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F06Z5PZ",
    "display" : "聽力復健治療，使用電腦",
    "definition" : "聽力復健治療，使用電腦"
  },
  {
    "code" : "F06Z5QZ",
    "display" : "聽力復健治療，使用語言分析",
    "definition" : "聽力復健治療，使用語言分析"
  },
  {
    "code" : "F06Z5SZ",
    "display" : "聽力復健治療，使用嗓音分析設備",
    "definition" : "聽力復健治療，使用嗓音分析設備"
  },
  {
    "code" : "F06Z5YZ",
    "display" : "聽力復健治療，使用其他設備",
    "definition" : "聽力復健治療，使用其他設備"
  },
  {
    "code" : "F06Z5ZZ",
    "display" : "聽力復健語言治療",
    "definition" : "聽力復健語言治療"
  },
  {
    "code" : "F06Z6KZ",
    "display" : "溝通/認知整合技能治療，使用視聽設備",
    "definition" : "溝通/認知整合技能治療，使用視聽設備"
  },
  {
    "code" : "F06Z6MZ",
    "display" : "溝通/認知整合技能治療，使用輔助性/替代交流",
    "definition" : "溝通/認知整合技能治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06Z6PZ",
    "display" : "溝通/認知整合技能治療，使用電腦",
    "definition" : "溝通/認知整合技能治療，使用電腦"
  },
  {
    "code" : "F06Z6YZ",
    "display" : "溝通/認知整合技能治療，使用其他設備",
    "definition" : "溝通/認知整合技能治療，使用其他設備"
  },
  {
    "code" : "F06Z6ZZ",
    "display" : "溝通/認知整合技能語言治療",
    "definition" : "溝通/認知整合技能語言治療"
  },
  {
    "code" : "F06Z74Z",
    "display" : "語暢治療，使用電聲導抗/聲反射設備",
    "definition" : "語暢治療，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F06Z7KZ",
    "display" : "語暢治療，使用視聽設備",
    "definition" : "語暢治療，使用視聽設備"
  },
  {
    "code" : "F06Z7NZ",
    "display" : "語暢治療，使用生物感覺反饋設備",
    "definition" : "語暢治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F06Z7QZ",
    "display" : "語暢治療，使用語言分析",
    "definition" : "語暢治療，使用語言分析"
  },
  {
    "code" : "F06Z7SZ",
    "display" : "語暢治療，使用嗓音分析設備",
    "definition" : "語暢治療，使用嗓音分析設備"
  },
  {
    "code" : "F06Z7TZ",
    "display" : "語暢治療，使用氣動學設備",
    "definition" : "語暢治療，使用氣動學設備"
  },
  {
    "code" : "F06Z7YZ",
    "display" : "語暢治療，使用其他設備",
    "definition" : "語暢治療，使用其他設備"
  },
  {
    "code" : "F06Z7ZZ",
    "display" : "語暢語言治療",
    "definition" : "語暢語言治療"
  },
  {
    "code" : "F06Z8KZ",
    "display" : "運動言語治療，使用視聽設備",
    "definition" : "運動言語治療，使用視聽設備"
  },
  {
    "code" : "F06Z8NZ",
    "display" : "運動言語治療，使用生物感覺反饋設備",
    "definition" : "運動言語治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F06Z8PZ",
    "display" : "運動言語治療，使用電腦",
    "definition" : "運動言語治療，使用電腦"
  },
  {
    "code" : "F06Z8QZ",
    "display" : "運動言語治療，使用語言分析",
    "definition" : "運動言語治療，使用語言分析"
  },
  {
    "code" : "F06Z8SZ",
    "display" : "運動言語治療，使用嗓音分析設備",
    "definition" : "運動言語治療，使用嗓音分析設備"
  },
  {
    "code" : "F06Z8TZ",
    "display" : "運動言語治療，使用氣動學設備",
    "definition" : "運動言語治療，使用氣動學設備"
  },
  {
    "code" : "F06Z8YZ",
    "display" : "運動言語治療，使用其他設備",
    "definition" : "運動言語治療，使用其他設備"
  },
  {
    "code" : "F06Z8ZZ",
    "display" : "運動言語語言治療",
    "definition" : "運動言語語言治療"
  },
  {
    "code" : "F06Z9KZ",
    "display" : "口面肌功能治療，使用視聽設備",
    "definition" : "口面肌功能治療，使用視聽設備"
  },
  {
    "code" : "F06Z9PZ",
    "display" : "口面肌功能治療，使用電腦",
    "definition" : "口面肌功能治療，使用電腦"
  },
  {
    "code" : "F06Z9YZ",
    "display" : "口面肌功能治療，使用其他設備",
    "definition" : "口面肌功能治療，使用其他設備"
  },
  {
    "code" : "F06Z9ZZ",
    "display" : "口面肌功能語言治療",
    "definition" : "口面肌功能語言治療"
  },
  {
    "code" : "F06ZBKZ",
    "display" : "接受性/表達性語言治療，使用視聽設備",
    "definition" : "接受性/表達性語言治療，使用視聽設備"
  },
  {
    "code" : "F06ZBLZ",
    "display" : "接受性/表達性語言治療，使用助聽設備",
    "definition" : "接受性/表達性語言治療，使用助聽設備"
  },
  {
    "code" : "F06ZBMZ",
    "display" : "接受性/表達性語言治療，使用輔助性/替代交流",
    "definition" : "接受性/表達性語言治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06ZBPZ",
    "display" : "接受性/表達性語言治療，使用電腦",
    "definition" : "接受性/表達性語言治療，使用電腦"
  },
  {
    "code" : "F06ZBYZ",
    "display" : "接受性/表達性語言治療，使用其他設備",
    "definition" : "接受性/表達性語言治療，使用其他設備"
  },
  {
    "code" : "F06ZBZZ",
    "display" : "接受性/表達性語言語言治療",
    "definition" : "接受性/表達性語言語言治療"
  },
  {
    "code" : "F06ZCKZ",
    "display" : "嗓音治療，使用視聽設備",
    "definition" : "嗓音治療，使用視聽設備"
  },
  {
    "code" : "F06ZCNZ",
    "display" : "嗓音治療，使用生物感覺反饋設備",
    "definition" : "嗓音治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F06ZCPZ",
    "display" : "嗓音治療，使用電腦",
    "definition" : "嗓音治療，使用電腦"
  },
  {
    "code" : "F06ZCSZ",
    "display" : "嗓音治療，使用嗓音分析設備",
    "definition" : "嗓音治療，使用嗓音分析設備"
  },
  {
    "code" : "F06ZCTZ",
    "display" : "嗓音治療，使用氣動學設備",
    "definition" : "嗓音治療，使用氣動學設備"
  },
  {
    "code" : "F06ZCVZ",
    "display" : "嗓音治療，使用人工發聲器",
    "definition" : "嗓音治療，使用人工發聲器"
  },
  {
    "code" : "F06ZCYZ",
    "display" : "嗓音治療，使用其他設備",
    "definition" : "嗓音治療，使用其他設備"
  },
  {
    "code" : "F06ZCZZ",
    "display" : "嗓音語言治療",
    "definition" : "嗓音語言治療"
  },
  {
    "code" : "F06ZDMZ",
    "display" : "吞嚥功能障礙治療，使用輔助性/替代交流",
    "definition" : "吞嚥功能障礙治療，使用輔助性/替代交流"
  },
  {
    "code" : "F06ZDTZ",
    "display" : "吞嚥功能障礙治療，使用氣動學設備",
    "definition" : "吞嚥功能障礙治療，使用氣動學設備"
  },
  {
    "code" : "F06ZDVZ",
    "display" : "吞嚥功能障礙治療，使用人工發聲器",
    "definition" : "吞嚥功能障礙治療，使用人工發聲器"
  },
  {
    "code" : "F06ZDYZ",
    "display" : "吞嚥功能障礙治療，使用其他設備",
    "definition" : "吞嚥功能障礙治療，使用其他設備"
  },
  {
    "code" : "F06ZDZZ",
    "display" : "吞嚥功能障礙語言治療",
    "definition" : "吞嚥功能障礙語言治療"
  },
  {
    "code" : "F0700EZ",
    "display" : "頭及頸部神經系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "頭及頸部神經系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F0700FZ",
    "display" : "頭及頸部神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0700UZ",
    "display" : "頭及頸部神經系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "頭及頸部神經系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F0700YZ",
    "display" : "頭及頸部神經系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "頭及頸部神經系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F0700ZZ",
    "display" : "頭及頸部神經系統運動範圍及關節活動性運動治療",
    "definition" : "頭及頸部神經系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F0701EZ",
    "display" : "頭及頸部神經系統肌肉功能治療，使用矯具",
    "definition" : "頭及頸部神經系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F0701FZ",
    "display" : "頭及頸部神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0701UZ",
    "display" : "頭及頸部神經系統肌肉功能治療，使用義肢",
    "definition" : "頭及頸部神經系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F0701YZ",
    "display" : "頭及頸部神經系統肌肉功能治療，使用其他設備",
    "definition" : "頭及頸部神經系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F0701ZZ",
    "display" : "頭及頸部神經系統肌肉功能運動治療",
    "definition" : "頭及頸部神經系統肌肉功能運動治療"
  },
  {
    "code" : "F0702EZ",
    "display" : "頭及頸部神經系統協調/靈敏度治療，使用矯具",
    "definition" : "頭及頸部神經系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F0702FZ",
    "display" : "頭及頸部神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0702UZ",
    "display" : "頭及頸部神經系統協調/靈敏度治療，使用義肢",
    "definition" : "頭及頸部神經系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F0702YZ",
    "display" : "頭及頸部神經系統協調/靈敏度治療，使用其他設備",
    "definition" : "頭及頸部神經系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F0702ZZ",
    "display" : "頭及頸部神經系統協調/靈敏度運動治療",
    "definition" : "頭及頸部神經系統協調/靈敏度運動治療"
  },
  {
    "code" : "F0703EZ",
    "display" : "頭及頸部神經系統運動功能治療，使用矯具",
    "definition" : "頭及頸部神經系統運動功能治療，使用矯具"
  },
  {
    "code" : "F0703FZ",
    "display" : "頭及頸部神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0703UZ",
    "display" : "頭及頸部神經系統運動功能治療，使用義肢",
    "definition" : "頭及頸部神經系統運動功能治療，使用義肢"
  },
  {
    "code" : "F0703YZ",
    "display" : "頭及頸部神經系統運動功能治療，使用其他設備",
    "definition" : "頭及頸部神經系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F0703ZZ",
    "display" : "頭及頸部神經系統運動功能運動治療",
    "definition" : "頭及頸部神經系統運動功能運動治療"
  },
  {
    "code" : "F0706BZ",
    "display" : "頭及頸部神經系統運動治療，使用物理因子",
    "definition" : "頭及頸部神經系統運動治療，使用物理因子"
  },
  {
    "code" : "F0706CZ",
    "display" : "頭及頸部神經系統運動治療，使用機械設備",
    "definition" : "頭及頸部神經系統運動治療，使用機械設備"
  },
  {
    "code" : "F0706DZ",
    "display" : "頭及頸部神經系統運動治療，使用電療設備",
    "definition" : "頭及頸部神經系統運動治療，使用電療設備"
  },
  {
    "code" : "F0706EZ",
    "display" : "頭及頸部神經系統運動治療，使用矯具",
    "definition" : "頭及頸部神經系統運動治療，使用矯具"
  },
  {
    "code" : "F0706FZ",
    "display" : "頭及頸部神經系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部神經系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0706GZ",
    "display" : "頭及頸部神經系統運動治療，使用有氧耐力和體能設備",
    "definition" : "頭及頸部神經系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0706HZ",
    "display" : "頭及頸部神經系統運動治療，使用機械或機電設備",
    "definition" : "頭及頸部神經系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0706UZ",
    "display" : "頭及頸部神經系統運動治療，使用義肢",
    "definition" : "頭及頸部神經系統運動治療，使用義肢"
  },
  {
    "code" : "F0706YZ",
    "display" : "頭及頸部神經系統運動治療，使用其他設備",
    "definition" : "頭及頸部神經系統運動治療，使用其他設備"
  },
  {
    "code" : "F0706ZZ",
    "display" : "頭及頸部神經系統運動治療運動治療",
    "definition" : "頭及頸部神經系統運動治療運動治療"
  },
  {
    "code" : "F0707ZZ",
    "display" : "頭及頸部神經系統徒手治療技術運動治療",
    "definition" : "頭及頸部神經系統徒手治療技術運動治療"
  },
  {
    "code" : "F0710EZ",
    "display" : "上背/上肢神經系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "上背/上肢神經系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F0710FZ",
    "display" : "上背/上肢神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0710UZ",
    "display" : "上背/上肢神經系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "上背/上肢神經系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F0710YZ",
    "display" : "上背/上肢神經系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "上背/上肢神經系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F0710ZZ",
    "display" : "上背/上肢神經系統運動範圍及關節活動性運動治療",
    "definition" : "上背/上肢神經系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F0711EZ",
    "display" : "上背/上肢神經系統肌肉功能治療，使用矯具",
    "definition" : "上背/上肢神經系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F0711FZ",
    "display" : "上背/上肢神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0711UZ",
    "display" : "上背/上肢神經系統肌肉功能治療，使用義肢",
    "definition" : "上背/上肢神經系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F0711YZ",
    "display" : "上背/上肢神經系統肌肉功能治療，使用其他設備",
    "definition" : "上背/上肢神經系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F0711ZZ",
    "display" : "上背/上肢神經系統肌肉功能運動治療",
    "definition" : "上背/上肢神經系統肌肉功能運動治療"
  },
  {
    "code" : "F0712EZ",
    "display" : "上背/上肢神經系統協調/靈敏度治療，使用矯具",
    "definition" : "上背/上肢神經系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F0712FZ",
    "display" : "上背/上肢神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0712UZ",
    "display" : "上背/上肢神經系統協調/靈敏度治療，使用義肢",
    "definition" : "上背/上肢神經系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F0712YZ",
    "display" : "上背/上肢神經系統協調/靈敏度治療，使用其他設備",
    "definition" : "上背/上肢神經系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F0712ZZ",
    "display" : "上背/上肢神經系統協調/靈敏度運動治療",
    "definition" : "上背/上肢神經系統協調/靈敏度運動治療"
  },
  {
    "code" : "F0713EZ",
    "display" : "上背/上肢神經系統運動功能治療，使用矯具",
    "definition" : "上背/上肢神經系統運動功能治療，使用矯具"
  },
  {
    "code" : "F0713FZ",
    "display" : "上背/上肢神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0713UZ",
    "display" : "上背/上肢神經系統運動功能治療，使用義肢",
    "definition" : "上背/上肢神經系統運動功能治療，使用義肢"
  },
  {
    "code" : "F0713YZ",
    "display" : "上背/上肢神經系統運動功能治療，使用其他設備",
    "definition" : "上背/上肢神經系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F0713ZZ",
    "display" : "上背/上肢神經系統運動功能運動治療",
    "definition" : "上背/上肢神經系統運動功能運動治療"
  },
  {
    "code" : "F0716BZ",
    "display" : "上背/上肢神經系統運動治療，使用物理因子",
    "definition" : "上背/上肢神經系統運動治療，使用物理因子"
  },
  {
    "code" : "F0716CZ",
    "display" : "上背/上肢神經系統運動治療，使用機械設備",
    "definition" : "上背/上肢神經系統運動治療，使用機械設備"
  },
  {
    "code" : "F0716DZ",
    "display" : "上背/上肢神經系統運動治療，使用電療設備",
    "definition" : "上背/上肢神經系統運動治療，使用電療設備"
  },
  {
    "code" : "F0716EZ",
    "display" : "上背/上肢神經系統運動治療，使用矯具",
    "definition" : "上背/上肢神經系統運動治療，使用矯具"
  },
  {
    "code" : "F0716FZ",
    "display" : "上背/上肢神經系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢神經系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0716GZ",
    "display" : "上背/上肢神經系統運動治療，使用有氧耐力和體能設備",
    "definition" : "上背/上肢神經系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0716HZ",
    "display" : "上背/上肢神經系統運動治療，使用機械或機電設備",
    "definition" : "上背/上肢神經系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0716UZ",
    "display" : "上背/上肢神經系統運動治療，使用義肢",
    "definition" : "上背/上肢神經系統運動治療，使用義肢"
  },
  {
    "code" : "F0716YZ",
    "display" : "上背/上肢神經系統運動治療，使用其他設備",
    "definition" : "上背/上肢神經系統運動治療，使用其他設備"
  },
  {
    "code" : "F0716ZZ",
    "display" : "上背/上肢神經系統運動治療運動治療",
    "definition" : "上背/上肢神經系統運動治療運動治療"
  },
  {
    "code" : "F0717ZZ",
    "display" : "上背/上肢神經系統徒手治療技術運動治療",
    "definition" : "上背/上肢神經系統徒手治療技術運動治療"
  },
  {
    "code" : "F0720EZ",
    "display" : "下背/下肢神經系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "下背/下肢神經系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F0720FZ",
    "display" : "下背/下肢神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0720UZ",
    "display" : "下背/下肢神經系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "下背/下肢神經系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F0720YZ",
    "display" : "下背/下肢神經系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "下背/下肢神經系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F0720ZZ",
    "display" : "下背/下肢神經系統運動範圍及關節活動性運動治療",
    "definition" : "下背/下肢神經系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F0721EZ",
    "display" : "下背/下肢神經系統肌肉功能治療，使用矯具",
    "definition" : "下背/下肢神經系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F0721FZ",
    "display" : "下背/下肢神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0721UZ",
    "display" : "下背/下肢神經系統肌肉功能治療，使用義肢",
    "definition" : "下背/下肢神經系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F0721YZ",
    "display" : "下背/下肢神經系統肌肉功能治療，使用其他設備",
    "definition" : "下背/下肢神經系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F0721ZZ",
    "display" : "下背/下肢神經系統肌肉功能運動治療",
    "definition" : "下背/下肢神經系統肌肉功能運動治療"
  },
  {
    "code" : "F0722EZ",
    "display" : "下背/下肢神經系統協調/靈敏度治療，使用矯具",
    "definition" : "下背/下肢神經系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F0722FZ",
    "display" : "下背/下肢神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0722UZ",
    "display" : "下背/下肢神經系統協調/靈敏度治療，使用義肢",
    "definition" : "下背/下肢神經系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F0722YZ",
    "display" : "下背/下肢神經系統協調/靈敏度治療，使用其他設備",
    "definition" : "下背/下肢神經系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F0722ZZ",
    "display" : "下背/下肢神經系統協調/靈敏度運動治療",
    "definition" : "下背/下肢神經系統協調/靈敏度運動治療"
  },
  {
    "code" : "F0723EZ",
    "display" : "下背/下肢神經系統運動功能治療，使用矯具",
    "definition" : "下背/下肢神經系統運動功能治療，使用矯具"
  },
  {
    "code" : "F0723FZ",
    "display" : "下背/下肢神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0723UZ",
    "display" : "下背/下肢神經系統運動功能治療，使用義肢",
    "definition" : "下背/下肢神經系統運動功能治療，使用義肢"
  },
  {
    "code" : "F0723YZ",
    "display" : "下背/下肢神經系統運動功能治療，使用其他設備",
    "definition" : "下背/下肢神經系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F0723ZZ",
    "display" : "下背/下肢神經系統運動功能運動治療",
    "definition" : "下背/下肢神經系統運動功能運動治療"
  },
  {
    "code" : "F0726BZ",
    "display" : "下背/下肢神經系統運動治療，使用物理因子",
    "definition" : "下背/下肢神經系統運動治療，使用物理因子"
  },
  {
    "code" : "F0726CZ",
    "display" : "下背/下肢神經系統運動治療，使用機械設備",
    "definition" : "下背/下肢神經系統運動治療，使用機械設備"
  },
  {
    "code" : "F0726DZ",
    "display" : "下背/下肢神經系統運動治療，使用電療設備",
    "definition" : "下背/下肢神經系統運動治療，使用電療設備"
  },
  {
    "code" : "F0726EZ",
    "display" : "下背/下肢神經系統運動治療，使用矯具",
    "definition" : "下背/下肢神經系統運動治療，使用矯具"
  },
  {
    "code" : "F0726FZ",
    "display" : "下背/下肢神經系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢神經系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0726GZ",
    "display" : "下背/下肢神經系統運動治療，使用有氧耐力和體能設備",
    "definition" : "下背/下肢神經系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0726HZ",
    "display" : "下背/下肢神經系統運動治療，使用機械或機電設備",
    "definition" : "下背/下肢神經系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0726UZ",
    "display" : "下背/下肢神經系統運動治療，使用義肢",
    "definition" : "下背/下肢神經系統運動治療，使用義肢"
  },
  {
    "code" : "F0726YZ",
    "display" : "下背/下肢神經系統運動治療，使用其他設備",
    "definition" : "下背/下肢神經系統運動治療，使用其他設備"
  },
  {
    "code" : "F0726ZZ",
    "display" : "下背/下肢神經系統運動治療運動治療",
    "definition" : "下背/下肢神經系統運動治療運動治療"
  },
  {
    "code" : "F0727ZZ",
    "display" : "下背/下肢神經系統徒手治療技術運動治療",
    "definition" : "下背/下肢神經系統徒手治療技術運動治療"
  },
  {
    "code" : "F0730EZ",
    "display" : "全身神經系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "全身神經系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F0730FZ",
    "display" : "全身神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0730UZ",
    "display" : "全身神經系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "全身神經系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F0730YZ",
    "display" : "全身神經系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "全身神經系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F0730ZZ",
    "display" : "全身神經系統運動範圍及關節活動性運動治療",
    "definition" : "全身神經系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F0731EZ",
    "display" : "全身神經系統肌肉功能治療，使用矯具",
    "definition" : "全身神經系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F0731FZ",
    "display" : "全身神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0731UZ",
    "display" : "全身神經系統肌肉功能治療，使用義肢",
    "definition" : "全身神經系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F0731YZ",
    "display" : "全身神經系統肌肉功能治療，使用其他設備",
    "definition" : "全身神經系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F0731ZZ",
    "display" : "全身神經系統肌肉功能運動治療",
    "definition" : "全身神經系統肌肉功能運動治療"
  },
  {
    "code" : "F0732EZ",
    "display" : "全身神經系統協調/靈敏度治療，使用矯具",
    "definition" : "全身神經系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F0732FZ",
    "display" : "全身神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0732UZ",
    "display" : "全身神經系統協調/靈敏度治療，使用義肢",
    "definition" : "全身神經系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F0732YZ",
    "display" : "全身神經系統協調/靈敏度治療，使用其他設備",
    "definition" : "全身神經系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F0732ZZ",
    "display" : "全身神經系統協調/靈敏度運動治療",
    "definition" : "全身神經系統協調/靈敏度運動治療"
  },
  {
    "code" : "F0733EZ",
    "display" : "全身神經系統運動功能治療，使用矯具",
    "definition" : "全身神經系統運動功能治療，使用矯具"
  },
  {
    "code" : "F0733FZ",
    "display" : "全身神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0733UZ",
    "display" : "全身神經系統運動功能治療，使用義肢",
    "definition" : "全身神經系統運動功能治療，使用義肢"
  },
  {
    "code" : "F0733YZ",
    "display" : "全身神經系統運動功能治療，使用其他設備",
    "definition" : "全身神經系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F0733ZZ",
    "display" : "全身神經系統運動功能運動治療",
    "definition" : "全身神經系統運動功能運動治療"
  },
  {
    "code" : "F0736BZ",
    "display" : "全身神經系統運動治療，使用物理因子",
    "definition" : "全身神經系統運動治療，使用物理因子"
  },
  {
    "code" : "F0736CZ",
    "display" : "全身神經系統運動治療，使用機械設備",
    "definition" : "全身神經系統運動治療，使用機械設備"
  },
  {
    "code" : "F0736DZ",
    "display" : "全身神經系統運動治療，使用電療設備",
    "definition" : "全身神經系統運動治療，使用電療設備"
  },
  {
    "code" : "F0736EZ",
    "display" : "全身神經系統運動治療，使用矯具",
    "definition" : "全身神經系統運動治療，使用矯具"
  },
  {
    "code" : "F0736FZ",
    "display" : "全身神經系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0736GZ",
    "display" : "全身神經系統運動治療，使用有氧耐力和體能設備",
    "definition" : "全身神經系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0736HZ",
    "display" : "全身神經系統運動治療，使用機械或機電設備",
    "definition" : "全身神經系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0736UZ",
    "display" : "全身神經系統運動治療，使用義肢",
    "definition" : "全身神經系統運動治療，使用義肢"
  },
  {
    "code" : "F0736YZ",
    "display" : "全身神經系統運動治療，使用其他設備",
    "definition" : "全身神經系統運動治療，使用其他設備"
  },
  {
    "code" : "F0736ZZ",
    "display" : "全身神經系統運動治療運動治療",
    "definition" : "全身神經系統運動治療運動治療"
  },
  {
    "code" : "F0737ZZ",
    "display" : "全身神經系統徒手治療技術運動治療",
    "definition" : "全身神經系統徒手治療技術運動治療"
  },
  {
    "code" : "F0746BZ",
    "display" : "頭及頸部循環系統運動治療，使用物理因子",
    "definition" : "頭及頸部循環系統運動治療，使用物理因子"
  },
  {
    "code" : "F0746CZ",
    "display" : "頭及頸部循環系統運動治療，使用機械設備",
    "definition" : "頭及頸部循環系統運動治療，使用機械設備"
  },
  {
    "code" : "F0746DZ",
    "display" : "頭及頸部循環系統運動治療，使用電療設備",
    "definition" : "頭及頸部循環系統運動治療，使用電療設備"
  },
  {
    "code" : "F0746EZ",
    "display" : "頭及頸部循環系統運動治療，使用矯具",
    "definition" : "頭及頸部循環系統運動治療，使用矯具"
  },
  {
    "code" : "F0746FZ",
    "display" : "頭及頸部循環系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部循環系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0746GZ",
    "display" : "頭及頸部循環系統運動治療，使用有氧耐力和體能設備",
    "definition" : "頭及頸部循環系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0746HZ",
    "display" : "頭及頸部循環系統運動治療，使用機械或機電設備",
    "definition" : "頭及頸部循環系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0746UZ",
    "display" : "頭及頸部循環系統運動治療，使用義肢",
    "definition" : "頭及頸部循環系統運動治療，使用義肢"
  },
  {
    "code" : "F0746YZ",
    "display" : "頭及頸部循環系統運動治療，使用其他設備",
    "definition" : "頭及頸部循環系統運動治療，使用其他設備"
  },
  {
    "code" : "F0746ZZ",
    "display" : "頭及頸部循環系統運動治療運動治療",
    "definition" : "頭及頸部循環系統運動治療運動治療"
  },
  {
    "code" : "F0756BZ",
    "display" : "上背/上肢循環系統運動治療，使用物理因子",
    "definition" : "上背/上肢循環系統運動治療，使用物理因子"
  },
  {
    "code" : "F0756CZ",
    "display" : "上背/上肢循環系統運動治療，使用機械設備",
    "definition" : "上背/上肢循環系統運動治療，使用機械設備"
  },
  {
    "code" : "F0756DZ",
    "display" : "上背/上肢循環系統運動治療，使用電療設備",
    "definition" : "上背/上肢循環系統運動治療，使用電療設備"
  },
  {
    "code" : "F0756EZ",
    "display" : "上背/上肢循環系統運動治療，使用矯具",
    "definition" : "上背/上肢循環系統運動治療，使用矯具"
  },
  {
    "code" : "F0756FZ",
    "display" : "上背/上肢循環系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢循環系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0756GZ",
    "display" : "上背/上肢循環系統運動治療，使用有氧耐力和體能設備",
    "definition" : "上背/上肢循環系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0756HZ",
    "display" : "上背/上肢循環系統運動治療，使用機械或機電設備",
    "definition" : "上背/上肢循環系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0756UZ",
    "display" : "上背/上肢循環系統運動治療，使用義肢",
    "definition" : "上背/上肢循環系統運動治療，使用義肢"
  },
  {
    "code" : "F0756YZ",
    "display" : "上背/上肢循環系統運動治療，使用其他設備",
    "definition" : "上背/上肢循環系統運動治療，使用其他設備"
  },
  {
    "code" : "F0756ZZ",
    "display" : "上背/上肢循環系統運動治療運動治療",
    "definition" : "上背/上肢循環系統運動治療運動治療"
  },
  {
    "code" : "F0766BZ",
    "display" : "下背/下肢循環系統運動治療，使用物理因子",
    "definition" : "下背/下肢循環系統運動治療，使用物理因子"
  },
  {
    "code" : "F0766CZ",
    "display" : "下背/下肢循環系統運動治療，使用機械設備",
    "definition" : "下背/下肢循環系統運動治療，使用機械設備"
  },
  {
    "code" : "F0766DZ",
    "display" : "下背/下肢循環系統運動治療，使用電療設備",
    "definition" : "下背/下肢循環系統運動治療，使用電療設備"
  },
  {
    "code" : "F0766EZ",
    "display" : "下背/下肢循環系統運動治療，使用矯具",
    "definition" : "下背/下肢循環系統運動治療，使用矯具"
  },
  {
    "code" : "F0766FZ",
    "display" : "下背/下肢循環系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢循環系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0766GZ",
    "display" : "下背/下肢循環系統運動治療，使用有氧耐力和體能設備",
    "definition" : "下背/下肢循環系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0766HZ",
    "display" : "下背/下肢循環系統運動治療，使用機械或機電設備",
    "definition" : "下背/下肢循環系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0766UZ",
    "display" : "下背/下肢循環系統運動治療，使用義肢",
    "definition" : "下背/下肢循環系統運動治療，使用義肢"
  },
  {
    "code" : "F0766YZ",
    "display" : "下背/下肢循環系統運動治療，使用其他設備",
    "definition" : "下背/下肢循環系統運動治療，使用其他設備"
  },
  {
    "code" : "F0766ZZ",
    "display" : "下背/下肢循環系統運動治療運動治療",
    "definition" : "下背/下肢循環系統運動治療運動治療"
  },
  {
    "code" : "F0776BZ",
    "display" : "全身循環系統運動治療，使用物理因子",
    "definition" : "全身循環系統運動治療，使用物理因子"
  },
  {
    "code" : "F0776CZ",
    "display" : "全身循環系統運動治療，使用機械設備",
    "definition" : "全身循環系統運動治療，使用機械設備"
  },
  {
    "code" : "F0776DZ",
    "display" : "全身循環系統運動治療，使用電療設備",
    "definition" : "全身循環系統運動治療，使用電療設備"
  },
  {
    "code" : "F0776EZ",
    "display" : "全身循環系統運動治療，使用矯具",
    "definition" : "全身循環系統運動治療，使用矯具"
  },
  {
    "code" : "F0776FZ",
    "display" : "全身循環系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身循環系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0776GZ",
    "display" : "全身循環系統運動治療，使用有氧耐力和體能設備",
    "definition" : "全身循環系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0776HZ",
    "display" : "全身循環系統運動治療，使用機械或機電設備",
    "definition" : "全身循環系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0776UZ",
    "display" : "全身循環系統運動治療，使用義肢",
    "definition" : "全身循環系統運動治療，使用義肢"
  },
  {
    "code" : "F0776YZ",
    "display" : "全身循環系統運動治療，使用其他設備",
    "definition" : "全身循環系統運動治療，使用其他設備"
  },
  {
    "code" : "F0776ZZ",
    "display" : "全身循環系統運動治療運動治療",
    "definition" : "全身循環系統運動治療運動治療"
  },
  {
    "code" : "F0786BZ",
    "display" : "頭及頸部呼吸系統運動治療，使用物理因子",
    "definition" : "頭及頸部呼吸系統運動治療，使用物理因子"
  },
  {
    "code" : "F0786CZ",
    "display" : "頭及頸部呼吸系統運動治療，使用機械設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用機械設備"
  },
  {
    "code" : "F0786DZ",
    "display" : "頭及頸部呼吸系統運動治療，使用電療設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用電療設備"
  },
  {
    "code" : "F0786EZ",
    "display" : "頭及頸部呼吸系統運動治療，使用矯具",
    "definition" : "頭及頸部呼吸系統運動治療，使用矯具"
  },
  {
    "code" : "F0786FZ",
    "display" : "頭及頸部呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0786GZ",
    "display" : "頭及頸部呼吸系統運動治療，使用有氧耐力和體能設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0786HZ",
    "display" : "頭及頸部呼吸系統運動治療，使用機械或機電設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0786UZ",
    "display" : "頭及頸部呼吸系統運動治療，使用義肢",
    "definition" : "頭及頸部呼吸系統運動治療，使用義肢"
  },
  {
    "code" : "F0786YZ",
    "display" : "頭及頸部呼吸系統運動治療，使用其他設備",
    "definition" : "頭及頸部呼吸系統運動治療，使用其他設備"
  },
  {
    "code" : "F0786ZZ",
    "display" : "頭及頸部呼吸系統運動治療運動治療",
    "definition" : "頭及頸部呼吸系統運動治療運動治療"
  },
  {
    "code" : "F0796BZ",
    "display" : "上背/上肢呼吸系統運動治療，使用物理因子",
    "definition" : "上背/上肢呼吸系統運動治療，使用物理因子"
  },
  {
    "code" : "F0796CZ",
    "display" : "上背/上肢呼吸系統運動治療，使用機械設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用機械設備"
  },
  {
    "code" : "F0796DZ",
    "display" : "上背/上肢呼吸系統運動治療，使用電療設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用電療設備"
  },
  {
    "code" : "F0796EZ",
    "display" : "上背/上肢呼吸系統運動治療，使用矯具",
    "definition" : "上背/上肢呼吸系統運動治療，使用矯具"
  },
  {
    "code" : "F0796FZ",
    "display" : "上背/上肢呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0796GZ",
    "display" : "上背/上肢呼吸系統運動治療，使用有氧耐力和體能設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F0796HZ",
    "display" : "上背/上肢呼吸系統運動治療，使用機械或機電設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F0796UZ",
    "display" : "上背/上肢呼吸系統運動治療，使用義肢",
    "definition" : "上背/上肢呼吸系統運動治療，使用義肢"
  },
  {
    "code" : "F0796YZ",
    "display" : "上背/上肢呼吸系統運動治療，使用其他設備",
    "definition" : "上背/上肢呼吸系統運動治療，使用其他設備"
  },
  {
    "code" : "F0796ZZ",
    "display" : "上背/上肢呼吸系統運動治療運動治療",
    "definition" : "上背/上肢呼吸系統運動治療運動治療"
  },
  {
    "code" : "F07B6BZ",
    "display" : "下背/下肢呼吸系統運動治療，使用物理因子",
    "definition" : "下背/下肢呼吸系統運動治療，使用物理因子"
  },
  {
    "code" : "F07B6CZ",
    "display" : "下背/下肢呼吸系統運動治療，使用機械設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用機械設備"
  },
  {
    "code" : "F07B6DZ",
    "display" : "下背/下肢呼吸系統運動治療，使用電療設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用電療設備"
  },
  {
    "code" : "F07B6EZ",
    "display" : "下背/下肢呼吸系統運動治療，使用矯具",
    "definition" : "下背/下肢呼吸系統運動治療，使用矯具"
  },
  {
    "code" : "F07B6FZ",
    "display" : "下背/下肢呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07B6GZ",
    "display" : "下背/下肢呼吸系統運動治療，使用有氧耐力和體能設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07B6HZ",
    "display" : "下背/下肢呼吸系統運動治療，使用機械或機電設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07B6UZ",
    "display" : "下背/下肢呼吸系統運動治療，使用義肢",
    "definition" : "下背/下肢呼吸系統運動治療，使用義肢"
  },
  {
    "code" : "F07B6YZ",
    "display" : "下背/下肢呼吸系統運動治療，使用其他設備",
    "definition" : "下背/下肢呼吸系統運動治療，使用其他設備"
  },
  {
    "code" : "F07B6ZZ",
    "display" : "下背/下肢呼吸系統運動治療運動治療",
    "definition" : "下背/下肢呼吸系統運動治療運動治療"
  },
  {
    "code" : "F07C6BZ",
    "display" : "全身呼吸系統運動治療，使用物理因子",
    "definition" : "全身呼吸系統運動治療，使用物理因子"
  },
  {
    "code" : "F07C6CZ",
    "display" : "全身呼吸系統運動治療，使用機械設備",
    "definition" : "全身呼吸系統運動治療，使用機械設備"
  },
  {
    "code" : "F07C6DZ",
    "display" : "全身呼吸系統運動治療，使用電療設備",
    "definition" : "全身呼吸系統運動治療，使用電療設備"
  },
  {
    "code" : "F07C6EZ",
    "display" : "全身呼吸系統運動治療，使用矯具",
    "definition" : "全身呼吸系統運動治療，使用矯具"
  },
  {
    "code" : "F07C6FZ",
    "display" : "全身呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身呼吸系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07C6GZ",
    "display" : "全身呼吸系統運動治療，使用有氧耐力和體能設備",
    "definition" : "全身呼吸系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07C6HZ",
    "display" : "全身呼吸系統運動治療，使用機械或機電設備",
    "definition" : "全身呼吸系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07C6UZ",
    "display" : "全身呼吸系統運動治療，使用義肢",
    "definition" : "全身呼吸系統運動治療，使用義肢"
  },
  {
    "code" : "F07C6YZ",
    "display" : "全身呼吸系統運動治療，使用其他設備",
    "definition" : "全身呼吸系統運動治療，使用其他設備"
  },
  {
    "code" : "F07C6ZZ",
    "display" : "全身呼吸系統運動治療運動治療",
    "definition" : "全身呼吸系統運動治療運動治療"
  },
  {
    "code" : "F07D0EZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07D0FZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07D0UZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07D0YZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07D0ZZ",
    "display" : "頭及頸部皮膚系統運動範圍及關節活動性運動治療",
    "definition" : "頭及頸部皮膚系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07D1EZ",
    "display" : "頭及頸部皮膚系統肌肉功能治療，使用矯具",
    "definition" : "頭及頸部皮膚系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07D1FZ",
    "display" : "頭及頸部皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07D1UZ",
    "display" : "頭及頸部皮膚系統肌肉功能治療，使用義肢",
    "definition" : "頭及頸部皮膚系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07D1YZ",
    "display" : "頭及頸部皮膚系統肌肉功能治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07D1ZZ",
    "display" : "頭及頸部皮膚系統肌肉功能運動治療",
    "definition" : "頭及頸部皮膚系統肌肉功能運動治療"
  },
  {
    "code" : "F07D2EZ",
    "display" : "頭及頸部皮膚系統協調/靈敏度治療，使用矯具",
    "definition" : "頭及頸部皮膚系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07D2FZ",
    "display" : "頭及頸部皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07D2UZ",
    "display" : "頭及頸部皮膚系統協調/靈敏度治療，使用義肢",
    "definition" : "頭及頸部皮膚系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07D2YZ",
    "display" : "頭及頸部皮膚系統協調/靈敏度治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07D2ZZ",
    "display" : "頭及頸部皮膚系統協調/靈敏度運動治療",
    "definition" : "頭及頸部皮膚系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07D3EZ",
    "display" : "頭及頸部皮膚系統運動功能治療，使用矯具",
    "definition" : "頭及頸部皮膚系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07D3FZ",
    "display" : "頭及頸部皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07D3UZ",
    "display" : "頭及頸部皮膚系統運動功能治療，使用義肢",
    "definition" : "頭及頸部皮膚系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07D3YZ",
    "display" : "頭及頸部皮膚系統運動功能治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07D3ZZ",
    "display" : "頭及頸部皮膚系統運動功能運動治療",
    "definition" : "頭及頸部皮膚系統運動功能運動治療"
  },
  {
    "code" : "F07D6BZ",
    "display" : "頭及頸部皮膚系統運動治療，使用物理因子",
    "definition" : "頭及頸部皮膚系統運動治療，使用物理因子"
  },
  {
    "code" : "F07D6CZ",
    "display" : "頭及頸部皮膚系統運動治療，使用機械設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用機械設備"
  },
  {
    "code" : "F07D6DZ",
    "display" : "頭及頸部皮膚系統運動治療，使用電療設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用電療設備"
  },
  {
    "code" : "F07D6EZ",
    "display" : "頭及頸部皮膚系統運動治療，使用矯具",
    "definition" : "頭及頸部皮膚系統運動治療，使用矯具"
  },
  {
    "code" : "F07D6FZ",
    "display" : "頭及頸部皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07D6GZ",
    "display" : "頭及頸部皮膚系統運動治療，使用有氧耐力和體能設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07D6HZ",
    "display" : "頭及頸部皮膚系統運動治療，使用機械或機電設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07D6UZ",
    "display" : "頭及頸部皮膚系統運動治療，使用義肢",
    "definition" : "頭及頸部皮膚系統運動治療，使用義肢"
  },
  {
    "code" : "F07D6YZ",
    "display" : "頭及頸部皮膚系統運動治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統運動治療，使用其他設備"
  },
  {
    "code" : "F07D6ZZ",
    "display" : "頭及頸部皮膚系統運動治療運動治療",
    "definition" : "頭及頸部皮膚系統運動治療運動治療"
  },
  {
    "code" : "F07D7ZZ",
    "display" : "頭及頸部皮膚系統徒手治療技術運動治療",
    "definition" : "頭及頸部皮膚系統徒手治療技術運動治療"
  },
  {
    "code" : "F07F0EZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07F0FZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07F0UZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07F0YZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07F0ZZ",
    "display" : "上背/上肢皮膚系統運動範圍及關節活動性運動治療",
    "definition" : "上背/上肢皮膚系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07F1EZ",
    "display" : "上背/上肢皮膚系統肌肉功能治療，使用矯具",
    "definition" : "上背/上肢皮膚系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07F1FZ",
    "display" : "上背/上肢皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07F1UZ",
    "display" : "上背/上肢皮膚系統肌肉功能治療，使用義肢",
    "definition" : "上背/上肢皮膚系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07F1YZ",
    "display" : "上背/上肢皮膚系統肌肉功能治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07F1ZZ",
    "display" : "上背/上肢皮膚系統肌肉功能運動治療",
    "definition" : "上背/上肢皮膚系統肌肉功能運動治療"
  },
  {
    "code" : "F07F2EZ",
    "display" : "上背/上肢皮膚系統協調/靈敏度治療，使用矯具",
    "definition" : "上背/上肢皮膚系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07F2FZ",
    "display" : "上背/上肢皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07F2UZ",
    "display" : "上背/上肢皮膚系統協調/靈敏度治療，使用義肢",
    "definition" : "上背/上肢皮膚系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07F2YZ",
    "display" : "上背/上肢皮膚系統協調/靈敏度治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07F2ZZ",
    "display" : "上背/上肢皮膚系統協調/靈敏度運動治療",
    "definition" : "上背/上肢皮膚系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07F3EZ",
    "display" : "上背/上肢皮膚系統運動功能治療，使用矯具",
    "definition" : "上背/上肢皮膚系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07F3FZ",
    "display" : "上背/上肢皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07F3UZ",
    "display" : "上背/上肢皮膚系統運動功能治療，使用義肢",
    "definition" : "上背/上肢皮膚系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07F3YZ",
    "display" : "上背/上肢皮膚系統運動功能治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07F3ZZ",
    "display" : "上背/上肢皮膚系統運動功能運動治療",
    "definition" : "上背/上肢皮膚系統運動功能運動治療"
  },
  {
    "code" : "F07F6BZ",
    "display" : "上背/上肢皮膚系統運動治療，使用物理因子",
    "definition" : "上背/上肢皮膚系統運動治療，使用物理因子"
  },
  {
    "code" : "F07F6CZ",
    "display" : "上背/上肢皮膚系統運動治療，使用機械設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用機械設備"
  },
  {
    "code" : "F07F6DZ",
    "display" : "上背/上肢皮膚系統運動治療，使用電療設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用電療設備"
  },
  {
    "code" : "F07F6EZ",
    "display" : "上背/上肢皮膚系統運動治療，使用矯具",
    "definition" : "上背/上肢皮膚系統運動治療，使用矯具"
  },
  {
    "code" : "F07F6FZ",
    "display" : "上背/上肢皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07F6GZ",
    "display" : "上背/上肢皮膚系統運動治療，使用有氧耐力和體能設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07F6HZ",
    "display" : "上背/上肢皮膚系統運動治療，使用機械或機電設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07F6UZ",
    "display" : "上背/上肢皮膚系統運動治療，使用義肢",
    "definition" : "上背/上肢皮膚系統運動治療，使用義肢"
  },
  {
    "code" : "F07F6YZ",
    "display" : "上背/上肢皮膚系統運動治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統運動治療，使用其他設備"
  },
  {
    "code" : "F07F6ZZ",
    "display" : "上背/上肢皮膚系統運動治療運動治療",
    "definition" : "上背/上肢皮膚系統運動治療運動治療"
  },
  {
    "code" : "F07F7ZZ",
    "display" : "上背/上肢皮膚系統徒手治療技術運動治療",
    "definition" : "上背/上肢皮膚系統徒手治療技術運動治療"
  },
  {
    "code" : "F07G0EZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07G0FZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07G0UZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07G0YZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07G0ZZ",
    "display" : "下背/下肢皮膚系統運動範圍及關節活動性運動治療",
    "definition" : "下背/下肢皮膚系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07G1EZ",
    "display" : "下背/下肢皮膚系統肌肉功能治療，使用矯具",
    "definition" : "下背/下肢皮膚系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07G1FZ",
    "display" : "下背/下肢皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07G1UZ",
    "display" : "下背/下肢皮膚系統肌肉功能治療，使用義肢",
    "definition" : "下背/下肢皮膚系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07G1YZ",
    "display" : "下背/下肢皮膚系統肌肉功能治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07G1ZZ",
    "display" : "下背/下肢皮膚系統肌肉功能運動治療",
    "definition" : "下背/下肢皮膚系統肌肉功能運動治療"
  },
  {
    "code" : "F07G2EZ",
    "display" : "下背/下肢皮膚系統協調/靈敏度治療，使用矯具",
    "definition" : "下背/下肢皮膚系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07G2FZ",
    "display" : "下背/下肢皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07G2UZ",
    "display" : "下背/下肢皮膚系統協調/靈敏度治療，使用義肢",
    "definition" : "下背/下肢皮膚系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07G2YZ",
    "display" : "下背/下肢皮膚系統協調/靈敏度治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07G2ZZ",
    "display" : "下背/下肢皮膚系統協調/靈敏度運動治療",
    "definition" : "下背/下肢皮膚系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07G3EZ",
    "display" : "下背/下肢皮膚系統運動功能治療，使用矯具",
    "definition" : "下背/下肢皮膚系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07G3FZ",
    "display" : "下背/下肢皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07G3UZ",
    "display" : "下背/下肢皮膚系統運動功能治療，使用義肢",
    "definition" : "下背/下肢皮膚系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07G3YZ",
    "display" : "下背/下肢皮膚系統運動功能治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07G3ZZ",
    "display" : "下背/下肢皮膚系統運動功能運動治療",
    "definition" : "下背/下肢皮膚系統運動功能運動治療"
  },
  {
    "code" : "F07G6BZ",
    "display" : "下背/下肢皮膚系統運動治療，使用物理因子",
    "definition" : "下背/下肢皮膚系統運動治療，使用物理因子"
  },
  {
    "code" : "F07G6CZ",
    "display" : "下背/下肢皮膚系統運動治療，使用機械設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用機械設備"
  },
  {
    "code" : "F07G6DZ",
    "display" : "下背/下肢皮膚系統運動治療，使用電療設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用電療設備"
  },
  {
    "code" : "F07G6EZ",
    "display" : "下背/下肢皮膚系統運動治療，使用矯具",
    "definition" : "下背/下肢皮膚系統運動治療，使用矯具"
  },
  {
    "code" : "F07G6FZ",
    "display" : "下背/下肢皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07G6GZ",
    "display" : "下背/下肢皮膚系統運動治療，使用有氧耐力和體能設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07G6HZ",
    "display" : "下背/下肢皮膚系統運動治療，使用機械或機電設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07G6UZ",
    "display" : "下背/下肢皮膚系統運動治療，使用義肢",
    "definition" : "下背/下肢皮膚系統運動治療，使用義肢"
  },
  {
    "code" : "F07G6YZ",
    "display" : "下背/下肢皮膚系統運動治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統運動治療，使用其他設備"
  },
  {
    "code" : "F07G6ZZ",
    "display" : "下背/下肢皮膚系統運動治療運動治療",
    "definition" : "下背/下肢皮膚系統運動治療運動治療"
  },
  {
    "code" : "F07G7ZZ",
    "display" : "下背/下肢皮膚系統徒手治療技術運動治療",
    "definition" : "下背/下肢皮膚系統徒手治療技術運動治療"
  },
  {
    "code" : "F07H0EZ",
    "display" : "全身皮膚系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "全身皮膚系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07H0FZ",
    "display" : "全身皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07H0UZ",
    "display" : "全身皮膚系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "全身皮膚系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07H0YZ",
    "display" : "全身皮膚系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "全身皮膚系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07H0ZZ",
    "display" : "全身皮膚系統運動範圍及關節活動性運動治療",
    "definition" : "全身皮膚系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07H1EZ",
    "display" : "全身皮膚系統肌肉功能治療，使用矯具",
    "definition" : "全身皮膚系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07H1FZ",
    "display" : "全身皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07H1UZ",
    "display" : "全身皮膚系統肌肉功能治療，使用義肢",
    "definition" : "全身皮膚系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07H1YZ",
    "display" : "全身皮膚系統肌肉功能治療，使用其他設備",
    "definition" : "全身皮膚系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07H1ZZ",
    "display" : "全身皮膚系統肌肉功能運動治療",
    "definition" : "全身皮膚系統肌肉功能運動治療"
  },
  {
    "code" : "F07H2EZ",
    "display" : "全身皮膚系統協調/靈敏度治療，使用矯具",
    "definition" : "全身皮膚系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07H2FZ",
    "display" : "全身皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07H2UZ",
    "display" : "全身皮膚系統協調/靈敏度治療，使用義肢",
    "definition" : "全身皮膚系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07H2YZ",
    "display" : "全身皮膚系統協調/靈敏度治療，使用其他設備",
    "definition" : "全身皮膚系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07H2ZZ",
    "display" : "全身皮膚系統協調/靈敏度運動治療",
    "definition" : "全身皮膚系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07H3EZ",
    "display" : "全身皮膚系統運動功能治療，使用矯具",
    "definition" : "全身皮膚系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07H3FZ",
    "display" : "全身皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07H3UZ",
    "display" : "全身皮膚系統運動功能治療，使用義肢",
    "definition" : "全身皮膚系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07H3YZ",
    "display" : "全身皮膚系統運動功能治療，使用其他設備",
    "definition" : "全身皮膚系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07H3ZZ",
    "display" : "全身皮膚系統運動功能運動治療",
    "definition" : "全身皮膚系統運動功能運動治療"
  },
  {
    "code" : "F07H6BZ",
    "display" : "全身皮膚系統運動治療，使用物理因子",
    "definition" : "全身皮膚系統運動治療，使用物理因子"
  },
  {
    "code" : "F07H6CZ",
    "display" : "全身皮膚系統運動治療，使用機械設備",
    "definition" : "全身皮膚系統運動治療，使用機械設備"
  },
  {
    "code" : "F07H6DZ",
    "display" : "全身皮膚系統運動治療，使用電療設備",
    "definition" : "全身皮膚系統運動治療，使用電療設備"
  },
  {
    "code" : "F07H6EZ",
    "display" : "全身皮膚系統運動治療，使用矯具",
    "definition" : "全身皮膚系統運動治療，使用矯具"
  },
  {
    "code" : "F07H6FZ",
    "display" : "全身皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07H6GZ",
    "display" : "全身皮膚系統運動治療，使用有氧耐力和體能設備",
    "definition" : "全身皮膚系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07H6HZ",
    "display" : "全身皮膚系統運動治療，使用機械或機電設備",
    "definition" : "全身皮膚系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07H6UZ",
    "display" : "全身皮膚系統運動治療，使用義肢",
    "definition" : "全身皮膚系統運動治療，使用義肢"
  },
  {
    "code" : "F07H6YZ",
    "display" : "全身皮膚系統運動治療，使用其他設備",
    "definition" : "全身皮膚系統運動治療，使用其他設備"
  },
  {
    "code" : "F07H6ZZ",
    "display" : "全身皮膚系統運動治療運動治療",
    "definition" : "全身皮膚系統運動治療運動治療"
  },
  {
    "code" : "F07H7ZZ",
    "display" : "全身皮膚系統徒手治療技術運動治療",
    "definition" : "全身皮膚系統徒手治療技術運動治療"
  },
  {
    "code" : "F07J0EZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07J0FZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07J0UZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07J0YZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07J0ZZ",
    "display" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性運動治療",
    "definition" : "頭及頸部肌肉骨骼系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07J1EZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07J1FZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07J1UZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07J1YZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07J1ZZ",
    "display" : "頭及頸部肌肉骨骼系統肌肉功能運動治療",
    "definition" : "頭及頸部肌肉骨骼系統肌肉功能運動治療"
  },
  {
    "code" : "F07J2EZ",
    "display" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07J2FZ",
    "display" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07J2UZ",
    "display" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07J2YZ",
    "display" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07J2ZZ",
    "display" : "頭及頸部肌肉骨骼系統協調/靈敏度運動治療",
    "definition" : "頭及頸部肌肉骨骼系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07J3EZ",
    "display" : "頭及頸部肌肉骨骼系統運動功能治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07J3FZ",
    "display" : "頭及頸部肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07J3UZ",
    "display" : "頭及頸部肌肉骨骼系統運動功能治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07J3YZ",
    "display" : "頭及頸部肌肉骨骼系統運動功能治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07J3ZZ",
    "display" : "頭及頸部肌肉骨骼系統運動功能運動治療",
    "definition" : "頭及頸部肌肉骨骼系統運動功能運動治療"
  },
  {
    "code" : "F07J6BZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用物理因子",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用物理因子"
  },
  {
    "code" : "F07J6CZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用機械設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用機械設備"
  },
  {
    "code" : "F07J6DZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用電療設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用電療設備"
  },
  {
    "code" : "F07J6EZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用矯具"
  },
  {
    "code" : "F07J6FZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07J6GZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用有氧耐力和體能設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07J6HZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用機械或機電設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07J6UZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用義肢"
  },
  {
    "code" : "F07J6YZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統運動治療，使用其他設備"
  },
  {
    "code" : "F07J6ZZ",
    "display" : "頭及頸部肌肉骨骼系統運動治療運動治療",
    "definition" : "頭及頸部肌肉骨骼系統運動治療運動治療"
  },
  {
    "code" : "F07J7ZZ",
    "display" : "頭及頸部肌肉骨骼系統徒手治療技術運動治療",
    "definition" : "頭及頸部肌肉骨骼系統徒手治療技術運動治療"
  },
  {
    "code" : "F07K0EZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07K0FZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07K0UZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07K0YZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07K0ZZ",
    "display" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性運動治療",
    "definition" : "上背/上肢肌肉骨骼系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07K1EZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07K1FZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07K1UZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07K1YZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07K1ZZ",
    "display" : "上背/上肢肌肉骨骼系統肌肉功能運動治療",
    "definition" : "上背/上肢肌肉骨骼系統肌肉功能運動治療"
  },
  {
    "code" : "F07K2EZ",
    "display" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07K2FZ",
    "display" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07K2UZ",
    "display" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07K2YZ",
    "display" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07K2ZZ",
    "display" : "上背/上肢肌肉骨骼系統協調/靈敏度運動治療",
    "definition" : "上背/上肢肌肉骨骼系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07K3EZ",
    "display" : "上背/上肢肌肉骨骼系統運動功能治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07K3FZ",
    "display" : "上背/上肢肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07K3UZ",
    "display" : "上背/上肢肌肉骨骼系統運動功能治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07K3YZ",
    "display" : "上背/上肢肌肉骨骼系統運動功能治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07K3ZZ",
    "display" : "上背/上肢肌肉骨骼系統運動功能運動治療",
    "definition" : "上背/上肢肌肉骨骼系統運動功能運動治療"
  },
  {
    "code" : "F07K6BZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用物理因子",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用物理因子"
  },
  {
    "code" : "F07K6CZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用機械設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用機械設備"
  },
  {
    "code" : "F07K6DZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用電療設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用電療設備"
  },
  {
    "code" : "F07K6EZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用矯具"
  },
  {
    "code" : "F07K6FZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07K6GZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用有氧耐力和體能設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07K6HZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用機械或機電設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07K6UZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用義肢"
  },
  {
    "code" : "F07K6YZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統運動治療，使用其他設備"
  },
  {
    "code" : "F07K6ZZ",
    "display" : "上背/上肢肌肉骨骼系統運動治療運動治療",
    "definition" : "上背/上肢肌肉骨骼系統運動治療運動治療"
  },
  {
    "code" : "F07K7ZZ",
    "display" : "上背/上肢肌肉骨骼系統徒手治療技術運動治療",
    "definition" : "上背/上肢肌肉骨骼系統徒手治療技術運動治療"
  },
  {
    "code" : "F07L0EZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07L0FZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07L0UZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07L0YZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07L0ZZ",
    "display" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性運動治療",
    "definition" : "下背/下肢肌肉骨骼系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07L1EZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07L1FZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07L1UZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07L1YZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07L1ZZ",
    "display" : "下背/下肢肌肉骨骼系統肌肉功能運動治療",
    "definition" : "下背/下肢肌肉骨骼系統肌肉功能運動治療"
  },
  {
    "code" : "F07L2EZ",
    "display" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07L2FZ",
    "display" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07L2UZ",
    "display" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07L2YZ",
    "display" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07L2ZZ",
    "display" : "下背/下肢肌肉骨骼系統協調/靈敏度運動治療",
    "definition" : "下背/下肢肌肉骨骼系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07L3EZ",
    "display" : "下背/下肢肌肉骨骼系統運動功能治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07L3FZ",
    "display" : "下背/下肢肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07L3UZ",
    "display" : "下背/下肢肌肉骨骼系統運動功能治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07L3YZ",
    "display" : "下背/下肢肌肉骨骼系統運動功能治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07L3ZZ",
    "display" : "下背/下肢肌肉骨骼系統運動功能運動治療",
    "definition" : "下背/下肢肌肉骨骼系統運動功能運動治療"
  },
  {
    "code" : "F07L6BZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用物理因子",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用物理因子"
  },
  {
    "code" : "F07L6CZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用機械設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用機械設備"
  },
  {
    "code" : "F07L6DZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用電療設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用電療設備"
  },
  {
    "code" : "F07L6EZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用矯具"
  },
  {
    "code" : "F07L6FZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07L6GZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用有氧耐力和體能設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07L6HZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用機械或機電設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07L6UZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用義肢"
  },
  {
    "code" : "F07L6YZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統運動治療，使用其他設備"
  },
  {
    "code" : "F07L6ZZ",
    "display" : "下背/下肢肌肉骨骼系統運動治療運動治療",
    "definition" : "下背/下肢肌肉骨骼系統運動治療運動治療"
  },
  {
    "code" : "F07L7ZZ",
    "display" : "下背/下肢肌肉骨骼系統徒手治療技術運動治療",
    "definition" : "下背/下肢肌肉骨骼系統徒手治療技術運動治療"
  },
  {
    "code" : "F07M0EZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用矯具",
    "definition" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用矯具"
  },
  {
    "code" : "F07M0FZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07M0UZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用義肢",
    "definition" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用義肢"
  },
  {
    "code" : "F07M0YZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統運動範圍及關節活動性治療，使用其他設備"
  },
  {
    "code" : "F07M0ZZ",
    "display" : "全身肌肉骨骼系統運動範圍及關節活動性運動治療",
    "definition" : "全身肌肉骨骼系統運動範圍及關節活動性運動治療"
  },
  {
    "code" : "F07M1EZ",
    "display" : "全身肌肉骨骼系統肌肉功能治療，使用矯具",
    "definition" : "全身肌肉骨骼系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07M1FZ",
    "display" : "全身肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07M1UZ",
    "display" : "全身肌肉骨骼系統肌肉功能治療，使用義肢",
    "definition" : "全身肌肉骨骼系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07M1YZ",
    "display" : "全身肌肉骨骼系統肌肉功能治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07M1ZZ",
    "display" : "全身肌肉骨骼系統肌肉功能運動治療",
    "definition" : "全身肌肉骨骼系統肌肉功能運動治療"
  },
  {
    "code" : "F07M2EZ",
    "display" : "全身肌肉骨骼系統協調/靈敏度治療，使用矯具",
    "definition" : "全身肌肉骨骼系統協調/靈敏度治療，使用矯具"
  },
  {
    "code" : "F07M2FZ",
    "display" : "全身肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統協調/靈敏度治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07M2UZ",
    "display" : "全身肌肉骨骼系統協調/靈敏度治療，使用義肢",
    "definition" : "全身肌肉骨骼系統協調/靈敏度治療，使用義肢"
  },
  {
    "code" : "F07M2YZ",
    "display" : "全身肌肉骨骼系統協調/靈敏度治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統協調/靈敏度治療，使用其他設備"
  },
  {
    "code" : "F07M2ZZ",
    "display" : "全身肌肉骨骼系統協調/靈敏度運動治療",
    "definition" : "全身肌肉骨骼系統協調/靈敏度運動治療"
  },
  {
    "code" : "F07M3EZ",
    "display" : "全身肌肉骨骼系統運動功能治療，使用矯具",
    "definition" : "全身肌肉骨骼系統運動功能治療，使用矯具"
  },
  {
    "code" : "F07M3FZ",
    "display" : "全身肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統運動功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07M3UZ",
    "display" : "全身肌肉骨骼系統運動功能治療，使用義肢",
    "definition" : "全身肌肉骨骼系統運動功能治療，使用義肢"
  },
  {
    "code" : "F07M3YZ",
    "display" : "全身肌肉骨骼系統運動功能治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統運動功能治療，使用其他設備"
  },
  {
    "code" : "F07M3ZZ",
    "display" : "全身肌肉骨骼系統運動功能運動治療",
    "definition" : "全身肌肉骨骼系統運動功能運動治療"
  },
  {
    "code" : "F07M6BZ",
    "display" : "全身肌肉骨骼系統運動治療，使用物理因子",
    "definition" : "全身肌肉骨骼系統運動治療，使用物理因子"
  },
  {
    "code" : "F07M6CZ",
    "display" : "全身肌肉骨骼系統運動治療，使用機械設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用機械設備"
  },
  {
    "code" : "F07M6DZ",
    "display" : "全身肌肉骨骼系統運動治療，使用電療設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用電療設備"
  },
  {
    "code" : "F07M6EZ",
    "display" : "全身肌肉骨骼系統運動治療，使用矯具",
    "definition" : "全身肌肉骨骼系統運動治療，使用矯具"
  },
  {
    "code" : "F07M6FZ",
    "display" : "全身肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07M6GZ",
    "display" : "全身肌肉骨骼系統運動治療，使用有氧耐力和體能設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07M6HZ",
    "display" : "全身肌肉骨骼系統運動治療，使用機械或機電設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07M6UZ",
    "display" : "全身肌肉骨骼系統運動治療，使用義肢",
    "definition" : "全身肌肉骨骼系統運動治療，使用義肢"
  },
  {
    "code" : "F07M6YZ",
    "display" : "全身肌肉骨骼系統運動治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統運動治療，使用其他設備"
  },
  {
    "code" : "F07M6ZZ",
    "display" : "全身肌肉骨骼系統運動治療運動治療",
    "definition" : "全身肌肉骨骼系統運動治療運動治療"
  },
  {
    "code" : "F07M7ZZ",
    "display" : "全身肌肉骨骼系統徒手治療技術運動治療",
    "definition" : "全身肌肉骨骼系統徒手治療技術運動治療"
  },
  {
    "code" : "F07N1EZ",
    "display" : "生殖泌尿系統肌肉功能治療，使用矯具",
    "definition" : "生殖泌尿系統肌肉功能治療，使用矯具"
  },
  {
    "code" : "F07N1FZ",
    "display" : "生殖泌尿系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "生殖泌尿系統肌肉功能治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07N1UZ",
    "display" : "生殖泌尿系統肌肉功能治療，使用義肢",
    "definition" : "生殖泌尿系統肌肉功能治療，使用義肢"
  },
  {
    "code" : "F07N1YZ",
    "display" : "生殖泌尿系統肌肉功能治療，使用其他設備",
    "definition" : "生殖泌尿系統肌肉功能治療，使用其他設備"
  },
  {
    "code" : "F07N1ZZ",
    "display" : "生殖泌尿系統肌肉功能運動治療",
    "definition" : "生殖泌尿系統肌肉功能運動治療"
  },
  {
    "code" : "F07N6BZ",
    "display" : "生殖泌尿系統運動治療，使用物理因子",
    "definition" : "生殖泌尿系統運動治療，使用物理因子"
  },
  {
    "code" : "F07N6CZ",
    "display" : "生殖泌尿系統運動治療，使用機械設備",
    "definition" : "生殖泌尿系統運動治療，使用機械設備"
  },
  {
    "code" : "F07N6DZ",
    "display" : "生殖泌尿系統運動治療，使用電療設備",
    "definition" : "生殖泌尿系統運動治療，使用電療設備"
  },
  {
    "code" : "F07N6EZ",
    "display" : "生殖泌尿系統運動治療，使用矯具",
    "definition" : "生殖泌尿系統運動治療，使用矯具"
  },
  {
    "code" : "F07N6FZ",
    "display" : "生殖泌尿系統運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "生殖泌尿系統運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07N6GZ",
    "display" : "生殖泌尿系統運動治療，使用有氧耐力和體能設備",
    "definition" : "生殖泌尿系統運動治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07N6HZ",
    "display" : "生殖泌尿系統運動治療，使用機械或機電設備",
    "definition" : "生殖泌尿系統運動治療，使用機械或機電設備"
  },
  {
    "code" : "F07N6UZ",
    "display" : "生殖泌尿系統運動治療，使用義肢",
    "definition" : "生殖泌尿系統運動治療，使用義肢"
  },
  {
    "code" : "F07N6YZ",
    "display" : "生殖泌尿系統運動治療，使用其他設備",
    "definition" : "生殖泌尿系統運動治療，使用其他設備"
  },
  {
    "code" : "F07N6ZZ",
    "display" : "生殖泌尿系統運動治療運動治療",
    "definition" : "生殖泌尿系統運動治療運動治療"
  },
  {
    "code" : "F07Z4DZ",
    "display" : "輪椅移動治療，使用電療設備",
    "definition" : "輪椅移動治療，使用電療設備"
  },
  {
    "code" : "F07Z4EZ",
    "display" : "輪椅移動治療，使用矯具",
    "definition" : "輪椅移動治療，使用矯具"
  },
  {
    "code" : "F07Z4FZ",
    "display" : "輪椅移動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "輪椅移動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07Z4UZ",
    "display" : "輪椅移動治療，使用義肢",
    "definition" : "輪椅移動治療，使用義肢"
  },
  {
    "code" : "F07Z4YZ",
    "display" : "輪椅移動治療，使用其他設備",
    "definition" : "輪椅移動治療，使用其他設備"
  },
  {
    "code" : "F07Z4ZZ",
    "display" : "輪椅移動運動治療",
    "definition" : "輪椅移動運動治療"
  },
  {
    "code" : "F07Z5CZ",
    "display" : "床上活動治療，使用機械設備",
    "definition" : "床上活動治療，使用機械設備"
  },
  {
    "code" : "F07Z5EZ",
    "display" : "床上活動治療，使用矯具",
    "definition" : "床上活動治療，使用矯具"
  },
  {
    "code" : "F07Z5FZ",
    "display" : "床上活動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "床上活動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07Z5UZ",
    "display" : "床上活動治療，使用義肢",
    "definition" : "床上活動治療，使用義肢"
  },
  {
    "code" : "F07Z5YZ",
    "display" : "床上活動治療，使用其他設備",
    "definition" : "床上活動治療，使用其他設備"
  },
  {
    "code" : "F07Z5ZZ",
    "display" : "床上活動運動治療",
    "definition" : "床上活動運動治療"
  },
  {
    "code" : "F07Z8CZ",
    "display" : "轉移訓練治療，使用機械設備",
    "definition" : "轉移訓練治療，使用機械設備"
  },
  {
    "code" : "F07Z8DZ",
    "display" : "轉移訓練治療，使用電療設備",
    "definition" : "轉移訓練治療，使用電療設備"
  },
  {
    "code" : "F07Z8EZ",
    "display" : "轉移訓練治療，使用矯具",
    "definition" : "轉移訓練治療，使用矯具"
  },
  {
    "code" : "F07Z8FZ",
    "display" : "轉移訓練治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "轉移訓練治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07Z8UZ",
    "display" : "轉移訓練治療，使用義肢",
    "definition" : "轉移訓練治療，使用義肢"
  },
  {
    "code" : "F07Z8YZ",
    "display" : "轉移訓練治療，使用其他設備",
    "definition" : "轉移訓練治療，使用其他設備"
  },
  {
    "code" : "F07Z8ZZ",
    "display" : "轉移訓練運動治療",
    "definition" : "轉移訓練運動治療"
  },
  {
    "code" : "F07Z9CZ",
    "display" : "步態訓練/功能步行治療，使用機械設備",
    "definition" : "步態訓練/功能步行治療，使用機械設備"
  },
  {
    "code" : "F07Z9DZ",
    "display" : "步態訓練/功能步行治療，使用電療設備",
    "definition" : "步態訓練/功能步行治療，使用電療設備"
  },
  {
    "code" : "F07Z9EZ",
    "display" : "步態訓練/功能步行治療，使用矯具",
    "definition" : "步態訓練/功能步行治療，使用矯具"
  },
  {
    "code" : "F07Z9FZ",
    "display" : "步態訓練/功能步行治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "步態訓練/功能步行治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F07Z9GZ",
    "display" : "步態訓練/功能步行治療，使用有氧耐力和體能設備",
    "definition" : "步態訓練/功能步行治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F07Z9UZ",
    "display" : "步態訓練/功能步行治療，使用義肢",
    "definition" : "步態訓練/功能步行治療，使用義肢"
  },
  {
    "code" : "F07Z9YZ",
    "display" : "步態訓練/功能步行治療，使用其他設備",
    "definition" : "步態訓練/功能步行治療，使用其他設備"
  },
  {
    "code" : "F07Z9ZZ",
    "display" : "步態訓練/功能步行運動治療",
    "definition" : "步態訓練/功能步行運動治療"
  },
  {
    "code" : "F08D5BZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用物理因子",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08D5CZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用機械設備",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08D5DZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用電療設備",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08D5EZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用矯具",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08D5FZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08D5UZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用義肢",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08D5YZ",
    "display" : "頭及頸部皮膚系統傷口管理治療，使用其他設備",
    "definition" : "頭及頸部皮膚系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08D5ZZ",
    "display" : "頭及頸部皮膚系統傷口管理日常生活活動治療",
    "definition" : "頭及頸部皮膚系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08F5BZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用物理因子",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08F5CZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用機械設備",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08F5DZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用電療設備",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08F5EZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用矯具",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08F5FZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08F5UZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用義肢",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08F5YZ",
    "display" : "上背/上肢皮膚系統傷口管理治療，使用其他設備",
    "definition" : "上背/上肢皮膚系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08F5ZZ",
    "display" : "上背/上肢皮膚系統傷口管理日常生活活動治療",
    "definition" : "上背/上肢皮膚系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08G5BZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用物理因子",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08G5CZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用機械設備",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08G5DZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用電療設備",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08G5EZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用矯具",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08G5FZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08G5UZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用義肢",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08G5YZ",
    "display" : "下背/下肢皮膚系統傷口管理治療，使用其他設備",
    "definition" : "下背/下肢皮膚系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08G5ZZ",
    "display" : "下背/下肢皮膚系統傷口管理日常生活活動治療",
    "definition" : "下背/下肢皮膚系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08H5BZ",
    "display" : "全身皮膚系統傷口管理治療，使用物理因子",
    "definition" : "全身皮膚系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08H5CZ",
    "display" : "全身皮膚系統傷口管理治療，使用機械設備",
    "definition" : "全身皮膚系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08H5DZ",
    "display" : "全身皮膚系統傷口管理治療，使用電療設備",
    "definition" : "全身皮膚系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08H5EZ",
    "display" : "全身皮膚系統傷口管理治療，使用矯具",
    "definition" : "全身皮膚系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08H5FZ",
    "display" : "全身皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08H5UZ",
    "display" : "全身皮膚系統傷口管理治療，使用義肢",
    "definition" : "全身皮膚系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08H5YZ",
    "display" : "全身皮膚系統傷口管理治療，使用其他設備",
    "definition" : "全身皮膚系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08H5ZZ",
    "display" : "全身皮膚系統傷口管理日常生活活動治療",
    "definition" : "全身皮膚系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08J5BZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用物理因子",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08J5CZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用機械設備",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08J5DZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用電療設備",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08J5EZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用矯具",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08J5FZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08J5UZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用義肢",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08J5YZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理治療，使用其他設備",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08J5ZZ",
    "display" : "頭及頸部肌肉骨骼系統傷口管理日常生活活動治療",
    "definition" : "頭及頸部肌肉骨骼系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08K5BZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用物理因子",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08K5CZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用機械設備",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08K5DZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用電療設備",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08K5EZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用矯具",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08K5FZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08K5UZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用義肢",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08K5YZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理治療，使用其他設備",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08K5ZZ",
    "display" : "上背/上肢肌肉骨骼系統傷口管理日常生活活動治療",
    "definition" : "上背/上肢肌肉骨骼系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08L5BZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用物理因子",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08L5CZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用機械設備",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08L5DZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用電療設備",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08L5EZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用矯具",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08L5FZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08L5UZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用義肢",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08L5YZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理治療，使用其他設備",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08L5ZZ",
    "display" : "下背/下肢肌肉骨骼系統傷口管理日常生活活動治療",
    "definition" : "下背/下肢肌肉骨骼系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08M5BZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用物理因子",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用物理因子"
  },
  {
    "code" : "F08M5CZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用機械設備",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用機械設備"
  },
  {
    "code" : "F08M5DZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用電療設備",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用電療設備"
  },
  {
    "code" : "F08M5EZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用矯具",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用矯具"
  },
  {
    "code" : "F08M5FZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08M5UZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用義肢",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用義肢"
  },
  {
    "code" : "F08M5YZ",
    "display" : "全身肌肉骨骼系統傷口管理治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統傷口管理治療，使用其他設備"
  },
  {
    "code" : "F08M5ZZ",
    "display" : "全身肌肉骨骼系統傷口管理日常生活活動治療",
    "definition" : "全身肌肉骨骼系統傷口管理日常生活活動治療"
  },
  {
    "code" : "F08Z0EZ",
    "display" : "沐浴/淋浴技術治療，使用矯具",
    "definition" : "沐浴/淋浴技術治療，使用矯具"
  },
  {
    "code" : "F08Z0FZ",
    "display" : "沐浴/淋浴技術治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "沐浴/淋浴技術治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z0UZ",
    "display" : "沐浴/淋浴技術治療，使用義肢",
    "definition" : "沐浴/淋浴技術治療，使用義肢"
  },
  {
    "code" : "F08Z0YZ",
    "display" : "沐浴/淋浴技術治療，使用其他設備",
    "definition" : "沐浴/淋浴技術治療，使用其他設備"
  },
  {
    "code" : "F08Z0ZZ",
    "display" : "沐浴/淋浴技術日常生活活動治療",
    "definition" : "沐浴/淋浴技術日常生活活動治療"
  },
  {
    "code" : "F08Z1EZ",
    "display" : "敷料技術治療，使用矯具",
    "definition" : "敷料技術治療，使用矯具"
  },
  {
    "code" : "F08Z1FZ",
    "display" : "敷料技術治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "敷料技術治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z1UZ",
    "display" : "敷料技術治療，使用義肢",
    "definition" : "敷料技術治療，使用義肢"
  },
  {
    "code" : "F08Z1YZ",
    "display" : "敷料技術治療，使用其他設備",
    "definition" : "敷料技術治療，使用其他設備"
  },
  {
    "code" : "F08Z1ZZ",
    "display" : "敷料技術日常生活活動治療",
    "definition" : "敷料技術日常生活活動治療"
  },
  {
    "code" : "F08Z2EZ",
    "display" : "盥洗/個人衛生治療，使用矯具",
    "definition" : "盥洗/個人衛生治療，使用矯具"
  },
  {
    "code" : "F08Z2FZ",
    "display" : "盥洗/個人衛生治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "盥洗/個人衛生治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z2UZ",
    "display" : "盥洗/個人衛生治療，使用義肢",
    "definition" : "盥洗/個人衛生治療，使用義肢"
  },
  {
    "code" : "F08Z2YZ",
    "display" : "盥洗/個人衛生治療，使用其他設備",
    "definition" : "盥洗/個人衛生治療，使用其他設備"
  },
  {
    "code" : "F08Z2ZZ",
    "display" : "盥洗/個人衛生日常生活活動治療",
    "definition" : "盥洗/個人衛生日常生活活動治療"
  },
  {
    "code" : "F08Z3CZ",
    "display" : "餵食/飲食治療，使用機械設備",
    "definition" : "餵食/飲食治療，使用機械設備"
  },
  {
    "code" : "F08Z3DZ",
    "display" : "餵食/飲食治療，使用電療設備",
    "definition" : "餵食/飲食治療，使用電療設備"
  },
  {
    "code" : "F08Z3EZ",
    "display" : "餵食/飲食治療，使用矯具",
    "definition" : "餵食/飲食治療，使用矯具"
  },
  {
    "code" : "F08Z3FZ",
    "display" : "餵食/飲食治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "餵食/飲食治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z3UZ",
    "display" : "餵食/飲食治療，使用義肢",
    "definition" : "餵食/飲食治療，使用義肢"
  },
  {
    "code" : "F08Z3YZ",
    "display" : "餵食/飲食治療，使用其他設備",
    "definition" : "餵食/飲食治療，使用其他設備"
  },
  {
    "code" : "F08Z3ZZ",
    "display" : "餵食/飲食日常生活活動治療",
    "definition" : "餵食/飲食日常生活活動治療"
  },
  {
    "code" : "F08Z4DZ",
    "display" : "家庭管理治療，使用電療設備",
    "definition" : "家庭管理治療，使用電療設備"
  },
  {
    "code" : "F08Z4EZ",
    "display" : "家庭管理治療，使用矯具",
    "definition" : "家庭管理治療，使用矯具"
  },
  {
    "code" : "F08Z4FZ",
    "display" : "家庭管理治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "家庭管理治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z4UZ",
    "display" : "家庭管理治療，使用義肢",
    "definition" : "家庭管理治療，使用義肢"
  },
  {
    "code" : "F08Z4YZ",
    "display" : "家庭管理治療，使用其他設備",
    "definition" : "家庭管理治療，使用其他設備"
  },
  {
    "code" : "F08Z4ZZ",
    "display" : "家庭管理日常生活活動治療",
    "definition" : "家庭管理日常生活活動治療"
  },
  {
    "code" : "F08Z6ZZ",
    "display" : "心理社會技巧日常生活活動治療",
    "definition" : "心理社會技巧日常生活活動治療"
  },
  {
    "code" : "F08Z7BZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用物理因子",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用物理因子"
  },
  {
    "code" : "F08Z7CZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用機械設備",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用機械設備"
  },
  {
    "code" : "F08Z7DZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用電療設備",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用電療設備"
  },
  {
    "code" : "F08Z7EZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用矯具",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用矯具"
  },
  {
    "code" : "F08Z7FZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F08Z7GZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用有氧耐力和體能設備",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用有氧耐力和體能設備"
  },
  {
    "code" : "F08Z7UZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用義肢",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用義肢"
  },
  {
    "code" : "F08Z7YZ",
    "display" : "職業活動及功能性社會或工作重整能力治療，使用其他設備",
    "definition" : "職業活動及功能性社會或工作重整能力治療，使用其他設備"
  },
  {
    "code" : "F08Z7ZZ",
    "display" : "職業活動及功能性社會或工作重整能力日常生活活動治療",
    "definition" : "職業活動及功能性社會或工作重整能力日常生活活動治療"
  },
  {
    "code" : "F09Z0KZ",
    "display" : "聽力及相關疾病諮詢治療，使用視聽設備",
    "definition" : "聽力及相關疾病諮詢治療，使用視聽設備"
  },
  {
    "code" : "F09Z0ZZ",
    "display" : "聽力及相關疾病諮詢聽力治療",
    "definition" : "聽力及相關疾病諮詢聽力治療"
  },
  {
    "code" : "F09Z1KZ",
    "display" : "聽力及相關疾病預防治療，使用視聽設備",
    "definition" : "聽力及相關疾病預防治療，使用視聽設備"
  },
  {
    "code" : "F09Z1ZZ",
    "display" : "聽力及相關疾病預防聽力治療",
    "definition" : "聽力及相關疾病預防聽力治療"
  },
  {
    "code" : "F09Z2KZ",
    "display" : "聽覺處理治療，使用視聽設備",
    "definition" : "聽覺處理治療，使用視聽設備"
  },
  {
    "code" : "F09Z2LZ",
    "display" : "聽覺處理治療，使用助聽設備",
    "definition" : "聽覺處理治療，使用助聽設備"
  },
  {
    "code" : "F09Z2PZ",
    "display" : "聽覺處理治療，使用電腦",
    "definition" : "聽覺處理治療，使用電腦"
  },
  {
    "code" : "F09Z2YZ",
    "display" : "聽覺處理治療，使用其他設備",
    "definition" : "聽覺處理治療，使用其他設備"
  },
  {
    "code" : "F09Z2ZZ",
    "display" : "聽覺處理聽力治療",
    "definition" : "聽覺處理聽力治療"
  },
  {
    "code" : "F09Z3XZ",
    "display" : "耵聹管理治療，使用耵聹管理",
    "definition" : "耵聹管理治療，使用耵聹管理"
  },
  {
    "code" : "F09Z3ZZ",
    "display" : "耵聹管理聽力治療",
    "definition" : "耵聹管理聽力治療"
  },
  {
    "code" : "F0BZ01Z",
    "display" : "人工電子耳復健治療，使用聽力計",
    "definition" : "人工電子耳復健治療，使用聽力計"
  },
  {
    "code" : "F0BZ02Z",
    "display" : "人工電子耳復健治療，使用聲場/隔音室",
    "definition" : "人工電子耳復健治療，使用聲場/隔音室"
  },
  {
    "code" : "F0BZ09Z",
    "display" : "人工電子耳復健治療，使用人工電子耳",
    "definition" : "人工電子耳復健治療，使用人工電子耳"
  },
  {
    "code" : "F0BZ0KZ",
    "display" : "人工電子耳復健治療，使用視聽設備",
    "definition" : "人工電子耳復健治療，使用視聽設備"
  },
  {
    "code" : "F0BZ0PZ",
    "display" : "人工電子耳復健治療，使用電腦",
    "definition" : "人工電子耳復健治療，使用電腦"
  },
  {
    "code" : "F0BZ0YZ",
    "display" : "人工電子耳復健治療，使用其他設備",
    "definition" : "人工電子耳復健治療，使用其他設備"
  },
  {
    "code" : "F0C33EZ",
    "display" : "全身神經系統姿勢控制治療，使用矯具",
    "definition" : "全身神經系統姿勢控制治療，使用矯具"
  },
  {
    "code" : "F0C33FZ",
    "display" : "全身神經系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身神經系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0C33UZ",
    "display" : "全身神經系統姿勢控制治療，使用義肢",
    "definition" : "全身神經系統姿勢控制治療，使用義肢"
  },
  {
    "code" : "F0C33YZ",
    "display" : "全身神經系統姿勢控制治療，使用其他設備",
    "definition" : "全身神經系統姿勢控制治療，使用其他設備"
  },
  {
    "code" : "F0C33ZZ",
    "display" : "全身神經系統姿勢控制前庭治療",
    "definition" : "全身神經系統姿勢控制前庭治療"
  },
  {
    "code" : "F0CH3EZ",
    "display" : "全身皮膚系統姿勢控制治療，使用矯具",
    "definition" : "全身皮膚系統姿勢控制治療，使用矯具"
  },
  {
    "code" : "F0CH3FZ",
    "display" : "全身皮膚系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身皮膚系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0CH3UZ",
    "display" : "全身皮膚系統姿勢控制治療，使用義肢",
    "definition" : "全身皮膚系統姿勢控制治療，使用義肢"
  },
  {
    "code" : "F0CH3YZ",
    "display" : "全身皮膚系統姿勢控制治療，使用其他設備",
    "definition" : "全身皮膚系統姿勢控制治療，使用其他設備"
  },
  {
    "code" : "F0CH3ZZ",
    "display" : "全身皮膚系統姿勢控制前庭治療",
    "definition" : "全身皮膚系統姿勢控制前庭治療"
  },
  {
    "code" : "F0CM3EZ",
    "display" : "全身肌肉骨骼系統姿勢控制治療，使用矯具",
    "definition" : "全身肌肉骨骼系統姿勢控制治療，使用矯具"
  },
  {
    "code" : "F0CM3FZ",
    "display" : "全身肌肉骨骼系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "全身肌肉骨骼系統姿勢控制治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0CM3UZ",
    "display" : "全身肌肉骨骼系統姿勢控制治療，使用義肢",
    "definition" : "全身肌肉骨骼系統姿勢控制治療，使用義肢"
  },
  {
    "code" : "F0CM3YZ",
    "display" : "全身肌肉骨骼系統姿勢控制治療，使用其他設備",
    "definition" : "全身肌肉骨骼系統姿勢控制治療，使用其他設備"
  },
  {
    "code" : "F0CM3ZZ",
    "display" : "全身肌肉骨骼系統姿勢控制前庭治療",
    "definition" : "全身肌肉骨骼系統姿勢控制前庭治療"
  },
  {
    "code" : "F0CZ08Z",
    "display" : "前庭治療，使用前庭/平衡設備",
    "definition" : "前庭治療，使用前庭/平衡設備"
  },
  {
    "code" : "F0CZ0ZZ",
    "display" : "前庭前庭治療",
    "definition" : "前庭前庭治療"
  },
  {
    "code" : "F0CZ1KZ",
    "display" : "知覺處理治療，使用視聽設備",
    "definition" : "知覺處理治療，使用視聽設備"
  },
  {
    "code" : "F0CZ1LZ",
    "display" : "知覺處理治療，使用助聽設備",
    "definition" : "知覺處理治療，使用助聽設備"
  },
  {
    "code" : "F0CZ1NZ",
    "display" : "知覺處理治療，使用生物感覺反饋設備",
    "definition" : "知覺處理治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F0CZ1PZ",
    "display" : "知覺處理治療，使用電腦",
    "definition" : "知覺處理治療，使用電腦"
  },
  {
    "code" : "F0CZ1QZ",
    "display" : "知覺處理治療，使用語言分析",
    "definition" : "知覺處理治療，使用語言分析"
  },
  {
    "code" : "F0CZ1SZ",
    "display" : "知覺處理治療，使用嗓音分析設備",
    "definition" : "知覺處理治療，使用嗓音分析設備"
  },
  {
    "code" : "F0CZ1TZ",
    "display" : "知覺處理治療，使用氣動學設備",
    "definition" : "知覺處理治療，使用氣動學設備"
  },
  {
    "code" : "F0CZ1YZ",
    "display" : "知覺處理治療，使用其他設備",
    "definition" : "知覺處理治療，使用其他設備"
  },
  {
    "code" : "F0CZ1ZZ",
    "display" : "知覺處理前庭治療",
    "definition" : "知覺處理前庭治療"
  },
  {
    "code" : "F0CZ2KZ",
    "display" : "視覺動作整合治療，使用視聽設備",
    "definition" : "視覺動作整合治療，使用視聽設備"
  },
  {
    "code" : "F0CZ2LZ",
    "display" : "視覺動作整合治療，使用助聽設備",
    "definition" : "視覺動作整合治療，使用助聽設備"
  },
  {
    "code" : "F0CZ2NZ",
    "display" : "視覺動作整合治療，使用生物感覺反饋設備",
    "definition" : "視覺動作整合治療，使用生物感覺反饋設備"
  },
  {
    "code" : "F0CZ2PZ",
    "display" : "視覺動作整合治療，使用電腦",
    "definition" : "視覺動作整合治療，使用電腦"
  },
  {
    "code" : "F0CZ2QZ",
    "display" : "視覺動作整合治療，使用語言分析",
    "definition" : "視覺動作整合治療，使用語言分析"
  },
  {
    "code" : "F0CZ2SZ",
    "display" : "視覺動作整合治療，使用嗓音分析設備",
    "definition" : "視覺動作整合治療，使用嗓音分析設備"
  },
  {
    "code" : "F0CZ2TZ",
    "display" : "視覺動作整合治療，使用氣動學設備",
    "definition" : "視覺動作整合治療，使用氣動學設備"
  },
  {
    "code" : "F0CZ2YZ",
    "display" : "視覺動作整合治療，使用其他設備",
    "definition" : "視覺動作整合治療，使用其他設備"
  },
  {
    "code" : "F0CZ2ZZ",
    "display" : "視覺動作整合前庭治療",
    "definition" : "視覺動作整合前庭治療"
  },
  {
    "code" : "F0DZ05Z",
    "display" : "耳鳴遮蔽器裝置調適，使用助聽器選擇/調整/測試設備",
    "definition" : "耳鳴遮蔽器裝置調適，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F0DZ0ZZ",
    "display" : "耳鳴遮蔽器裝置調適",
    "definition" : "耳鳴遮蔽器裝置調適"
  },
  {
    "code" : "F0DZ11Z",
    "display" : "單耳助聽器裝置調適，使用聽力計",
    "definition" : "單耳助聽器裝置調適，使用聽力計"
  },
  {
    "code" : "F0DZ12Z",
    "display" : "單耳助聽器裝置調適，使用聲場/隔音室",
    "definition" : "單耳助聽器裝置調適，使用聲場/隔音室"
  },
  {
    "code" : "F0DZ15Z",
    "display" : "單耳助聽器裝置調適，使用助聽器選擇/調整/測試設備",
    "definition" : "單耳助聽器裝置調適，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F0DZ1KZ",
    "display" : "單耳助聽器裝置調適，使用視聽設備",
    "definition" : "單耳助聽器裝置調適，使用視聽設備"
  },
  {
    "code" : "F0DZ1LZ",
    "display" : "單耳助聽器裝置調適，使用助聽設備",
    "definition" : "單耳助聽器裝置調適，使用助聽設備"
  },
  {
    "code" : "F0DZ1ZZ",
    "display" : "單耳助聽器裝置調適",
    "definition" : "單耳助聽器裝置調適"
  },
  {
    "code" : "F0DZ21Z",
    "display" : "雙耳助聽器裝置調適，使用聽力計",
    "definition" : "雙耳助聽器裝置調適，使用聽力計"
  },
  {
    "code" : "F0DZ22Z",
    "display" : "雙耳助聽器裝置調適，使用聲場/隔音室",
    "definition" : "雙耳助聽器裝置調適，使用聲場/隔音室"
  },
  {
    "code" : "F0DZ25Z",
    "display" : "雙耳助聽器裝置調適，使用助聽器選擇/調整/測試設備",
    "definition" : "雙耳助聽器裝置調適，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F0DZ2KZ",
    "display" : "雙耳助聽器裝置調適，使用視聽設備",
    "definition" : "雙耳助聽器裝置調適，使用視聽設備"
  },
  {
    "code" : "F0DZ2LZ",
    "display" : "雙耳助聽器裝置調適，使用助聽設備",
    "definition" : "雙耳助聽器裝置調適，使用助聽設備"
  },
  {
    "code" : "F0DZ2ZZ",
    "display" : "雙耳助聽器裝置調適",
    "definition" : "雙耳助聽器裝置調適"
  },
  {
    "code" : "F0DZ3MZ",
    "display" : "輔助性/替代性溝通系統裝置調適，使用輔助性/替代交流",
    "definition" : "輔助性/替代性溝通系統裝置調適，使用輔助性/替代交流"
  },
  {
    "code" : "F0DZ4SZ",
    "display" : "發聲輔助器裝置調適，使用嗓音分析設備",
    "definition" : "發聲輔助器裝置調適，使用嗓音分析設備"
  },
  {
    "code" : "F0DZ4VZ",
    "display" : "發聲輔助器裝置調適，使用人工發聲器",
    "definition" : "發聲輔助器裝置調適，使用人工發聲器"
  },
  {
    "code" : "F0DZ51Z",
    "display" : "助聽裝置裝置調適，使用聽力計",
    "definition" : "助聽裝置裝置調適，使用聽力計"
  },
  {
    "code" : "F0DZ52Z",
    "display" : "助聽裝置裝置調適，使用聲場/隔音室",
    "definition" : "助聽裝置裝置調適，使用聲場/隔音室"
  },
  {
    "code" : "F0DZ55Z",
    "display" : "助聽裝置裝置調適，使用助聽器選擇/調整/測試設備",
    "definition" : "助聽裝置裝置調適，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F0DZ5KZ",
    "display" : "助聽裝置裝置調適，使用視聽設備",
    "definition" : "助聽裝置裝置調適，使用視聽設備"
  },
  {
    "code" : "F0DZ5LZ",
    "display" : "助聽裝置裝置調適，使用助聽設備",
    "definition" : "助聽裝置裝置調適，使用助聽設備"
  },
  {
    "code" : "F0DZ5ZZ",
    "display" : "助聽裝置裝置調適",
    "definition" : "助聽裝置裝置調適"
  },
  {
    "code" : "F0DZ6EZ",
    "display" : "動態矯具裝置調適，使用矯具",
    "definition" : "動態矯具裝置調適，使用矯具"
  },
  {
    "code" : "F0DZ6FZ",
    "display" : "動態矯具裝置調適，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "動態矯具裝置調適，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0DZ6UZ",
    "display" : "動態矯具裝置調適，使用義肢",
    "definition" : "動態矯具裝置調適，使用義肢"
  },
  {
    "code" : "F0DZ6ZZ",
    "display" : "動態矯具裝置調適",
    "definition" : "動態矯具裝置調適"
  },
  {
    "code" : "F0DZ7EZ",
    "display" : "靜態輔具裝置調適，使用矯具",
    "definition" : "靜態輔具裝置調適，使用矯具"
  },
  {
    "code" : "F0DZ7FZ",
    "display" : "靜態輔具裝置調適，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "靜態輔具裝置調適，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0DZ7UZ",
    "display" : "靜態輔具裝置調適，使用義肢",
    "definition" : "靜態輔具裝置調適，使用義肢"
  },
  {
    "code" : "F0DZ7ZZ",
    "display" : "靜態輔具裝置調適",
    "definition" : "靜態輔具裝置調適"
  },
  {
    "code" : "F0DZ8EZ",
    "display" : "義肢裝置調適，使用矯具",
    "definition" : "義肢裝置調適，使用矯具"
  },
  {
    "code" : "F0DZ8FZ",
    "display" : "義肢裝置調適，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "義肢裝置調適，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0DZ8UZ",
    "display" : "義肢裝置調適，使用義肢",
    "definition" : "義肢裝置調適，使用義肢"
  },
  {
    "code" : "F0DZ8ZZ",
    "display" : "義肢裝置調適",
    "definition" : "義肢裝置調適"
  },
  {
    "code" : "F0DZ9EZ",
    "display" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用矯具",
    "definition" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用矯具"
  },
  {
    "code" : "F0DZ9FZ",
    "display" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0DZ9UZ",
    "display" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用義肢",
    "definition" : "輔助性、適應性、支持性或防護性裝置裝置調適，使用義肢"
  },
  {
    "code" : "F0DZ9ZZ",
    "display" : "輔助性、適應性、支持性或防護性裝置裝置調適",
    "definition" : "輔助性、適應性、支持性或防護性裝置裝置調適"
  },
  {
    "code" : "F0FZ0EZ",
    "display" : "訓練照顧者沐浴/淋浴技術，使用矯具",
    "definition" : "訓練照顧者沐浴/淋浴技術，使用矯具"
  },
  {
    "code" : "F0FZ0FZ",
    "display" : "訓練照顧者沐浴/淋浴技術，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者沐浴/淋浴技術，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ0UZ",
    "display" : "訓練照顧者沐浴/淋浴技術，使用義肢",
    "definition" : "訓練照顧者沐浴/淋浴技術，使用義肢"
  },
  {
    "code" : "F0FZ0ZZ",
    "display" : "訓練照顧者沐浴/淋浴技術",
    "definition" : "訓練照顧者沐浴/淋浴技術"
  },
  {
    "code" : "F0FZ1EZ",
    "display" : "訓練照顧者穿脫衣物，使用矯具",
    "definition" : "訓練照顧者穿脫衣物，使用矯具"
  },
  {
    "code" : "F0FZ1FZ",
    "display" : "訓練照顧者穿脫衣物，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者穿脫衣物，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ1UZ",
    "display" : "訓練照顧者穿脫衣物，使用義肢",
    "definition" : "訓練照顧者穿脫衣物，使用義肢"
  },
  {
    "code" : "F0FZ1ZZ",
    "display" : "訓練照顧者穿脫衣物",
    "definition" : "訓練照顧者穿脫衣物"
  },
  {
    "code" : "F0FZ2EZ",
    "display" : "訓練照顧者餵食及飲食，使用矯具",
    "definition" : "訓練照顧者餵食及飲食，使用矯具"
  },
  {
    "code" : "F0FZ2FZ",
    "display" : "訓練照顧者餵食及飲食，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者餵食及飲食，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ2UZ",
    "display" : "訓練照顧者餵食及飲食，使用義肢",
    "definition" : "訓練照顧者餵食及飲食，使用義肢"
  },
  {
    "code" : "F0FZ2ZZ",
    "display" : "訓練照顧者餵食及飲食",
    "definition" : "訓練照顧者餵食及飲食"
  },
  {
    "code" : "F0FZ3EZ",
    "display" : "訓練照顧者盥洗/個人衛生，使用矯具",
    "definition" : "訓練照顧者盥洗/個人衛生，使用矯具"
  },
  {
    "code" : "F0FZ3FZ",
    "display" : "訓練照顧者盥洗/個人衛生，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者盥洗/個人衛生，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ3UZ",
    "display" : "訓練照顧者盥洗/個人衛生，使用義肢",
    "definition" : "訓練照顧者盥洗/個人衛生，使用義肢"
  },
  {
    "code" : "F0FZ3ZZ",
    "display" : "訓練照顧者盥洗/個人衛生",
    "definition" : "訓練照顧者盥洗/個人衛生"
  },
  {
    "code" : "F0FZ4EZ",
    "display" : "訓練照顧者床上活動，使用矯具",
    "definition" : "訓練照顧者床上活動，使用矯具"
  },
  {
    "code" : "F0FZ4FZ",
    "display" : "訓練照顧者床上活動，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者床上活動，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ4UZ",
    "display" : "訓練照顧者床上活動，使用義肢",
    "definition" : "訓練照顧者床上活動，使用義肢"
  },
  {
    "code" : "F0FZ4ZZ",
    "display" : "訓練照顧者床上活動",
    "definition" : "訓練照顧者床上活動"
  },
  {
    "code" : "F0FZ5EZ",
    "display" : "訓練照顧者移位，使用矯具",
    "definition" : "訓練照顧者移位，使用矯具"
  },
  {
    "code" : "F0FZ5FZ",
    "display" : "訓練照顧者移位，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者移位，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ5UZ",
    "display" : "訓練照顧者移位，使用義肢",
    "definition" : "訓練照顧者移位，使用義肢"
  },
  {
    "code" : "F0FZ5ZZ",
    "display" : "訓練照顧者移位",
    "definition" : "訓練照顧者移位"
  },
  {
    "code" : "F0FZ6EZ",
    "display" : "訓練照顧者輪椅移動，使用矯具",
    "definition" : "訓練照顧者輪椅移動，使用矯具"
  },
  {
    "code" : "F0FZ6FZ",
    "display" : "訓練照顧者輪椅移動，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者輪椅移動，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ6UZ",
    "display" : "訓練照顧者輪椅移動，使用義肢",
    "definition" : "訓練照顧者輪椅移動，使用義肢"
  },
  {
    "code" : "F0FZ6ZZ",
    "display" : "訓練照顧者輪椅移動",
    "definition" : "訓練照顧者輪椅移動"
  },
  {
    "code" : "F0FZ7EZ",
    "display" : "訓練照顧者運動治療，使用矯具",
    "definition" : "訓練照顧者運動治療，使用矯具"
  },
  {
    "code" : "F0FZ7FZ",
    "display" : "訓練照顧者運動治療，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者運動治療，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ7UZ",
    "display" : "訓練照顧者運動治療，使用義肢",
    "definition" : "訓練照顧者運動治療，使用義肢"
  },
  {
    "code" : "F0FZ7ZZ",
    "display" : "訓練照顧者運動治療",
    "definition" : "訓練照顧者運動治療"
  },
  {
    "code" : "F0FZ8EZ",
    "display" : "訓練照顧者呼吸道清除技術，使用矯具",
    "definition" : "訓練照顧者呼吸道清除技術，使用矯具"
  },
  {
    "code" : "F0FZ8FZ",
    "display" : "訓練照顧者呼吸道清除技術，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者呼吸道清除技術，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ8UZ",
    "display" : "訓練照顧者呼吸道清除技術，使用義肢",
    "definition" : "訓練照顧者呼吸道清除技術，使用義肢"
  },
  {
    "code" : "F0FZ8ZZ",
    "display" : "訓練照顧者呼吸道清除技術",
    "definition" : "訓練照顧者呼吸道清除技術"
  },
  {
    "code" : "F0FZ9EZ",
    "display" : "訓練照顧者傷口處理，使用矯具",
    "definition" : "訓練照顧者傷口處理，使用矯具"
  },
  {
    "code" : "F0FZ9FZ",
    "display" : "訓練照顧者傷口處理，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者傷口處理，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZ9UZ",
    "display" : "訓練照顧者傷口處理，使用義肢",
    "definition" : "訓練照顧者傷口處理，使用義肢"
  },
  {
    "code" : "F0FZ9ZZ",
    "display" : "訓練照顧者傷口處理",
    "definition" : "訓練照顧者傷口處理"
  },
  {
    "code" : "F0FZBEZ",
    "display" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用矯具",
    "definition" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用矯具"
  },
  {
    "code" : "F0FZBFZ",
    "display" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZBUZ",
    "display" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用義肢",
    "definition" : "訓練照顧者職業活動及功能性社會或工作重整能力，使用義肢"
  },
  {
    "code" : "F0FZBZZ",
    "display" : "訓練照顧者職業活動及功能性社會或工作重整能力",
    "definition" : "訓練照顧者職業活動及功能性社會或工作重整能力"
  },
  {
    "code" : "F0FZCEZ",
    "display" : "訓練照顧者步態訓練/功能步行，使用矯具",
    "definition" : "訓練照顧者步態訓練/功能步行，使用矯具"
  },
  {
    "code" : "F0FZCFZ",
    "display" : "訓練照顧者步態訓練/功能步行，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者步態訓練/功能步行，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZCUZ",
    "display" : "訓練照顧者步態訓練/功能步行，使用義肢",
    "definition" : "訓練照顧者步態訓練/功能步行，使用義肢"
  },
  {
    "code" : "F0FZCZZ",
    "display" : "訓練照顧者步態訓練/功能步行",
    "definition" : "訓練照顧者步態訓練/功能步行"
  },
  {
    "code" : "F0FZDEZ",
    "display" : "訓練照顧者支具的應用、正確使用及保養，使用矯具",
    "definition" : "訓練照顧者支具的應用、正確使用及保養，使用矯具"
  },
  {
    "code" : "F0FZDFZ",
    "display" : "訓練照顧者支具的應用、正確使用及保養，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者支具的應用、正確使用及保養，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZDUZ",
    "display" : "訓練照顧者支具的應用、正確使用及保養，使用義肢",
    "definition" : "訓練照顧者支具的應用、正確使用及保養，使用義肢"
  },
  {
    "code" : "F0FZDZZ",
    "display" : "訓練照顧者支具的應用、正確使用及保養",
    "definition" : "訓練照顧者支具的應用、正確使用及保養"
  },
  {
    "code" : "F0FZFEZ",
    "display" : "訓練照顧者矯具的應用、適當使用及保養，使用矯具",
    "definition" : "訓練照顧者矯具的應用、適當使用及保養，使用矯具"
  },
  {
    "code" : "F0FZFFZ",
    "display" : "訓練照顧者矯具的應用、適當使用及保養，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者矯具的應用、適當使用及保養，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZFUZ",
    "display" : "訓練照顧者矯具的應用、適當使用及保養，使用義肢",
    "definition" : "訓練照顧者矯具的應用、適當使用及保養，使用義肢"
  },
  {
    "code" : "F0FZFZZ",
    "display" : "訓練照顧者矯具的應用、適當使用及保養",
    "definition" : "訓練照顧者矯具的應用、適當使用及保養"
  },
  {
    "code" : "F0FZGEZ",
    "display" : "訓練照顧者義肢的應用、適當使用及保養，使用矯具",
    "definition" : "訓練照顧者義肢的應用、適當使用及保養，使用矯具"
  },
  {
    "code" : "F0FZGFZ",
    "display" : "訓練照顧者義肢的應用、適當使用及保養，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者義肢的應用、適當使用及保養，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZGUZ",
    "display" : "訓練照顧者義肢的應用、適當使用及保養，使用義肢",
    "definition" : "訓練照顧者義肢的應用、適當使用及保養，使用義肢"
  },
  {
    "code" : "F0FZGZZ",
    "display" : "訓練照顧者義肢的應用、適當使用及保養",
    "definition" : "訓練照顧者義肢的應用、適當使用及保養"
  },
  {
    "code" : "F0FZHEZ",
    "display" : "訓練照顧者家庭管理，使用矯具",
    "definition" : "訓練照顧者家庭管理，使用矯具"
  },
  {
    "code" : "F0FZHFZ",
    "display" : "訓練照顧者家庭管理，使用輔助性、適當性、支持性或預防性設備",
    "definition" : "訓練照顧者家庭管理，使用輔助性、適當性、支持性或預防性設備"
  },
  {
    "code" : "F0FZHUZ",
    "display" : "訓練照顧者家庭管理，使用義肢",
    "definition" : "訓練照顧者家庭管理，使用義肢"
  },
  {
    "code" : "F0FZHZZ",
    "display" : "訓練照顧者家庭管理",
    "definition" : "訓練照顧者家庭管理"
  },
  {
    "code" : "F0FZJKZ",
    "display" : "訓練照顧者溝通技巧，使用視聽設備",
    "definition" : "訓練照顧者溝通技巧，使用視聽設備"
  },
  {
    "code" : "F0FZJLZ",
    "display" : "訓練照顧者溝通技巧，使用助聽設備",
    "definition" : "訓練照顧者溝通技巧，使用助聽設備"
  },
  {
    "code" : "F0FZJMZ",
    "display" : "訓練照顧者溝通技巧，使用輔助性/替代交流",
    "definition" : "訓練照顧者溝通技巧，使用輔助性/替代交流"
  },
  {
    "code" : "F0FZJPZ",
    "display" : "訓練照顧者溝通技巧，使用電腦",
    "definition" : "訓練照顧者溝通技巧，使用電腦"
  },
  {
    "code" : "F0FZJZZ",
    "display" : "訓練照顧者溝通技巧",
    "definition" : "訓練照顧者溝通技巧"
  },
  {
    "code" : "F13Z00Z",
    "display" : "聽力篩檢評估，使用職業性聽力設備",
    "definition" : "聽力篩檢評估，使用職業性聽力設備"
  },
  {
    "code" : "F13Z01Z",
    "display" : "聽力篩檢評估，使用聽力計",
    "definition" : "聽力篩檢評估，使用聽力計"
  },
  {
    "code" : "F13Z02Z",
    "display" : "聽力篩檢評估，使用聲場/隔音室",
    "definition" : "聽力篩檢評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z03Z",
    "display" : "聽力篩檢評估，使用鼓室圖設備",
    "definition" : "聽力篩檢評估，使用鼓室圖設備"
  },
  {
    "code" : "F13Z08Z",
    "display" : "聽力篩檢評估，使用前庭/平衡設備",
    "definition" : "聽力篩檢評估，使用前庭/平衡設備"
  },
  {
    "code" : "F13Z09Z",
    "display" : "聽力篩檢評估，使用人工電子耳",
    "definition" : "聽力篩檢評估，使用人工電子耳"
  },
  {
    "code" : "F13Z0ZZ",
    "display" : "聽力篩檢評估",
    "definition" : "聽力篩檢評估"
  },
  {
    "code" : "F13Z10Z",
    "display" : "氣導純音聽力評估，使用職業性聽力設備",
    "definition" : "氣導純音聽力評估，使用職業性聽力設備"
  },
  {
    "code" : "F13Z11Z",
    "display" : "氣導純音聽力評估，使用聽力計",
    "definition" : "氣導純音聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z12Z",
    "display" : "氣導純音聽力評估，使用聲場/隔音室",
    "definition" : "氣導純音聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z1ZZ",
    "display" : "氣導純音聽力評估",
    "definition" : "氣導純音聽力評估"
  },
  {
    "code" : "F13Z20Z",
    "display" : "氣導及骨導純音聽力評估，使用職業性聽力設備",
    "definition" : "氣導及骨導純音聽力評估，使用職業性聽力設備"
  },
  {
    "code" : "F13Z21Z",
    "display" : "氣導及骨導純音聽力評估，使用聽力計",
    "definition" : "氣導及骨導純音聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z22Z",
    "display" : "氣導及骨導純音聽力評估，使用聲場/隔音室",
    "definition" : "氣導及骨導純音聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z2ZZ",
    "display" : "氣導及骨導純音聽力評估",
    "definition" : "氣導及骨導純音聽力評估"
  },
  {
    "code" : "F13Z31Z",
    "display" : "貝凱西聽力評估，使用聽力計",
    "definition" : "貝凱西聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z32Z",
    "display" : "貝凱西聽力評估，使用聲場/隔音室",
    "definition" : "貝凱西聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z3ZZ",
    "display" : "貝凱西聽力評估",
    "definition" : "貝凱西聽力評估"
  },
  {
    "code" : "F13Z41Z",
    "display" : "制約遊戲聽力評估，使用聽力計",
    "definition" : "制約遊戲聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z42Z",
    "display" : "制約遊戲聽力評估，使用聲場/隔音室",
    "definition" : "制約遊戲聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z4KZ",
    "display" : "制約遊戲聽力評估，使用視聽設備",
    "definition" : "制約遊戲聽力評估，使用視聽設備"
  },
  {
    "code" : "F13Z4ZZ",
    "display" : "制約遊戲聽力評估",
    "definition" : "制約遊戲聽力評估"
  },
  {
    "code" : "F13Z51Z",
    "display" : "選擇圖片法聽力評估，使用聽力計",
    "definition" : "選擇圖片法聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z52Z",
    "display" : "選擇圖片法聽力評估，使用聲場/隔音室",
    "definition" : "選擇圖片法聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z5KZ",
    "display" : "選擇圖片法聽力評估，使用視聽設備",
    "definition" : "選擇圖片法聽力評估，使用視聽設備"
  },
  {
    "code" : "F13Z5ZZ",
    "display" : "選擇圖片法聽力評估",
    "definition" : "選擇圖片法聽力評估"
  },
  {
    "code" : "F13Z61Z",
    "display" : "視覺強化聽力評估，使用聽力計",
    "definition" : "視覺強化聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z62Z",
    "display" : "視覺強化聽力評估，使用聲場/隔音室",
    "definition" : "視覺強化聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z6ZZ",
    "display" : "視覺強化聽力評估",
    "definition" : "視覺強化聽力評估"
  },
  {
    "code" : "F13Z71Z",
    "display" : "雙/單耳交替響度平衡評估，使用聽力計",
    "definition" : "雙/單耳交替響度平衡評估，使用聽力計"
  },
  {
    "code" : "F13Z7KZ",
    "display" : "雙/單耳交替響度平衡評估，使用視聽設備",
    "definition" : "雙/單耳交替響度平衡評估，使用視聽設備"
  },
  {
    "code" : "F13Z7ZZ",
    "display" : "雙/單耳交替響度平衡評估",
    "definition" : "雙/單耳交替響度平衡評估"
  },
  {
    "code" : "F13Z83Z",
    "display" : "音調衰減評估，使用鼓室圖設備",
    "definition" : "音調衰減評估，使用鼓室圖設備"
  },
  {
    "code" : "F13Z84Z",
    "display" : "音調衰減評估，使用電聲導抗/聲反射設備",
    "definition" : "音調衰減評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13Z8ZZ",
    "display" : "音調衰減評估",
    "definition" : "音調衰減評估"
  },
  {
    "code" : "F13Z91Z",
    "display" : "短增量敏感指數聽力評估，使用聽力計",
    "definition" : "短增量敏感指數聽力評估，使用聽力計"
  },
  {
    "code" : "F13Z92Z",
    "display" : "短增量敏感指數聽力評估，使用聲場/隔音室",
    "definition" : "短增量敏感指數聽力評估，使用聲場/隔音室"
  },
  {
    "code" : "F13Z9ZZ",
    "display" : "短增量敏感指數聽力評估",
    "definition" : "短增量敏感指數聽力評估"
  },
  {
    "code" : "F13ZB1Z",
    "display" : "史坦格詐聾評估，使用聽力計",
    "definition" : "史坦格詐聾評估，使用聽力計"
  },
  {
    "code" : "F13ZB2Z",
    "display" : "史坦格詐聾評估，使用聲場/隔音室",
    "definition" : "史坦格詐聾評估，使用聲場/隔音室"
  },
  {
    "code" : "F13ZBZZ",
    "display" : "史坦格詐聾評估",
    "definition" : "史坦格詐聾評估"
  },
  {
    "code" : "F13ZC1Z",
    "display" : "純音史坦格詐聾評估，使用聽力計",
    "definition" : "純音史坦格詐聾評估，使用聽力計"
  },
  {
    "code" : "F13ZC2Z",
    "display" : "純音史坦格詐聾評估，使用聲場/隔音室",
    "definition" : "純音史坦格詐聾評估，使用聲場/隔音室"
  },
  {
    "code" : "F13ZCZZ",
    "display" : "純音史坦格詐聾評估",
    "definition" : "純音史坦格詐聾評估"
  },
  {
    "code" : "F13ZD3Z",
    "display" : "鼓室圖檢查聽力評估，使用鼓室圖設備",
    "definition" : "鼓室圖檢查聽力評估，使用鼓室圖設備"
  },
  {
    "code" : "F13ZD4Z",
    "display" : "鼓室圖檢查聽力評估，使用電聲導抗/聲反射設備",
    "definition" : "鼓室圖檢查聽力評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZDZZ",
    "display" : "鼓室圖檢查聽力評估",
    "definition" : "鼓室圖檢查聽力評估"
  },
  {
    "code" : "F13ZF3Z",
    "display" : "歐氏管功能評估，使用鼓室圖設備",
    "definition" : "歐氏管功能評估，使用鼓室圖設備"
  },
  {
    "code" : "F13ZF4Z",
    "display" : "歐氏管功能評估，使用電聲導抗/聲反射設備",
    "definition" : "歐氏管功能評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZFZZ",
    "display" : "歐氏管功能評估",
    "definition" : "歐氏管功能評估"
  },
  {
    "code" : "F13ZG3Z",
    "display" : "聽反射模式評估，使用鼓室圖設備",
    "definition" : "聽反射模式評估，使用鼓室圖設備"
  },
  {
    "code" : "F13ZG4Z",
    "display" : "聽反射模式評估，使用電聲導抗/聲反射設備",
    "definition" : "聽反射模式評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZGZZ",
    "display" : "聽反射模式評估",
    "definition" : "聽反射模式評估"
  },
  {
    "code" : "F13ZH3Z",
    "display" : "聽反射閾值評估，使用鼓室圖設備",
    "definition" : "聽反射閾值評估，使用鼓室圖設備"
  },
  {
    "code" : "F13ZH4Z",
    "display" : "聽反射閾值評估，使用電聲導抗/聲反射設備",
    "definition" : "聽反射閾值評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZHZZ",
    "display" : "聽反射閾值評估",
    "definition" : "聽反射閾值評估"
  },
  {
    "code" : "F13ZJ3Z",
    "display" : "聽反射衰減評估，使用鼓室圖設備",
    "definition" : "聽反射衰減評估，使用鼓室圖設備"
  },
  {
    "code" : "F13ZJ4Z",
    "display" : "聽反射衰減評估，使用電聲導抗/聲反射設備",
    "definition" : "聽反射衰減評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZJZZ",
    "display" : "聽反射衰減評估",
    "definition" : "聽反射衰減評估"
  },
  {
    "code" : "F13ZK7Z",
    "display" : "耳蝸電位圖評估，使用電氣生理設備",
    "definition" : "耳蝸電位圖評估，使用電氣生理設備"
  },
  {
    "code" : "F13ZKZZ",
    "display" : "耳蝸電位圖評估",
    "definition" : "耳蝸電位圖評估"
  },
  {
    "code" : "F13ZL7Z",
    "display" : "聽覺誘發電位評估，使用電氣生理設備",
    "definition" : "聽覺誘發電位評估，使用電氣生理設備"
  },
  {
    "code" : "F13ZLZZ",
    "display" : "聽覺誘發電位評估",
    "definition" : "聽覺誘發電位評估"
  },
  {
    "code" : "F13ZM6Z",
    "display" : "篩檢性誘發耳聲傳射之聽力評估，使用耳聲傳射設備",
    "definition" : "篩檢性誘發耳聲傳射之聽力評估，使用耳聲傳射設備"
  },
  {
    "code" : "F13ZMZZ",
    "display" : "篩檢性誘發耳聲傳射之聽力評估",
    "definition" : "篩檢性誘發耳聲傳射之聽力評估"
  },
  {
    "code" : "F13ZN6Z",
    "display" : "診斷性誘發耳聲傳射之聽力評估，使用耳聲傳射設備",
    "definition" : "診斷性誘發耳聲傳射之聽力評估，使用耳聲傳射設備"
  },
  {
    "code" : "F13ZNZZ",
    "display" : "診斷性誘發耳聲傳射之聽力評估",
    "definition" : "診斷性誘發耳聲傳射之聽力評估"
  },
  {
    "code" : "F13ZP1Z",
    "display" : "聽力復健狀態評估，使用聽力計",
    "definition" : "聽力復健狀態評估，使用聽力計"
  },
  {
    "code" : "F13ZP2Z",
    "display" : "聽力復健狀態評估，使用聲場/隔音室",
    "definition" : "聽力復健狀態評估，使用聲場/隔音室"
  },
  {
    "code" : "F13ZP4Z",
    "display" : "聽力復健狀態評估，使用電聲導抗/聲反射設備",
    "definition" : "聽力復健狀態評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F13ZP9Z",
    "display" : "聽力復健狀態評估，使用人工電子耳",
    "definition" : "聽力復健狀態評估，使用人工電子耳"
  },
  {
    "code" : "F13ZPKZ",
    "display" : "聽力復健狀態評估，使用視聽設備",
    "definition" : "聽力復健狀態評估，使用視聽設備"
  },
  {
    "code" : "F13ZPLZ",
    "display" : "聽力復健狀態評估，使用助聽設備",
    "definition" : "聽力復健狀態評估，使用助聽設備"
  },
  {
    "code" : "F13ZPPZ",
    "display" : "聽力復健狀態評估，使用電腦",
    "definition" : "聽力復健狀態評估，使用電腦"
  },
  {
    "code" : "F13ZPZZ",
    "display" : "聽力復健狀態評估",
    "definition" : "聽力復健狀態評估"
  },
  {
    "code" : "F13ZQKZ",
    "display" : "聽覺處理評估，使用視聽設備",
    "definition" : "聽覺處理評估，使用視聽設備"
  },
  {
    "code" : "F13ZQPZ",
    "display" : "聽覺處理評估，使用電腦",
    "definition" : "聽覺處理評估，使用電腦"
  },
  {
    "code" : "F13ZQYZ",
    "display" : "聽覺處理評估，使用其他設備",
    "definition" : "聽覺處理評估，使用其他設備"
  },
  {
    "code" : "F13ZQZZ",
    "display" : "聽覺處理評估",
    "definition" : "聽覺處理評估"
  },
  {
    "code" : "F14Z01Z",
    "display" : "人工電子耳評估，使用聽力計",
    "definition" : "人工電子耳評估，使用聽力計"
  },
  {
    "code" : "F14Z02Z",
    "display" : "人工電子耳評估，使用聲場/隔音室",
    "definition" : "人工電子耳評估，使用聲場/隔音室"
  },
  {
    "code" : "F14Z03Z",
    "display" : "人工電子耳評估，使用鼓室圖設備",
    "definition" : "人工電子耳評估，使用鼓室圖設備"
  },
  {
    "code" : "F14Z04Z",
    "display" : "人工電子耳評估，使用電聲導抗/聲反射設備",
    "definition" : "人工電子耳評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F14Z05Z",
    "display" : "人工電子耳評估，使用助聽器選擇/調整/測試設備",
    "definition" : "人工電子耳評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z07Z",
    "display" : "人工電子耳評估，使用電氣生理設備",
    "definition" : "人工電子耳評估，使用電氣生理設備"
  },
  {
    "code" : "F14Z09Z",
    "display" : "人工電子耳評估，使用人工電子耳",
    "definition" : "人工電子耳評估，使用人工電子耳"
  },
  {
    "code" : "F14Z0KZ",
    "display" : "人工電子耳評估，使用視聽設備",
    "definition" : "人工電子耳評估，使用視聽設備"
  },
  {
    "code" : "F14Z0LZ",
    "display" : "人工電子耳評估，使用助聽設備",
    "definition" : "人工電子耳評估，使用助聽設備"
  },
  {
    "code" : "F14Z0PZ",
    "display" : "人工電子耳評估，使用電腦",
    "definition" : "人工電子耳評估，使用電腦"
  },
  {
    "code" : "F14Z0YZ",
    "display" : "人工電子耳評估，使用其他設備",
    "definition" : "人工電子耳評估，使用其他設備"
  },
  {
    "code" : "F14Z0ZZ",
    "display" : "人工電子耳評估",
    "definition" : "人工電子耳評估"
  },
  {
    "code" : "F14Z15Z",
    "display" : "耳管探針麥克風評估，使用助聽器選擇/調整/測試設備",
    "definition" : "耳管探針麥克風評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z1ZZ",
    "display" : "耳管探針麥克風評估",
    "definition" : "耳管探針麥克風評估"
  },
  {
    "code" : "F14Z21Z",
    "display" : "單耳助聽器評估，使用聽力計",
    "definition" : "單耳助聽器評估，使用聽力計"
  },
  {
    "code" : "F14Z22Z",
    "display" : "單耳助聽器評估，使用聲場/隔音室",
    "definition" : "單耳助聽器評估，使用聲場/隔音室"
  },
  {
    "code" : "F14Z23Z",
    "display" : "單耳助聽器評估，使用鼓室圖設備",
    "definition" : "單耳助聽器評估，使用鼓室圖設備"
  },
  {
    "code" : "F14Z24Z",
    "display" : "單耳助聽器評估，使用電聲導抗/聲反射設備",
    "definition" : "單耳助聽器評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F14Z25Z",
    "display" : "單耳助聽器評估，使用助聽器選擇/調整/測試設備",
    "definition" : "單耳助聽器評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z2KZ",
    "display" : "單耳助聽器評估，使用視聽設備",
    "definition" : "單耳助聽器評估，使用視聽設備"
  },
  {
    "code" : "F14Z2LZ",
    "display" : "單耳助聽器評估，使用助聽設備",
    "definition" : "單耳助聽器評估，使用助聽設備"
  },
  {
    "code" : "F14Z2PZ",
    "display" : "單耳助聽器評估，使用電腦",
    "definition" : "單耳助聽器評估，使用電腦"
  },
  {
    "code" : "F14Z2ZZ",
    "display" : "單耳助聽器評估",
    "definition" : "單耳助聽器評估"
  },
  {
    "code" : "F14Z31Z",
    "display" : "雙耳助聽器評估，使用聽力計",
    "definition" : "雙耳助聽器評估，使用聽力計"
  },
  {
    "code" : "F14Z32Z",
    "display" : "雙耳助聽器評估，使用聲場/隔音室",
    "definition" : "雙耳助聽器評估，使用聲場/隔音室"
  },
  {
    "code" : "F14Z33Z",
    "display" : "雙耳助聽器評估，使用鼓室圖設備",
    "definition" : "雙耳助聽器評估，使用鼓室圖設備"
  },
  {
    "code" : "F14Z34Z",
    "display" : "雙耳助聽器評估，使用電聲導抗/聲反射設備",
    "definition" : "雙耳助聽器評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F14Z35Z",
    "display" : "雙耳助聽器評估，使用助聽器選擇/調整/測試設備",
    "definition" : "雙耳助聽器評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z3KZ",
    "display" : "雙耳助聽器評估，使用視聽設備",
    "definition" : "雙耳助聽器評估，使用視聽設備"
  },
  {
    "code" : "F14Z3LZ",
    "display" : "雙耳助聽器評估，使用助聽設備",
    "definition" : "雙耳助聽器評估，使用助聽設備"
  },
  {
    "code" : "F14Z3PZ",
    "display" : "雙耳助聽器評估，使用電腦",
    "definition" : "雙耳助聽器評估，使用電腦"
  },
  {
    "code" : "F14Z3ZZ",
    "display" : "雙耳助聽器評估",
    "definition" : "雙耳助聽器評估"
  },
  {
    "code" : "F14Z41Z",
    "display" : "助聽系統/設備選擇評估，使用聽力計",
    "definition" : "助聽系統/設備選擇評估，使用聽力計"
  },
  {
    "code" : "F14Z42Z",
    "display" : "助聽系統/設備選擇評估，使用聲場/隔音室",
    "definition" : "助聽系統/設備選擇評估，使用聲場/隔音室"
  },
  {
    "code" : "F14Z43Z",
    "display" : "助聽系統/設備選擇評估，使用鼓室圖設備",
    "definition" : "助聽系統/設備選擇評估，使用鼓室圖設備"
  },
  {
    "code" : "F14Z44Z",
    "display" : "助聽系統/設備選擇評估，使用電聲導抗/聲反射設備",
    "definition" : "助聽系統/設備選擇評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F14Z4KZ",
    "display" : "助聽系統/設備選擇評估，使用視聽設備",
    "definition" : "助聽系統/設備選擇評估，使用視聽設備"
  },
  {
    "code" : "F14Z4LZ",
    "display" : "助聽系統/設備選擇評估，使用助聽設備",
    "definition" : "助聽系統/設備選擇評估，使用助聽設備"
  },
  {
    "code" : "F14Z4ZZ",
    "display" : "助聽系統/設備選擇評估",
    "definition" : "助聽系統/設備選擇評估"
  },
  {
    "code" : "F14Z51Z",
    "display" : "感官輔具評估，使用聽力計",
    "definition" : "感官輔具評估，使用聽力計"
  },
  {
    "code" : "F14Z52Z",
    "display" : "感官輔具評估，使用聲場/隔音室",
    "definition" : "感官輔具評估，使用聲場/隔音室"
  },
  {
    "code" : "F14Z53Z",
    "display" : "感官輔具評估，使用鼓室圖設備",
    "definition" : "感官輔具評估，使用鼓室圖設備"
  },
  {
    "code" : "F14Z54Z",
    "display" : "感官輔具評估，使用電聲導抗/聲反射設備",
    "definition" : "感官輔具評估，使用電聲導抗/聲反射設備"
  },
  {
    "code" : "F14Z55Z",
    "display" : "感官輔具評估，使用助聽器選擇/調整/測試設備",
    "definition" : "感官輔具評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z5KZ",
    "display" : "感官輔具評估，使用視聽設備",
    "definition" : "感官輔具評估，使用視聽設備"
  },
  {
    "code" : "F14Z5LZ",
    "display" : "感官輔具評估，使用助聽設備",
    "definition" : "感官輔具評估，使用助聽設備"
  },
  {
    "code" : "F14Z5ZZ",
    "display" : "感官輔具評估",
    "definition" : "感官輔具評估"
  },
  {
    "code" : "F14Z65Z",
    "display" : "雙耳電聲助聽器檢查評估，使用助聽器選擇/調整/測試設備",
    "definition" : "雙耳電聲助聽器檢查評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z6ZZ",
    "display" : "雙耳電聲助聽器檢查評估",
    "definition" : "雙耳電聲助聽器檢查評估"
  },
  {
    "code" : "F14Z70Z",
    "display" : "聽覺保護器衰減評估，使用職業性聽力設備",
    "definition" : "聽覺保護器衰減評估，使用職業性聽力設備"
  },
  {
    "code" : "F14Z7ZZ",
    "display" : "聽覺保護器衰減評估",
    "definition" : "聽覺保護器衰減評估"
  },
  {
    "code" : "F14Z85Z",
    "display" : "單耳電聲助聽器檢查評估，使用助聽器選擇/調整/測試設備",
    "definition" : "單耳電聲助聽器檢查評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F14Z8ZZ",
    "display" : "單耳電聲助聽器檢查評估",
    "definition" : "單耳電聲助聽器檢查評估"
  },
  {
    "code" : "F15Z08Z",
    "display" : "雙耳冷熱溫差刺激評估，使用前庭/平衡設備",
    "definition" : "雙耳冷熱溫差刺激評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z0ZZ",
    "display" : "雙耳冷熱溫差刺激評估",
    "definition" : "雙耳冷熱溫差刺激評估"
  },
  {
    "code" : "F15Z18Z",
    "display" : "單耳冷熱溫差刺激評估，使用前庭/平衡設備",
    "definition" : "單耳冷熱溫差刺激評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z1ZZ",
    "display" : "單耳冷熱溫差刺激評估",
    "definition" : "單耳冷熱溫差刺激評估"
  },
  {
    "code" : "F15Z28Z",
    "display" : "恆溫雙耳篩選評估，使用前庭/平衡設備",
    "definition" : "恆溫雙耳篩選評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z2ZZ",
    "display" : "恆溫雙耳篩選評估",
    "definition" : "恆溫雙耳篩選評估"
  },
  {
    "code" : "F15Z38Z",
    "display" : "振盪軌跡評估，使用前庭/平衡設備",
    "definition" : "振盪軌跡評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z3ZZ",
    "display" : "振盪軌跡評估",
    "definition" : "振盪軌跡評估"
  },
  {
    "code" : "F15Z48Z",
    "display" : "正弦立軸旋轉評估，使用前庭/平衡設備",
    "definition" : "正弦立軸旋轉評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z4ZZ",
    "display" : "正弦立軸旋轉評估",
    "definition" : "正弦立軸旋轉評估"
  },
  {
    "code" : "F15Z58Z",
    "display" : "Dix-Hallpike動態評估，使用前庭/平衡設備",
    "definition" : "Dix-Hallpike動態評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z5ZZ",
    "display" : "Dix-Hallpike動態評估",
    "definition" : "Dix-Hallpike動態評估"
  },
  {
    "code" : "F15Z68Z",
    "display" : "電腦化動態姿勢儀評估，使用前庭/平衡設備",
    "definition" : "電腦化動態姿勢儀評估，使用前庭/平衡設備"
  },
  {
    "code" : "F15Z6ZZ",
    "display" : "電腦化動態姿勢儀評估",
    "definition" : "電腦化動態姿勢儀評估"
  },
  {
    "code" : "F15Z75Z",
    "display" : "耳鳴遮蔽器評估，使用助聽器選擇/調整/測試設備",
    "definition" : "耳鳴遮蔽器評估，使用助聽器選擇/調整/測試設備"
  },
  {
    "code" : "F15Z7ZZ",
    "display" : "耳鳴遮蔽器評估",
    "definition" : "耳鳴遮蔽器評估"
  }]
}

```
