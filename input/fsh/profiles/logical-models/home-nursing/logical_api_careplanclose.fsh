Logical: HNCarePlanCloseAPIModel
Id: HNCarePlanCloseAPIModel
Title: "居家護理－照護計畫結案 API 邏輯模型"
Description: "描述照護計畫結案 API 的請求資料。來源為 V5.0.16 印刷頁 133–135，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
* ^status = #draft
* ^version = "5.0.16"
* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"
* dataList 1..* HNCarePlanCloseModel "上傳資料" "逐筆填入本次上傳的資料。"
