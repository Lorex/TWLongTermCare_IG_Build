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
      <td style="vertical-align: middle;" rowspan="2">核心</td>
      <td style="vertical-align: middle;">Track #0</td>
      <td style="vertical-align: middle;">OAuth 2 存取認證</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #1</td>
      <td style="vertical-align: middle;">日間照護服務</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="3">應用</td>
      <td style="vertical-align: middle;">Track #2</td>
      <td style="vertical-align: middle;">失智症照護監測</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #3</td>
      <td style="vertical-align: middle;">機構間轉銜服務</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">Track #4</td>
      <td style="vertical-align: middle;">長照 2.0 服務計畫與紀錄</td>
    </tr>
  </tbody>
</table>
</div>

### 賽道情境、角色與交易列表 (Scenario, Actor, Transaction List)

<div style="padding-left: 10px;">
<table class="grid rwd-table">
  <thead>
    <tr class="header">
      <th style="width:18%; vertical-align: middle;">賽道 (Track)</th>
      <th style="width:22%; vertical-align: middle;">應用情境 (Scenario)</th>
      <th style="width:10%; vertical-align: middle;">角色 (Actor)</th>
      <th style="width:10%; vertical-align: middle;">對應交易 (Transaction)</th>
      <th style="vertical-align: middle;">說明</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="vertical-align: middle;" rowspan="1">Track #0<br>OAuth2 存取認證</td>
      <td style="vertical-align: middle;" rowspan="1">Scenario #1<br>取得 OAuth2 Token</td>
      <td style="vertical-align: middle;">OAuth2 Client</td>
      <td style="vertical-align: middle;">LTC-011 取得 OAuth2 Token</td>
      <td style="vertical-align: middle;">負責向大會驗證主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="6">Track #1<br>日間照護服務</td>
      <td style="vertical-align: middle;" rowspan="2">Scenario #1<br>生理量測數據管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-111 上傳生理量測數據</td>
      <td style="vertical-align: middle;">負責上傳生理量測數據至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-112 查詢生理量測數據</td>
      <td style="vertical-align: middle;">負責查詢生理量測數據至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #2<br>照護活動管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-121 上傳照護活動</td>
      <td style="vertical-align: middle;">負責上傳照護活動至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-122 查詢照護活動</td>
      <td style="vertical-align: middle;">負責查詢照護活動至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #3<br>用藥紀錄管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-131 上傳用藥紀錄</td>
      <td style="vertical-align: middle;">負責上傳用藥紀錄至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-132 查詢用藥紀錄</td>
      <td style="vertical-align: middle;">負責查詢用藥紀錄至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="7">Track #2<br>失智症照護監測</td>
      <td style="vertical-align: middle;" rowspan="3">Scenario #1<br>失智症認知評估管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-211 上傳 MMSE 失智評估結果</td>
      <td style="vertical-align: middle;">負責上傳 MMSE 失智評估結果至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-212 上傳 CDR 失智評估結果</td>
      <td style="vertical-align: middle;">負責上傳 CDR 失智評估結果至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-213 查詢失智症評估結果</td>
      <td style="vertical-align: middle;">負責查詢失智症評估結果至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #2<br>個案位置監測管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-221 上傳個案即時位置</td>
      <td style="vertical-align: middle;">負責上傳個案即時位置至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-222 查詢個案位置資訊</td>
      <td style="vertical-align: middle;">負責查詢個案位置資訊至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #3<br>異常事件警報管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-231 上傳異常事件警報</td>
      <td style="vertical-align: middle;">負責上傳異常事件警報至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-232 查詢異常事件警報</td>
      <td style="vertical-align: middle;">負責查詢異常事件警報至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="6">Track #3<br>機構間轉銜服務</td>
      <td style="vertical-align: middle;" rowspan="2">Scenario #1<br>照護管理評估量表管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-311 上傳照護管理評估量表結果</td>
      <td style="vertical-align: middle;">負責上傳照護管理評估量表結果至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-312 查詢照護管理評估量表結果</td>
      <td style="vertical-align: middle;">負責查詢照護管理評估量表結果至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #2<br>長期照顧服務轉介單管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-321 上傳長期照顧服務轉介單</td>
      <td style="vertical-align: middle;">負責上傳長期照顧服務轉介單至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-322 查詢長期照顧服務轉介單</td>
      <td style="vertical-align: middle;">負責查詢長期照顧服務轉介單至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #3<br>AA12 長期照護醫師意見書管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-331 上傳 AA12 長期照護醫師意見書</td>
      <td style="vertical-align: middle;">負責上傳 AA12 長期照護醫師意見書至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-332 查詢 AA12 長期照護醫師意見書</td>
      <td style="vertical-align: middle;">負責查詢 AA12 長期照護醫師意見書至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="4">Track #4<br>長照 2.0 服務計畫與紀錄</td>
      <td style="vertical-align: middle;" rowspan="2">Scenario #1<br>AA01 照顧計畫擬定管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-411 上傳 AA01 照顧計畫問卷回應</td>
      <td style="vertical-align: middle;">負責上傳 AA01 照顧計畫問卷回應至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-412 查詢 AA01 照顧計畫問卷回應</td>
      <td style="vertical-align: middle;">負責查詢 AA01 照顧計畫問卷回應至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;" rowspan="2">Scenario #2<br>AA02 服務紀錄與追蹤管理</td>
      <td style="vertical-align: middle;">LTC_MANAGEMENT</td>
      <td style="vertical-align: middle;">LTC-421 上傳 AA02 服務追蹤問卷回應</td>
      <td style="vertical-align: middle;">負責上傳 AA02 服務追蹤問卷回應至 LTC Repository。</td>
    </tr>
    <tr>
      <td style="vertical-align: middle;">LTC_CONSUMER</td>
      <td style="vertical-align: middle;">LTC-422 查詢 AA02 服務追蹤問卷回應</td>
      <td style="vertical-align: middle;">負責查詢 AA02 服務追蹤問卷回應至 LTC Repository。</td>
    </tr>
  </tbody>
</table>
</div>