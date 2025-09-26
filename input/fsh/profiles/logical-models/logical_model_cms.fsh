Logical: LTCCMSModel
Id: LTCCMSModel
Title: "照顧管理評估量表邏輯模型"
Description: "此邏輯模型以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以描述照顧管理評估量表的資料結構與欄位準備指引。"

* hospital 1..1  BackboneElement "醫事機構基本資料" "填寫評估的醫事機構相關資訊"
  * hospitalId 1..1  string "醫事機構代碼" "醫事機構的唯一識別碼"
  * hospitalName 1..1  string "醫事機構名稱" "醫事機構的正式名稱"
  * address 1..1  string "醫事機構地址" "醫事機構的完整地址"
  * phone 0..1  string "醫事機構電話" "醫事機構的聯絡電話"
  * email 0..1  string "醫事機構電子郵件" "醫事機構的電子郵件地址"

* patient 1..1  BackboneElement "個案基本資料" "接受評估的個案相關資訊"
  * patientId 1..1  string "個案身分證字號" "個案的身分證字號"
  * name 1..1  string "個案姓名" "個案的姓名"
  * birthDate 1..1  date "個案出生日期" "個案的出生日期"
  * gender 1..1  code "個案性別" "個案的性別"
  * address 1..1  string "個案居住地址" "個案的居住地址"
  * phone 0..1  string "個案聯絡電話" "個案的聯絡電話"
  * disabilityStatus 1..1  boolean "是否領有身心障礙手冊" "個案是否領有身心障礙手冊"
  * disabilityType 0..*  string "身心障礙類別" "個案的身心障礙類別"
  * disabilityCode 0..*  string "身心障礙疾病代碼" "身心障礙的ICD-10疾病代碼"

* relatedPerson 1..1  BackboneElement "照顧者基本資料" "個案照顧者相關資訊"
  * primaryCaregiver 1..1  BackboneElement "主要照顧者" "個案的主要照顧者資訊"
    * name 1..1  string "主要照顧者姓名" "主要照顧者的姓名"
    * relationship 1..1  string "與個案關係" "主要照顧者與個案的關係"
    * phone 0..1  string "主要照顧者聯絡電話" "主要照顧者的聯絡電話"
    * disabilityStatus 1..1  boolean "是否持有身心障礙手冊" "主要照顧者是否持有身心障礙手冊"
  * secondaryCaregiver 0..1  BackboneElement "次要照顧者" "個案的次要照顧者資訊"
    * name 0..1  string "次要照顧者姓名" "次要照顧者的姓名"
    * relationship 0..1  string "與個案關係" "次要照顧者與個案的關係"

* assessment 1..1  BackboneElement "評估量表內容" "各項評估量表的評分結果"
  * communication 1..1  BackboneElement "個案溝通能力評估" "個案溝通能力的評估結果"
    * understanding 1..1  integer "理解能力評分" "個案理解能力的評分"
    * expression 1..1  integer "表達能力評分" "個案表達能力的評分"
    * hearing 1..1  integer "聽力狀況評分" "個案聽力狀況的評分"
    * vision 1..1  integer "視力狀況評分" "個案視力狀況的評分"
  
  * memory 1..1  BackboneElement "個案短期記憶力評估" "個案短期記憶力的評估結果"
    * orientation 1..1  integer "定向感評分" "個案定向感的評分"
    * recall 1..1  integer "記憶力評分" "個案記憶力的評分"
    * attention 1..1  integer "注意力評分" "個案注意力的評分"
  
  * adl 1..1  BackboneElement "個案日常活動功能量表" "個案基本日常活動能力的評估"
    * bathing 1..1  integer "洗澡能力評分" "個案洗澡能力的評分"
    * dressing 1..1  integer "穿衣能力評分" "個案穿衣能力的評分"
    * toileting 1..1  integer "如廁能力評分" "個案如廁能力的評分"
    * transferring 1..1  integer "移位能力評分" "個案移位能力的評分"
    * continence 1..1  integer "大小便控制能力評分" "個案大小便控制能力的評分"
    * feeding 1..1  integer "進食能力評分" "個案進食能力的評分"
  
  * iadl 1..1  BackboneElement "個案工具性日常活動功能量表" "個案工具性日常活動能力的評估"
    * telephone 1..1  integer "使用電話能力評分" "個案使用電話能力的評分"
    * shopping 1..1  integer "購物能力評分" "個案購物能力的評分"
    * cooking 1..1  integer "烹飪能力評分" "個案烹飪能力的評分"
    * housekeeping 1..1  integer "家務能力評分" "個案家務能力的評分"
    * laundry 1..1  integer "洗衣能力評分" "個案洗衣能力的評分"
    * transportation 1..1  integer "交通能力評分" "個案交通能力的評分"
    * medication 1..1  integer "服藥管理能力評分" "個案服藥管理能力的評分"
    * finances 1..1  integer "財務管理能力評分" "個案財務管理能力的評分"
  
  * specialCare 1..1  BackboneElement "特殊複雜照護需要評估" "個案特殊照護需求的評估"
    * tubeFeeding 1..1  boolean "管灌餵食需求" "個案是否需要管灌餵食"
    * oxygenTherapy 1..1  boolean "氧氣治療需求" "個案是否需要氧氣治療"
    * woundCare 1..1  boolean "傷口照護需求" "個案是否需要傷口照護"
    * catheter 1..1  boolean "導尿管照護需求" "個案是否需要導尿管照護"
    * tracheostomy 1..1  boolean "氣切照護需求" "個案是否需要氣切照護"
  
  * society 1..1  BackboneElement "居家環境與社會參與評估" "個案居家環境與社會參與的評估"
    * homeEnvironment 1..1  string "居家環境評估" "個案居家環境的評估結果"
    * socialParticipation 1..1  string "社會參與評估" "個案社會參與的評估結果"
    * communityResources 1..1  string "社區資源使用評估" "個案社區資源使用的評估結果"
  
  * mental 1..1  BackboneElement "情緒及行為型態評估" "個案情緒及行為的評估"
    * mood 1..1  string "情緒狀態評估" "個案情緒狀態的評估結果"
    * behavior 1..1  string "行為模式評估" "個案行為模式的評估結果"
    * cognitive 1..1  string "認知功能評估" "個案認知功能的評估結果"
  
  * caregiverLoad 1..1  BackboneElement "主要照護者負荷評估" "主要照護者負荷的評估"
    * physicalLoad 1..1  string "身體負荷評估" "主要照護者身體負荷的評估"
    * emotionalLoad 1..1  string "情緒負荷評估" "主要照護者情緒負荷的評估"
    * socialLoad 1..1  string "社交負荷評估" "主要照護者社交負荷的評估"
    * financialLoad 1..1  string "經濟負荷評估" "主要照護者經濟負荷的評估"
  
  * caregiverSupport 1..1  BackboneElement "主要照護者工作與支持評估" "主要照護者工作與支持的評估"
    * workStatus 1..1  string "工作狀況" "主要照護者的工作狀況"
    * supportNetwork 1..1  string "支持網絡評估" "主要照護者支持網絡的評估"
    * respiteCare 1..1  string "喘息服務需求評估" "主要照護者喘息服務需求的評估"

* assessmentDate 1..1  date "評估日期" "進行評估的日期"
* assessor 1..1  BackboneElement "評估人員" "執行評估的人員資訊"
  * name 1..1  string "評估人員姓名" "評估人員的姓名"
  * license 1..1  string "評估人員證照號碼" "評估人員的證照號碼"
  * organization 1..1  string "評估機構" "評估人員所屬的機構"

// Example
Instance: ltc-cms-model-example
InstanceOf: LTCCMSModel
Title: "照顧管理評估量表邏輯模型範例"
Description: "一個照顧管理評估量表邏輯模型的範例，展示如何準備欄位資料"
Usage: #example

* hospital.hospitalId = "1234567890"
* hospital.hospitalName = "台北市立聯合醫院"
* hospital.address = "台北市大同區鄭州路145號"
* hospital.phone = "02-2555-3000"
* hospital.email = "info@tpech.gov.tw"

* patient.patientId = "A123456789"
* patient.name = "陳明慧"
* patient.birthDate = "1955-03-15"
* patient.gender = #female
* patient.address = "台北市大同區重慶北路三段22號"
* patient.phone = "0912-345-678"
* patient.disabilityStatus = true
* patient.disabilityType = "肢體障礙"
* patient.disabilityCode = "G81.9"

* relatedPerson.primaryCaregiver.name = "陳大明"
* relatedPerson.primaryCaregiver.relationship = "配偶"
* relatedPerson.primaryCaregiver.phone = "0912-345-679"
* relatedPerson.primaryCaregiver.disabilityStatus = false
* relatedPerson.secondaryCaregiver.name = "陳小華"
* relatedPerson.secondaryCaregiver.relationship = "子女"

* assessment.communication.understanding = 4
* assessment.communication.expression = 3
* assessment.communication.hearing = 2
* assessment.communication.vision = 3

* assessment.memory.orientation = 3
* assessment.memory.recall = 2
* assessment.memory.attention = 3

* assessment.adl.bathing = 2
* assessment.adl.dressing = 3
* assessment.adl.toileting = 2
* assessment.adl.transferring = 1
* assessment.adl.continence = 2
* assessment.adl.feeding = 3

* assessment.iadl.telephone = 1
* assessment.iadl.shopping = 1
* assessment.iadl.cooking = 1
* assessment.iadl.housekeeping = 1
* assessment.iadl.laundry = 1
* assessment.iadl.transportation = 1
* assessment.iadl.medication = 2
* assessment.iadl.finances = 1

* assessment.specialCare.tubeFeeding = false
* assessment.specialCare.oxygenTherapy = false
* assessment.specialCare.woundCare = true
* assessment.specialCare.catheter = false
* assessment.specialCare.tracheostomy = false

* assessment.society.homeEnvironment = "良好"
* assessment.society.socialParticipation = "有限"
* assessment.society.communityResources = "部分使用"

* assessment.mental.mood = "穩定"
* assessment.mental.behavior = "合作"
* assessment.mental.cognitive = "輕度認知障礙"

* assessment.caregiverLoad.physicalLoad = "中度"
* assessment.caregiverLoad.emotionalLoad = "中度"
* assessment.caregiverLoad.socialLoad = "輕度"
* assessment.caregiverLoad.financialLoad = "輕度"

* assessment.caregiverSupport.workStatus = "全職工作"
* assessment.caregiverSupport.supportNetwork = "有限"
* assessment.caregiverSupport.respiteCare = "需要"

* assessmentDate = "2024-01-15"
* assessor.name = "李護理師"
* assessor.license = "N123456789"
* assessor.organization = "台北市立聯合醫院"