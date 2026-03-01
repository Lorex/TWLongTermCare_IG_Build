# Connectathon Table - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* **Connectathon Table**

## Connectathon Table

## 賽道情境、角色與交易列表 (Track, Scenario, Actor, Transaction)

### 賽道列表 (Track List)

| | | |
| :--- | :--- | :--- |
| 核心 | Track #0 | OAuth 2 存取認證 |
| Track #1 | 日間照護服務 | |
| 應用 | Track #2 | 失智症照護監測 |
| Track #3 | 機構間轉銜服務 | |
| Track #4 | 長照 2.0 服務計畫與紀錄 | |

### 賽道情境、角色與交易列表 (Scenario, Actor, Transaction List)

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Track #0OAuth2 存取認證 | Scenario #1取得 OAuth2 Token | OAuth2 Client | LTC-011 取得 OAuth2 Token | 負責向大會驗證主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。 |
| Track #1日間照護服務 | Scenario #1生理量測數據管理 | LTC_MANAGEMENT | LTC-111 上傳生理量測數據 | 負責上傳生理量測數據至 LTC Repository。 |
| LTC_CONSUMER | LTC-112 查詢生理量測數據 | 負責查詢生理量測數據至 LTC Repository。 | | |
| Scenario #2照護活動管理 | LTC_MANAGEMENT | LTC-121 上傳照護活動 | 負責上傳照護活動至 LTC Repository。 | |
| LTC_CONSUMER | LTC-122 查詢照護活動 | 負責查詢照護活動至 LTC Repository。 | | |
| Scenario #3用藥紀錄管理 | LTC_MANAGEMENT | LTC-131 上傳用藥紀錄 | 負責上傳用藥紀錄至 LTC Repository。 | |
| LTC_CONSUMER | LTC-132 查詢用藥紀錄 | 負責查詢用藥紀錄至 LTC Repository。 | | |
| Track #2失智症照護監測 | Scenario #1失智症認知評估管理 | LTC_MANAGEMENT | LTC-211 上傳 MMSE 失智評估結果 | 負責上傳 MMSE 失智評估結果至 LTC Repository。 |
| LTC_MANAGEMENT | LTC-212 上傳 CDR 失智評估結果 | 負責上傳 CDR 失智評估結果至 LTC Repository。 | | |
| LTC_CONSUMER | LTC-213 查詢失智症評估結果 | 負責查詢失智症評估結果至 LTC Repository。 | | |
| Scenario #2個案位置監測管理 | LTC_MANAGEMENT | LTC-221 上傳個案即時位置 | 負責上傳個案即時位置至 LTC Repository。 | |
| LTC_CONSUMER | LTC-222 查詢個案位置資訊 | 負責查詢個案位置資訊至 LTC Repository。 | | |
| Scenario #3異常事件警報管理 | LTC_MANAGEMENT | LTC-231 上傳異常事件警報 | 負責上傳異常事件警報至 LTC Repository。 | |
| LTC_CONSUMER | LTC-232 查詢異常事件警報 | 負責查詢異常事件警報至 LTC Repository。 | | |
| Track #3機構間轉銜服務 | Scenario #1照護管理評估量表管理 | LTC_MANAGEMENT | LTC-311 上傳照護管理評估量表結果 | 負責上傳照護管理評估量表結果至 LTC Repository。 |
| LTC_CONSUMER | LTC-312 查詢照護管理評估量表結果 | 負責查詢照護管理評估量表結果至 LTC Repository。 | | |
| Scenario #2長期照顧服務轉介單管理 | LTC_MANAGEMENT | LTC-321 上傳長期照顧服務轉介單 | 負責上傳長期照顧服務轉介單至 LTC Repository。 | |
| LTC_CONSUMER | LTC-322 查詢長期照顧服務轉介單 | 負責查詢長期照顧服務轉介單至 LTC Repository。 | | |
| Scenario #3AA12 長期照護醫師意見書管理 | LTC_MANAGEMENT | LTC-331 上傳 AA12 長期照護醫師意見書 | 負責上傳 AA12 長期照護醫師意見書至 LTC Repository。 | |
| LTC_CONSUMER | LTC-332 查詢 AA12 長期照護醫師意見書 | 負責查詢 AA12 長期照護醫師意見書至 LTC Repository。 | | |
| Track #4長照 2.0 服務計畫與紀錄 | Scenario #1AA01 照顧計畫擬定管理 | LTC_MANAGEMENT | LTC-411 上傳 AA01 照顧計畫問卷回應 | 負責上傳 AA01 照顧計畫問卷回應至 LTC Repository。 |
| LTC_CONSUMER | LTC-412 查詢 AA01 照顧計畫問卷回應 | 負責查詢 AA01 照顧計畫問卷回應至 LTC Repository。 | | |
| Scenario #2AA02 服務紀錄與追蹤管理 | LTC_MANAGEMENT | LTC-421 上傳 AA02 服務追蹤問卷回應 | 負責上傳 AA02 服務追蹤問卷回應至 LTC Repository。 | |
| LTC_CONSUMER | LTC-422 查詢 AA02 服務追蹤問卷回應 | 負責查詢 AA02 服務追蹤問卷回應至 LTC Repository。 | | |

