Logical: HNGetLogByTicketAPIModel
Id: HNGetLogByTicketAPIModel
Title: "居家護理－依追蹤碼查詢處理結果 API 邏輯模型"
Description: "描述依追蹤碼查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
* ^status = #draft
* ^version = "5.0.16"
* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"
* ticket 1..1 string "追蹤碼" "填入八位數字，保留前導零。"
* ticket ^maxLength = 8
