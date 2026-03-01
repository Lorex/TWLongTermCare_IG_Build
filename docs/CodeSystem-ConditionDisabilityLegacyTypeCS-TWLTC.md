# 個案身心障礙類型代碼（舊制） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身心障礙類型代碼（舊制）**

## CodeSystem: 個案身心障礙類型代碼（舊制） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityLegacyTypeCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-09-02 | *Computable Name*:ConditionDisabilityLegacyTypeCSTWLTC |

 
用於表述個案的身心障礙類型代碼（舊制）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConditionDisabilityTypeVSTWLTC](ValueSet-ConditionDisabilityTypeVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ConditionDisabilityLegacyTypeCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityLegacyTypeCS-TWLTC",
  "version" : "1.0.0",
  "name" : "ConditionDisabilityLegacyTypeCSTWLTC",
  "title" : "個案身心障礙類型代碼（舊制）",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-02",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於表述個案的身心障礙類型代碼（舊制）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "01",
    "display" : "視覺障礙",
    "definition" : "視覺障礙"
  },
  {
    "code" : "02",
    "display" : "聽覺機能障礙",
    "definition" : "聽覺機能障礙"
  },
  {
    "code" : "03",
    "display" : "平衡機能障礙",
    "definition" : "平衡機能障礙"
  },
  {
    "code" : "04",
    "display" : "聲音機能或語言機能障礙",
    "definition" : "聲音機能或語言機能障礙"
  },
  {
    "code" : "05",
    "display" : "肢體障礙",
    "definition" : "肢體障礙"
  },
  {
    "code" : "06",
    "display" : "智能障礙",
    "definition" : "智能障礙"
  },
  {
    "code" : "07",
    "display" : "重要器官失去功能",
    "definition" : "重要器官失去功能"
  },
  {
    "code" : "08",
    "display" : "顏面損傷",
    "definition" : "顏面損傷"
  },
  {
    "code" : "09",
    "display" : "植物人",
    "definition" : "植物人"
  },
  {
    "code" : "10",
    "display" : "失智症",
    "definition" : "失智症"
  },
  {
    "code" : "11",
    "display" : "自閉症",
    "definition" : "自閉症"
  },
  {
    "code" : "12",
    "display" : "慢性精神病",
    "definition" : "慢性精神病"
  },
  {
    "code" : "13",
    "display" : "多重障礙",
    "definition" : "多重障礙（請再勾選各項障礙類別）"
  },
  {
    "code" : "14",
    "display" : "頑型（難治型）癲癇症",
    "definition" : "頑型（難治型）癲癇症"
  },
  {
    "code" : "15",
    "display" : "因罕見疾病而致身心功能障礙者",
    "definition" : "經中央衛生主管機關認定，因罕見疾病而致身心功能障礙者"
  },
  {
    "code" : "16",
    "display" : "其他",
    "definition" : "其他經中央衛生主管機關認定之障礙者（染色體異常、先天代謝異常、先天缺陷）"
  }]
}

```
