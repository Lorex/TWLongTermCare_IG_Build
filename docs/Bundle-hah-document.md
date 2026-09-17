# 在宅急症結案文件範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症結案文件範例**

## Example Bundle: 在宅急症結案文件範例



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "hah-document",
  "meta" : {
    "lastUpdated" : "2026-09-05T12:01:00+08:00",
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary"]
  },
  "identifier" : {
    "system" : "https://example.org/hah/documents",
    "value" : "hah-document-v1"
  },
  "type" : "document",
  "timestamp" : "2026-09-05T12:01:00+08:00",
  "entry" : [{
    "fullUrl" : "https://example.org/fhir/Composition/hah-summary",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "hah-summary",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_hah-summary\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition hah-summary</b></p><a name=\"hah-summary\"> </a><a name=\"hchah-summary\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHCompositionSummary.html\">在宅急症－結案與轉銜摘要</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-document discharge-summary}\">結案摘要</span></p><p><b>encounter</b>: <a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><p><b>date</b>: 2026-09-05 12:00:00+0800</p><p><b>author</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>title</b>: 王測試在宅急症結案摘要</p><p><b>custodian</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
          "code" : "discharge-summary"
        }]
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-admission"
      },
      "date" : "2026-09-05T12:00:00+08:00",
      "author" : [{
        "reference" : "Practitioner/hah-practitioner"
      }],
      "title" : "王測試在宅急症結案摘要",
      "custodian" : {
        "reference" : "Organization/hah-organization"
      },
      "section" : [{
        "title" : "療程經過",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "course"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>本次在宅照護完成；包含實地與視訊訪視。</p></div>"
        },
        "entry" : [{
          "reference" : "EpisodeOfCare/hah-episode"
        },
        {
          "reference" : "Encounter/hah-admission"
        },
        {
          "reference" : "Encounter/hah-visit"
        },
        {
          "reference" : "Encounter/hah-video-visit"
        },
        {
          "reference" : "ClinicalImpression/hah-impression"
        },
        {
          "reference" : "QuestionnaireResponse/hah-assessment"
        }]
      },
      {
        "title" : "診斷與問題",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "problems"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>呼吸道感染，療程結束時已解除。</p></div>"
        },
        "entry" : [{
          "reference" : "Condition/hah-condition"
        }]
      },
      {
        "title" : "過敏資訊",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "allergies"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已記錄青黴素過敏及皮疹反應。</p></div>"
        },
        "entry" : [{
          "reference" : "AllergyIntolerance/hah-allergy"
        }]
      },
      {
        "title" : "藥物與給藥",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "medications"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>示範輸注與取消給藥；不是臨床處方建議。</p></div>"
        },
        "entry" : [{
          "reference" : "MedicationRequest/hah-medication-order"
        },
        {
          "reference" : "MedicationAdministration/hah-infusion"
        },
        {
          "reference" : "MedicationAdministration/hah-medication-not-done"
        }]
      },
      {
        "title" : "檢查結果",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "results"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附體溫與血糖檢驗。</p></div>"
        },
        "entry" : [{
          "reference" : "Observation/hah-temperature"
        },
        {
          "reference" : "DiagnosticReport/hah-report"
        }]
      },
      {
        "title" : "照護計畫與措施",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "care"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>附照護目標、計畫、衛教、同意及設備。</p></div>"
        },
        "entry" : [{
          "reference" : "CarePlan/hah-plan"
        },
        {
          "reference" : "Goal/hah-goal"
        },
        {
          "reference" : "Procedure/hah-procedure"
        },
        {
          "reference" : "Consent/hah-consent"
        },
        {
          "reference" : "Device/hah-device"
        }]
      },
      {
        "title" : "後續照護與交班",
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
            "code" : "follow-up"
          }]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>已完成本次會診與檢驗工作；後續回診資訊尚未提供。</p></div>"
        },
        "entry" : [{
          "reference" : "ServiceRequest/hah-consult-request"
        },
        {
          "reference" : "ServiceRequest/hah-lab-request"
        },
        {
          "reference" : "Task/hah-task"
        },
        {
          "reference" : "Communication/hah-communication"
        },
        {
          "reference" : "DocumentReference/hah-attachment"
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Patient/hah-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "hah-patient",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_hah-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient hah-patient</b></p><a name=\"hah-patient\"> </a><a name=\"hchah-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHPatient.html\">在宅急症－個案</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">王測試 Male, DoB: 1945-03-15 ( Provider number)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code/A123456789</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: 02-00000000</li><li>臺北市中正區測試路1號(home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Nominated Contact: Emergency Contact\">Emergency Contact:</td><td colspan=\"3\"><ul><li>王家屬</li><li>ph: 02-00000001</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient Links\">Links:</td><td colspan=\"3\"><ul><li>Managing Organization: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://example.org/hah/patients",
        "value" : "HAH0001"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NNxxx"
          }]
        },
        "system" : "http://www.moi.gov.tw",
        "value" : "A123456789"
      }],
      "name" : [{
        "use" : "usual",
        "text" : "王測試"
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "02-00000000"
      }],
      "gender" : "male",
      "birthDate" : "1945-03-15",
      "address" : [{
        "use" : "home",
        "text" : "臺北市中正區測試路1號"
      }],
      "contact" : [{
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "C"
          }]
        }],
        "name" : {
          "text" : "王家屬"
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "02-00000001"
        }]
      }],
      "managingOrganization" : {
        "reference" : "Organization/hah-organization"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/EpisodeOfCare/hah-episode",
    "resource" : {
      "resourceType" : "EpisodeOfCare",
      "id" : "hah-episode",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EpisodeOfCare_hah-episode\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EpisodeOfCare hah-episode</b></p><a name=\"hah-episode\"> </a><a name=\"hchah-episode\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHEpisodeOfCare.html\">在宅急症－收案療程</a></p></div><p><b>在宅急症－療程結束原因</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-outcome completed-treatment}\">完成治療</span></p><p><b>identifier</b>: <code>https://example.org/hah/episodes</code>/HAH-20260901-001</p><p><b>status</b>: Finished</p><p><b>type</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity acute-home}\">在宅急症照護</span></p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-hah-condition.html\">Condition </a></td></tr></table><p><b>patient</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>managingOrganization</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p><p><b>period</b>: 2026-09-01 08:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</p><p><b>team</b>: <a href=\"CareTeam-hah-team.html\">CareTeam: status = inactive</a></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-outcome",
            "code" : "completed-treatment"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://example.org/hah/episodes",
        "value" : "HAH-20260901-001"
      }],
      "status" : "finished",
      "type" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "acute-home"
        }]
      }],
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/hah-condition"
        }
      }],
      "patient" : {
        "reference" : "Patient/hah-patient"
      },
      "managingOrganization" : {
        "reference" : "Organization/hah-organization"
      },
      "period" : {
        "start" : "2026-09-01T08:00:00+08:00",
        "end" : "2026-09-05T12:00:00+08:00"
      },
      "team" : [{
        "reference" : "CareTeam/hah-team"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Encounter/hah-admission",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "hah-admission",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_hah-admission\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter hah-admission</b></p><a name=\"hah-admission\"> </a><a name=\"hchah-admission\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHAdmissionEncounter.html\">在宅急症－整段照護</a></p></div><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity acute-home}\">在宅急症照護</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>episodeOfCare</b>: <a href=\"EpisodeOfCare-hah-episode.html\">EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>period</b>: 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</p><h3>Diagnoses</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Condition</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Condition-hah-condition.html\">Condition </a></td></tr></table><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/discharge-disposition home}\">Home</span></td></tr></table><h3>Locations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Location</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Location-hah-location.html\">Location 王測試居住地</a></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "acute-home"
        }]
      }],
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "episodeOfCare" : [{
        "reference" : "EpisodeOfCare/hah-episode"
      }],
      "participant" : [{
        "individual" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "period" : {
        "start" : "2026-09-01T09:00:00+08:00",
        "end" : "2026-09-05T12:00:00+08:00"
      },
      "diagnosis" : [{
        "condition" : {
          "reference" : "Condition/hah-condition"
        }
      }],
      "hospitalization" : {
        "dischargeDisposition" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/discharge-disposition",
            "code" : "home"
          }]
        }
      },
      "location" : [{
        "location" : {
          "reference" : "Location/hah-location"
        }
      }],
      "serviceProvider" : {
        "reference" : "Organization/hah-organization"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Organization/hah-organization",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "hah-organization",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_hah-organization\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization hah-organization</b></p><a name=\"hah-organization\"> </a><a name=\"hchah-organization\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-twltc.html\">長期照顧－機構</a></p></div><p><b>identifier</b>: <code>https://example.org/organizations</code>/HAH-ORG-1</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: 在宅急症示範醫療機構</p></div>"
      },
      "identifier" : [{
        "system" : "https://example.org/organizations",
        "value" : "HAH-ORG-1"
      }],
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov"
        }]
      }],
      "name" : "在宅急症示範醫療機構"
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Practitioner/hah-practitioner",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "hah-practitioner",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_hah-practitioner\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner hah-practitioner</b></p><a name=\"hah-practitioner\"> </a><a name=\"hchah-practitioner\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCPractitioner.html\">長期照顧－照顧服務提供者</a></p></div><p><b>identifier</b>: <code>https://example.org/practitioners</code>/HAH-STAFF-1</p><p><b>name</b>: 李示範</p></div>"
      },
      "identifier" : [{
        "system" : "https://example.org/practitioners",
        "value" : "HAH-STAFF-1"
      }],
      "name" : [{
        "use" : "usual",
        "text" : "李示範"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Location/hah-location",
    "resource" : {
      "resourceType" : "Location",
      "id" : "hah-location",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Location-twltc"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_hah-location\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location hah-location</b></p><a name=\"hah-location\"> </a><a name=\"hchah-location\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Location-twltc.html\">長期照顧－個案位置監測</a></p></div><p><b>status</b>: Active</p><p><b>name</b>: 王測試居住地</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode PTRES}\">Patient's Residence</span></p><p><b>address</b>: 臺北市中正區測試路1號</p></div>"
      },
      "status" : "active",
      "name" : "王測試居住地",
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "PTRES",
          "display" : "Patient's Residence"
        }]
      }],
      "address" : {
        "text" : "臺北市中正區測試路1號"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Encounter/hah-visit",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "hah-visit",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_hah-visit\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter hah-visit</b></p><a name=\"hah-visit\"> </a><a name=\"hchah-visit\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHVisitEncounter.html\">在宅急症－單次訪視</a></p></div><p><b>在宅急症－訪視方式</b>: in-person</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-HH\">ActCode: HH</a> (home health)</p><p><b>type</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity visit}\">訪視</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>episodeOfCare</b>: <a href=\"EpisodeOfCare-hah-episode.html\">EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>period</b>: 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</p><h3>Locations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Location</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Location-hah-location.html\">Location 王測試居住地</a></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p><p><b>partOf</b>: <a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode",
        "valueCode" : "in-person"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "HH"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "visit"
        }]
      }],
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "episodeOfCare" : [{
        "reference" : "EpisodeOfCare/hah-episode"
      }],
      "participant" : [{
        "individual" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "period" : {
        "start" : "2026-09-01T09:00:00+08:00",
        "end" : "2026-09-01T10:00:00+08:00"
      },
      "location" : [{
        "location" : {
          "reference" : "Location/hah-location"
        }
      }],
      "serviceProvider" : {
        "reference" : "Organization/hah-organization"
      },
      "partOf" : {
        "reference" : "Encounter/hah-admission"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Encounter/hah-video-visit",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "hah-video-visit",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_hah-video-visit\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter hah-video-visit</b></p><a name=\"hah-video-visit\"> </a><a name=\"hchah-video-visit\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHVisitEncounter.html\">在宅急症－單次訪視</a></p></div><p><b>在宅急症－訪視方式</b>: video</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-VR\">ActCode: VR</a> (virtual)</p><p><b>type</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity visit}\">訪視</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>episodeOfCare</b>: <a href=\"EpisodeOfCare-hah-episode.html\">EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><h3>Participants</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Individual</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>period</b>: 2026-09-02 09:00:00+0800 --&gt; 2026-09-02 09:15:00+0800</p><p><b>serviceProvider</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p><p><b>partOf</b>: <a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode",
        "valueCode" : "video"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "VR"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "visit"
        }]
      }],
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "episodeOfCare" : [{
        "reference" : "EpisodeOfCare/hah-episode"
      }],
      "participant" : [{
        "individual" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "period" : {
        "start" : "2026-09-02T09:00:00+08:00",
        "end" : "2026-09-02T09:15:00+08:00"
      },
      "serviceProvider" : {
        "reference" : "Organization/hah-organization"
      },
      "partOf" : {
        "reference" : "Encounter/hah-admission"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/hah-condition",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "hah-condition",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_hah-condition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition hah-condition</b></p><a name=\"hah-condition\"> </a><a name=\"hchah-condition\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHCondition.html\">在宅急症－診斷與照護問題</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical resolved}\">Resolved</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>code</b>: <span title=\"Codes:\">呼吸道感染</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><p><b>recordedDate</b>: 2026-09-01 09:00:00+0800</p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "resolved"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis"
        }]
      }],
      "code" : {
        "text" : "呼吸道感染"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-admission"
      },
      "recordedDate" : "2026-09-01T09:00:00+08:00"
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/CareTeam/hah-team",
    "resource" : {
      "resourceType" : "CareTeam",
      "id" : "hah-team",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"CareTeam_hah-team\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CareTeam hah-team</b></p><a name=\"hah-team\"> </a><a name=\"hchah-team\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHCareTeam.html\">在宅急症－照護團隊</a></p></div><p><b>status</b>: Inactive</p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><blockquote><p><b>participant</b></p><p><b>role</b>: <span title=\"Codes:\">主責醫療人員</span></p><p><b>member</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>period</b>: 2026-09-01 --&gt; 2026-09-05</p></blockquote><blockquote><p><b>participant</b></p><p><b>role</b>: <span title=\"Codes:\">共照機構</span></p><p><b>member</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p></blockquote></div>"
      },
      "status" : "inactive",
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-admission"
      },
      "participant" : [{
        "role" : [{
          "text" : "主責醫療人員"
        }],
        "member" : {
          "reference" : "Practitioner/hah-practitioner"
        },
        "period" : {
          "start" : "2026-09-01",
          "end" : "2026-09-05"
        }
      },
      {
        "role" : [{
          "text" : "共照機構"
        }],
        "member" : {
          "reference" : "Organization/hah-organization"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Goal/hah-goal",
    "resource" : {
      "resourceType" : "Goal",
      "id" : "hah-goal",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Goal_hah-goal\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Goal hah-goal</b></p><a name=\"hah-goal\"> </a><a name=\"hchah-goal\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHGoal.html\">在宅急症－照護目標</a></p></div><p><b>在宅急症－療程關聯</b>: <a href=\"EpisodeOfCare-hah-episode.html\">EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></p><p><b>lifecycleStatus</b>: Completed</p><p><b>description</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity care-goal}\">本次照護期間能由照顧者協助完成居家量測並回報不適情形</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><h3>Targets</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Due[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2026-09-05</td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
        "valueReference" : {
          "reference" : "EpisodeOfCare/hah-episode"
        }
      }],
      "lifecycleStatus" : "completed",
      "description" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "care-goal"
        }],
        "text" : "本次照護期間能由照顧者協助完成居家量測並回報不適情形"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "target" : [{
        "dueDate" : "2026-09-05"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/CarePlan/hah-plan",
    "resource" : {
      "resourceType" : "CarePlan",
      "id" : "hah-plan",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan"]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"CarePlan_hah-plan\"> </a><p>王測試的在宅急症照護計畫，所屬療程 HAH-20260901-001，期間為 2026 年 9 月 1 日至 9 月 5 日，狀態為已完成。處理呼吸道感染問題，目標為協助完成每日量測紀錄；包含血糖檢驗醫囑。</p></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
        "valueReference" : {
          "reference" : "EpisodeOfCare/hah-episode"
        }
      }],
      "status" : "completed",
      "intent" : "plan",
      "category" : [{
        "coding" : [{
          "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
          "code" : "assess-plan"
        }]
      }],
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-admission"
      },
      "period" : {
        "start" : "2026-09-01",
        "end" : "2026-09-05"
      },
      "addresses" : [{
        "reference" : "Condition/hah-condition"
      }],
      "goal" : [{
        "reference" : "Goal/hah-goal"
      }],
      "activity" : [{
        "reference" : {
          "reference" : "ServiceRequest/hah-lab-request"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/ServiceRequest/hah-lab-request",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "hah-lab-request",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_hah-lab-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest hah-lab-request</b></p><a name=\"hah-lab-request\"> </a><a name=\"hchah-lab-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHServiceRequest.html\">在宅急症－服務請求</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity laboratory}\">檢驗</span></p><p><b>code</b>: <span title=\"Codes:\">血液葡萄糖檢驗</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>authoredOn</b>: 2026-09-01 09:05:00+0800</p><p><b>requester</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>reasonReference</b>: <a href=\"Condition-hah-condition.html\">Condition </a></p></div>"
      },
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "text" : "血液葡萄糖檢驗"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "authoredOn" : "2026-09-01T09:05:00+08:00",
      "requester" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "reasonReference" : [{
        "reference" : "Condition/hah-condition"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/ServiceRequest/hah-consult-request",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "hah-consult-request",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_hah-consult-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest hah-consult-request</b></p><a name=\"hah-consult-request\"> </a><a name=\"hchah-consult-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHServiceRequest.html\">在宅急症－服務請求</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity consultation}\">專科照會</span></p><p><b>code</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity consultation}\">專科照會</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>authoredOn</b>: 2026-09-01 09:05:00+0800</p><p><b>requester</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>performer</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>reasonReference</b>: <a href=\"Condition-hah-condition.html\">Condition </a></p></div>"
      },
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "consultation"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "consultation"
        }]
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "authoredOn" : "2026-09-01T09:05:00+08:00",
      "requester" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "performer" : [{
        "reference" : "Practitioner/hah-practitioner"
      }],
      "reasonReference" : [{
        "reference" : "Condition/hah-condition"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Task/hah-task",
    "resource" : {
      "resourceType" : "Task",
      "id" : "hah-task",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitTask"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Task_hah-task\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Task hah-task</b></p><a name=\"hah-task\"> </a><a name=\"hchah-task\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHVisitTask.html\">在宅急症－照護工作</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: order</p><p><b>code</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity laboratory}\">檢驗</span></p><p><b>focus</b>: <a href=\"ServiceRequest-hah-lab-request.html\">ServiceRequest </a></p><p><b>for</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>executionPeriod</b>: 2026-09-01 09:10:00+0800 --&gt; 2026-09-01 09:20:00+0800</p><p><b>authoredOn</b>: 2026-09-01 09:05:00+0800</p><p><b>requester</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>owner</b>: <a href=\"CareTeam-hah-team.html\">CareTeam: status = inactive</a></p><p><b>location</b>: <a href=\"Location-hah-location.html\">Location 王測試居住地</a></p><h3>Restrictions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Period</b></td></tr><tr><td style=\"display: none\">*</td><td>2026-09-01 09:05:00+0800 --&gt; 2026-09-01 10:00:00+0800</td></tr></table><h3>Outputs</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">檢驗報告</span></td><td><a href=\"DiagnosticReport-hah-report.html\">Diagnostic Report for '' for '-&gt;王測試 Male, DoB: 1945-03-15 ( Provider number)'</a></td></tr></table></div>"
      },
      "status" : "completed",
      "intent" : "order",
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "laboratory"
        }]
      },
      "focus" : {
        "reference" : "ServiceRequest/hah-lab-request"
      },
      "for" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "executionPeriod" : {
        "start" : "2026-09-01T09:10:00+08:00",
        "end" : "2026-09-01T09:20:00+08:00"
      },
      "authoredOn" : "2026-09-01T09:05:00+08:00",
      "requester" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "owner" : {
        "reference" : "CareTeam/hah-team"
      },
      "location" : {
        "reference" : "Location/hah-location"
      },
      "restriction" : {
        "period" : {
          "start" : "2026-09-01T09:05:00+08:00",
          "end" : "2026-09-01T10:00:00+08:00"
        }
      },
      "output" : [{
        "type" : {
          "text" : "檢驗報告"
        },
        "valueReference" : {
          "reference" : "DiagnosticReport/hah-report"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Specimen/hah-specimen",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "hah-specimen",
      "meta" : {
        "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_hah-specimen\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen hah-specimen</b></p><a name=\"hah-specimen\"> </a><a name=\"hchah-specimen\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://twcore.mohw.gov.tw/ig/twcore/1.0.0/StructureDefinition-Specimen-twcore.html\">TW Core Specimen</a></p></div><p><b>identifier</b>: <code>https://example.org/specimens</code>/HAH-SPECIMEN-1</p><p><b>type</b>: <span title=\"Codes:\">血液</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collector</b></td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td><td>2026-09-01 09:10:00+0800</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://example.org/specimens",
        "value" : "HAH-SPECIMEN-1"
      }],
      "type" : {
        "text" : "血液"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "collection" : {
        "collector" : {
          "reference" : "Practitioner/hah-practitioner"
        },
        "collectedDateTime" : "2026-09-01T09:10:00+08:00"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hah-glucose",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hah-glucose",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHObservationLab"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hah-glucose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hah-glucose</b></p><a name=\"hah-glucose\"> </a><a name=\"hchah-glucose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHObservationLab.html\">在宅急症－檢驗結果</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-hah-lab-request.html\">ServiceRequest </a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2339-0}\">Glucose [Mass/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>effective</b>: 2026-09-01 09:10:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>value</b>: 110 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>specimen</b>: <a href=\"Specimen-hah-specimen.html\">Specimen: identifier = https://example.org/specimens#HAH-SPECIMEN-1; type = </a></p></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/hah-lab-request"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2339-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectiveDateTime" : "2026-09-01T09:10:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hah-practitioner"
      }],
      "valueQuantity" : {
        "value" : 110,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "specimen" : {
        "reference" : "Specimen/hah-specimen"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/DiagnosticReport/hah-report",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "hah-report",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDiagnosticReport"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_hah-report\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport hah-report</b></p><a name=\"hah-report\"> </a><a name=\"hchah-report\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHDiagnosticReport.html\">在宅急症－檢驗報告</a></p></div><h2><span title=\"Codes:\">血糖檢驗報告</span> </h2><table class=\"grid\"><tr><td>Subject</td><td>王測試 Male, DoB: 1945-03-15 ( Provider number)</td></tr><tr><td>Relevant Time</td><td>2026-09-01 09:10:00+0800</td></tr><tr><td>Reported</td><td>2026-09-01 09:20:00+0800</td></tr><tr><td>Performer</td><td> <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td></tr><tr><td><a href=\"Observation-hah-glucose.html\"><span title=\"Codes:{http://loinc.org 2339-0}\">Glucose [Mass/volume] in Blood</span></a></td><td>110 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></td><td>Final</td></tr></table></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/hah-lab-request"
      }],
      "status" : "final",
      "code" : {
        "text" : "血糖檢驗報告"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectiveDateTime" : "2026-09-01T09:10:00+08:00",
      "issued" : "2026-09-01T09:20:00+08:00",
      "performer" : [{
        "reference" : "Organization/hah-organization"
      }],
      "specimen" : [{
        "reference" : "Specimen/hah-specimen"
      }],
      "result" : [{
        "reference" : "Observation/hah-glucose"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Observation/hah-temperature",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "hah-temperature",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_hah-temperature\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation hah-temperature</b></p><a name=\"hah-temperature\"> </a><a name=\"hchah-temperature\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-PASportObservationBodyTemperature.html\">基礎生理量測－體溫</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8310-5}\">Body temperature</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>effective</b>: 2026-09-01 09:10:00+0800</p><p><b>performer</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>value</b>: 37.2 Cel<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeCel = 'Cel')</span></p><p><b>device</b>: <a href=\"Device-hah-device.html\">Device: identifier = https://example.org/devices#THERMOMETER-001; status = active; type = </a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8310-5",
          "display" : "Body temperature"
        }]
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectiveDateTime" : "2026-09-01T09:10:00+08:00",
      "performer" : [{
        "reference" : "Practitioner/hah-practitioner"
      }],
      "valueQuantity" : {
        "value" : 37.2,
        "unit" : "Cel",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      },
      "device" : {
        "reference" : "Device/hah-device"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Device/hah-device",
    "resource" : {
      "resourceType" : "Device",
      "id" : "hah-device",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_hah-device\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device hah-device</b></p><a name=\"hah-device\"> </a><a name=\"hchah-device\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHDevice.html\">在宅急症－量測設備</a></p></div><p><b>identifier</b>: <code>https://example.org/devices</code>/THERMOMETER-001</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:\">體溫計</span></p><p><b>patient</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>owner</b>: <a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://example.org/devices",
        "value" : "THERMOMETER-001"
      }],
      "status" : "active",
      "type" : {
        "text" : "體溫計"
      },
      "patient" : {
        "reference" : "Patient/hah-patient"
      },
      "owner" : {
        "reference" : "Organization/hah-organization"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/QuestionnaireResponse/hah-assessment",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "hah-assessment",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"QuestionnaireResponse_hah-assessment\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse hah-assessment</b></p><a name=\"hah-assessment\"> </a><a name=\"hchah-assessment\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHAssessmentResponse.html\">在宅急症－收案評估回覆</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> hah-assessment</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:<a href=\"Questionnaire-hah-intake-assessment.html\">在宅急症收案評估</a></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> criteria</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">示範機構收案程序 1.0；本例不作給付判定</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> home-safety</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">已確認照護空間及聯絡設備</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> caregiver-support</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">照顧者可協助量測並聯繫團隊</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> decision</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span><span><a href=\"CodeSystem-hah-eligibility.html#hah-eligibility-eligible\">在宅急症－收案評估結果代碼: eligible</a> (建議收案)</span></span></td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
        "valueReference" : {
          "reference" : "EpisodeOfCare/hah-episode"
        }
      }],
      "questionnaire" : "http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment|1.1.0",
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "authored" : "2026-09-01T08:00:00+08:00",
      "author" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "item" : [{
        "linkId" : "criteria",
        "answer" : [{
          "valueString" : "示範機構收案程序 1.0；本例不作給付判定"
        }]
      },
      {
        "linkId" : "home-safety",
        "answer" : [{
          "valueString" : "已確認照護空間及聯絡設備"
        }]
      },
      {
        "linkId" : "caregiver-support",
        "answer" : [{
          "valueString" : "照顧者可協助量測並聯繫團隊"
        }]
      },
      {
        "linkId" : "decision",
        "answer" : [{
          "valueCoding" : {
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-eligibility",
            "code" : "eligible"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/ClinicalImpression/hah-impression",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "hah-impression",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClinicalImpression_hah-impression\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression hah-impression</b></p><a name=\"hah-impression\"> </a><a name=\"hchah-impression\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHClinicalImpression.html\">在宅急症－臨床評估</a></p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>effective</b>: 2026-09-01 09:30:00+0800</p><p><b>date</b>: 2026-09-01 09:35:00+0800</p><p><b>assessor</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><p><b>problem</b>: <a href=\"Condition-hah-condition.html\">Condition </a></p><p><b>summary</b>: 已完成本次病情與居家照護需求評估，後續依照護計畫追蹤。</p><p><b>supportingInfo</b>: </p><ul><li><a href=\"Observation-hah-temperature.html\">Observation Body temperature</a></li><li><a href=\"DiagnosticReport-hah-report.html\">Diagnostic Report for '' for '-&gt;王測試 Male, DoB: 1945-03-15 ( Provider number)'</a></li></ul></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectiveDateTime" : "2026-09-01T09:30:00+08:00",
      "date" : "2026-09-01T09:35:00+08:00",
      "assessor" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "problem" : [{
        "reference" : "Condition/hah-condition"
      }],
      "summary" : "已完成本次病情與居家照護需求評估，後續依照護計畫追蹤。",
      "supportingInfo" : [{
        "reference" : "Observation/hah-temperature"
      },
      {
        "reference" : "DiagnosticReport/hah-report"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Procedure/hah-procedure",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "hah-procedure",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_hah-procedure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure hah-procedure</b></p><a name=\"hah-procedure\"> </a><a name=\"hchah-procedure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHProcedure.html\">在宅急症－處置紀錄</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity education}\">照護者衛教</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>performed</b>: 2026-09-01 09:40:00+0800</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>note</b>: </p><blockquote><div><p>已向照顧者說明量測紀錄與聯繫方式。</p>\n</div></blockquote></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "education"
        }],
        "text" : "照護者衛教"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "performedDateTime" : "2026-09-01T09:40:00+08:00",
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "note" : [{
        "text" : "已向照顧者說明量測紀錄與聯繫方式。"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/MedicationRequest/hah-medication-order",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "hah-medication-order",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_hah-medication-order\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest hah-medication-order</b></p><a name=\"hah-medication-order\"> </a><a name=\"hchah-medication-order\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHMedicationRequest.html\">在宅急症－給藥處方</a></p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>medication</b>: <span title=\"Codes:\">示範用輸注液</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>authoredOn</b>: 2026-09-01 09:10:00+0800</p><p><b>requester</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>本例僅示範輸注期間及速率欄位。</td></tr></table></div>"
      },
      "status" : "completed",
      "intent" : "order",
      "medicationCodeableConcept" : {
        "text" : "示範用輸注液"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "authoredOn" : "2026-09-01T09:10:00+08:00",
      "requester" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "dosageInstruction" : [{
        "text" : "本例僅示範輸注期間及速率欄位。"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/MedicationAdministration/hah-infusion",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "hah-infusion",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_hah-infusion\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration hah-infusion</b></p><a name=\"hah-infusion\"> </a><a name=\"hchah-infusion\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHMedicationAdministration.html\">在宅急症－給藥與輸注</a></p></div><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">示範用輸注液</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>context</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>effective</b>: 2026-09-01 09:15:00+0800 --&gt; 2026-09-01 09:45:00+0800</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>request</b>: <a href=\"MedicationRequest-hah-medication-order.html\">MedicationRequest: status = completed; intent = order; medication[x] = ; authoredOn = 2026-09-01 09:10:00+0800</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Route</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">靜脈</span></td><td>100 mL/h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL/h = 'mL/h')</span></td></tr></table></div>"
      },
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "示範用輸注液"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "context" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectivePeriod" : {
        "start" : "2026-09-01T09:15:00+08:00",
        "end" : "2026-09-01T09:45:00+08:00"
      },
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "request" : {
        "reference" : "MedicationRequest/hah-medication-order"
      },
      "dosage" : {
        "route" : {
          "text" : "靜脈"
        },
        "rateQuantity" : {
          "value" : 100,
          "unit" : "mL/h",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL/h"
        }
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/MedicationAdministration/hah-medication-not-done",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "hah-medication-not-done",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_hah-medication-not-done\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration hah-medication-not-done</b></p><a name=\"hah-medication-not-done\"> </a><a name=\"hchah-medication-not-done\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHMedicationAdministration.html\">在宅急症－給藥與輸注</a></p></div><p><b>status</b>: Not Done</p><p><b>statusReason</b>: <span title=\"Codes:\">本次給藥經評估取消</span></p><p><b>medication</b>: <span title=\"Codes:\">示範用輸注液</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>context</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>effective</b>: 2026-09-01 09:50:00+0800</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></td></tr></table><p><b>request</b>: <a href=\"MedicationRequest-hah-medication-order.html\">MedicationRequest: status = completed; intent = order; medication[x] = ; authoredOn = 2026-09-01 09:10:00+0800</a></p></div>"
      },
      "status" : "not-done",
      "statusReason" : [{
        "text" : "本次給藥經評估取消"
      }],
      "medicationCodeableConcept" : {
        "text" : "示範用輸注液"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "context" : {
        "reference" : "Encounter/hah-visit"
      },
      "effectiveDateTime" : "2026-09-01T09:50:00+08:00",
      "performer" : [{
        "actor" : {
          "reference" : "Practitioner/hah-practitioner"
        }
      }],
      "request" : {
        "reference" : "MedicationRequest/hah-medication-order"
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/AllergyIntolerance/hah-allergy",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "hah-allergy",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAllergyIntolerance"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_hah-allergy\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance hah-allergy</b></p><a name=\"hah-allergy\"> </a><a name=\"hchah-allergy\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHAllergyIntolerance.html\">在宅急症－過敏資訊</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:\">青黴素</span></p><p><b>patient</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>recordedDate</b>: 2026-09-01 09:00:00+0800</p><h3>Reactions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Manifestation</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">皮疹</span></td></tr></table></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "text" : "青黴素"
      },
      "patient" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "recordedDate" : "2026-09-01T09:00:00+08:00",
      "reaction" : [{
        "manifestation" : [{
          "text" : "皮疹"
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/DocumentReference/hah-attachment",
    "resource" : {
      "resourceType" : "DocumentReference",
      "id" : "hah-attachment",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_hah-attachment\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference hah-attachment</b></p><a name=\"hah-attachment\"> </a><a name=\"hchah-attachment\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHDocumentReference.html\">在宅急症－照護附件</a></p></div><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:\">在宅照護同意文件</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>date</b>: 2026-09-01 08:30:00+0800</p><p><b>author</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Data</b></td><td><b>Title</b></td></tr><tr><td style=\"display: none\">*</td><td>text/plain</td><td><code>RXhhbXBsZSBvbmx5</code></td><td>合成同意文件</td></tr></table></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Encounter</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Encounter-hah-admission.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-05 12:00:00+0800</a></td></tr></table></div>"
      },
      "status" : "current",
      "type" : {
        "text" : "在宅照護同意文件"
      },
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "date" : "2026-09-01T08:30:00+08:00",
      "author" : [{
        "reference" : "Practitioner/hah-practitioner"
      }],
      "content" : [{
        "attachment" : {
          "contentType" : "text/plain",
          "data" : "RXhhbXBsZSBvbmx5",
          "title" : "合成同意文件"
        }
      }],
      "context" : {
        "encounter" : [{
          "reference" : "Encounter/hah-admission"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Consent/hah-consent",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "hah-consent",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHConsent"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_hah-consent\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent hah-consent</b></p><a name=\"hah-consent\"> </a><a name=\"hchah-consent\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHConsent.html\">在宅急症－照護同意</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></td></tr><tr><td title=\"Who is agreeing to the policy and rules\">Party</td><td><a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></td></tr><tr><td title=\"Who manages the consent through its lifecycle.\">Manager</td><td><a href=\"Organization-hah-organization.html\">Organization 在宅急症示範醫療機構</a></td></tr></table><p>This consent is made under the policy <a href=\"https://example.org/policies/hah-care-consent\">https://example.org/policies/hah-care-consent</a> .</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Rule\">Rule</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Period\">Time Period</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Other Applicable Rules\">Rules</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2026-09-01 --&gt; 2026-09-05</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr><td colspan=\"3\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
        "valueReference" : {
          "reference" : "EpisodeOfCare/hah-episode"
        }
      }],
      "status" : "active",
      "scope" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "treatment"
        }]
      },
      "category" : [{
        "text" : "在宅急症照護同意"
      }],
      "patient" : {
        "reference" : "Patient/hah-patient"
      },
      "dateTime" : "2026-09-01T08:30:00+08:00",
      "performer" : [{
        "reference" : "Patient/hah-patient"
      }],
      "organization" : [{
        "reference" : "Organization/hah-organization"
      }],
      "sourceReference" : {
        "reference" : "DocumentReference/hah-attachment"
      },
      "policy" : [{
        "uri" : "https://example.org/policies/hah-care-consent"
      }],
      "provision" : {
        "type" : "permit",
        "period" : {
          "start" : "2026-09-01",
          "end" : "2026-09-05"
        }
      }
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Communication/hah-communication",
    "resource" : {
      "resourceType" : "Communication",
      "id" : "hah-communication",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCommunication"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Communication_hah-communication\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Communication hah-communication</b></p><a name=\"hah-communication\"> </a><a name=\"hchah-communication\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-HAHCommunication.html\">在宅急症－照會與交班</a></p></div><p><b>basedOn</b>: <a href=\"ServiceRequest-hah-consult-request.html\">ServiceRequest 專科照會</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/hah-activity consultation}\">專科照會</span></p><p><b>subject</b>: <a href=\"Patient-hah-patient.html\">王測試 Male, DoB: 1945-03-15 ( Provider number)</a></p><p><b>encounter</b>: <a href=\"Encounter-hah-visit.html\">Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --&gt; 2026-09-01 10:00:00+0800</a></p><p><b>sent</b>: 2026-09-01 10:00:00+0800</p><p><b>recipient</b>: <a href=\"CareTeam-hah-team.html\">CareTeam: status = inactive</a></p><p><b>sender</b>: <a href=\"Practitioner-hah-practitioner.html\">Practitioner 李示範</a></p><h3>Payloads</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Content[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>已回覆本次照會，請依照護計畫持續追蹤。</td></tr></table></div>"
      },
      "basedOn" : [{
        "reference" : "ServiceRequest/hah-consult-request"
      }],
      "status" : "completed",
      "category" : [{
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "consultation"
        }]
      }],
      "subject" : {
        "reference" : "Patient/hah-patient"
      },
      "encounter" : {
        "reference" : "Encounter/hah-visit"
      },
      "sent" : "2026-09-01T10:00:00+08:00",
      "recipient" : [{
        "reference" : "CareTeam/hah-team"
      }],
      "sender" : {
        "reference" : "Practitioner/hah-practitioner"
      },
      "payload" : [{
        "contentString" : "已回覆本次照會，請依照護計畫持續追蹤。"
      }]
    }
  }]
}

```
