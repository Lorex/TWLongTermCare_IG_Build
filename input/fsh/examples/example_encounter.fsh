// Example Encounter for referrals
Instance: ltc-encounter-example
InstanceOf: Encounter
Title: "長期照顧就醫紀錄範例"
Description: "一個就醫紀錄的範例，用於轉介單中的出入院情形"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

* subject = Reference(ltc-patient-referral-chen-ming-hui-example)

* period.start = "2024-01-10T09:00:00+08:00"
* period.end = "2024-01-10T11:30:00+08:00"

* serviceProvider = Reference(ltc-organization-example)

* reasonCode.coding.system = "http://snomed.info/sct"
* reasonCode.coding.code = #44054006
* reasonCode.coding.display = "Diabetes mellitus type 2"
* reasonCode.text = "糖尿病追蹤檢查"
