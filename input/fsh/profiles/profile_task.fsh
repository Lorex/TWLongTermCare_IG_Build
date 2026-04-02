Profile: LTCTask
Parent: Task
Id: LTCTask
Title: "長期照顧－任務管理"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現長期照顧情境中的轉介確認、照顧計畫狀態更新等任務管理需求。"

* status 1..1 MS
* status ^short = "任務狀態。[應填入以下字串之一：requested | accepted | rejected | completed | in-progress | cancelled | on-hold | failed | ready | received | draft | entered-in-error]"
* intent 1..1 MS
* intent ^short = "任務意圖。[應填入以下字串之一：unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option]"
* code 0..1 MS
* code ^short = "任務類型代碼，如轉介確認、計畫狀態更新"
* focus 0..1 MS
* focus ^short = "任務關聯資源，即這項任務所關聯的主要資源為何？"
* focus only Reference(LTCCarePlan or Resource)
* for 0..1 MS
* for ^short = "任務受益者，即這項任務是為了誰而執行的？"
* for only Reference(LTCPatient)
* authoredOn 0..1 MS
* authoredOn ^short = "任務建立時間。[應填入日期時間]"
* requester 0..1 MS
* requester ^short = "任務請求者，即這項任務是由誰提出的？"
* requester only Reference(LTCPractitioner or LTCOrganization or LTCPractitionerRole)
* owner 0..1 MS
* owner ^short = "任務負責者，即這項任務由誰負責執行？"
* owner only Reference(LTCPractitioner or LTCOrganization or LTCPractitionerRole)
* reasonCode 0..1 MS
* reasonCode ^short = "任務原因代碼，即為什麼要執行這項任務？"
* note 0..* MS
* note ^short = "任務備註。"
* input 0..* MS
* input ^short = "任務輸入參數，即執行這項任務所需的輸入資料。"
* output 0..* MS
* output ^short = "任務輸出結果，即執行這項任務後產出的資料。"

// Example
Instance: ltc-task-referral-acceptance-example
InstanceOf: LTCTask
Title: "轉介確認任務範例"
Description: "展示長照機構接受轉介個案的任務確認範例"
Usage: #example

* status = #accepted
* intent = #order
* code.text = "轉介確認"
* focus = Reference(ltc-bundle-referral-example)
* for = Reference(ltc-patient-chen-ming-hui)
* authoredOn = "2024-02-01T09:00:00+08:00"
* requester = Reference(ltc-practitioner-example)
* owner = Reference(ltc-organization-example)
* note[0].text = "已確認收案，將於 2024-02-05 進行入住評估。"
