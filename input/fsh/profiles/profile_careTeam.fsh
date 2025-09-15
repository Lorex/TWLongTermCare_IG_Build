Alias: $TWCoreCareTeam = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore
Alias: $VSCareTeamStatus = http://hl7.org/fhir/ValueSet/care-team-status
Alias: $VSParticipantRole = http://hl7.org/fhir/ValueSet/participant-role

Profile: LTCCareTeam
Parent: $TWCoreCareTeam
Id: LTCCareTeam
Title: "長期照顧－照顧團隊"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CareTeam Resource，以呈現長期照顧情境中涉及之照顧團隊資訊。"

* status 1..1 MS
* status ^short = "照顧團隊的狀態。[應填入 proposed / active / suspended / inactive / entered-in-error]"
* status from $VSCareTeamStatus
* subject 1..1 MS
* subject ^short = "照顧團隊的適用主體，即這個照顧團隊的適用對象是誰？"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "照顧團隊的適用主體。[應輸入 Patient Resource ID]"
* participant 1..* MS
* participant ^short = "照顧團隊的參與者，即這個照顧團隊是由哪些人參與的？"
* participant.role 1..1 MS
* participant.role ^short = "照顧團隊參與者的角色"
* participant.role from $VSParticipantRole
* participant.member 1..1 MS
* participant.member ^short = "照顧團隊的成員"
* participant.member only Reference(LTCPractitioner or LTCRelatedPerson or LTCPractitionerRole)
* participant.member.reference 1..1 MS
* participant.member.reference ^short = "照顧團隊的成員。[應輸入 Practitioner / RelatedPerson / PractitionerRole Resource ID]"

// Example
Instance: ltc-care-team-example
InstanceOf: LTCCareTeam
Title: "長期照顧團隊範例"
Description: "一個長期照顧團隊的範例，展示如何使用 LTCCareTeam Profile"
Usage: #example

* status = #active

* subject = Reference(ltc-patient-chen-ming-hui)

* name = "陳明慧照顧團隊"

* participant[0].role.coding.system = "http://snomed.info/sct"
* participant[0].role.coding.code = #224535009
* participant[0].role.coding.display = "Registered nurse"
* participant[0].member = Reference(ltc-practitioner-role-nurse-example)
* participant[0].period.start = "2024-01-01"

* participant[1].role.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[1].role.coding.code = #IND
* participant[1].role.coding.display = "indirect"
* participant[1].member = Reference(ltc-related-person-primary-caregiver-example)
* participant[1].period.start = "2024-01-01"

* period.start = "2024-01-01"

* managingOrganization[0] = Reference(ltc-organization-example)
