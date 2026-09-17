Logical: HNUploadAcknowledgementModel
Id: HNUploadAcknowledgementModel
Title: "居家護理－上傳接收回覆邏輯模型"
Description: "描述規範各上傳 API 列出的成功回覆。此回覆表示檔案已接收，尚不表示排程匯入成功。"
* ^status = #draft
* code 1..1 integer "接收代碼" "成功回覆為 200。"
* code = 200
* message 1..1 string "接收訊息" "成功範例為 Success.，保留收到的文字。"

Mapping: HNUploadAcknowledgementMapping
Id: hn-upload-acknowledgement
Title: "居家護理－接收訊息對應"
Source: HNUploadAcknowledgementModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
* code -> "Task.output.where(type.coding.code='response-code').valueInteger" "來源 code。"
* message -> "Task.output.where(type.coding.code='response-message').valueString" "來源 message。"

Mapping: HNGetLogRequestMapping
Id: hn-getlog-request
Title: "居家護理－日期查詢參數對應"
Source: HNGetLogAPIModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
* agency -> "Task.requester.resolve().identifier" "標頭 AGENCY_ID 指定的機構。"
* startDate -> "Task.input.where(type.coding.code='start-date').valueDate" "來源 start_date 由 yyyy/MM/dd 轉為 FHIR date。"
* endDate -> "Task.input.where(type.coding.code='end-date').valueDate" "來源 end_date 由 yyyy/MM/dd 轉為 FHIR date；省略時保留省略。"

Mapping: HNGetLogByTicketRequestMapping
Id: hn-ticket-request
Title: "居家護理－追蹤碼查詢參數對應"
Source: HNGetLogByTicketAPIModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask"
* agency -> "Task.requester.resolve().identifier" "標頭 AGENCY_ID 指定的機構。"
* ticket -> "Task.input.where(type.coding.code='ticket').valueString" "來源 ticket 保留八位數字及前導零。"
