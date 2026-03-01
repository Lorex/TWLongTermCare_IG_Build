Instance: ex-plan-cs100
InstanceOf: LTCCarePlanCS100
Title: "長照 SDK－照顧計畫（CS100）範例"
Description: "長照 CS100 個案總查詢之照顧計畫範例，展示如何使用 LTCCarePlanCS100 Profile。"
Usage: #example

* status = #active
* intent = #plan
* subject = Reference(ex-pt)
* period.start = "2025-10-10"
* period.end = "2026-04-09"

* careTeam[0] = Reference(ltc-care-team-example)

* supportingInfo[0] = Reference(ex-elig)

* activity[0].detail.status = #scheduled
* activity[0].detail.code = CS_TW_LTC_ServiceItem#BA13 "陪同外出"
* activity[0].detail.scheduledTiming.repeat.frequency = 8
* activity[0].detail.scheduledTiming.repeat.period = 1
* activity[0].detail.scheduledTiming.repeat.periodUnit = #wk
* activity[0].detail.performer[0] = Reference(ex-prac)
