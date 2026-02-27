# 長期照顧－異常事件警報 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－異常事件警報**

## Resource Profile: 長期照顧－異常事件警報 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCAdverseEvent |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現失智症個案異常事件警報的資料，包括事件類型、嚴重程度、發生時間、位置等資訊。 

**Usages:**

* Examples for this Profile: [AdverseEvent/ltc-adverse-event-example](AdverseEvent-ltc-adverse-event-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/AdverseEvent-twltc)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AdverseEvent-twltc.csv), [Excel](StructureDefinition-AdverseEvent-twltc.xlsx), [Schematron](StructureDefinition-AdverseEvent-twltc.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AdverseEvent-twltc",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc",
  "version" : "0.4.1",
  "name" : "LTCAdverseEvent",
  "title" : "長期照顧－異常事件警報",
  "status" : "active",
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現失智症個案異常事件警報的資料，包括事件類型、嚴重程度、發生時間、位置等資訊。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent",
      "short" : "異常事件警報的資訊"
    },
    {
      "id" : "AdverseEvent.identifier",
      "path" : "AdverseEvent.identifier",
      "short" : "異常事件警報的唯一識別碼",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.identifier.use",
      "path" : "AdverseEvent.identifier.use",
      "patternCode" : "official",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.identifier.system",
      "path" : "AdverseEvent.identifier.system",
      "short" : "異常事件警報識別碼的系統識別符",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.identifier.value",
      "path" : "AdverseEvent.identifier.value",
      "short" : "異常事件警報的唯一識別碼值",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.actuality",
      "path" : "AdverseEvent.actuality",
      "short" : "異常事件的實際性 (實際的異常：actual / 潛在的異常：potential)",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event",
      "path" : "AdverseEvent.event",
      "short" : "異常事件類型",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.text",
      "path" : "AdverseEvent.event.text",
      "short" : "異常事件類型的描述",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.subject",
      "path" : "AdverseEvent.subject",
      "short" : "發生異常事件的個案",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.subject.reference",
      "path" : "AdverseEvent.subject.reference",
      "short" : "個案的參考",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.date",
      "path" : "AdverseEvent.date",
      "short" : "異常事件實際發生的日期時間",
      "definition" : "異常事件實際發生的具體日期和時間",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.detected",
      "path" : "AdverseEvent.detected",
      "short" : "異常事件被偵測到的日期時間",
      "definition" : "異常事件被系統偵測到的具體日期和時間",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.recordedDate",
      "path" : "AdverseEvent.recordedDate",
      "short" : "異常事件被記錄的日期時間",
      "definition" : "異常事件被記錄到系統的具體日期和時間",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.resultingCondition",
      "path" : "AdverseEvent.resultingCondition",
      "short" : "異常事件導致的結果狀況",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.resultingCondition.reference",
      "path" : "AdverseEvent.resultingCondition.reference",
      "short" : "結果狀況的參考 [應填入 Condition Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.location",
      "path" : "AdverseEvent.location",
      "short" : "異常事件發生的位置",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.location.reference",
      "path" : "AdverseEvent.location.reference",
      "short" : "位置的參考 [應填入 Location Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "short" : "異常事件的臨床嚴重程度，指臨床上會對患者造成生命威脅或導致患者長期失能的風險程度",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.severity",
      "path" : "AdverseEvent.severity",
      "short" : "異常事件本身的嚴重程度（輕微、中度、重度）",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.outcome",
      "path" : "AdverseEvent.outcome",
      "short" : "異常事件的處理結果",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.recorder",
      "path" : "AdverseEvent.recorder",
      "short" : "記錄異常事件的人員",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.contributor",
      "path" : "AdverseEvent.contributor",
      "short" : "涉及此異常事件的人員或設備",
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
