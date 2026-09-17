Instance: hn-patient-example
InstanceOf: HNPatient
Title: "居家護理個案範例"
Description: "虛構個案，沿用長照識別、聯絡方式及緊急聯絡人結構。"
Usage: #example
* identifier[idCardNumber].type = $IdType#NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* identifier[member].system = "https://example.org/home-nursing/patients"
* identifier[member].value = "HN0001"
* name[usual].text = "陳明慧"
* name[usual].use = #usual
* telecom.system = #phone
* telecom.value = "02-23456789"
* gender = #male
* birthDate = "1945-03-15"
* address[home].use = #home
* address[home].text = "臺北市中正區測試路1號"
* address[home].state = "臺北市"
* address[home].city = "中正區"
* address[home].line = "測試路1號"
* contact.relationship.coding = http://terminology.hl7.org/CodeSystem/v2-0131#N
* contact.relationship.text = "配偶"
* contact.name.text = "林淑芬"
* contact.telecom.system = #phone
* contact.telecom.value = "02-23456789"
* managingOrganization = Reference(hn-organization-example)
* extension[sourceForm].valueReference = Reference(hn-basedata-example)

Instance: hn-nurse-example
InstanceOf: LTCPractitioner
Title: "居家護理護理人員範例"
Description: "虛構護理人員，身分證字號用於對應居護表單。"
Usage: #example
* identifier.system = "http://www.moi.gov.tw"
* identifier.value = "B123456789"
* name.use = #usual
* name.text = "王美玲"

Instance: hn-staff-example
InstanceOf: Practitioner
Title: "居家護理工作人員範例"
Description: "虛構非醫事人員，用於人員緊急事件。"
Usage: #example
* identifier.system = "http://www.moi.gov.tw"
* identifier.value = "C123456789"
* name.text = "林大文"

Instance: hn-episode-example
InstanceOf: HNEpisodeOfCare
Title: "居家護理收案範例"
Description: "一次居護收案，以機構內識別碼串聯各次評估及照護紀錄。"
Usage: #example
* status = #active
* identifier.system = "https://example.org/home-nursing/episodes"
* identifier.value = "HN0001-20251208"
* patient = Reference(hn-patient-example)
* managingOrganization = Reference(hn-organization-example)
* period.start = "2025-12-08"
* extension[sourceForm].valueReference = Reference(hn-basedata-example)

Instance: hn-goal-example
InstanceOf: HNGoal
Title: "居家護理照護目標範例"
Description: "記錄目標、預期達到日期與主要目標旗標。"
Usage: #example
* lifecycleStatus = #active
* description.coding = HNWorkflowCS#care-goal
* description.text = "降低跌倒風險"
* subject = Reference(hn-patient-example)
* startDate = "2025-12-08"
* target.dueDate = "2026-01-08"
* expressedBy = Reference(hn-nurse-example)
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-targets-example)
* extension[mainTarget].valueBoolean = false

Instance: hn-careplan-example
InstanceOf: HNCarePlan
Title: "居家護理照護計畫範例"
Description: "串聯需求、目標、措施與評值；示範措施停止時保留原因及停止人員。"
Usage: #example
* status = #active
* intent = #plan
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>陳明慧的居家護理照護計畫：降低跌倒風險。原措施為每日檢查走道障礙物，已停止並改採個別移位協助措施。照護者應依護理人員指導執行。</p></div>"
* category[AssessPlan] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw#assess-plan
* subject = Reference(hn-patient-example)
* author = Reference(hn-nurse-example)
* period.start = "2025-12-08"
* goal = Reference(hn-goal-example)
* supportingInfo = Reference(hn-casesummary-example)
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm][0].valueReference = Reference(hn-targets-example)
* extension[sourceForm][1].valueReference = Reference(hn-measures-example)
* activity.detail.status = #stopped
* activity.detail.description = "每日檢查走道障礙物"
* activity.detail.goal = Reference(hn-goal-example)
* activity.detail.scheduledPeriod.start = "2025-12-08"
* activity.extension[stop].extension[date].valueDate = "2025-12-09"
* activity.extension[stop].extension[reason].valueString = "改採個別移位協助措施"
* activity.extension[stop].extension[nurse].valueReference = Reference(hn-nurse-example)
* activity.outcomeReference = Reference(hn-evaluations-example)

Instance: hn-communication-example
InstanceOf: HNCommunication
Title: "居家護理共照紀錄資源範例"
Description: "將共照紀錄文字與提供者表達為 Communication，保留完整來源表單。"
Usage: #example
* status = #completed
* subject = Reference(hn-patient-example)
* sender = Reference(hn-nurse-example)
* sent = "2025-12-08T09:00:00+08:00"
* payload.contentString = "已說明居家照護注意事項"
* extension[episode].valueReference = Reference(hn-episode-example)
* extension[sourceForm].valueReference = Reference(hn-casedesc-example)

Instance: hn-upload-task-example
InstanceOf: HNAPITask
Title: "居家護理上傳已接收範例"
Description: "code 200 表示檔案已上傳，任務仍等待排程匯入；另示範只清空親友名單。"
Usage: #example
* status = #received
* intent = #order
* code = HNWorkflowCS#BaseData
* businessStatus = HNWorkflowCS#uploaded
* requester = Reference(hn-organization-example)
* authoredOn = "2025-12-08T09:00:00+08:00"
* input[sourceForm].valueReference = Reference(hn-basedata-example)
* output[code].valueInteger = 200
* output[message].valueString = "Success."
* extension[collectionUpdate][0].extension[collection].valueCode = #Medicals
* extension[collectionUpdate][0].extension[action].valueCode = #preserve
* extension[collectionUpdate][1].extension[collection].valueCode = #Relatives
* extension[collectionUpdate][1].extension[action].valueCode = #clear

Instance: hn-getlog-task-example
InstanceOf: HNAPITask
Title: "居家護理依日期查詢範例"
Description: "指定起始日，省略結束日，由來源 API 採起始日隔天。"
Usage: #example
* status = #requested
* intent = #order
* code = HNWorkflowCS#GetLog
* requester = Reference(hn-organization-example)
* input[startDate].valueDate = "2025-12-08"

Instance: hn-ticket-task-example
InstanceOf: HNAPITask
Title: "居家護理依追蹤碼查詢範例"
Description: "示範保留追蹤碼前導零；此虛構追蹤碼不表示規範已定義其回傳欄位。"
Usage: #example
* status = #requested
* intent = #order
* code = HNWorkflowCS#GetLogByTicket
* requester = Reference(hn-organization-example)
* input[ticket].valueString = "00123456"

Instance: hn-outcome-example
InstanceOf: HNOperationOutcome
Title: "居家護理接收訊息範例"
Description: "上傳成功的資訊訊息，並未宣告資料匯入完成。"
Usage: #example
* issue.severity = #information
* issue.code = #informational
* issue.details.text = "Success."

Instance: hn-organization-example
InstanceOf: LTCOrganization
Title: "居家護理機構範例"
Description: "沿用長照機構 Profile，虛構機構代碼對應表單建立者與 API 機構標頭。"
Usage: #example
* identifier.system = "https://example.org/home-nursing/agencies"
* identifier.value = "3501010011"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* name = "示範居家護理所"
