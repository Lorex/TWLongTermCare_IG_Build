# 支付審查－服務紀錄補充資訊類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務紀錄補充資訊類別**

## CodeSystem: 支付審查－服務紀錄補充資訊類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditSupportingInfo |
| *Other Identifiers:*OID:2.25.241334038473382339597409760065494505023 | |

 
《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「服務記錄申報（FeeApply）」中，隨照顧組合代碼（gov_item_cd）而特化之欄位分類碼，作為 Claim.supportingInfo.category 之取值，用以承載 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等補充資訊。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－服務紀錄補充資訊類別](ValueSet-vs-tw-ltc-feeaudit-supporting-info.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-supporting-info",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.241334038473382339597409760065494505023"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditSupportingInfo",
  "title" : "支付審查－服務紀錄補充資訊類別",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「服務記錄申報（FeeApply）」中，隨照顧組合代碼（gov_item_cd）而特化之欄位分類碼，作為 Claim.supportingInfo.category 之取值，用以承載 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等補充資訊。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 28,
  "concept" : [{
    "code" : "svcItem",
    "display" : "服務項目",
    "definition" : "對應規格書欄位 svc_item。申報 AA00 必填寫：1.電訪、2.家訪、3.與案家討論服務內容調整、4.接受申訴、5.照會或連結至服務提供單位、9.其他；多個選項以「|」分隔。申報 AA03 必填寫 C 碼服務。"
  },
  {
    "code" : "svcItemOther",
    "display" : "服務項目-其他",
    "definition" : "對應規格書欄位 svc_item_other。服務項目為其他（9）時填寫。"
  },
  {
    "code" : "svcPeople",
    "display" : "服務對象",
    "definition" : "對應規格書欄位 svc_people。申報 AA00 填寫（必填）：1.服務使用者、2.家庭照顧者；多個選項以「|」分隔。"
  },
  {
    "code" : "svcContent",
    "display" : "服務內容",
    "definition" : "對應規格書欄位 svc_content。申報 AA00 填寫（必填）。"
  },
  {
    "code" : "svcPoint",
    "display" : "服務重點",
    "definition" : "對應規格書欄位 svc_point。申報 AA00 填寫：1.追蹤長照需要者與各項服務之連結情形、2.計畫與內容異動討論、3.協助長照需要者或其家屬其他資源連結、4.接受長照需要者及其家屬有關長照服務諮詢、處理、5.接受申訴、9.其他；多個選項以「|」分隔。"
  },
  {
    "code" : "svcPointOther",
    "display" : "服務重點-其他",
    "definition" : "對應規格書欄位 svc_point_other。服務重點為其他（9）時填寫。"
  },
  {
    "code" : "svcTrace",
    "display" : "追蹤服務適應與介入情形",
    "definition" : "對應規格書欄位 svc_trace。申報 AA00 填寫。"
  },
  {
    "code" : "svcGoal",
    "display" : "各項服務目標及整體計畫目標達成情形",
    "definition" : "對應規格書欄位 svc_goal。申報 AA00 填寫。"
  },
  {
    "code" : "svcSuitable",
    "display" : "整體計畫的適切性及需求異動",
    "definition" : "對應規格書欄位 svc_suitable。申報 AA00 填寫。"
  },
  {
    "code" : "svccGoalType",
    "display" : "專業服務復能目標達成情形",
    "definition" : "對應規格書欄位 svcc_goal_type。申報 C 碼填寫：1.尚未滿 1 照顧組合之次數、2.已滿 1 照顧組合之次數且已達目標、3.已滿 1 照顧組合之次數但尚未達目標、4.未滿 1 照顧組合之次數且已達目標、5.未滿 1 照顧組合之次數但尚未達目標。"
  },
  {
    "code" : "svccGoal",
    "display" : "專業服務復能目標",
    "definition" : "對應規格書欄位 svcc_goal。申報 C 碼填寫。"
  },
  {
    "code" : "svccContentTarget",
    "display" : "專業服務指導對象",
    "definition" : "對應規格書欄位 svcc_content_target。申報 C 碼填寫。"
  },
  {
    "code" : "svccContent",
    "display" : "專業服務服務內容",
    "definition" : "對應規格書欄位 svcc_content。申報 C 碼填寫。"
  },
  {
    "code" : "svccSuggest",
    "display" : "專業服務指導建議摘要",
    "definition" : "對應規格書欄位 svcc_suggest。申報 C 碼填寫。"
  },
  {
    "code" : "svcUnit",
    "display" : "提供專業服務單位",
    "definition" : "對應規格書欄位 svc_unit。申報 AA03 填寫（必填），內容為 C 單位之單位代碼。"
  },
  {
    "code" : "addrFrom",
    "display" : "出發地",
    "definition" : "對應規格書欄位 addr1。申報 BD03、DA01 填寫；另可搭配出發地-緯度（addrlat1）與出發地-經度（addrlng1）。"
  },
  {
    "code" : "addrTo",
    "display" : "目的地",
    "definition" : "對應規格書欄位 addr2。申報 BD03、DA01 填寫；另可搭配目的地-緯度（addrlat2）與目的地-經度（addrlng2）。"
  },
  {
    "code" : "carNo",
    "display" : "車號",
    "definition" : "對應規格書欄位 car_no。申報 BD03、DA01 必填寫。"
  },
  {
    "code" : "driver",
    "display" : "駕駛員",
    "definition" : "對應規格書欄位 driver。申報 BD03、DA01 填寫。"
  },
  {
    "code" : "milage",
    "display" : "里程數",
    "definition" : "對應規格書欄位 milage。申報 BD03、DA01 必填寫。"
  },
  {
    "code" : "bd03Type",
    "display" : "社區式服務交通接送服務使用類型",
    "definition" : "對應規格書欄位 bd03_type，即社區式服務交通接送（BD03）服務使用類型。申報 BD03 必填寫：1.社區式長照機構、2.社區服務據點（不含身障類）、3.輔具中心、4.身障日間照顧服務；預設為 1。"
  },
  {
    "code" : "lastSvc",
    "display" : "臨終日照顧",
    "definition" : "對應規格書欄位 last_svc。Y：是、N：否，預設為 N。"
  },
  {
    "code" : "missedVisit",
    "display" : "訪視/服務未遇",
    "definition" : "對應規格書欄位 missed_visit。Y：未遇、N：正常，預設為 N。"
  },
  {
    "code" : "applyCovid19",
    "display" : "是否為陪同施打COVID-19疫苗",
    "definition" : "對應規格書欄位 apply_covid19。Y：陪同、N：未陪同，預設為 N。"
  },
  {
    "code" : "applyAA03",
    "display" : "是否申報AA03",
    "definition" : "對應規格書欄位 apply_aa03。Y：是、N：否，預設為 N。"
  },
  {
    "code" : "applyAA09",
    "display" : "是否申報AA09",
    "definition" : "對應規格書欄位 apply_aa09。Y：是、N：否，預設為 Y。"
  },
  {
    "code" : "aa10Status",
    "display" : "AA10申報狀態",
    "definition" : "對應規格書欄位 aa10_status。0.未申報、1.申請待確認、2.確認為非緊急服務、3.確認為緊急服務；預設為 0。"
  },
  {
    "code" : "remark",
    "display" : "備註",
    "definition" : "對應規格書欄位 remark，最長 4000 字。"
  }]
}

```
