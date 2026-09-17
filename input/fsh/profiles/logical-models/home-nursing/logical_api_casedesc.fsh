Logical: HNCaseDescAPIModel
Id: HNCaseDescAPIModel
Title: "居家護理－共照紀錄 API 邏輯模型"
Description: "描述共照紀錄 API 的請求資料。來源為 V5.0.16 印刷頁 122–125，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
* ^status = #draft
* ^version = "5.0.16"
* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"
* dataList 1..* HNCaseDescModel "上傳資料" "逐筆填入本次上傳的資料。"
