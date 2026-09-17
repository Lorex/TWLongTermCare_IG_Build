# 支付審查－錯誤代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－錯誤代碼**

## CodeSystem: 支付審查－錯誤代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditErrorCode |
| *Other Identifiers:*OID:2.25.154081174417565057576308580299251643194 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「err_code－錯誤代碼與訊息」之代碼，用於表示服務紀錄申報、審查與回覆過程中所產生之各項錯誤原因，涵蓋欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－錯誤代碼](ValueSet-vs-tw-ltc-feeaudit-error-code.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-error-code",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.154081174417565057576308580299251643194"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditErrorCode",
  "title" : "支付審查－錯誤代碼",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「err_code－錯誤代碼與訊息」之代碼，用於表示服務紀錄申報、審查與回覆過程中所產生之各項錯誤原因，涵蓋欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 176,
  "concept" : [{
    "code" : "E1001",
    "display" : "服務紀錄識別碼不可空白"
  },
  {
    "code" : "E1002",
    "display" : "個案身分證字號不可空白"
  },
  {
    "code" : "E1003",
    "display" : "服務日期不可空白"
  },
  {
    "code" : "E1004",
    "display" : "照顧組合代碼不可空白"
  },
  {
    "code" : "E1005",
    "display" : "服務類別不可空白"
  },
  {
    "code" : "E1006",
    "display" : "服務數量不可空白"
  },
  {
    "code" : "E1007",
    "display" : "照顧服務員帳號 1 不可空白"
  },
  {
    "code" : "E1008",
    "display" : "起始時段-小時不可空白"
  },
  {
    "code" : "E1009",
    "display" : "起始時段-分鐘不可空白"
  },
  {
    "code" : "E1010",
    "display" : "結束時段-小時不可空白"
  },
  {
    "code" : "E1011",
    "display" : "結束時段-分鐘不可空白"
  },
  {
    "code" : "E1012",
    "display" : "Remark 長度不符"
  },
  {
    "code" : "E1013",
    "display" : "照顧服務員帳號 2 長度不符"
  },
  {
    "code" : "E1014",
    "display" : "照顧服務員帳號 3 長度不符"
  },
  {
    "code" : "E1015",
    "display" : "照顧服務員帳號 4 長度不符"
  },
  {
    "code" : "E1016",
    "display" : "照顧服務員帳號 5 長度不符"
  },
  {
    "code" : "E1017",
    "display" : "last_svc 長度不符"
  },
  {
    "code" : "E1018",
    "display" : "addr1 長度不符"
  },
  {
    "code" : "E1019",
    "display" : "addr2 長度不符"
  },
  {
    "code" : "E1020",
    "display" : "car_no 長度不符"
  },
  {
    "code" : "E1021",
    "display" : "個案身分證字號不可空白"
  },
  {
    "code" : "E1022",
    "display" : "服務項目長度不符"
  },
  {
    "code" : "E1023",
    "display" : "服務項目(其他)長度不符"
  },
  {
    "code" : "E1024",
    "display" : "服務對象長度不符"
  },
  {
    "code" : "E1025",
    "display" : "服務內容長度不符"
  },
  {
    "code" : "E1026",
    "display" : "服務對象長度不符"
  },
  {
    "code" : "E1027",
    "display" : "服務數量不可超過 2 位數"
  },
  {
    "code" : "E1030",
    "display" : "A 個管身份證字號不可空白"
  },
  {
    "code" : "E2002",
    "display" : "個案身份證字號格式錯誤"
  },
  {
    "code" : "E2003",
    "display" : "服務日期格式錯誤"
  },
  {
    "code" : "E2006",
    "display" : "服務數量格式錯誤"
  },
  {
    "code" : "E2008",
    "display" : "起始時段-小時格式錯誤"
  },
  {
    "code" : "E2009",
    "display" : "起始時段-分鐘格式錯誤"
  },
  {
    "code" : "E2010",
    "display" : "結束時段-小時格式錯誤"
  },
  {
    "code" : "E2011",
    "display" : "結束時段-分鐘格式錯誤"
  },
  {
    "code" : "E2022",
    "display" : "申報 AA03 時，服務項目不可空白"
  },
  {
    "code" : "E2026",
    "display" : "申報 AA03 時，提供專業服務的單位不可空白"
  },
  {
    "code" : "E2027",
    "display" : "申報 DA01 時，單價不可空白"
  },
  {
    "code" : "E2028",
    "display" : "找不到案件編號"
  },
  {
    "code" : "E2029",
    "display" : "服務日期未小於申報年"
  },
  {
    "code" : "E4001",
    "display" : "找不到此筆服務紀錄 OBJID(序號欄位資料)"
  },
  {
    "code" : "E4002",
    "display" : "找不到此筆服務紀錄個案身份證字號"
  },
  {
    "code" : "E4003",
    "display" : "找不到此筆服務紀錄服務日期"
  },
  {
    "code" : "E4004",
    "display" : "此筆服務紀錄服務日期格式錯誤(YYYYMMDD)"
  },
  {
    "code" : "E4005",
    "display" : "找不到此筆服務紀錄服務項目"
  },
  {
    "code" : "E4006",
    "display" : "找不到此筆服務紀錄個案資料"
  },
  {
    "code" : "E4007",
    "display" : "找不到此筆服務紀錄類別編號"
  },
  {
    "code" : "E4007-1",
    "display" : "小規模多機能特殊設定只能允許一組"
  },
  {
    "code" : "E4008",
    "display" : "找不到此筆服務紀錄分案編號"
  },
  {
    "code" : "E4009",
    "display" : "找不到此筆服務紀錄承辦人資料"
  },
  {
    "code" : "E4010",
    "display" : "找不到此筆服務紀錄會計人員資料"
  },
  {
    "code" : "E4011",
    "display" : "判斷此筆服務紀錄是否存在發生錯誤"
  },
  {
    "code" : "E4012",
    "display" : "取得此筆服務紀錄分案資訊發生錯誤"
  },
  {
    "code" : "E4013",
    "display" : "判斷此筆服務紀錄案件主檔是否存在發生錯誤"
  },
  {
    "code" : "E4014",
    "display" : "取得此筆服務紀錄案件編號發生錯誤"
  },
  {
    "code" : "E4015",
    "display" : "單位已執行申報確認通知，不在受理新的服務紀錄申報"
  },
  {
    "code" : "E4016",
    "display" : "此筆服務紀錄對應 2 組以上類別編號"
  },
  {
    "code" : "E4017",
    "display" : "無法判斷服務提供單位是否為 C 單位"
  },
  {
    "code" : "E4017-1",
    "display" : "小規模多機能特殊設定只能允許一組"
  },
  {
    "code" : "E4018",
    "display" : "查詢取得支付碼類別(BB or BC)失敗"
  },
  {
    "code" : "E4019",
    "display" : "取得此筆服務紀錄個案主檔發生錯誤"
  },
  {
    "code" : "E4020",
    "display" : "找不到此筆服務紀錄服務個案居住地資料"
  },
  {
    "code" : "E4021",
    "display" : "此筆服務紀錄服務日期對應 2 組以上照顧計畫"
  },
  {
    "code" : "E4022",
    "display" : "取得此筆服務紀錄新增審查個案主檔錯誤"
  },
  {
    "code" : "E4023",
    "display" : "取得此筆服務紀錄更新審查個案主檔錯誤"
  },
  {
    "code" : "E4024",
    "display" : "取得此筆服務紀錄刪除審查個案主檔錯誤"
  },
  {
    "code" : "E4025",
    "display" : "計算此筆服務紀錄個案年齡發生錯誤"
  },
  {
    "code" : "E4026",
    "display" : "取得此筆服務紀錄新增審查案件主檔錯誤"
  },
  {
    "code" : "E4027",
    "display" : "取得此筆服務紀錄更新審查案件主檔錯誤"
  },
  {
    "code" : "E4028",
    "display" : "取得此筆服務紀錄新增審查個案服務紀錄檔錯誤"
  },
  {
    "code" : "E4029",
    "display" : "取得此筆服務紀錄更新審查個案服務紀錄檔錯誤"
  },
  {
    "code" : "E4030",
    "display" : "取得此筆服務紀錄刪除審查個案服務紀錄檔錯誤"
  },
  {
    "code" : "E4031",
    "display" : "此筆服務紀錄分案已經完成通知不能刪除"
  },
  {
    "code" : "E4032",
    "display" : "此筆服務紀錄不存在"
  },
  {
    "code" : "E4033",
    "display" : "無法判斷服務提供單位是否為小規模多機能機構"
  },
  {
    "code" : "E4034",
    "display" : "此筆服務紀錄所屬案號承辦人員已收件審理中無法再分案"
  },
  {
    "code" : "E4035",
    "display" : "此筆服務紀錄費用年月找不到相對應照顧計畫"
  },
  {
    "code" : "E4036",
    "display" : "服務人員身份證字號格式錯誤，請確認「衛生福利部照顧服務管理資訊平臺」與「衛生福利部長照機構暨長照人員相關管理資訊系統」之資訊一致"
  },
  {
    "code" : "E4037",
    "display" : "申報碼別非特約項目，請至「衛生福利部長照機構暨長照人員相關管理資訊系統」確認資訊"
  },
  {
    "code" : "E4038",
    "display" : "服務日期非特約有效期間，請至「衛生福利部長照機構暨長照人員相關管理資訊系統」確認資訊"
  },
  {
    "code" : "E4039",
    "display" : "非「BA13 陪同外出」及「BA13a 陪同施打 COVID-19 疫苗」不可申報陪同施打 COVID-19 疫苗"
  },
  {
    "code" : "E4040",
    "display" : "尚未符合陪同「施打 COVID-19 疫苗」開放申報日，請於 111/04/07 日以後再提出申報"
  },
  {
    "code" : "E4041",
    "display" : "非照管平台不得申報「陪同施打 COVID-19 疫苗」相關照顧組合"
  },
  {
    "code" : "E4042",
    "display" : "營養餐飲服務(OT01)費用審核系統尚在調整檢核條件中，111 年 3 月不開放申報，請各服務單位於 111 年 4 月 1 日起再進行費用申報。"
  },
  {
    "code" : "E4OT1",
    "display" : "OT01 營養餐飲服務，分檔編號未照分案規則設定"
  },
  {
    "code" : "E4OT2",
    "display" : "OT01 營養餐飲服務，不可與其他支付碼同案審理"
  },
  {
    "code" : "E4OT3",
    "display" : "OT01 營養餐飲服務，此筆服務紀錄服務日期查無相對應照顧計畫"
  },
  {
    "code" : "E5000",
    "display" : "服務資料內容異常"
  },
  {
    "code" : "E5001",
    "display" : "此筆服務已申請"
  },
  {
    "code" : "E5002",
    "display" : "此服務不可聘顧外籍看護工"
  },
  {
    "code" : "E5003",
    "display" : "服務時數不足"
  },
  {
    "code" : "E5004",
    "display" : "超出頻率限制次數"
  },
  {
    "code" : "E5005",
    "display" : "服務次數未滿申請所需次數"
  },
  {
    "code" : "E5006",
    "display" : "與同時段的其他服務發生衝突"
  },
  {
    "code" : "E5007",
    "display" : "單張 BA 碼服務紀錄時段上限不可超過 3 小時"
  },
  {
    "code" : "E5008",
    "display" : "服務記錄單筆次數不得大於 1"
  },
  {
    "code" : "E5009",
    "display" : "同個案同時段不可有相同服務碼"
  },
  {
    "code" : "E5010",
    "display" : "同個案+同日期+同時段+同服務人員 BA、BB、BC、C、D、G 碼、SC 碼僅能存在一種(扣除 BA14 可與 GA01、GA02、GA09 重疊)"
  },
  {
    "code" : "E5011",
    "display" : "不同個案、同日期、同時段、同服務人員，任意 G 跟任意 D 碼，不可同時存在"
  },
  {
    "code" : "E5012",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 BA(扣除 BA05-1、BA05-2、BA09、BA09a、BA12、BA16-1、BA16-2)時，不得有任意 BA(扣除 BA05-1、BA05-2、BA09、BA09a、BA12、BA16-1、BA16-2)"
  },
  {
    "code" : "E5013",
    "display" : "有任意 B(扣除 BA12、BA13、BA14)時，不得有任意 D"
  },
  {
    "code" : "E5014",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 B 時不可有任意 G"
  },
  {
    "code" : "E5015",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 C 時不可有任意 D"
  },
  {
    "code" : "E5016",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 C 時不可有任意 G"
  },
  {
    "code" : "E5017",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 G(扣除 GA01、GA02、GA09 若有 BA14 可以申報 DA01)時，不得有任意 D"
  },
  {
    "code" : "E5018",
    "display" : "查無此服務之照會資料"
  },
  {
    "code" : "E5019",
    "display" : "服務日期大於個案結案日期"
  },
  {
    "code" : "E5020",
    "display" : "服務日期標示為暫停服務期間"
  },
  {
    "code" : "E5021",
    "display" : "此服務已超過可申報期限"
  },
  {
    "code" : "E5022",
    "display" : "查無此服務紀錄的支付碼設定檔"
  },
  {
    "code" : "E5023",
    "display" : "服務未遇記錄的服務次數不可大於 1 次"
  },
  {
    "code" : "E5024",
    "display" : "因未於當月底完成申報確認，故退回，可於次月重新申報"
  },
  {
    "code" : "E5025",
    "display" : "查無此服務相關之評估計畫"
  },
  {
    "code" : "E5026",
    "display" : "同個案、同日期、同時段、不同服務人員，有任意 C 時不可有任意 GA05(108/11/01 後服務日期審核條件)"
  },
  {
    "code" : "E5027",
    "display" : "此支付碼因費用較高，不得申報訪視未遇"
  },
  {
    "code" : "E5028",
    "display" : "C 碼、BA22 單筆申報數量不可大於 1"
  },
  {
    "code" : "E5029",
    "display" : "評估計畫中的[外傭看護]資料有誤"
  },
  {
    "code" : "E5030",
    "display" : "服務日期大於個案死亡日"
  },
  {
    "code" : "E5031",
    "display" : "服務人員無認證登錄資訊或不符合職類"
  },
  {
    "code" : "E5032",
    "display" : "使用 OT01(營養餐飲服務)個案，同日不可申報日照服務(BB 碼)、家托服務(BC 碼)、喘息服務(G 碼)"
  },
  {
    "code" : "E5033",
    "display" : "服務人員特殊訓練資格不符"
  },
  {
    "code" : "E5034",
    "display" : "服務人員無身心障礙特殊訓練資格"
  },
  {
    "code" : "E5035",
    "display" : "服務人員無失智訓練特殊訓練資格"
  },
  {
    "code" : "E5036",
    "display" : "長照給付支付基準不適用住宿式機構之服務使用者!"
  },
  {
    "code" : "E5037",
    "display" : "長照給付支付基準不適用住宿式機構之服務使用者!"
  },
  {
    "code" : "E5038",
    "display" : "服務人員無甲類輔具評估人員資格"
  },
  {
    "code" : "E5039",
    "display" : "服務人員陪同施打 COVID-19 疫苗審核異常"
  },
  {
    "code" : "E5040",
    "display" : "同時間服務數量超出機構服務量能"
  },
  {
    "code" : "E5041",
    "display" : "機構未設定服務量能"
  },
  {
    "code" : "E5042",
    "display" : "查無 C 碼專業服務目標管理期程"
  },
  {
    "code" : "E5043",
    "display" : "超出 C 碼專業服務目標管理組數"
  },
  {
    "code" : "E5044",
    "display" : "服務人員課程完訓資訊不符或服務人員無 110、111 年服務紀錄"
  },
  {
    "code" : "E5100",
    "display" : "A 碼資料異常"
  },
  {
    "code" : "E5101",
    "display" : "非 BA 碼之服務記錄，不可申請 AA03"
  },
  {
    "code" : "E5102",
    "display" : "查無指定之 C 碼單位 (申請 AA03)"
  },
  {
    "code" : "E5103",
    "display" : "服務當下查無相關 C 碼服務 (申請 AA03)"
  },
  {
    "code" : "E5104",
    "display" : "此照顧計畫或碼別已申請過 AA03"
  },
  {
    "code" : "E5105",
    "display" : "查無個案臨終日期"
  },
  {
    "code" : "E5106",
    "display" : "服務日期不在個案臨終日期之前一日、當日或後一日(僅限申報 BA01)"
  },
  {
    "code" : "E5107",
    "display" : "已申請過 AA04"
  },
  {
    "code" : "E5108",
    "display" : "已申請過 AA01"
  },
  {
    "code" : "E5109",
    "display" : "此服務日期對應不到照顧計畫或對應的照顧計畫在 108/06/30 之前"
  },
  {
    "code" : "E5110",
    "display" : "此次 AA 計劃異動距離上次評估時間少於六個月"
  },
  {
    "code" : "E5111",
    "display" : "查無相關的 B 碼服務紀錄或 CDG 照會資料或 EF 碼計劃(申請 AA01)"
  },
  {
    "code" : "E5112",
    "display" : "本月已申請 AA01"
  },
  {
    "code" : "E5113",
    "display" : "申請單位非個案紀錄之 A 個管單位"
  },
  {
    "code" : "E5114",
    "display" : "本月已申請 AA02"
  },
  {
    "code" : "E5115",
    "display" : "此筆服務加成 A 單位或照專尚未審核(申請 AA10)"
  },
  {
    "code" : "E5116",
    "display" : "非 BA 碼之服務紀錄，不可申請 AA04"
  },
  {
    "code" : "E5117",
    "display" : "查無 BA 碼服務紀錄或 BA 碼無符合申請條件(申請 AA03)"
  },
  {
    "code" : "E5118",
    "display" : "評估紀錄已申請 AA01 並核付"
  },
  {
    "code" : "E5119",
    "display" : "該月份已申請 AA02 並核付"
  },
  {
    "code" : "E5120",
    "display" : "服務項目無勾選「家訪」不可申報 AA01"
  },
  {
    "code" : "E5121",
    "display" : "此筆服務查無 A 個管人員"
  },
  {
    "code" : "E5122",
    "display" : "機構人員中無此筆服務之 A 個管人員資訊"
  },
  {
    "code" : "E5123",
    "display" : "此筆服務同時存在兩位以上 A 個管人員"
  },
  {
    "code" : "E5124",
    "display" : "該照顧計畫無核定服務項目"
  },
  {
    "code" : "E5125",
    "display" : "2020-10-01 前的出備計畫不可請領 AA01"
  },
  {
    "code" : "E5126",
    "display" : "查無符合 BA15-1 申請 AA03 條件"
  },
  {
    "code" : "E5201",
    "display" : "[每月額度設定]中[B 單位每月可申報的服務項目]中無此服務項目次數"
  },
  {
    "code" : "E5202",
    "display" : "服務次數超出照管平台的[每月額度設定]中[B 單位每月可申報的服務項目]次數"
  },
  {
    "code" : "E5203",
    "display" : "金額超出照管平台的[每月額度設定]中[B 單位每月可申報的分配額度]"
  },
  {
    "code" : "E5204",
    "display" : "[每月額度設定]中[B 單位每月可申報的分配額度]無此個案年月額度資料"
  },
  {
    "code" : "E5301",
    "display" : "查無自付額比例設定(OT01.DA01)"
  },
  {
    "code" : "EBA091",
    "display" : "服務長照人員未滿三位(BA09,BA09a 檢核規定)"
  },
  {
    "code" : "EBA09A1",
    "display" : "服務人員中至少需要一位醫事人員(BA09a 檢核規定)"
  },
  {
    "code" : "EBC001",
    "display" : "家托服務(BC 碼)不可服務超過 4 人"
  },
  {
    "code" : "ECB031",
    "display" : "該組合團隊無醫事人員(CB03 檢核規定)"
  },
  {
    "code" : "ECB041",
    "display" : "該組合團隊必須 2 種以上醫事人員執行(CB04 檢核規定)"
  },
  {
    "code" : "EGA011",
    "display" : "GA01、GA02、GA09 與 SC09 各不得超過申報上限"
  },
  {
    "code" : "EGA061",
    "display" : "GA06 服務時間非規定的範圍區間(每日下午六點至翌日上午八點)"
  },
  {
    "code" : "EOT011",
    "display" : "僅有送餐需求者須有服務預定迄日"
  },
  {
    "code" : "EOT012",
    "display" : "OT01 和 BA05、BA16、BD02 單日合計不得超過 3 次"
  },
  {
    "code" : "ESC001",
    "display" : "個案不符合使用短照服務之規定"
  },
  {
    "code" : "ESC002",
    "display" : "個案使用短照設定僅能申報 SC05"
  },
  {
    "code" : "ESC061",
    "display" : "SC06 服務時間非規定的範圍區間(每日下午六點至翌日上午八點)"
  }]
}

```
