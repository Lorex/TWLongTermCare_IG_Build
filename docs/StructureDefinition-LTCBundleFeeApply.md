# 長照支付審查－服務記錄申報文件打包 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務記錄申報文件打包**

## Resource Profile: 長照支付審查－服務記錄申報文件打包 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCBundleFeeApply |

 
此 Bundle 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一次申報交易的資料打包結構。 

 
每份 Bundle 放入同一次申報交易的服務紀錄，以及相關的個案、服務單位、照顧服務員與地點資料。每筆服務紀錄應有唯一的識別碼；更新紀錄時應使用原有的識別碼。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-feeapply-da01-example](Bundle-ltc-bundle-feeapply-da01-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCBundleFeeApply.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCBundleFeeApply.csv), [Excel](StructureDefinition-LTCBundleFeeApply.xlsx), [Schematron](StructureDefinition-LTCBundleFeeApply.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCBundleFeeApply",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply",
  "version" : "1.1.0",
  "name" : "LTCBundleFeeApply",
  "title" : "長照支付審查－服務記錄申報文件打包",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Bundle 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一次申報交易的資料打包結構。",
  "purpose" : "每份 Bundle 放入同一次申報交易的服務紀錄，以及相關的個案、服務單位、照顧服務員與地點資料。每筆服務紀錄應有唯一的識別碼；更新紀錄時應使用原有的識別碼。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "服務記錄申報資料"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "本次申報交易的序號。[應填入 Identifier]",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier.system",
      "path" : "Bundle.identifier.system",
      "short" : "交易序號的識別碼系統",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier.value",
      "path" : "Bundle.identifier.value",
      "short" : "交易序號。[應填入最長 10 個字元的字串]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Bundle 的類型。[應填入 collection]",
      "patternCode" : "collection",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "本次申報的日期與時間。[應填入包含時區的日期時間]",
      "definition" : "應填入送出本次申報的日期與時間，包含秒數及時區，例如 2026-09-17T09:30:00+08:00。",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "short" : "本次申報的資料，個案服務紀錄最多可放入 5000 筆。",
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:claim",
      "path" : "Bundle.entry",
      "sliceName" : "claim",
      "short" : "個案服務紀錄。[應填入對應的 Claim]",
      "definition" : "每筆服務紀錄分別填寫一筆 Claim。同一次交易最多申報 5000 筆。",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:claim.resource",
      "path" : "Bundle.entry.resource",
      "short" : "個案服務紀錄。[應填入符合 LTCClaimFeeApply 的 Claim]",
      "min" : 1,
      "type" : [{
        "code" : "Claim",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "個案基本資料。[應填入對應的 Patient]",
      "definition" : "應填入接受服務的個案資料，供服務紀錄參照。",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "short" : "個案基本資料。[應填入符合 LTCPatient 的 Patient]",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization",
      "path" : "Bundle.entry",
      "sliceName" : "organization",
      "short" : "申報單位。[應填入對應的 Organization]",
      "definition" : "應填入提出申報的服務提供單位資料。",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:organization.resource",
      "path" : "Bundle.entry.resource",
      "short" : "申報單位。[應填入符合 LTCOrganization 的 Organization]",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "practitioner",
      "short" : "照顧服務員。[應填入對應的 Practitioner]",
      "definition" : "應填入實際提供服務的照顧服務員資料，每位照顧服務員分別填寫。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:practitioner.resource",
      "path" : "Bundle.entry.resource",
      "short" : "照顧服務員。[應填入符合 LTCPractitioner 的 Practitioner]",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:location",
      "path" : "Bundle.entry",
      "sliceName" : "location",
      "short" : "交通接送的出發地或目的地。[應填入對應的 Location]",
      "definition" : "申報 BD03、DA01 時，應分別填寫出發地與目的地的資料。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:location.resource",
      "path" : "Bundle.entry.resource",
      "short" : "交通接送的出發地或目的地。[應填入符合 LTCLocationFeeAuditPlace 的 Location]",
      "min" : 1,
      "type" : [{
        "code" : "Location",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      }],
      "mustSupport" : true
    }]
  }
}

```
