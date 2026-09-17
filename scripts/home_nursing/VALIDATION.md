# 居家護理 V5.0.16 驗證紀錄

驗證日期：2026-09-17。FHIR R4，IG 版本 1.1.0。

## 範圍

依來源 PDF 盤點十二支 API，建立 37 個 Logical Model、35 個 Profile、5 個 Extension、2 個 CodeSystem、120 個 ValueSet、24 張 Questionnaire 與 54 筆範例，共 277 個 FHIR 資源。欄位清單包含二十四種表單、十三類全人評估及 766 個欄位／群組節點。

工作目錄另有同期新增的 `hah` 與其他業務文件變更。完整驗證在 `/tmp/hn-validation` 執行：以當時 HEAD 建立副本，加入居護變更及 1.1.0 發布版本設定，不納入同期 `hah` 定義。驗證前後已比對居護 FHIR 與產生器檔案，內容一致。主題頁後續由其他工作加入的在宅急症連結不在本次 HTML 驗證範圍內。

## 結果

| 檢查 | 結果 |
| --- | --- |
| SUSHI | 0 errors、1 warning；警告為既有 pagecontent 子目錄的支援格式提示 |
| Publisher 完整建置 | 結束碼 0；0 errors、0 warnings、384 個資訊提示 |
| 術語驗證 | 使用 `https://tx.fhir.org`；未跳過或改用本地術語服務 |
| 原始居護資源 QA | 277 個資源，0 errors、3 則識別命名空間警告 |
| 全站 HTML | 0 個無效 XHTML 頁面、0 個斷鏈 |
| 居護主題 | 62 個本地連結均存在；主題及逐欄 Mapping 頁成功呈現 |
| 範例結構 | 29 筆 QuestionnaireResponse 的題目順序及必備群組檢查通過 |
| 重新產生 | 重跑產生器後，111 個產生檔案內容未變 |
| 已刪除來源欄位 | schema 未包含 AssessmentNo、targetNo、measureNo、Record_No、recordNo、RecordNo、EvaluationTime、OpID |

三則原始警告出現在個案、護理人員及工作人員範例的 `http://www.moi.gov.tw` 識別命名空間。此 URI 沿用既有臺灣身分識別設定。專案原有 `input/ignoreWarnings.txt` 規則已抑制這類 URI 提示，因此 Publisher 最終警告數為零。本次未新增警告抑制規則；也已檢查原始資源 QA，確認沒有被既有規則隱藏的居護驗證錯誤。

## 重現與產出

```sh
python3 scripts/home_nursing/generate.py
sushi .
./_genonce.sh
```

本次完整建置約 20 分鐘，較多時間用於完整表單的 HTML 產生及掃描。暫存驗證產出如下，重新建置或清理暫存目錄後可能不再保留：

- QA：`/tmp/hn-validation/output/qa.html`
- QA 統計：`/tmp/hn-validation/output/qa.json`
- 主題預覽：`/tmp/hn-validation/output/home-nursing.html`
- 逐欄對應：`/tmp/hn-validation/output/home-nursing-mapping.html`
- 建置日誌：`/tmp/hn-publisher-isolated.log`

此結果驗證 FHIR 定義、範例及 IG 呈現；未對原始居護測試區 API 上傳資料。名單更新、跨資源識別、續答條件及排程匯入結果仍須依主題說明於介接端處理。
