# 長期照顧－異常事件警報 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－異常事件警報**

## Resource Profile: 長期照顧－異常事件警報 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCAdverseEvent |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現長照個案異常事件的資料，包括事件類型、嚴重程度、發生時間、位置、通報方式、多段文字描述與關聯案件等資訊。同時適用於失智照顧及 SDK 異常服務通報場景。 

**Usages:**

* Refer to this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)
* Examples for this Profile: [AdverseEvent/ltc-adverse-event-example](AdverseEvent-ltc-adverse-event-example.md), [AdverseEvent/ltc-adverse-event-incident-example](AdverseEvent-ltc-adverse-event-incident-example.md) and [AdverseEvent/ltc-adverseevent-cs100-example](AdverseEvent-ltc-adverseevent-cs100-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/AdverseEvent-twltc)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AdverseEvent-twltc.csv), [Excel](StructureDefinition-AdverseEvent-twltc.xlsx), [Schematron](StructureDefinition-AdverseEvent-twltc.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AdverseEvent-twltc",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc",
  "version" : "1.0.0",
  "name" : "LTCAdverseEvent",
  "title" : "長期照顧－異常事件警報",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 AdverseEvent Resource，以呈現長照個案異常事件的資料，包括事件類型、嚴重程度、發生時間、位置、通報方式、多段文字描述與關聯案件等資訊。同時適用於失智照顧及 SDK 異常服務通報場景。",
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
      "id" : "AdverseEvent.extension",
      "path" : "AdverseEvent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "AdverseEvent.extension:notifMethod",
      "path" : "AdverseEvent.extension",
      "sliceName" : "notifMethod",
      "short" : "通報方式（如電話、機構通報等）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-NotifMethod"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.extension:description",
      "path" : "AdverseEvent.extension",
      "sliceName" : "description",
      "short" : "多段文字描述（事件描述、過程、處理、建議）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-Description"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.extension:about",
      "path" : "AdverseEvent.extension",
      "sliceName" : "about",
      "short" : "關聯的案件（EpisodeOfCare）或照顧計畫（CarePlan）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-About"]
      }],
      "mustSupport" : true
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
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-incident-category"
      }
    },
    {
      "id" : "AdverseEvent.event.coding",
      "path" : "AdverseEvent.event.coding",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.text",
      "path" : "AdverseEvent.event.text",
      "short" : "異常事件類型的描述",
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
      "mustSupport" : true
    }]
  }
}

```
