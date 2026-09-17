# 在宅急症資料集實作紀錄

本次依 [HaH 系統盤點](hah-ig-profile-recommendations.md)建立 IG 草案，未修改來源系統或宣告已符合健保申報規範。

## 交付內容

- 1 個 Logical Model（150 個資料元素），含逐欄 FHIR Mapping。
- 25 個 Profiles、3 個 Extensions、5 個 CodeSystems、7 個 ValueSets。
- 1 份收案評估 Questionnaire，38 個合成臨床／文件範例。
- 居家護理主題下的[在宅急症說明](../input/pagecontent/topics/hah.md)及[資料對照表](../input/pagecontent/topics/hah-mapping.md)。
- 文件參照與模型覆蓋檢查：`python3 scripts/hah/verify_examples.py`。

## 重要設計決定

正式收案資料沿用 LTCPatient，保留機構個案識別碼、聯絡方式、地址及緊急聯絡人。待補齊資料的個案不應宣告符合此 Profile。這項選擇讓其他臨床資料可以繼承現有 LTC Profile，避免為相同欄位建立平行版本。

資料結構採 Patient → EpisodeOfCare → 整段 Encounter → 單次 Encounter。結案不改用 Patient.active；工作排程與實際執行時間分開。

既有 LTC CareTeam 不容許 Organization 成員，LTCTask 不容許 CareTeam owner，LTCMedicationAdministration 不支援必要的輸注期間與未給藥情境。因 FHIR 子 Profile 不可放寬父層限制，這三項改由共同 TW Core／R4 父層衍生。

生理量測、人員、機構、關係人、地點與 TW Core 檢體等直接重用。居護 HN 系列專屬的來源表單及療程 Extension 不適用在宅急症，故由共同 LTC 父層衍生，另建療程關聯。

31 個資源的結案文件與 8 個資源的轉院文件均納入所有 Resource References；前者示範實地與視訊訪視，後者示範同一個案再次收案及轉院。問卷 canonical 由 IG 提供。

## 驗證

2026-09-17 完成完整建置，使用 SUSHI 3.18.1 與 IG Publisher 2.3.4。建置命令為 `./_genonce.sh`，連接 `https://tx.fhir.org`；未跳過術語驗證，未使用本機術語伺服器。

| 檢查 | 結果 |
| --- | --- |
| SUSHI | 0 errors、1 warning；警告為既有 pagecontent 子目錄的檔案型態提示 |
| 完整 Publisher QA | 0 errors、27 warnings、0 broken links；沿用原有忽略規則 |
| 在宅急症原始驗證訊息 | 80 個定義／範例，0 errors、35 warnings；未依忽略規則過濾 |
| 文件一致性檢查 | 結案文件 31 個資源、轉院文件 8 個資源，全部參照與同一個案／療程檢查通過 |
| 反例檢查 | 可攔下缺少作者、Composition 順序錯誤、跨個案及跨療程資料 |
| 模型與範例覆蓋 | 150 個元素均有 Mapping；25 個 Profiles 均有直接或子 Profile 範例 |
| 問卷版本 | SUSHI 與 Publisher 輸出均為 1.1.0，與回覆中的固定 canonical 一致 |
| 頁面與套件 | 主題／對照表正常渲染；FHIR package 包含全部 80 個新增資源 |

在宅急症原始警告包含：20 則繼承的 canonical 多版本提示、12 則術語 OID 建議、3 則身分證命名系統定義提示。全案 QA 摘要與此原始清單的計數範圍不同。

本機輸出：[QA 報告](../output/qa.html)、[主題頁](../output/hah.html)、[FHIR 套件](../output/package.tgz)。驗證時未修改 `input/ignoreWarnings.txt`、建置腳本或 `docs/CNAME`。

## QA 警告的處理原則

- TW Core 與套件間帶入不同版本的標準 Extension／ValueSet，會提示 canonical 版本歧義。此處保留原有依賴及父層，不在子主題強制更換全案標準版本。
- 新增術語尚無 OID。FHIR 交換使用本 IG 的 canonical URL；若要支援 CDA 等 OID 使用情境，需依組織管理規則配置識別碼。
- 合成個案沿用 TW Core 的內政部身分證命名系統；Publisher 對缺少相應 NamingSystem 定義提出警告，不表示識別碼欄位缺漏。
- 全案原本的 `input/ignoreWarnings.txt` 保持不變。最終 QA 摘要需與在宅急症原始驗證訊息一併閱讀，不能把既有忽略規則造成的結果解讀為原有資料皆無問題。

首輪發現的 CarePlan 敘述狀態、Consent 政策代碼與 Questionnaire 版本參照問題已修正。新增問卷的版本需與本版 IG 的 Publisher 輸出一致，並由一致性檢查程式確認。
