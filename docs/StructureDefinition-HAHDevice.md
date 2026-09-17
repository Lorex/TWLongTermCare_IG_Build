# 在宅急症－量測設備 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－量測設備**

## Resource Profile: 在宅急症－量測設備 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHDevice |

 
記錄居家量測設備的識別與類型。一般設備編號使用 identifier；只有正式 UDI 才填入 udiCarrier。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) and [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md)
* Examples for this Profile: [Device/hah-device](Device-hah-device.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHDevice.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHDevice.csv), [Excel](StructureDefinition-HAHDevice.xlsx), [Schematron](StructureDefinition-HAHDevice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHDevice",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice",
  "version" : "1.1.0",
  "name" : "HAHDevice",
  "title" : "在宅急症－量測設備",
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
  "description" : "記錄居家量測設備的識別與類型。一般設備編號使用 identifier；只有正式 UDI 才填入 udiCarrier。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier.system",
      "path" : "Device.identifier.system",
      "min" : 1
    },
    {
      "id" : "Device.identifier.value",
      "path" : "Device.identifier.value",
      "min" : 1
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.patient",
      "path" : "Device.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    }]
  }
}

```
