# 居家護理共照紀錄資源範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理共照紀錄資源範例**

## Example Communication: 居家護理共照紀錄資源範例

Profile: [居家護理－共照紀錄](StructureDefinition-HNCommunication.md)

**居家護理－收案關聯**: [EpisodeOfCare: extension = ->Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --> (ongoing)](EpisodeOfCare-hn-episode-example.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－共照紀錄' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-casedesc-example.md)

**status**: Completed

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**sent**: 2025-12-08 09:00:00+0800

**sender**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | 已說明居家照護注意事項 |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "hn-communication-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNCommunication"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hn-episode-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-casedesc-example"
    }
  }],
  "status" : "completed",
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "sent" : "2025-12-08T09:00:00+08:00",
  "sender" : {
    "reference" : "Practitioner/hn-nurse-example"
  },
  "payload" : [{
    "contentString" : "已說明居家照護注意事項"
  }]
}

```
