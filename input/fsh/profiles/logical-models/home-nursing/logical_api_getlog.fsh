Logical: HNGetLogAPIModel
Id: HNGetLogAPIModel
Title: "居家護理－依日期查詢處理結果 API 邏輯模型"
Description: "描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
* ^status = #draft
* ^version = "5.0.16"
* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"
* startDate 1..1 date "取得資料起始日" "原 API start_date 採 yyyy/MM/dd。"
* endDate 0..1 date "取得資料結束日" "原 API end_date 採 yyyy/MM/dd；未填時為起始日隔天。"
