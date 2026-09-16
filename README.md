# 臺灣長期照顧實作指引 (TW LTC IG)

臺灣長期照顧實作指引（Taiwan Long-Term Care Implementation Guide）基於 [HL7 FHIR R4.0.1](http://hl7.org/fhir/R4/) 標準，參考[臺灣核心實作指引（TW Core IG）](https://twcore.mohw.gov.tw/ig/twcore/index.html)，定義適用於臺灣長期照顧情境的 FHIR Profiles、Extensions、ValueSets 及 CodeSystems。

## 線上版本

- **正式版**：[https://ltc-ig.fhir.tw](https://ltc-ig.fhir.tw)
- **CI Build**：[https://build.fhir.org/ig/Lorex/TWLongTermCare_IG_Build/](https://build.fhir.org/ig/Lorex/TWLongTermCare_IG_Build/)

## 建置方式

本專案使用 [FHIR Shorthand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) 撰寫，需安裝 [SUSHI](https://fshschool.org/docs/sushi/) 與 [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)。

```bash
# 編譯 FSH 為 FHIR JSON（快速語法檢查）
sushi .

# 完整建置 IG 網站（含驗證）
./_genonce.sh
```

完整建置統一使用 `https://tx.fhir.org` 進行術語驗證。建置前會檢查 R4 術語服務；連線失敗時停止，不會略過驗證。Windows 使用 `_genonce.bat`，持續建置使用 `_gencontinuous.sh` 或 `_gencontinuous.bat`。

`_build.sh` 與 `_build.bat` 的 `build`、`nosushi` 也使用相同檢查。已移除 `notx` 模式及本地 FHIRsmith 設定，不再使用 `LTC_TX_SERVER`。建置腳本只接受 `https://tx.fhir.org` 作為 `-tx` 參數。

`_updatePublisher.sh` 與 `_updatePublisher.bat` 只更新 Publisher，不會以官方通用腳本覆寫本專案的建置設定。`jekyll` 選項只重新渲染既有產物，不能取代完整驗證。

## 術語 OID

本 IG 的 CodeSystem 與 ValueSet 在 FSH 原始檔中明確指定 OID，以供 CDA 等使用 OID 的系統識別。
OID 採用 [UUID 對應的 `2.25` 格式](https://profiles.ihe.net/ITI/TF/Volume2/ch-B.html)，以資源的 canonical URL 產生 UUIDv5，再轉為十進位整數。相同 canonical 的不同版本共用 OID。

新增術語資源時，可用以下方式產生 OID，並將結果寫入 `^identifier[0].value`，其 `^identifier[0].system` 設為 `urn:ietf:rfc:3986`：

```python
import uuid

canonical = "http://ltc-ig.fhir.tw/CodeSystem/YourCodeSystem"
print(f"urn:oid:2.25.{uuid.uuid5(uuid.NAMESPACE_URL, canonical).int}")
```

已指定的 OID 應保留，勿因重新建置或調整版本而重新分配。

## 專案資訊

| 項目 | 說明 |
|------|------|
| Canonical URL | `http://ltc-ig.fhir.tw` |
| Package ID | `tw.iii.ltc` |
| 版本 | 1.0.0 |
| FHIR 版本 | R4.0.1 |
| 上層依賴 | TW Core IG 0.3.2 |

## 授權

本專案內容以 [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) 授權條款釋出。
