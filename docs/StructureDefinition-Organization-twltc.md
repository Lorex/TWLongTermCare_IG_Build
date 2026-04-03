# 長期照顧－機構 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－機構**

## Resource Profile: 長期照顧－機構 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCOrganization |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。 

**Usages:**

* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md), [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長照 SDK－照顧計畫（CS100）](StructureDefinition-LTC-CarePlan-CS100.md), [長照案件（CS100 專用版）](StructureDefinition-LTC-EpisodeOfCare-CS100.md), [長照 SDK－長照案件](StructureDefinition-LTC-EpisodeOfCare-Payload.md), [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md)... Show 6 more, [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md), [長期照顧－住民基本資料](StructureDefinition-LTCPatient.md), [長期照顧－服務人員角色](StructureDefinition-LTCPractitionerRole.md), [長期照顧－服務請求](StructureDefinition-LTCServiceRequest.md), [長期照顧－任務管理](StructureDefinition-LTCTask.md) and [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)
* Examples for this Profile: [新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md) and [OOO長期照顧管理中心](Organization-ltc-organization-sdk-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Organization-twltc)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Organization-twltc.csv), [Excel](StructureDefinition-Organization-twltc.xlsx), [Schematron](StructureDefinition-Organization-twltc.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Organization-twltc",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc",
  "version" : "1.0.0",
  "name" : "LTCOrganization",
  "title" : "長期照顧－機構",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "short" : "機構的資訊"
    },
    {
      "id" : "Organization.identifier.value",
      "path" : "Organization.identifier.value",
      "short" : "唯一值。[應填入機構代碼]",
      "min" : 1
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "機構類型",
      "min" : 1
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "機構名稱。[應填入機構名稱]",
      "min" : 1
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "short" : "機構聯絡方式。"
    },
    {
      "id" : "Organization.telecom.value",
      "path" : "Organization.telecom.value",
      "short" : "實際的聯絡方式之細節。[應填入機構電話]"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "short" : "機構所在地址。",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address.text",
      "path" : "Organization.address.text",
      "short" : "地址的文字表述。[應填入機構地址]"
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "mustSupport" : true
    }]
  }
}

```
