Logical: HNCarePlanAPIModel
Id: HNCarePlanAPIModel
Title: "居家護理－照護計畫 API 邏輯模型"
Description: "描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
* ^status = #draft
* ^version = "5.0.16"
* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"
* dataList 1..1 BackboneElement "照護計畫批次" "目標、措施、評值各至多 100 筆；任一筆失敗時整份檔案不匯入。"
* dataList.targets 0..100 HNTargetsModel "照護計畫資料"
* dataList.measures 0..100 HNMeasuresModel "照護計畫資料"
* dataList.evaluations 0..100 HNEvaluationsModel "照護計畫資料"
