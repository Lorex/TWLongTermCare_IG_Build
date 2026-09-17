# STU 1.1.0 QA 處理紀錄

本次盤點以 Publisher 2.3.4 的 `errors = 0, warn = 27, info = 453` 為基準。使用 FHIR R4.0.1、TW Core 1.0.0 與 `https://tx.fhir.org` 驗證。

| 訊息 | 原筆數 | 處理方式 |
| --- | ---: | --- |
| 術語缺少 OID | 12 warnings | 為在宅急症的 5 個 CodeSystems、7 個 ValueSets 加入 OID。沿用居護以 canonical URL 產生 UUID v5，再轉為 `2.25` OID 的方式。 |
| 值集版本不明確 | 15 warnings | 在 HAHEncounter、HAHConsent、HAHMedicationRequest 指定 THO 7.3.0 套件內的值集版本。Encounter 子 Profile 繼承共同綁定，保留原綁定強度。 |
| 自動選定關係代碼版本 | 1 info | RelationshipTypeVSTWLTC 明確使用 `v2-0131` 3.0.0。 |
| 文件種類缺少建議代碼 | 2 infos | 結案與轉院摘要保留本地分類，另加 LOINC `18842-5`、`18761-7`。 |
| 共同就診缺少直接範例 | 1 info | 新增 `hah-encounter`；範例檢查要求全部 25 個 HAH Profiles 都有直接範例。 |
| 引用本地草稿 CodeSystem | 427 infos | 保留草稿狀態，僅排除六個指定 canonical 在 1.1.0 的狀態提示。 |
| Observation 使用非 LOINC 代碼 | 19 infos | 保留既有 Profile 指定的 SNOMED CT、本地身體量測與傷口代碼。依完整訊息及 17 個特定代碼排除 preferred 綁定提示。 |
| Bundle 尋找外部同意政策 URI | 1 info | 保留外部政策 URI，僅排除此合成 URL 及位置的尋址提示。臨床來源附件仍包含在 Bundle 內。 |
| 繼承的 Extension 被新版標示淘汰 | 2 infos | 保留 R4／TW Core 繼承的限制，僅排除 `elementdefinition-maxValueSet` 與 `regex` 5.3.0 的淘汰提示。 |

新增的排除規則位於 `input/ignoreWarnings.txt` 的「STU 1.1.0 QA」段落。449 筆資訊提示經確認後列入例外，並非 449 筆資源錯誤被修正。規則沒有略過線上術語、代碼有效性、required／extensible 綁定或臨床參照驗證。升版時應重新檢查這些理由與術語狀態。

## 判斷依據

- [FHIR R4 術語綁定](https://hl7.org/fhir/R4/terminologies.html#preferred)：preferred 綁定允許其他代碼。既有 SNOMED CT 或本地代碼未確認等義前，不新增推測的 LOINC 對照。
- [Consent.policy.uri](https://hl7.org/fhir/R4/consent-definitions.html#Consent.policy.uri)：型別為 URI，供政策文件的查找與說明使用，不是臨床 Resource Reference。
- [LOINC 18842-5](https://loinc.org/18842-5/) 與 [LOINC 18761-7](https://loinc.org/18761-7/)：分別為結案與轉銜摘要範例採用的文件代碼。
- 術語版本核對來源：本機 FHIR 套件快取 `hl7.terminology.r4#7.3.0`。

## 驗證指令

```sh
./_genonce.sh
python3 scripts/hah/verify_examples.py
git diff --check
```

`_genonce.sh` 包含 SUSHI 編譯及 Publisher 線上術語驗證。完成後以 `output/qa.json`、`output/qa.html` 確認 QA 數量與排除規則，並檢查兩份摘要 Bundle 的參照完整性。

## 本次結果

2026-09-17 完整建置完成，程序結束碼為 0。`output/qa.json` 為 `errs = 0`、`warnings = 0`、`hints = 0`。Publisher 檢查 10,456 個 HTML 檔案及 7,900,306 個連結，無無效 XHTML 或失效連結。

兩份文件的完整性及反例檢查通過。25 個 HAH Profiles 均有直接範例，150 個模型資料元素均有對照，Publisher 輸出的問卷版本與回覆一致。產出的 snapshots 已確認全部 15 處術語版本綁定，`git diff --check` 通過。

以上數量指 Publisher QA。編譯日誌仍有 SUSHI 3.18.1 將 `input/pagecontent/topics` 目錄視為非支援檔案的既有提示；Publisher 合併套件階段也仍記錄一次找不到 `output/package.tgz`，但建置結束時主要 `package.tgz` 已產生。這兩項日誌訊息不在原本 27 筆警告與 453 筆資訊內。
