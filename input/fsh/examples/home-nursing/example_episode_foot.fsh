Instance: hn-episode-foot-example
InstanceOf: HNEpisodeOfCare
Title: "居家護理足部護理收案範例"
Description: "同一個案的另一次足部護理收案，使用不同收案日期。"
Usage: #example
* status = #active
* identifier.system = "https://example.org/home-nursing/episodes"
* identifier.value = "HN0001-20251209"
* patient = Reference(hn-patient-example)
* managingOrganization = Reference(hn-organization-example)
* period.start = "2025-12-09"
* extension[sourceForm].valueReference = Reference(hn-basedata-foot-example)
