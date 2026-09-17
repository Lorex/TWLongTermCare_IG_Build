# 居家護理 V5.0.16 定義

`schema.json` 是人工核對後的欄位及選項清單。來源為 `references/居家護理-測試區系統介接規範_V5.0.16.pdf`。頁碼採印刷頁碼，PDF 頁碼加 4。

```sh
python3 scripts/home_nursing/generate.py
sushi .
./_genonce.sh
```

`generate.py` 使用 Python 標準函式庫，產生二十四種表單的 Logical Model、QuestionnaireResponse Profile、Questionnaire、基本範例，以及十二支 API 的包裝模型、選項 CS／VS 和欄位對應頁。來源 PDF 不必重新抽取，人工核對的規則會保留。

欄位的 `min`／`max` 描述元素出現次數；`empty` 區分必備題目與可留空答案。`choices` 產生 Coding 繫結；相同選項集合共用 ValueSet，選項代碼由文字的 SHA-256 前十二碼配發。`source` 保留原 API 欄位或題目對應，`constraints` 是 FHIRPath invariant。`example` 為虛構範例的指定值。Logical Model 欄名採 lowerCamelCase，底線欄名轉為英數字，原始名稱留在 Mapping。

修改欄位清單後重新產生，不直接改動產生的檔案。臨床 Profile、Extension、Bundle 及完整情境範例是另行撰寫的 FSH，不由產生器覆寫。

PDF 的灰底表示刪除。舊 AssessmentNo、targetNo、measureNo、紀錄編號、EvaluationTime、舊傷口分級及舊疫苗欄位均不納入。來源規範的矛盾與未定義部分列於 [主題說明](../../input/pagecontent/topics/home-nursing.md)。

發布前執行完整線上術語驗證，檢查 `output/qa.html`。不得使用離線或本地術語服務替代 `https://tx.fhir.org`。

術語 OID 以 canonical URL 產生 UUIDv5，再使用 `2.25` UUID OID 命名空間，維持重新產生時的穩定性。FHIR 發布版本依 IG 設定；問卷 canonical 不鎖定來源文件版號，來源規範 V5.0.16 另記於描述。

問卷回覆範例以 `QuestionnaireResponse` 建立，並在 `meta.profile` 指定居護 Profile。產生器依問卷順序配發明確 item 索引，避免 SUSHI 自動先放入必填 Slice 而改變題目順序；Publisher 仍會依居護 Profile 與 Questionnaire 完整驗證。

本次建置結果、驗證範圍與保留提示詳見 [驗證紀錄](VALIDATION.md)。
