# 長期照顧護理師角色範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧護理師角色範例**

## Example PractitionerRole: 長期照顧護理師角色範例

Profile: [長期照顧－服務人員角色](StructureDefinition-LTCPractitionerRole.md)

**active**: true

**practitioner**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-nurse-example.md)

**organization**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**code**: Registered nurse

**specialty**: General surgery (qualifier value)

**telecom**: ph: 02-29412345(Work), [meiling.wang@ltc-center.tw](mailto:meiling.wang@ltc-center.tw)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday, Thursday, Friday**availableStartTime**: 08:00:00**availableEndTime**: 17:00:00



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ltc-practitioner-role-nurse-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/ltc-practitioner-nurse-example"
  },
  "organization" : {
    "reference" : "Organization/ltc-organization-example"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "224535009",
      "display" : "Registered nurse"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394609007",
      "display" : "General surgery (qualifier value)"
    }]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "02-29412345",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "meiling.wang@ltc-center.tw",
    "use" : "work"
  }],
  "availableTime" : [{
    "daysOfWeek" : ["mon", "tue", "wed", "thu", "fri"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "17:00:00"
  }]
}

```
