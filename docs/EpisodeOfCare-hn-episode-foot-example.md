# 居家護理足部護理收案範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理足部護理收案範例**

## Example EpisodeOfCare: 居家護理足部護理收案範例

Profile: [居家護理－收案歷程](StructureDefinition-HNEpisodeOfCare.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-basedata-foot-example.md)

**identifier**: `https://example.org/home-nursing/episodes`/HN0001-20251209

**status**: Active

**patient**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**managingOrganization**: [Organization 示範居家護理所](Organization-hn-organization-example.md)

**period**: 2025-12-09 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "hn-episode-foot-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNEpisodeOfCare"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-basedata-foot-example"
    }
  }],
  "identifier" : [{
    "system" : "https://example.org/home-nursing/episodes",
    "value" : "HN0001-20251209"
  }],
  "status" : "active",
  "patient" : {
    "reference" : "Patient/hn-patient-example"
  },
  "managingOrganization" : {
    "reference" : "Organization/hn-organization-example"
  },
  "period" : {
    "start" : "2025-12-09"
  }
}

```
