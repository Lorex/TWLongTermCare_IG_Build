Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore

Profile: LTCPractitioner
Title: "長期照顧－照顧服務提供者"
Parent: $TWCorePractitioner
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。"

* identifier 1..* MS
* identifier ^short = "照顧服務提供者的身分識別碼"
* name 1..* MS
* name ^short = "照顧服務提供者的姓名"