### 介紹
<div style="padding-left: 10px;">
<p>臺灣牙醫實作指引（Taiwan Dental Implementation Guide，簡稱TW Dental IG）採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/" target="_blank">FHIR R4.0.1</a>之標準基礎上，參考了<a href="https://twcore.mohw.gov.tw/ig/twcore/index.html" target="_blank">臺灣核心實作指引（TW Core Implementation Guide）0.3.2</a>，進一步定義適用於臺灣牙醫資料交換需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）、資料類型（文字、日期時間、代碼等）、可綁定的代碼（及其綁定的強制程度）及查詢參數等。</p>
</div>

### 背景
<div style="padding-left: 10px;">
<p>金屬工業研究發展中心於 2025 年推動「Smile Guard智慧口腔平台系統建置及FHIR規範導入」研究計畫，與國內醫療院所及資通訊服務供應商合作，建立統一的口腔健康資料交換標準。鑒於牙醫機構端與醫院及衛生福利部電子病歷資料交換需求，故此版本 Taiwan Dental IG 以 FHIR R4.0.1 為基礎，同時繼承自 TW Core Profiles/ValueSet，以最大程度滿足對電子病歷資料交換的相容性，並分別參考來自其他國家牙醫實作指引、衛生福利部電子病歷相關規範，使制定之 IG 在除了符合聯測需求外，也盡可能符合臺灣的實作需求。</p>

<p>TW Dental IG內容將在未來的版本中持續更新，各版本亦將附有版本異動說明。所有經進一步定義的 Resources 或 Profiles，皆稱為Profiles，各 Profiles 依據其可被在地實際採用的程度與不再修改的程度，將標記其「成熟度（Maturity Level）」，被稱之為 FMM（根據眾所周知的CMM级別）。FMM 等級（level）可被實作者用来判斷一個規範文件的進階程度，也就是穩定度。以下是已被定義的 FMM 等級，實務上會視情況調整以符合定義：</p>

<p><strong>DRAFT 0</strong> 此 Resource 或 Profile（規範文件） 已被發佈於目前的建置，這個等級意即草稿。</p>

<p><strong>FMM 1</strong> 滿足 DRAFT 0 條件，而且此規範文件在建置的過程沒有任何的警語，負責的工作小組已指明他們認為這份規範文件基本上已完成並可供實作使用。</p>

<p><strong>FMM 2</strong> 滿足 FMM 1 條件，而且此規範文件已被測試，並成功支援至少三套獨立系統之間的可互操作性（意即至少有三套系統實作此規範成功地互通資料），這些系統利用大部分的規範文件（例如至少80%的核心資料），使用基於此規範文件的至少一個聲明範圍的半真實資料及情境（例如在聯測）。這些互操作結果要求被報告及被工作小組接受。</p>

<p><strong>FMM 3</strong> 滿足 FMM 2 條件，而且此規範文件已被工作小组驗證應遵從的《<a href="https://confluence.hl7.org/display/FHIR/Conformance+QA+Criteria">Conformance Resource Quality Guidelines</a>》；已經通過一輪正式投票；至少有10位來自至少3家機構不同的實作者提出意見，並造成至少一項實質性的改變。</p>

<p><strong>FMM 4</strong> 滿足 FMM 3 條件，而且此規範文件已正式出版（例如：FHIR實作指引），並已實際應用於多個雛型專案。同時，負責的工作小組同意此規範文件足夠穩定，在後續的非向下相容（non-backward compatible）的異動中需與實作者協商與諮詢。</p>

<p><strong>FMM 5</strong> 滿足 FMM 4 條件，而且此規範文件於在 FMM 1 以上等級（意即：試用等級）的兩個正式出版品發佈週期中出版，並已實際應用於至少五套獨立的產品系統。</p>

<p><strong>Normative（規範）</strong> 此規範文件已被認定為穩定。</p>

<p>TW Dental IG 中所有Profiles的FMM等級如下：
  <ol>
    <li>0.0.1 版本的所有 Profiles 均為 FMM0</li>
  </ol>
</p>
</div>


### 如何閱讀這個實作指引（IG）
<div  style="padding-left: 10px;">
<p> TW Dental IG 之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="index_structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 100%;"/>
<div style="clear:both;"></div>

<ul>
  <li><strong><a href="index.html">應用說明</a></strong>：TW Dental IG 介紹及背景說明。</li>
  <li><strong><a href="artifacts.html">規範文件</a></strong>：TW Dental IG 能力聲明、所有 Profiles 與查詢參數及操作定義、專門術語及 Extensions。</li>
  <li><strong><a href="downloads.html">結構定義與範例檔下載</a></strong>：實作者若不偏好使用 FHIR RESTful API 驗證資料是否遵從 Profiles，可直接下載所需的格式驗證檔，包括 XML、JSON 及 Turtle 三種格式，亦可於此下載完整範例。</li>
  <li><strong><a href="security.html">安全性</a></strong>：主要說明採用 TW Dental IG 網站進行實作時，有關資料存取授權的作法。</li>
  <li><strong><a href="validates.html">驗證教學</a></strong>：如何驗證實作檔是否遵從 TW Dental IG 規範。</li>
  <li><strong><a href="connectathon.html">
    MI-TW 2025 聯測松</a></strong>：本規範與 MI-TW Connectathon 2025 臺灣醫學資訊聯測松的賽道整合資訊。</li>
</ul>
</div>


### 作者與貢獻者
<div  style="padding-left: 10px;">
<table class="grid rwd-table">
	<thead>
		<tr class="header">
			<th style="width:10%; vertical-align: middle;">角色</th>
      <th style="width:10%; vertical-align: middle;">貢獻版次</th>
			<th style="width:15%; vertical-align: middle;">姓名</th>
			<th style="width:30%; vertical-align: middle;">所屬單位</th>
			<th style="vertical-align: middle;">聯絡方式</th>
		</tr>
	</thead>
	<tbody>
			<tr>
        <td style="vertical-align: middle;">作者</td>
            <td style="vertical-align: middle;">v0.0.1</td>
        <td style="vertical-align: middle;">楊宇凡（Yu-Fan Yang）</td>
        <td style="vertical-align: middle;">矽塔資訊服務有限公司<br />
        （Sitatech Information Services Co., Ltd）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:ceo@sita.tech">ceo@sita.tech</a>
        </td>
			</tr>
      <tr>
        <td style="vertical-align: middle;">貢獻者</td>
            <td style="vertical-align: middle;">v0.0.1</td>
        <td style="vertical-align: middle;">陳靖勳（Ching-Hsun Chen）</td>
        <td style="vertical-align: middleㄑ;">矽塔資訊服務有限公司<br />
        （Sitatech Information Services Co., Ltd）</td>
        <td style="vertical-align: middle;">
          <a href="mailto:billy72325@gmail.com">pt@sita.tech</a>
        </td>
			</tr>
	</tbody>
</table>
</div>