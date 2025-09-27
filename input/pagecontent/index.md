### 介紹

<div style="padding-left: 10px;">
<p>臺灣長期照顧實作指引（Taiwan Long Term Care Implementation Guide，簡稱TW LTC IG）採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/"  target="_blank">FHIR R4.0.1</a>之標準基礎上，參考了<a href="https://twcore.mohw.gov.tw/ig/twcore/index.html" target="_blank">臺灣核心實作指引 （TW Core Implementation Guide）0.3.2</a>、<a href="https://hl7.org/fhir/us/eltss/index.html">美國長期照顧實作指引（Electronic Long-Term Services and Supports (eLTSS) Release 1 - US Realm, eLTSS） 2.0.0 - STU2</a> ，進一步定義適用於臺灣長期照顧資料交換需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）、資料類型（文字、日期時間、代碼等）、可綁定的代碼（及其綁定的強制程度）及查詢參數等，旨在提供健康照護資訊系統開發與實作者以TW LTC IG為基礎，再進一步訂定其實務專案所需之資料交換格式以應用於專案中。TW LTC IG的實作方式有兩種：</p>
<ol>
<li><strong>僅支援Profiles</strong>：系統僅支援TW LTC Profiles以呈現健康照護相關資料。</li>
<li><strong>支援Profiles + RESTful互動</strong>：系統支援TW LTC Profiles及RESTful互動以呈現健康照護相關資料。</li>
</ol>
</div>

### 背景

<div style="padding-left: 10px;">
<p>鑒於長期照顧機構端與醫院及衛生福利部電子病歷資料交換需求，故此版本 Taiwan LTC IG 以 FHIR R4.0.1 為基礎，同時繼承自 Taiwan LTC Profiles/ValueSet 與 TW Core Profiles/ValueSet，以最大程度滿足對電子病歷資料交換的相容性，並分別參考來自其他國家長期照顧實作指引、衛生福利部電子病歷相關規範，使制定之 IG 在除了符合聯測需求外，也盡可能符合臺灣的實作需求。</p>
<p>TW LTC IG內容將在未來的版本中持續更新，各版本亦將附有版本異動說明。所有經進一步定義的 Resources 或 Profiles，皆稱為Profiles，各 Profiles 依據其可被在地實際採用的程度與不再修改的程度，將標記其「成熟度（Maturity Level）」，被稱之為 FMM（根據眾所周知的CMM级別）。FMM 等級（level）可被實作者用来判斷一個規範文件的進階程度，也就是穩定度。以下是已被定義的 FMM 等級，實務上會視情況調整以符合定義：</p>
<p><strong>DRAFT 0</strong> 此 Resource 或 Profile（規範文件） 已被發佈於目前的建置，這個等級意即草稿。</p>
<p><strong>FMM 1</strong> 滿足 DRAFT 0 條件，而且此規範文件在建置的過程沒有任何的警語，負責的工作小組已指明他們認為這份規範文件基本上已完成並可供實作使用。</p>
<p><strong>FMM 2</strong> 滿足 FMM 1 條件，而且此規範文件已被測試，並成功支援至少三套獨立系統之間的可互操作性（意即至少有三套系統實作此規範成功地互通資料），這些系統利用大部分的規範文件（例如至少80%的核心資料），使用基於此規範文件的至少一個聲明範圍的半真實資料及情境（例如在聯測）。這些互操作結果要求被報告及被工作小組接受。</p>
<p><strong>FMM 3</strong> 滿足 FMM 2 條件，而且此規範文件已被工作小组驗證應遵從的《<a href="https://confluence.hl7.org/display/FHIR/Conformance+QA+Criteria">Conformance Resource Quality Guidelines</a>》；已經通過一輪正式投票；至少有10位來自至少3家機構不同的實作者提出意見，並造成至少一項實質性的改變。</p>
<p><strong>FMM 4</strong> 滿足 FMM 3 條件，而且此規範文件已正式出版（例如：FHIR實作指引），並已實際應用於多個雛型專案。同時，負責的工作小組同意此規範文件足夠穩定，在後續的非向下相容（non-backward compatible）的異動中需與實作者協商與諮詢。</p>
<p><strong>FMM 5</strong> 滿足 FMM 4 條件，而且此規範文件於在 FMM 1 以上等級（意即：試用等級）的兩個正式出版品發佈週期中出版，並已實際應用於至少五套獨立的產品系統。</p>
<p><strong>Normative（規範）</strong> 此規範文件已被認定為穩定。</p>

<p>TW LTC IG 中所有Profiles的FMM等級如下：
  <ol>
    <li>0.3.0 版本的所有 Profiles 均為 FMM0</li>
  </ol>
</p>
</div>

### 如何閱讀這個實作指引（IG）

<div  style="padding-left: 10px;">
<p> TW LTC IG 之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="index_structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 70%;"/>
<div style="clear:both;"></div>

<ul>
  <li><strong><a href="index.html">應用說明</a></strong>：TW LTC IG 介紹及背景說明。</li>
  <li><strong><a href="artifacts.html">規範文件</a></strong>：TW LTC IG 能力聲明、所有 Profiles 與查詢參數及操作定義、專門術語及 Extensions。
  <ul>
    <li><strong><a href="capability-statements.html">能力聲明</a>
      </strong>：應用 TW LTC IG 於建置業務目的使用的 FHIR Server 時，該 FHIR Server 必須及建議應該支援的操作功能。
    </li>
    <li><strong><a href="searchparameters-and-operation.html">查詢參數及操作定義</a>
      </strong>：查詢 FHIR Server 的 Profiles時，針對各 Profiles可使用的查詢參數及操作定義。
    </li>
    <li><strong><a href="logical-models.html">邏輯模型</a>
      </strong>：TW LTC IG 的所有邏輯模型（Logical Models），各邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。
    </li>
    <li><strong><a href="profiles-and-extensions.html">FHIR Profiles及Extensions</a></strong>：
      <ul>
          <li>TW LTC IG 的所有 Profiles 之定義與範例及Extensions。</li>
          <li>各資料項目不同實作強制程度的 Terminology。</li>
          <li>各資料項目的限制（Constraints）。</li>
          <li>查詢依據 TW LTC IG 實作之 FHIR Server 的特定 Profiles 時，可使用的查詢參數。</li>
          <li>有哪些 Profiles 具有查詢參數以及 Server 必須支援哪些必要的查詢參數功能。</li>
      </ul>
    </li>
    <li><strong><a href="terminologies.html">專門術語</a>
      </strong>：TW LTC IG網站所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets），內容主要依據全國專門術語服務平臺（TW terminology services）與長期照顧情境使用之術語建置。
  </li>
  </ul>
  </li>
  <li><strong><a href="examples.html">範例</a></strong>：TW LTC IG 的所有範例。</li>
  <li><strong><a href="downloads.html">結構定義與範例檔下載</a></strong>：實作者若不偏好使用 FHIR RESTful API 驗證資料是否遵從 Profiles，可直接下載所需的格式驗證檔，包括 XML、JSON 及 Turtle 三種格式，亦可於此下載完整範例。</li>
  <li><strong><a href="security.html">安全性</a></strong>：主要說明採用 TW LTC IG 網站進行實作時，有關資料存取授權的作法。</li>
  <li><strong><a href="validates.html">驗證教學</a></strong>：如何驗證實作檔是否遵從 TW LTC IG 規範。</li>
  <li><strong><a href="connectathon.html">
    2025 專案聯測松</a></strong>：本規範與 2025 專案聯測松的賽道整合資訊。</li>
  <!-- <li><strong><a href="https://twcore.mohw.gov.tw/ig/twcore/history.html">版本異動</a></strong>：若 TW LTC IG 網站的版本有所異動，皆可透過<a href="https://twcore.mohw.gov.tw/ig/twcore/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li> -->
</ul>
</div>


### 作者與貢獻者
<div  style="padding-left: 10px;">
<table class="grid rwd-table">
	<thead>
		<tr class="header">
			<th style="width:10%; vertical-align: middle;">角色</th>
      <th style="width:10%; vertical-align: middle;">貢獻版次</th>
			<th style="width:25%; vertical-align: middle;">機構名稱</th>
			<th style="width:15%; vertical-align: middle;">姓名</th>
			<th style="width:30%; vertical-align: middle;">所屬單位</th>
			<th style="vertical-align: middle;">聯絡方式</th>
		</tr>
	</thead>
	<tbody>
			<tr>
        <td style="vertical-align: middle;">作者</td>
            <td style="vertical-align: middle;">v0.0.1 ~ v0.3.0</td>
        <td rowspan="8" style="vertical-align: middle;">經濟部產業發展署<br />
        （Industrial Development Administration, Ministry of Economic Affairs）</td>
        <td style="vertical-align: middle;">楊宇凡（Yu-Fan Yang）</td>
        <td style="vertical-align: middle;">矽塔資訊服務有限公司<br />
        （Sitatech Information Services Co., Ltd）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:ceo@sita.tech">ceo@sita.tech</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.3.0</td>
        <td style="vertical-align: middle;">曹軒寧（Hsuan-Ning Tsao）</td>
        <td style="vertical-align: middle;">矽塔資訊服務有限公司<br >（Sitatech Information Services Co., Ltd）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:shannontsao@sita.tech">shannontsao@sita.tech</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.0.1 ~ v0.2.1</td>
        <td style="vertical-align: middle;">李修安（Hsiu-An Lee）</td>
        <td style="vertical-align: middle;">國家衛生研究院 - 癌症研究所<br >（National Health Research Institutes - The National Institute of Cancer Research）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:billy72325@gmail.com">billy72325@gmail.com</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.0.1 ~ v0.3.0</td>
        <td style="vertical-align: middle;">李祥豪（Siang-Hao Lee）</td>
        <td style="vertical-align: middle;">九日生行動健康科技公司<br >（9Rise International Mobile Health Technology Co., Ltd.）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:shvoidlee@gmail.com">shvoidlee@gmail.com</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.3.0</td>
        <td style="vertical-align: middle;">楊宗翰（Chung-Han Yang）</td>
        <td style="vertical-align: middle;">九日生行動健康科技公司<br >（9Rise International Mobile Health Technology Co., Ltd.）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:#"></a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.0.1 ~ v0.3.0</td>
        <td style="vertical-align: middle;">黃薰慧（Hsun-Hui Huang）</td>
        <td style="vertical-align: middle;">財團法人資訊工業策進會 - 數位轉型研究院<br >（Institute for Information Industry - Digital Transformation Research Institute）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:beatrice@iii.org.tw">beatrice@iii.org.tw</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.3.0</td>
        <td style="vertical-align: middle;">張鈞亮 (Chun-Liang Chang)</td>
        <td style="vertical-align: middle;">財團法人資訊工業策進會 - 數位轉型研究院<br >（Institute for Information Industry - Digital Transformation Research Institute）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:liangglchang@iii.org.tw">liangglchang@iii.org.tw</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.3.0</td>
        <td style="vertical-align: middle;">崔智萱 (Nicole Tsui)</td>
        <td style="vertical-align: middle;">財團法人資訊工業策進會 - 數位轉型研究院<br >（Institute for Information Industry - Digital Transformation Research Institute）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:nicolechtsui@iii.org.tw">nicolechtsui@iii.org.tw</a>
        </td>
			</tr>
	</tbody>
</table>
</div>