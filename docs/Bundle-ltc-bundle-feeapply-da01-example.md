# 長照支付審查－服務記錄申報交易（DA01 交通接送）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務記錄申報交易（DA01 交通接送）範例**

## Example Bundle: 長照支付審查－服務記錄申報交易（DA01 交通接送）範例



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ltc-bundle-feeapply-da01-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply"]
  },
  "identifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "A0001"
  },
  "type" : "collection",
  "timestamp" : "2019-02-05T10:00:00+08:00",
  "entry" : [{
    "fullUrl" : "http://example.org/Claim/ltc-claim-feeapply-da01-example",
    "resource" : {
      "resourceType" : "Claim",
      "id" : "ltc-claim-feeapply-da01-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Claim_ltc-claim-feeapply-da01-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Claim ltc-claim-feeapply-da01-example</b></p><a name=\"ltc-claim-feeapply-da01-example\"> </a><a name=\"hcltc-claim-feeapply-da01-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCClaimFeeApply.html\">長照支付審查－個案服務紀錄申報</a></p></div><p><b>identifier</b>: <code>http://ltc-ig.fhir.tw/identifier/feeaudit/objid</code>/00000000000000000006, <code>http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no</code>/A0001, <code>http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm</code>/201901</p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/claim-type professional}\">Professional</span></p><p><b>use</b>: Claim</p><p><b>patient</b>: <a href=\"Patient-ltc-patient-sdk-example.html\">王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))</a></p><p><b>created</b>: 2019-02-05 10:00:00+0800</p><p><b>provider</b>: <a href=\"Organization-ltc-organization-sdk-example.html\">Organization OOO長期照顧管理中心</a></p><p><b>priority</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/processpriority normal}\">Normal</span></p><h3>CareTeams</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Provider</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td><a href=\"Practitioner-ltc-practitioner-sdk-example.html\">Practitioner 李小華</a></td></tr></table><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 1</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info addrFrom}\">出發地</span></p><p><b>value</b>: <a href=\"Location-ltc-location-feeapply-home-example.html\">Location 個案住家</a></p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 2</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info addrTo}\">目的地</span></p><p><b>value</b>: <a href=\"Location-ltc-location-feeapply-hospital-example.html\">Location 亞東醫院</a></p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 3</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info carNo}\">車號</span></p><p><b>value</b>: 1111-AA</p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 4</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info driver}\">駕駛員</span></p><p><b>value</b>: 黃OO</p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 5</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info milage}\">里程數</span></p><p><b>value</b>: 12 公里<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekm = 'km')</span></p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 6</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info lastSvc}\">臨終日照顧</span></p><p><b>value</b>: false</p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 7</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info missedVisit}\">訪視/服務未遇</span></p><p><b>value</b>: false</p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 8</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info applyAA09}\">是否申報AA09</span></p><p><b>value</b>: false</p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 9</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info aa10Status}\">AA10申報狀態</span></p><p><b>code</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status 0}\">未申報</span></p></blockquote><blockquote><p><b>supportingInfo</b></p><p><b>sequence</b>: 10</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info remark}\">備註</span></p><p><b>value</b>: 1</p></blockquote><h3>Insurances</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Focal</b></td><td><b>Coverage</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td>true</td><td>長期照顧給付及支付基準</td></tr></table><blockquote><p><b>item</b></p><p><b>sequence</b>: 1</p><p><b>category</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-fee-type 1}\">補助</span></p><p><b>productOrService</b>: <span title=\"Codes:{http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item DA01}\">交通接送</span></p><p><b>serviced</b>: 2019-01-05 13:30:00+0800 --&gt; 2019-01-05 14:00:00+0800</p><p><b>location</b>: <a href=\"Location-ltc-location-feeapply-hospital-example.html\">Location 亞東醫院</a></p><p><b>quantity</b>: 1</p><h3>UnitPrices</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>430</td><td>New Taiwan dollar</td></tr></table><h3>Nets</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>430</td><td>New Taiwan dollar</td></tr></table></blockquote><h3>Totals</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value</b></td><td><b>Currency</b></td></tr><tr><td style=\"display: none\">*</td><td>430</td><td>New Taiwan dollar</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/objid",
        "value" : "00000000000000000006"
      },
      {
        "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
        "value" : "A0001"
      },
      {
        "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
        "value" : "201901"
      }],
      "status" : "active",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
          "code" : "professional"
        }]
      },
      "use" : "claim",
      "patient" : {
        "reference" : "Patient/ltc-patient-sdk-example"
      },
      "created" : "2019-02-05T10:00:00+08:00",
      "provider" : {
        "reference" : "Organization/ltc-organization-sdk-example"
      },
      "priority" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
          "code" : "normal"
        }]
      },
      "careTeam" : [{
        "sequence" : 1,
        "provider" : {
          "reference" : "Practitioner/ltc-practitioner-sdk-example"
        }
      }],
      "supportingInfo" : [{
        "sequence" : 1,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "addrFrom"
          }]
        },
        "valueReference" : {
          "reference" : "Location/ltc-location-feeapply-home-example"
        }
      },
      {
        "sequence" : 2,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "addrTo"
          }]
        },
        "valueReference" : {
          "reference" : "Location/ltc-location-feeapply-hospital-example"
        }
      },
      {
        "sequence" : 3,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "carNo"
          }]
        },
        "valueString" : "1111-AA"
      },
      {
        "sequence" : 4,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "driver"
          }]
        },
        "valueString" : "黃OO"
      },
      {
        "sequence" : 5,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "milage"
          }]
        },
        "valueQuantity" : {
          "value" : 12,
          "unit" : "公里",
          "system" : "http://unitsofmeasure.org",
          "code" : "km"
        }
      },
      {
        "sequence" : 6,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "lastSvc"
          }]
        },
        "valueBoolean" : false
      },
      {
        "sequence" : 7,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "missedVisit"
          }]
        },
        "valueBoolean" : false
      },
      {
        "sequence" : 8,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "applyAA09"
          }]
        },
        "valueBoolean" : false
      },
      {
        "sequence" : 9,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "aa10Status"
          }]
        },
        "code" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status",
            "code" : "0",
            "display" : "未申報"
          }]
        }
      },
      {
        "sequence" : 10,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info",
            "code" : "remark"
          }]
        },
        "valueString" : "1"
      }],
      "insurance" : [{
        "sequence" : 1,
        "focal" : true,
        "coverage" : {
          "display" : "長期照顧給付及支付基準"
        }
      }],
      "item" : [{
        "sequence" : 1,
        "category" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-fee-type",
            "code" : "1",
            "display" : "補助"
          }]
        },
        "productOrService" : {
          "coding" : [{
            "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item",
            "code" : "DA01",
            "display" : "交通接送"
          }]
        },
        "servicedPeriod" : {
          "start" : "2019-01-05T13:30:00+08:00",
          "end" : "2019-01-05T14:00:00+08:00"
        },
        "locationReference" : {
          "reference" : "Location/ltc-location-feeapply-hospital-example"
        },
        "quantity" : {
          "value" : 1
        },
        "unitPrice" : {
          "value" : 430,
          "currency" : "TWD"
        },
        "net" : {
          "value" : 430,
          "currency" : "TWD"
        }
      }],
      "total" : {
        "value" : 430,
        "currency" : "TWD"
      }
    }
  },
  {
    "fullUrl" : "http://example.org/Patient/ltc-patient-sdk-example",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "ltc-patient-sdk-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ltc-patient-sdk-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient ltc-patient-sdk-example</b></p><a name=\"ltc-patient-sdk-example\"> </a><a name=\"hcltc-patient-sdk-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCPatient.html\">長期照顧－住民基本資料</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: 0912345678</li><li>台北市中山區中山北路100號(home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Nominated Contact: Next-of-Kin\">Next-of-Kin:</td><td colspan=\"3\"><ul><li>王大明</li><li>ph: 0987654321</li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN"
          }]
        },
        "system" : "https://example.org/mrn",
        "value" : "A0001"
      }],
      "name" : [{
        "use" : "usual",
        "text" : "王小明"
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "0912345678"
      }],
      "gender" : "male",
      "birthDate" : "1950-01-01",
      "address" : [{
        "use" : "home",
        "text" : "台北市中山區中山北路100號"
      }],
      "contact" : [{
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "N",
            "display" : "Next-of-Kin"
          }]
        }],
        "name" : {
          "text" : "王大明"
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "0987654321"
        }]
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/Organization/ltc-organization-sdk-example",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "ltc-organization-sdk-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_ltc-organization-sdk-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization ltc-organization-sdk-example</b></p><a name=\"ltc-organization-sdk-example\"> </a><a name=\"hcltc-organization-sdk-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Organization-twltc.html\">長期照顧－機構</a></p></div><p><b>identifier</b>: <code>http://www.moi.gov.tw</code>/0131060099</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: OOO長期照顧管理中心</p></div>"
      },
      "identifier" : [{
        "system" : "http://www.moi.gov.tw",
        "value" : "0131060099"
      }],
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "OOO長期照顧管理中心"
    }
  },
  {
    "fullUrl" : "http://example.org/Practitioner/ltc-practitioner-sdk-example",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "ltc-practitioner-sdk-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_ltc-practitioner-sdk-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner ltc-practitioner-sdk-example</b></p><a name=\"ltc-practitioner-sdk-example\"> </a><a name=\"hcltc-practitioner-sdk-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCPractitioner.html\">長期照顧－照顧服務提供者</a></p></div><p><b>identifier</b>: <code>http://example.org/fhir/NamingSystem/practitioner-id</code>/P001</p><p><b>name</b>: 李小華</p></div>"
      },
      "identifier" : [{
        "system" : "http://example.org/fhir/NamingSystem/practitioner-id",
        "value" : "P001"
      }],
      "name" : [{
        "text" : "李小華"
      }]
    }
  },
  {
    "fullUrl" : "http://example.org/Location/ltc-location-feeapply-home-example",
    "resource" : {
      "resourceType" : "Location",
      "id" : "ltc-location-feeapply-home-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_ltc-location-feeapply-home-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location ltc-location-feeapply-home-example</b></p><a name=\"ltc-location-feeapply-home-example\"> </a><a name=\"hcltc-location-feeapply-home-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCLocationFeeAuditPlace.html\">長照支付審查－交通接送起訖地</a></p></div><p><b>status</b>: Active</p><p><b>name</b>: 個案住家</p><p><b>description</b>: 個案王小明之住家，為本次交通接送（DA01）之出發地。</p><p><b>mode</b>: Instance</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode PTRES}\">Patient's Residence</span></p><p><b>address</b>: 台北市中山區中山北路100號(home)</p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>121.524</td><td>25.0625</td></tr></table></div>"
      },
      "status" : "active",
      "name" : "個案住家",
      "description" : "個案王小明之住家，為本次交通接送（DA01）之出發地。",
      "mode" : "instance",
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "PTRES",
          "display" : "Patient's Residence"
        }]
      }],
      "address" : {
        "use" : "home",
        "type" : "physical",
        "text" : "台北市中山區中山北路100號"
      },
      "position" : {
        "longitude" : 121.524,
        "latitude" : 25.0625
      }
    }
  },
  {
    "fullUrl" : "http://example.org/Location/ltc-location-feeapply-hospital-example",
    "resource" : {
      "resourceType" : "Location",
      "id" : "ltc-location-feeapply-hospital-example",
      "meta" : {
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCLocationFeeAuditPlace"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_ltc-location-feeapply-hospital-example\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location ltc-location-feeapply-hospital-example</b></p><a name=\"ltc-location-feeapply-hospital-example\"> </a><a name=\"hcltc-location-feeapply-hospital-example\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-LTCLocationFeeAuditPlace.html\">長照支付審查－交通接送起訖地</a></p></div><p><b>status</b>: Active</p><p><b>name</b>: 亞東醫院</p><p><b>description</b>: 本次交通接送（DA01）之目的地，個案前往就醫之醫療機構。</p><p><b>mode</b>: Instance</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode HOSP}\">Hospital</span></p><p><b>address</b>: 新北市板橋區南雅南路二段21號(work)</p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>121.4527</td><td>25.0022</td></tr></table></div>"
      },
      "status" : "active",
      "name" : "亞東醫院",
      "description" : "本次交通接送（DA01）之目的地，個案前往就醫之醫療機構。",
      "mode" : "instance",
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "HOSP",
          "display" : "Hospital"
        }]
      }],
      "address" : {
        "use" : "work",
        "type" : "physical",
        "text" : "新北市板橋區南雅南路二段21號"
      },
      "position" : {
        "longitude" : 121.4527,
        "latitude" : 25.0022
      }
    }
  }]
}

```
