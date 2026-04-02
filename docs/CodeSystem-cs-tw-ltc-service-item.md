# 長照 SDK－服務項目代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－服務項目代碼**

## CodeSystem: 長照 SDK－服務項目代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:CS_TW_LTC_ServiceItem |

 
對應 r4.* 臺灣長照給付『照顧組合／輔具／無障礙修繕』服務項目代碼（AA..FA 系列），來源：清單.xlsx。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_ServiceItem](ValueSet-vs-tw-ltc-service-item.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-service-item",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_ServiceItem",
  "title" : "長照 SDK－服務項目代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "對應 r4.* 臺灣長照給付『照顧組合／輔具／無障礙修繕』服務項目代碼（AA..FA 系列），來源：清單.xlsx。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 86,
  "concept" : [{
    "code" : "AA01",
    "display" : "照顧計畫擬定與服務連結"
  },
  {
    "code" : "AA02",
    "display" : "照顧管理"
  },
  {
    "code" : "AA03",
    "display" : "照顧服務員配合專業服務"
  },
  {
    "code" : "AA04",
    "display" : "於臨終日提供服務加計"
  },
  {
    "code" : "AA05",
    "display" : "照顧困難之服務加計"
  },
  {
    "code" : "AA06",
    "display" : "身體照顧困難加計"
  },
  {
    "code" : "AA07",
    "display" : "家庭照顧功能微弱之服務加計"
  },
  {
    "code" : "AA08",
    "display" : "晚間服務"
  },
  {
    "code" : "AA09",
    "display" : "例假日服務"
  },
  {
    "code" : "AA10",
    "display" : "夜間緊急服務"
  },
  {
    "code" : "AA11",
    "display" : "照顧服務員進階訓練"
  },
  {
    "code" : "AA12",
    "display" : "開立醫師意見書"
  },
  {
    "code" : "BA01",
    "display" : "基本身體清潔"
  },
  {
    "code" : "BA02",
    "display" : "基本日常照顧"
  },
  {
    "code" : "BA03",
    "display" : "測量生命徵象"
  },
  {
    "code" : "BA04",
    "display" : "協助進食或管灌餵食"
  },
  {
    "code" : "BA05",
    "display" : "餐食照顧"
  },
  {
    "code" : "BA07",
    "display" : "協助沐浴及洗頭"
  },
  {
    "code" : "BA08",
    "display" : "足部照護"
  },
  {
    "code" : "BA09",
    "display" : "到宅沐浴車服務--第1型"
  },
  {
    "code" : "BA09a",
    "display" : "到宅沐浴車服務--第2型"
  },
  {
    "code" : "BA10",
    "display" : "翻身拍背"
  },
  {
    "code" : "BA11",
    "display" : "肢體關節活動"
  },
  {
    "code" : "BA12",
    "display" : "協助上(下)樓梯"
  },
  {
    "code" : "BA13",
    "display" : "陪同外出"
  },
  {
    "code" : "BA14",
    "display" : "陪同就醫"
  },
  {
    "code" : "BA15",
    "display" : "家務協助"
  },
  {
    "code" : "BA16",
    "display" : "代購或代領或代送服務"
  },
  {
    "code" : "BA17",
    "display" : "協助執行輔助性醫療"
  },
  {
    "code" : "BA18",
    "display" : "安全看視"
  },
  {
    "code" : "BA20",
    "display" : "陪伴服務"
  },
  {
    "code" : "BA22",
    "display" : "巡視服務"
  },
  {
    "code" : "BA23",
    "display" : "協助洗頭"
  },
  {
    "code" : "BA24",
    "display" : "協助排泄"
  },
  {
    "code" : "BB01",
    "display" : "日間照顧(全日)--第1型"
  },
  {
    "code" : "BB02",
    "display" : "日間照顧（半日）--第1型"
  },
  {
    "code" : "BB03",
    "display" : "日間照顧（全日）--第2型"
  },
  {
    "code" : "BB04",
    "display" : "日間照顧（半日）--第2型"
  },
  {
    "code" : "BB05",
    "display" : "日間照顧（全日）--第3型"
  },
  {
    "code" : "BB06",
    "display" : "日間照顧（半日）--第3型"
  },
  {
    "code" : "BB07",
    "display" : "日間照顧（全日）--第4型"
  },
  {
    "code" : "BB08",
    "display" : "日間照顧（半日）--第4型"
  },
  {
    "code" : "BB09",
    "display" : "日間照顧"
  },
  {
    "code" : "BB10",
    "display" : "日間照顧（半日）--第5型"
  },
  {
    "code" : "BB11",
    "display" : "日間照顧（全日）--第6型"
  },
  {
    "code" : "BB12",
    "display" : "日間照顧（半日）--第6型"
  },
  {
    "code" : "BB13",
    "display" : "日間照顧（全日）--第7型"
  },
  {
    "code" : "BB14",
    "display" : "日間照顧（半日）--第7型"
  },
  {
    "code" : "BC01",
    "display" : "家庭托顧（全日）--第1型"
  },
  {
    "code" : "BC02",
    "display" : "家庭托顧"
  },
  {
    "code" : "BC03",
    "display" : "家庭托顧（全日）--第2型"
  },
  {
    "code" : "BC04",
    "display" : "家庭托顧（半日）--第2型"
  },
  {
    "code" : "BC05",
    "display" : "家庭托顧（全日）--第3型"
  },
  {
    "code" : "BC06",
    "display" : "家庭托顧（半日）--第3型"
  },
  {
    "code" : "BC07",
    "display" : "家庭托顧（全日）--第4型"
  },
  {
    "code" : "BC08",
    "display" : "家庭托顧（半日）--第4型"
  },
  {
    "code" : "BC09",
    "display" : "家庭托顧（全日）--第5型"
  },
  {
    "code" : "BC10",
    "display" : "家庭托顧（半日）--第5型"
  },
  {
    "code" : "BC11",
    "display" : "家庭托顧（全日）--第6型"
  },
  {
    "code" : "BC12",
    "display" : "家庭托顧（半日）--第6型"
  },
  {
    "code" : "BC13",
    "display" : "家庭托顧（全日）--"
  },
  {
    "code" : "BC14",
    "display" : "家庭托顧（半日）--第7型"
  },
  {
    "code" : "BD01",
    "display" : "社區式協助沐浴"
  },
  {
    "code" : "BD02",
    "display" : "社區式晚餐"
  },
  {
    "code" : "BD03",
    "display" : "社區式服務交通接送"
  },
  {
    "code" : "CA01",
    "display" : "IADLs復能照護--居家"
  },
  {
    "code" : "CA02",
    "display" : "IADLs復能照護--社區"
  },
  {
    "code" : "CA03",
    "display" : "ADLs復能照護--居家"
  },
  {
    "code" : "CA04",
    "display" : "ADLs復能照護--社區"
  },
  {
    "code" : "CA05",
    "display" : "「個別化服務計畫(ISP)」擬定與執行--居家"
  },
  {
    "code" : "CA06",
    "display" : "「個別化服務計畫(ISP)」擬定與執行--社區"
  },
  {
    "code" : "CB01",
    "display" : "營養照護"
  },
  {
    "code" : "CB02",
    "display" : "進食與吞嚥照護"
  },
  {
    "code" : "CB03",
    "display" : "困擾行為照護"
  },
  {
    "code" : "CB04",
    "display" : "臥床或長期活動受限照護"
  },
  {
    "code" : "CC01",
    "display" : "居家環境安全或無障礙空間規劃"
  },
  {
    "code" : "CD01",
    "display" : "居家護理訪視"
  },
  {
    "code" : "CD02",
    "display" : "居家護理指導與諮詢"
  },
  {
    "code" : "DA01",
    "display" : "交通接送"
  },
  {
    "code" : "GA01",
    "display" : "居家喘息服務--全日"
  },
  {
    "code" : "GA02",
    "display" : "居家喘息服務--半日"
  },
  {
    "code" : "GA03",
    "display" : "日間照顧中心喘息服務--全日"
  },
  {
    "code" : "GA04",
    "display" : "日間照顧中心喘息服務--半日"
  },
  {
    "code" : "GA05",
    "display" : "機構住宿式喘息服務"
  },
  {
    "code" : "GA06",
    "display" : "小規模多機能服務-夜間喘息"
  },
  {
    "code" : "GA07",
    "display" : "巷弄長照站臨托"
  }]
}

```
