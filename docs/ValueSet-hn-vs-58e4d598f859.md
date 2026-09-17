# 居家護理－是否選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－是否選項**

## ValueSet: 居家護理－是否選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS58e4d598f859 |
| *Other Identifiers:*OID:2.25.259766125604152179920464932975932487231 | |

 
限定是否可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－日常生活功能評估邏輯模型](StructureDefinition-HNADLsModel.md)
* [居家護理－日常生活功能評估表單](StructureDefinition-HNADLsResponse.md)
* [居家護理－身體評估評估邏輯模型](StructureDefinition-HNBodyEvaluationsModel.md)
* [居家護理－身體評估評估表單](StructureDefinition-HNBodyEvaluationsResponse.md)
* [居家護理－照護紀錄邏輯模型](StructureDefinition-HNCareRecordModel.md)
* [居家護理－照護紀錄表單](StructureDefinition-HNCareRecordResponse.md)
* [居家護理－認知功能評估邏輯模型](StructureDefinition-HNDementiasModel.md)
* [居家護理－認知功能評估表單](StructureDefinition-HNDementiasResponse.md)
* [居家護理－藥物安全性評估邏輯模型](StructureDefinition-HNDrugSafetiesModel.md)
* [居家護理－藥物安全性評估表單](StructureDefinition-HNDrugSafetiesResponse.md)
* [居家護理－跌倒危險性評估邏輯模型](StructureDefinition-HNFallRisksModel.md)
* [居家護理－跌倒危險性評估表單](StructureDefinition-HNFallRisksResponse.md)
* [居家護理－情緒問題評估邏輯模型](StructureDefinition-HNGeriatricDepressionScalesModel.md)
* [居家護理－情緒問題評估表單](StructureDefinition-HNGeriatricDepressionScalesResponse.md)
* [居家護理－健康紀錄評估邏輯模型](StructureDefinition-HNHealthyHabitsModel.md)
* [居家護理－健康紀錄評估表單](StructureDefinition-HNHealthyHabitsResponse.md)
* [居家護理－工具性日常生活活動功能評估邏輯模型](StructureDefinition-HNIADLsModel.md)
* [居家護理－工具性日常生活活動功能評估表單](StructureDefinition-HNIADLsResponse.md)
* [居家護理－簡易營養評估邏輯模型](StructureDefinition-HNMNASFsModel.md)
* [居家護理－簡易營養評估表單](StructureDefinition-HNMNASFsResponse.md)
* [居家護理－疾病史評估邏輯模型](StructureDefinition-HNMedicalHistoriesModel.md)
* [居家護理－疾病史評估表單](StructureDefinition-HNMedicalHistoriesResponse.md)
* [居家護理－疼痛評估邏輯模型](StructureDefinition-HNPainEvaluationsModel.md)
* [居家護理－疼痛評估表單](StructureDefinition-HNPainEvaluationsResponse.md)
* [居家護理－壓力性損傷危險評估邏輯模型](StructureDefinition-HNPressureInjuriesModel.md)
* [居家護理－壓力性損傷危險評估表單](StructureDefinition-HNPressureInjuriesResponse.md)
* [居家護理－衰弱評估邏輯模型](StructureDefinition-HNSOFsModel.md)
* [居家護理－衰弱評估表單](StructureDefinition-HNSOFsResponse.md)
* [居家護理－日常生活功能評估](Questionnaire-hn-adls.md)
* [居家護理－身體評估評估](Questionnaire-hn-bodyevaluations.md)
* [居家護理－照護紀錄](Questionnaire-hn-carerecord.md)
* [居家護理－認知功能評估](Questionnaire-hn-dementias.md)
* [居家護理－藥物安全性評估](Questionnaire-hn-drugsafeties.md)
* [居家護理－跌倒危險性評估](Questionnaire-hn-fallrisks.md)
* [居家護理－情緒問題評估](Questionnaire-hn-geriatricdepressionscales.md)
* [居家護理－健康紀錄評估](Questionnaire-hn-healthyhabits.md)
* [居家護理－工具性日常生活活動功能評估](Questionnaire-hn-iadls.md)
* [居家護理－疾病史評估](Questionnaire-hn-medicalhistories.md)
* [居家護理－簡易營養評估](Questionnaire-hn-mnasfs.md)
* [居家護理－疼痛評估](Questionnaire-hn-painevaluations.md)
* [居家護理－壓力性損傷危險評估](Questionnaire-hn-pressureinjuries.md)
* [居家護理－衰弱評估](Questionnaire-hn-sofs.md)

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
  "id" : "hn-vs-58e4d598f859",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.259766125604152179920464932975932487231"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS58e4d598f859",
  "title" : "居家護理－是否選項",
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
  "description" : "限定是否可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cb5141d3d19e9"
      },
      {
        "code" : "c0c70665b6eb6"
      }]
    }]
  }
}

```
