Logical: TWDentalPatientModel
Id: TWDentalPatient
Title: "牙醫－病人 (TW Dental Patient) 之資料模型"
Description: "牙醫－醫事人員 (TW Dental Practitioner) 之資料模型"

* ^version = "0.0.1"
* identifier 1..* Identifier "身份識別碼(病歷號、身分證字號、護照號碼、居留證號碼等)" "身份識別碼(病歷號、身分證字號、護照號碼、居留證號碼等)。"
* active 0..1 boolean "此基本資料是否使用中" "此基本資料是否使用中。"
* name 1..* HumanName "姓名" "病人的姓名。"
* telecom 0..* ContactPoint "聯絡方式" "聯絡方式（電話、電子郵件等）。"
* gender 1..1 code "性別" "性別。"
* birthDate 1..1 date "出生日期" "出生日期。"
* address 0..* Address "地址" "地址（戶籍地址、現居地址等）。"
* maritalStatus 0..1 CodeableConcept "婚姻狀態" "婚姻狀態。"
* photo 0..* Attachment "病人的影像" "病人的影像（照片）。"
* contact 0..* BackboneElement "緊急聯絡人" "緊急聯絡人資訊。"
* contact.relationship 0..* CodeableConcept "與緊急聯絡人的關係" "與緊急聯絡人的關係（配偶、父母、子女等）。"
* contact.name 0..1 HumanName "緊急聯絡人姓名" "緊急聯絡人的姓名。"
* contact.telecom 0..* ContactPoint "緊急聯絡人的聯絡方式" "緊急聯絡人的聯絡方式（電話、電子郵件等）。"
* communicationLanguage 0..* CodeableConcept "溝通語言" "病人偏好使用的溝通語言。"
* organization 0..1 Organization "此紀錄的保管機構" "此紀錄的保管機構。"


Mapping: TWDentalPatient
Id: TWDentalPatient
Title: "TW Dental IG"
Source: TWDentalPatientModel
Target: "https://dental-ig.fhir.tw"
* -> "DentalPatient"
* identifier -> "病人的唯一識別碼: DentalPatient.identifier"
* active -> "此病人的基本資料是否使用中: DentalPatient.active"
* name -> "病人的姓名: DentalPatient.name"
* telecom -> "病人的聯絡方式: DentalPatient.telecom"
* gender -> "病人的性別: DentalPatient.gender"
* birthDate -> "病人的出生日期: DentalPatient.birthDate"
* address -> "病人的地址: DentalPatient.address"
* maritalStatus -> "病人的婚姻狀態: DentalPatient.maritalStatus"
* photo -> "病人的影像: DentalPatient.photo"
* contact -> "病人的緊急聯絡人: DentalPatient.contact"
* contact.relationship -> "與緊急聯絡人的關係: DentalPatient.contact.relationship"
* contact.name -> "緊急聯絡人姓名: DentalPatient.contact.name"
* contact.telecom -> "緊急聯絡人的聯絡方式: DentalPatient.contact.telecom"
* communicationLanguage -> "病人的溝通語言: DentalPatient.communication.language"
* organization -> "此紀錄的保管機構: DentalPatient.managingOrganization"