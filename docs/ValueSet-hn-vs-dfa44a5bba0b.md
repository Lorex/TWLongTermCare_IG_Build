# 居家護理－操作項目與流程選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－操作項目與流程選項**

## ValueSet: 居家護理－操作項目與流程選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-dfa44a5bba0b | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSdfa44a5bba0b |
| *Other Identifiers:*OID:2.25.296343778493273049505421623570078288854 | |

 
限定操作項目與流程可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－照護紀錄邏輯模型](StructureDefinition-HNCareRecordModel.md)
* [居家護理－照護紀錄表單](StructureDefinition-HNCareRecordResponse.md)
* [居家護理－照護紀錄](Questionnaire-hn-carerecord.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "hn-vs-dfa44a5bba0b",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dfa44a5bba0b",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.296343778493273049505421623570078288854"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSdfa44a5bba0b",
  "title" : "居家護理－操作項目與流程選項",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "限定操作項目與流程可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c7a2af0e992c1"
      },
      {
        "code" : "c27f5a374b989"
      },
      {
        "code" : "c72b019a54c07"
      },
      {
        "code" : "c28660c7fa292"
      },
      {
        "code" : "cb84a4009d297"
      },
      {
        "code" : "c90589e5fe5d7"
      },
      {
        "code" : "ce10f23e64304"
      },
      {
        "code" : "ca42aabd1e890"
      },
      {
        "code" : "cc1e0577aa8c8"
      },
      {
        "code" : "ccf820f8cbebc"
      },
      {
        "code" : "c8d76ed4488d9"
      },
      {
        "code" : "cf496d5dfce7c"
      },
      {
        "code" : "c9b122cfdfc20"
      },
      {
        "code" : "c6124dea903e8"
      },
      {
        "code" : "c5984d406d40f"
      },
      {
        "code" : "ce35dbdbce663"
      },
      {
        "code" : "cd07e3ed74590"
      },
      {
        "code" : "ca8248a633e97"
      },
      {
        "code" : "c73161a9b5da6"
      },
      {
        "code" : "c7e2ea391232c"
      },
      {
        "code" : "ccd17f008f383"
      },
      {
        "code" : "c0686e039e228"
      },
      {
        "code" : "cf784fc6b3a24"
      },
      {
        "code" : "cf5b098b7b369"
      },
      {
        "code" : "c926de8dbe0f6"
      },
      {
        "code" : "cfd93d5b80de0"
      },
      {
        "code" : "c115a11e25d3b"
      },
      {
        "code" : "ca0ed2b566e97"
      },
      {
        "code" : "c410921e5e25b"
      },
      {
        "code" : "caec309f4c457"
      },
      {
        "code" : "cbecd31d11d6e"
      },
      {
        "code" : "cc8de0febf7a8"
      },
      {
        "code" : "c90d96b0e2613"
      },
      {
        "code" : "c337fc5ed3497"
      },
      {
        "code" : "c03cfab407b17"
      },
      {
        "code" : "cd33d28b6ff86"
      },
      {
        "code" : "c1adfbd04f7fb"
      },
      {
        "code" : "cd349e14f55be"
      },
      {
        "code" : "c2c6b012deb5c"
      },
      {
        "code" : "c6b16082588a1"
      },
      {
        "code" : "c36088dbcc20d"
      },
      {
        "code" : "cae6aa4548340"
      },
      {
        "code" : "c163d6a561ede"
      },
      {
        "code" : "c9142110e8e2b"
      },
      {
        "code" : "cf00971b6bd81"
      },
      {
        "code" : "ce85d1f9c575c"
      },
      {
        "code" : "c0a95982b3a66"
      },
      {
        "code" : "c6782d76ece71"
      },
      {
        "code" : "cee220ac694fc"
      },
      {
        "code" : "c465998d40f08"
      },
      {
        "code" : "ce77a116a302e"
      },
      {
        "code" : "c324bbc3f0ef6"
      },
      {
        "code" : "cedc955f81850"
      },
      {
        "code" : "c3fa81b2bacb0"
      },
      {
        "code" : "c0c51a7c3f45a"
      },
      {
        "code" : "c40d1a550f6ae"
      },
      {
        "code" : "c140f024a9df5"
      },
      {
        "code" : "ccde23d47d356"
      },
      {
        "code" : "cbf98f97fd7d6"
      },
      {
        "code" : "cb03c35606d8e"
      },
      {
        "code" : "c54aca907b203"
      },
      {
        "code" : "c1df305e9af45"
      },
      {
        "code" : "cb212990eb096"
      },
      {
        "code" : "c6b4b626ed769"
      },
      {
        "code" : "cadb0a0827019"
      },
      {
        "code" : "cffc919c07537"
      },
      {
        "code" : "cc979a132ff3a"
      },
      {
        "code" : "caa759ac3f7eb"
      },
      {
        "code" : "c02cdd6e5d9fb"
      },
      {
        "code" : "c1c9af90dee10"
      },
      {
        "code" : "c2e66861b550e"
      },
      {
        "code" : "c308fbbcbc347"
      },
      {
        "code" : "cdaaf47d24e24"
      },
      {
        "code" : "c809b97bde848"
      },
      {
        "code" : "cfa849ac093ee"
      },
      {
        "code" : "ce7a951aeeb7f"
      },
      {
        "code" : "c88940be3bd73"
      },
      {
        "code" : "cffcb3e3f4304"
      },
      {
        "code" : "c8a414046767d"
      },
      {
        "code" : "c81bb1d4a5036"
      },
      {
        "code" : "c233eb8ad9aa7"
      },
      {
        "code" : "c11197e4f0c90"
      },
      {
        "code" : "c9c5dacd0edca"
      },
      {
        "code" : "c89b09cba0fbc"
      },
      {
        "code" : "ce49518cc87b6"
      },
      {
        "code" : "c2111bb349d6a"
      },
      {
        "code" : "cb6a90446ddc4"
      },
      {
        "code" : "c8dab12c801cd"
      },
      {
        "code" : "c32cf7db87600"
      },
      {
        "code" : "c18804700f47c"
      },
      {
        "code" : "cb9c55d8e4d7c"
      },
      {
        "code" : "c37fc85bde615"
      }]
    }]
  }
}

```
