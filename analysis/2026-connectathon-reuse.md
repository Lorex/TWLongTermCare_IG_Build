## 2025 交易盤點與 2026 複用對照

本文件整理於 2026-09-29，依據現行 2026 年長照 FHIR 專案聯測架構，完整盤點 2025 年全部 24 筆原交易之處理事實與對應關係。

2026 年度賽道重新定位：Track 1 聚焦跨場域共用之頂層 LTC 基礎資源建立與查讀（SC1 至 SC4 必測，SC5 至 SC9 選測）；Track 2 導入居家護理個案基本資料、全人評估（健康紀錄評估）、照護計畫與共照記錄管理；Track 3 導入長照服務費用支付審核；Track 4 導入在宅急症照護三段臨床流程互通。2025 年之認知評估量表（MMSE/CDR）、即時位置監測、異常事件警報、照顧管理評估量表（CMS）、轉介文件與計畫問卷（AA01/AA02/AA12）均不納入今年度測試範圍。

下表兩欄明確標記年度，左欄為「2025 交易編號」，右欄為「2026 對應交易編號」，請依對應之 2026 規格進行實作：

<div class="table-responsive">
<table class="grid rwd-table">
<thead>
<tr>
  <th style="width:12%;">2025 交易編號</th>
  <th style="width:22%;">2025 交易主題</th>
  <th style="width:14%;">處理方式</th>
  <th style="width:20%;">2026 對應交易編號</th>
  <th>說明</th>
</tr>
</thead>
<tbody>
<tr>
  <td>2025 LTC-011</td>
  <td>取得 OAuth2 Token</td>
  <td>沿用</td>
  <td><a href="../input/pagecontent/2026-track0.md#ltc-011">2026 LTC-011</a></td>
  <td>沿用 OAuth 2.0 Authorization Code Flow 授權流程，受保護資源存取驗證獨立為 2026 LTC-012。</td>
</tr>
<tr>
  <td>2025 LTC-111</td>
  <td>上傳生理量測數據</td>
  <td>複用建立機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-131">2026 LTC-131</a>、<a href="../input/pagecontent/2026-track4.md#ltc-421">2026 LTC-421</a></td>
  <td>複用單筆量測資源（Observation）之建立與編碼結構；2026 LTC-131 上傳血壓量測，2026 LTC-421 於在宅急症情境中上傳訪視體溫。</td>
</tr>
<tr>
  <td>2025 LTC-112</td>
  <td>查詢生理量測數據</td>
  <td>複用查讀機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-132">2026 LTC-132</a>、<a href="../input/pagecontent/2026-track4.md#ltc-422">2026 LTC-422</a></td>
  <td>複用生理量測代碼、數值與單位之查詢與比對邏輯；2026 LTC-132 查讀血壓 Observation，2026 LTC-422 查讀訪視體溫。</td>
</tr>
<tr>
  <td>2025 LTC-121</td>
  <td>上傳照護活動</td>
  <td>恢復複用建立機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-191">2026 LTC-191</a></td>
  <td>恢復複用照護執行紀錄（Procedure）之建立與長照服務項目代碼結構，於 2026 LTC-191 上傳單次照護處置紀錄。</td>
</tr>
<tr>
  <td>2025 LTC-122</td>
  <td>查詢照護活動</td>
  <td>複用查讀機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-192">2026 LTC-192</a></td>
  <td>複用照護執行紀錄（Procedure）之查詢與欄位核對，於 2026 LTC-192 獨立查閱一次已完成之照護活動。</td>
</tr>
<tr>
  <td>2025 LTC-131</td>
  <td>上傳用藥紀錄</td>
  <td>複用建立機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-141">2026 LTC-141</a>、<a href="../input/pagecontent/2026-track4.md#ltc-423">2026 LTC-423</a></td>
  <td>沿用給藥紀錄（MedicationAdministration）之核心欄位與途徑及劑量結構；2026 LTC-141 上傳共通給藥紀錄，2026 LTC-423 於在宅急症情境增加訪視與處方關聯。</td>
</tr>
<tr>
  <td>2025 LTC-132</td>
  <td>查詢用藥紀錄</td>
  <td>複用查讀機制</td>
  <td><a href="../input/pagecontent/2026-track1.md#ltc-142">2026 LTC-142</a>、<a href="../input/pagecontent/2026-track4.md#ltc-424">2026 LTC-424</a></td>
  <td>複用給藥紀錄之查詢、藥品代碼與劑量比對；2026 LTC-142 查讀共通給藥紀錄，2026 LTC-424 查讀訪視給藥。</td>
</tr>
<tr>
  <td>2025 LTC-211</td>
  <td>上傳 MMSE 失智評估結果</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 認知評估量表不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-212</td>
  <td>上傳 CDR 失智評估結果</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 認知評估量表不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-213</td>
  <td>查詢認知評估結果</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 認知評估量表不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-221</td>
  <td>上傳個案即時位置</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 個案位置監測不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-222</td>
  <td>查詢個案即時位置</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 個案位置監測不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-231</td>
  <td>上傳異常事件警報</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 異常事件警報不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-232</td>
  <td>查詢異常事件警報</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 2 異常事件警報不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-311</td>
  <td>上傳照護管理評估量表</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 CMS 照顧管理評估量表不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-312</td>
  <td>查詢照護管理評估量表</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 CMS 照顧管理評估量表不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-321</td>
  <td>上傳長照服務轉介單</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 長照服務轉介單不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-322</td>
  <td>查詢長照服務轉介單</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 長照服務轉介單不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-331</td>
  <td>上傳長期照顧醫師意見書</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 AA12 醫師意見書不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-332</td>
  <td>查詢長期照顧醫師意見書</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 3 AA12 醫師意見書不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-411</td>
  <td>上傳照顧計畫與服務項目清單 (AA01)</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 4 AA01 計畫問卷不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-412</td>
  <td>查詢照顧計畫與服務項目清單 (AA01)</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 4 AA01 計畫問卷不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-421</td>
  <td>上傳定期服務執行與追蹤紀錄 (AA02)</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 4 AA02 追蹤問卷不納入今年度聯測。</td>
</tr>
<tr>
  <td>2025 LTC-422</td>
  <td>查詢定期服務執行與追蹤紀錄 (AA02)</td>
  <td>未納入今年</td>
  <td>—</td>
  <td>2025 Track 4 AA02 追蹤問卷不納入今年度聯測。</td>
</tr>
</tbody>
</table>
</div>
