Logical: TWDentalPractitionerModel
Id: TWDentalPractitioner
Title: "牙醫－醫事人員 (TW Dental Practitioner) 之資料模型"
Description: "牙醫－醫事人員 (TW Dental Practitioner) 之資料模型"

* ^version = "0.0.1"
* identifier 1..* Identifier "人員識別碼，如醫師卡號或員工編號等"
* active 0..1 boolean "此醫事人員的基本資料是否使用中。" "此醫事人員的基本資料是否仍使用中。"
* name 1..* HumanName "姓名。"
* telecom 0..* ContactPoint "聯絡方式。" "聯絡方式。"
* address 0..* Address "地址（戶籍地址、現居地址等）。" "地址（戶籍地址、現居地址等）。"
* gender 0..1 code "性別。" "性別。"
* birthDate 0..1 date "出生日期。" "出生日期。"
* photo 0..* Attachment "人員影像。" "人員影像。"

Mapping: TWDentalPractitioner
Id: TWDentalPractitioner
Title: "TW Dental IG"
Source: TWDentalPractitionerModel
Target: "https://dental-ig.fhir.tw"
* -> "DentalPractitioner"
//* text -> "TWCorePractitioner.text"
* identifier -> "醫事人員的唯一識別碼: DentalPractitioner.identifier"
* active -> "此醫事人員的基本資料是否使用中: DentalPractitioner.active"
* name -> "醫事人員的姓名: DentalPractitioner.name"
* telecom -> "醫事人員的聯絡方式: DentalPractitioner.telecom"
* address -> "醫事人員的地址: DentalPractitioner.address"
* gender -> "醫事人員的性別: DentalPractitioner.gender"
* birthDate -> "醫事人員的出生日期: DentalPractitioner.birthDate"
* photo -> "醫事人員的影像: DentalPractitioner.photo"