## 賽道情境、角色與交易列表 (Track, Scenario, Actor, Transaction)

### 賽道列表 (Track List)
<div style="padding-left: 10px;">
<table class="grid rwd-table">
  <thead>
    <tr class="header">
      <th style="width:15%; vertical-align: middle;">賽道分類 (Category)</th>
      <th style="width:15%; vertical-align: middle;">賽道編號 (#)</th>
      <th style="width:70%; vertical-align: middle;">賽道名稱 (Name)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="vertical-align: middle;" rowspan="1">核心</td>
      <td style="vertical-align: middle;">Track #0</td>
      <td style="vertical-align: middle;">OAuth2 存取認證</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="4">應用</td>
      <td style="vertical-align: middle;">Track #1</td>
      <td style="vertical-align: middle;">長照共通資料交換</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #2</td>
      <td style="vertical-align: middle;">居家照護資料交換</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #3</td>
      <td style="vertical-align: middle;">長照服務費用支付審核</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #4</td>
      <td style="vertical-align: middle;">在宅急症照護資料交換</td>
    </tr>
  </tbody>
</table>
</div>

### 賽道情境、角色與交易列表 (Scenario, Actor, Transaction List)

賽道 2 須依報名角色完成 SC1，並自 SC2、SC3、SC4 中至少選測一項。賽道 4 須依報名角色與臨床職責配對完成 SC1（LTC-411 至 414）、SC2（LTC-421/422 加 LTC-423/424 或 LTC-427/428）與 SC3（LTC-431/432 及 LTC-435/436），其餘為選測。

<div style="padding-left: 10px;">
<table class="grid rwd-table">
  <thead>
    <tr class="header">
      <th style="width:18%; vertical-align: middle;">賽道 (Track)</th>
      <th style="width:22%; vertical-align: middle;">應用情境 (Scenario)</th>
      <th style="width:12%; vertical-align: middle;">角色 (Actor)</th>
      <th style="width:20%; vertical-align: middle;">對應交易 (Transaction)</th>
      <th style="vertical-align: middle;">說明</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Track #0<br>OAuth2 存取認證</td>
      <td style="vertical-align: middle;" rowspan="2">Scenario #1<br>授權與存取驗證</td>
      <td style="vertical-align: middle;">OAuth2 Client</td>
      <td style="vertical-align: middle;"><a href="2026-track0.html#ltc-011">LTC-011 取得 OAuth2 Token</a></td>
      <td style="vertical-align: middle;">負責向大會授權主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">OAuth2 Client</td>
      <td style="vertical-align: middle;"><a href="2026-track0.html#ltc-012">LTC-012 驗證 Token 與資料存取</a></td>
      <td style="vertical-align: middle;">負責以 Access Token 向 LTC Repository 存取受保護資源並驗證權限。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="18">Track #1<br>長照共通資料交換</td>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc1">Scenario #1<br>病人基本資料</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-111">LTC-111 建立病人基本資料</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立病人基本資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-112">LTC-112 病人基本資料查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取病人基本資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc2">Scenario #2<br>機構基本資料</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-121">LTC-121 建立機構基本資料</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立機構基本資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-122">LTC-122 機構基本資料查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取機構基本資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc3">Scenario #3<br>生理量測</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-131">LTC-131 上傳生理量測</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳個案生理量測資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-132">LTC-132 生理量測查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案生理量測資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc4">Scenario #4<br>用藥紀錄</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-141">LTC-141 上傳用藥紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳個案用藥紀錄（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-142">LTC-142 用藥紀錄查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案用藥紀錄（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc5">Scenario #5<br>健康問題</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-151">LTC-151 建立健康問題</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立個案健康問題紀錄（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-152">LTC-152 健康問題查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案健康問題紀錄（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc6">Scenario #6<br>照護目標</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-161">LTC-161 建立照護目標</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立個案照護目標（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-162">LTC-162 照護目標查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案照護目標（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc7">Scenario #7<br>照護計畫</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-171">LTC-171 建立照護計畫</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立個案照護計畫（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-172">LTC-172 照護計畫查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案照護計畫（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc8">Scenario #8<br>服務請求</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-181">LTC-181 建立服務請求</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立個案照護服務請求（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-182">LTC-182 服務請求查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案照護服務請求（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track1.html#sc9">Scenario #9<br>照護執行紀錄</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-191">LTC-191 上傳照護執行紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳個案照護活動處置紀錄（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track1.html#ltc-192">LTC-192 照護執行紀錄查詢與讀取</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取個案照護活動處置紀錄（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="8">Track #2<br>居家照護資料交換</td>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track2.html#sc1">Scenario #1<br>居護個案基本資料管理</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-211">LTC-211 上傳居護個案基本資料</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳居護個案基本資料表單（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-212">LTC-212 查詢與取得居護個案基本資料</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取居護個案基本資料表單（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track2.html#sc2">Scenario #2<br>居護全人評估管理</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-221">LTC-221 上傳居護全人評估</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳居護健康紀錄評估表單（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-222">LTC-222 查詢與取得居護全人評估</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取居護健康紀錄評估表單（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track2.html#sc3">Scenario #3<br>居護照護計畫管理</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-231">LTC-231 建立居護照護計畫</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 建立居護照護計畫（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-232">LTC-232 查詢與取得居護照護計畫</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取居護照護計畫（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track2.html#sc4">Scenario #4<br>居護共照記錄管理</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-241">LTC-241 上傳居護共照記錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 上傳居護共照記錄表單（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track2.html#ltc-242">LTC-242 查詢與取得居護共照記錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取居護共照記錄表單（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Track #3<br>長照服務費用支付審核</td>
      <td style="vertical-align: middle;" rowspan="2"><a href="2026-track3.html#sc1">Scenario #1<br>單筆服務申報與審核結果查詢</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track3.html#ltc-311">LTC-311 送出服務費用申報</a></td>
      <td style="vertical-align: middle;">負責送出長照服務費用申報資料至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track3.html#ltc-312">LTC-312 查詢與取得審核結果</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與取得長照服務費用審核結果。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="20">Track #4<br>在宅急症照護資料交換</td>
      <td style="vertical-align: middle;" rowspan="6"><a href="2026-track4.html#sc1">Scenario #1<br>初次訪視與收案</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-411">LTC-411 建立收案與整段照護</a></td>
      <td style="vertical-align: middle;">負責建立在宅急症收案療程與整段照護脈絡（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-412">LTC-412 查詢與讀取收案與整段照護</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取收案療程與整段照護（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-413">LTC-413 建立初次訪視紀錄</a></td>
      <td style="vertical-align: middle;">負責建立醫師初次到宅訪視紀錄（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-414">LTC-414 查詢與讀取初次訪視紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取初次訪視紀錄（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-415">LTC-415 上傳初訪評估與診斷</a></td>
      <td style="vertical-align: middle;">負責上傳初訪急症診斷與整體臨床評估（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-416">LTC-416 查詢與讀取初訪評估與診斷</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取初訪評估與診斷（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="8"><a href="2026-track4.html#sc2">Scenario #2<br>持續訪視與治療</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-421">LTC-421 建立本次訪視與生理量測</a></td>
      <td style="vertical-align: middle;">負責建立本次訪視紀錄與生理量測體溫數據（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-422">LTC-422 查詢與讀取本次訪視與生理量測</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取本次訪視與生理量測數據（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-423">LTC-423 上傳處方與給藥紀錄</a></td>
      <td style="vertical-align: middle;">負責建立給藥處方與記錄在宅給藥執行（處方給藥或處置擇一必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-424">LTC-424 查詢與讀取處方與給藥紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取處方與給藥紀錄（處方給藥或處置擇一必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-425">LTC-425 上傳檢驗結果與報告</a></td>
      <td style="vertical-align: middle;">負責上傳床側或送檢之檢驗數據與整合報告（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-426">LTC-426 查詢與讀取檢驗結果與報告</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取檢驗結果與整合報告（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-427">LTC-427 上傳在宅處置紀錄</a></td>
      <td style="vertical-align: middle;">負責上傳在宅醫療處置技術紀錄（處方給藥或處置擇一必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-428">LTC-428 查詢與讀取在宅處置紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取在宅處置紀錄（處方給藥或處置擇一必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="6"><a href="2026-track4.html#sc3">Scenario #3<br>後續照護安排與交班</a></td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-431">LTC-431 建立後續照護計畫</a></td>
      <td style="vertical-align: middle;">負責建立後續在宅照護計畫與下次訪視排程（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-432">LTC-432 查詢與讀取照護計畫</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取後續照護計畫資料（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-433">LTC-433 指派下一次訪視工作</a></td>
      <td style="vertical-align: middle;">負責指派下一次到宅訪視工作任務（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-434">LTC-434 查詢與讀取待執行訪視工作</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取待執行訪視任務（選測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-435">LTC-435 建立照護交班紀錄</a></td>
      <td style="vertical-align: middle;">負責建立跨班與跨職類照護交班紀錄（必測）。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;"><a href="2026-track4.html#ltc-436">LTC-436 查詢與讀取照護交班紀錄</a></td>
      <td style="vertical-align: middle;">負責向 LTC Repository 查詢與讀取照護交班紀錄（必測）。</td>
    </tr>
  </tbody>
</table>
</div>
