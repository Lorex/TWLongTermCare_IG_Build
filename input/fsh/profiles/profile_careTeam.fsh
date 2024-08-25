Alias: $CareTeam = http://hl7.org/fhir/StructureDefinition/CareTeam
Alias: $VSCareTeamStatus = http://hl7.org/fhir/ValueSet/care-team-status
Alias: $VSParticipantRole = http://hl7.org/fhir/ValueSet/participant-role

Profile: LTCCareTeam
Parent: $CareTeam
Id: LTCCareTeam
Title: "TW Long Term Care CareTeam"
Description: "照顧團隊，用以表述長期照護情境中涉及之照顧團隊資訊。"

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
* participant.role 0..1 MS
* participant.role ^short = "照顧團隊參與者的角色"
* participant.role from $VSParticipantRole
* participant.member 1..1 MS
* participant.member ^short = "照顧團隊的成員"
* participant.member only Reference(LTCPractitioner or LTCRelatedPerson or LTCPractitionerRole)
* participant.member.reference 1..1 MS
* participant.member.reference ^short = "照顧團隊的成員。[應輸入 Practitioner / RelatedPerson / PractitionerRole Resource ID]"
