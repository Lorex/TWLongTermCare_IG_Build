# 長期照顧－關係人 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－關係人**

## Resource Profile: 長期照顧－關係人 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:LTCRelatedPerson |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 RelatedPerson Resource，以呈現住民的關係人，包含家屬、照顧者、法定代理人等與住民有關的人員資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md), [長期照顧－照顧團隊](StructureDefinition-LTCCareTeam.md), [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md), [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)... Show 7 more, [長期照顧－病情、問題或診斷](StructureDefinition-LTCCondition.md), [長期照顧－照顧目標](StructureDefinition-LTCGoal.md), [長期照顧－照護活動](StructureDefinition-LTCProcedureCareActivity.md), [長期照顧－問卷回覆](StructureDefinition-LTCQuestionnaireResponse.md), [長期照顧－臨床失智評估量表回覆](StructureDefinition-LTCQuestionnaireResponseCDR.md), [長期照顧－簡易智能狀態測驗回覆](StructureDefinition-LTCQuestionnaireResponseMMSE.md) and [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)
* Examples for this Profile: [RelatedPerson/ltc-related-person-primary-caregiver-example](RelatedPerson-ltc-related-person-primary-caregiver-example.md) and [RelatedPerson/ltc-related-person-primary-caregiver-referral-example](RelatedPerson-ltc-related-person-primary-caregiver-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCRelatedPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCRelatedPerson.csv), [Excel](StructureDefinition-LTCRelatedPerson.xlsx), [Schematron](StructureDefinition-LTCRelatedPerson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCRelatedPerson",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
  "version" : "1.0.0",
  "name" : "LTCRelatedPerson",
  "title" : "長期照顧－關係人",
  "status" : "active",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 RelatedPerson Resource，以呈現住民的關係人，包含家屬、照顧者、法定代理人等與住民有關的人員資料。",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson.extension",
      "path" : "RelatedPerson.extension",
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
      "id" : "RelatedPerson.extension:isPrimary",
      "path" : "RelatedPerson.extension",
      "sliceName" : "isPrimary",
      "short" : "是否為主要照顧者",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "short" : "是否為生效中的關係人"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "short" : "關聯的住民",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "RelatedPerson.patient.reference",
      "path" : "RelatedPerson.patient.reference",
      "short" : "關聯的住民。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "short" : "關係人與住民的關係",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/RelationshipTypeVS-TWLTC"
      }
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "short" : "關係人姓名",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.name.text",
      "path" : "RelatedPerson.name.text",
      "short" : "關係人的全名。[應輸入關係人中文全名]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "short" : "關係人聯絡方式"
    },
    {
      "id" : "RelatedPerson.telecom.value",
      "path" : "RelatedPerson.telecom.value",
      "short" : "實際的聯絡方式之細節。[應輸入聯絡電話]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "short" : "關係人地址",
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.address.use",
      "path" : "RelatedPerson.address.use",
      "short" : "關係人地址的用途",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.address.text",
      "path" : "RelatedPerson.address.text",
      "short" : "關係人的地址。[應輸入完整地址]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
