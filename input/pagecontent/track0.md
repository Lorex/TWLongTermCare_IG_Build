## 賽道 0：OAuth2 存取認證

### 說明

為確保參測單位資料交換的安全性，各系統間必須先進行 OAuth2 存取認證，取得 Token 後，才能進行資料交換。
OAuth 為 FHIR R4 建議使用的標準認證機制，依 FHIR R4 6.1.0.4 Authentication 規範指出，對於網路環境建議使用 OpenID Connect（或其他適當的身份驗證協定）來驗證終端使用者的身份，當應用程式需要識別終端使用者時。建議使用 OAuth 來驗證和/或授權客戶端和使用者。另 OAuth 2.0 為 SMART on FHIR 的基礎認證機制，客戶端應用程式能夠在基於 FHIR 的資料系統中進行授權、身份驗證和整合。

本賽道採用 OAuth 2.0 認證機制，確保參測單位在進行資料交換時的安全性。參測單位需要先向大會申請並取得有效的 Token，才能存取其他賽道的測試資源。Token 具有一定的有效期限，過期後需重新申請。

參測單位必須先通過本賽道並取得 Token，才能參與其他賽道。

### 各系統角色於本賽道之作用

| Keyword | 名稱 | 說明 |
|---|---|---|
| LTC_MANAGEMENT | LTC Management System | 負責向大會驗證主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。 |
| LTC_CONSUMER | LTC Consumer | 負責向大會驗證主機取得 Access Token 後，即可向 LTC Repository 進行資料交換。 |
| LTC_REPOSITORY | LTC Repository | 負責提供資料交換功能，包括長照個案資料的交換、儲存與管理，並具備驗證 Token 有效性的能力。 |

### 檢核項目

- 參測單位向大會申請取得 OAuth2 Token
- 大會回傳 Token 給參測單位
- 參測單位使用 Token 進行資料交換

### 通過條件

- 參測單位 **必須** 通過情境 1 的所有要求項目，才算通過本賽道。

### 情境 (Scenarios)

| 情境 ID | 說明 
|---|---|---|---|
| SC1 | 取得 OAuth2 Token

#### 情境 1：取得 OAuth2 Token

本情境適用於所有系統，系統於進行資料交換前，必須先透過 OAuth2 取得 Token，才能進行資料交換。參加者須具備 [OAuth 2.0 RFC 6749, section 4.1 : Authorization code flow](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1) 標準實作能力，在存取 FHIR 聯測主機前，必須先以 Authorization code flow 向大會授權主機依照指定的帳號密碼登入，並取得 Access Token 後，即可使用 Token 存取 FHIR 聯測主機。

Authorization code flow 流程圖如下：

```
 +----------+
 | Resource |
 |   Owner  |
 |          |
 +----------+
      ^
      |
     (B)
 +----|-----+          Client Identifier      +---------------+
 |         -+----(A)-- & Redirection URI ---->|               |
 |  User-   |                                 | Authorization |
 |  Agent  -+----(B)-- User authenticates --->|     Server    |
 |          |                                 |               |
 |         -+----(C)-- Authorization Code ---<|               |
 +-|----|---+                                 +---------------+
   |    |                                         ^      v
  (A)  (C)                                        |      |
   |    |                                         |      |
   ^    v                                         |      |
 +---------+                                      |      |
 |         |>---(D)-- Authorization Code ---------'      |
 |  Client |          & Redirection URI                  |
 |         |                                             |
 |         |<---(E)----- Access Token -------------------'
 +---------+       (w/ Optional Refresh Token)

Note: The lines illustrating steps (A), (B), and (C) are broken into
two parts as they pass through the user-agent.
```

### 交易 (Transactions)


| 交易 ID | 說明 | 發送方 (From) | 接收方 (To) |
|---|---|---|---|
| LTC-011 | 取得 OAuth2 Token | 參測單位 | 大會 |