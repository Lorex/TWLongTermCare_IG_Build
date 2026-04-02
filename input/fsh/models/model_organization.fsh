Logical: TWDentalOrganizationModel
Id: TWDentalOrganization
Title: "牙醫－機構 (TW Dental Organization) 之資料模型"
Description: "此模型說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現牙醫機構的資料。"

* ^version = "0.0.1"
* identifier 1..* Identifier "機構唯一識別碼" "機構唯一識別碼（如：醫事機構代碼、統一編號等）。"
* active 0..1 boolean "此機構基本資料是否使用中" "此機構基本資料是否使用中。"
* organizationType 1..1 CodeableConcept "機構種類" "機構種類（如：牙醫診所、醫院牙科部等）。"
* name 1..1 string "機構名稱" "機構名稱。"
* alias 0..* string "機構別名" "機構的其他名稱或簡稱。"
* telecom 0..* ContactPoint "聯絡方式" "聯絡方式（電話、傳真、電子郵件等）。"
* address 0..* Address "地址" "機構地址。"
* partOf 0..1 Reference "上層機構" "若為醫院的牙科部門，則連結至所屬醫院。"

* contact 0..* BackboneElement "聯絡窗口" "機構的聯絡窗口資訊。"
* contact.purpose 0..1 CodeableConcept "聯絡目的" "聯絡窗口的用途（如：掛號、諮詢等）。"
* contact.name 0..1 HumanName "聯絡人姓名" "聯絡窗口負責人姓名。"
* contact.telecom 0..* ContactPoint "聯絡方式" "聯絡窗口的聯絡方式。"
* contact.address 0..1 Address "聯絡地址" "聯絡窗口的地址（若與機構地址不同）。"

Mapping: TWDentalOrganization
Id: TWDentalOrganization
Title: "TW Dental IG"
Source: TWDentalOrganizationModel
Target: "https://dental-ig.fhir.tw"
* -> "DentalOrganization"
* identifier -> "機構的唯一識別碼: DentalOrganization.identifier"
* active -> "此機構的基本資料是否使用中: DentalOrganization.active"
* organizationType -> "機構種類: DentalOrganization.type"
* name -> "機構名稱: DentalOrganization.name"
* alias -> "機構別名: DentalOrganization.alias"
* telecom -> "機構的聯絡方式: DentalOrganization.telecom"
* address -> "機構的地址: DentalOrganization.address"
* partOf -> "上層機構: DentalOrganization.partOf"
* contact -> "機構的聯絡窗口: DentalOrganization.contact"
* contact.purpose -> "聯絡窗口的目的: DentalOrganization.contact.purpose"
* contact.name -> "聯絡窗口負責人姓名: DentalOrganization.contact.name"
* contact.telecom -> "聯絡窗口的聯絡方式: DentalOrganization.contact.telecom"
* contact.address -> "聯絡窗口的地址: DentalOrganization.contact.address"