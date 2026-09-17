CodeSystem: HNWorkflowCS
Id: hn-workflow
Title: "居家護理－介接作業代碼"
Description: "居家護理 API 作業名稱及本 IG 的更新指示。"
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.233044287078495270027959925539980032688"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #BaseData "個案基本資料"
* #Evaluation "全人評估"
* #CaseSummary "需求摘要"
* #CarePlan "照護計畫"
* #CareRecord "照護紀錄"
* #CaseDesc "共照紀錄"
* #StaffEgy "人員緊急事件"
* #CaseClose "個案結案"
* #CarePlanClose "照護計畫結案"
* #VitalSign "生命徵象"
* #GetLog "依日期查詢處理結果"
* #GetLogByTicket "依追蹤碼查詢處理結果"
* #Medicals "共照醫事人員名單"
* #Relatives "共照親友名單"
* #preserve "保留原名單"
* #replace "取代名單"
* #clear "清空名單"
* #uploaded "已上傳，等待排程匯入"
* #care-goal "個別照護目標"
* #wound "傷口紀錄"
* #wound-category "傷口分類"
* #wound-level "傷口等級"
* #length "長度"
* #width "寬度"
* #depth "深度"
* #start-date "查詢起始日"
* #end-date "查詢結束日"
* #ticket "追蹤碼"
* #response-code "回覆代碼"
* #response-message "回覆訊息"
* #source-form "來源表單"

ValueSet: HNAPIVS
Id: hn-api
Title: "居家護理－API 作業值集"
Description: "限定 V5.0.16 的十二支 API 名稱。"
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.327029042831774211468818290978451932487"
* HNWorkflowCS#BaseData
* HNWorkflowCS#Evaluation
* HNWorkflowCS#CaseSummary
* HNWorkflowCS#CarePlan
* HNWorkflowCS#CareRecord
* HNWorkflowCS#CaseDesc
* HNWorkflowCS#StaffEgy
* HNWorkflowCS#CaseClose
* HNWorkflowCS#CarePlanClose
* HNWorkflowCS#VitalSign
* HNWorkflowCS#GetLog
* HNWorkflowCS#GetLogByTicket

ValueSet: HNCollectionVS
Id: hn-collection
Title: "居家護理－共照名單種類"
Description: "指定需更新的共照名單。"
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.303919743223251822680213880309982753488"
* HNWorkflowCS#Medicals
* HNWorkflowCS#Relatives

ValueSet: HNUpdateActionVS
Id: hn-update-action
Title: "居家護理－共照名單更新方式"
Description: "區分未填或 null 的保留、非空陣列的取代及空陣列的清空。"
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.206248524088810760731602015317753358895"
* HNWorkflowCS#preserve
* HNWorkflowCS#replace
* HNWorkflowCS#clear
