Logical: LTCRferralModel
Id: LTCRferralModel
Title: "長期照顧管理中心個案服務初篩表/轉介單邏輯模型"
Description: "此邏輯模型以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以描述轉介單的資料結構與欄位準備指引。

注意：各縣市轉介單格式可能有所不同，此邏輯模型將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。"

* patient 1..1  BackboneElement "個案基本資料" "接受轉介的個案相關資訊"
  * patientId 1..1  string "個案身分證字號" "個案的身分證字號"
  * name 1..1  string "個案姓名" "個案的姓名"
  * birthDate 1..1  date "個案出生日期" "個案的出生日期"
  * gender 1..1  code "個案性別" "個案的性別"
  * address 1..1  string "個案居住地址" "個案的居住地址"
  * phone 0..1  string "個案聯絡電話" "個案的聯絡電話"
  * emergencyContact 1..1  BackboneElement "緊急聯絡人" "個案的緊急聯絡人資訊"
    * name 1..1  string "緊急聯絡人姓名" "緊急聯絡人的姓名"
    * relationship 1..1  string "與個案關係" "緊急聯絡人與個案的關係"
    * phone 1..1  string "緊急聯絡人電話" "緊急聯絡人的聯絡電話"

* disability 1..1  BackboneElement "身心障礙手冊" "個案身心障礙手冊相關資訊"
  * hasDisabilityCard 1..1  boolean "是否領有身心障礙手冊" "個案是否領有身心障礙手冊"
  * disabilityType 0..*  string "身心障礙類別" "個案的身心障礙類別"
  * disabilityCode 0..*  string "身心障礙疾病代碼" "身心障礙的ICD-10疾病代碼"
  * disabilityLevel 0..*  string "身心障礙等級" "個案的身心障礙等級"

* medicalConditions 1..1  BackboneElement "醫療狀況" "個案醫療相關狀況"
  * tubeStatus 1..1  BackboneElement "管路狀況" "個案管路相關狀況"
    * hasTube 1..1  boolean "是否有管路" "個案是否有管路"
    * tubeType 0..*  string "管路類型" "個案管路的類型"
  * crushStatus 1..1  BackboneElement "壓傷狀況" "個案壓傷相關狀況"
    * hasCrush 1..1  boolean "是否有壓傷" "個案是否有壓傷"
    * crushLocation 0..*  string "壓傷部位" "個案壓傷的部位"
    * crushStage 0..*  string "壓傷等級" "個案壓傷的等級"
    * crushSize 0..*  string "壓傷大小" "個案壓傷的大小"

* livingSituation 1..1  BackboneElement "居住狀況" "個案居住相關狀況"
  * residenceType 1..1  string "居住類型" "個案的居住類型"
  * livingAlone 1..1  boolean "是否獨居" "個案是否獨居"
  * housingCondition 1..1  string "居住環境狀況" "個案居住環境的狀況"
  * accessibility 1..1  string "無障礙設施" "個案居住環境的無障礙設施"

* caregiverSituation 1..1  BackboneElement "照顧者狀況" "個案照顧者相關狀況"
  * hasCaregiver 1..1  boolean "是否有照顧者" "個案是否有照顧者"
  * caregiverType 0..1  string "照顧者類型" "照顧者的類型"
  * caregiverNationality 0..1  string "照顧者國籍" "照顧者的國籍"
  * caregiverRelationship 0..1  string "照顧者與個案關係" "照顧者與個案的關係"
  * caregiverWorkStatus 0..1  string "照顧者工作狀況" "照顧者的工作狀況"

* medicalHistory 1..1  BackboneElement "疾病狀況" "個案疾病相關資訊"
  * primaryDiseases 1..*  BackboneElement "主要疾病" "個案的主要疾病"
    * diseaseName 1..1  string "疾病名稱" "疾病的名稱"
    * icd10Code 0..1  string "ICD-10 代碼" "疾病的ICD-10代碼"
    * diagnosisDate 0..1  date "診斷日期" "疾病的診斷日期"
    * currentStatus 0..1  string "目前狀況" "疾病目前的狀況"

* needsAndProblems 1..1  BackboneElement "案主(家)主要問題及需求" "個案及家庭的主要問題與需求"
  * primaryProblems 1..*  BackboneElement "主要問題" "個案及家庭的主要問題"
    * problemDescription 1..1  string "問題描述" "問題的詳細描述"
    * problemCategory 1..1  string "問題類別" "問題的類別"
  * careNeeds 1..*  BackboneElement "照護需求" "個案的照護需求"
    * needDescription 1..1  string "需求描述" "需求的詳細描述"
    * needPriority 1..1  string "需求優先級" "需求的優先級"

* requestedServices 1..*  BackboneElement "欲申請服務之種類" "個案欲申請的服務"
  * serviceType 1..1  string "服務類型" "申請的服務類型"
  * serviceDescription 1..1  string "服務描述" "服務的詳細描述"
  * serviceFrequency 0..1  string "服務頻率" "服務的頻率"
  * serviceDuration 0..1  string "服務期間" "服務的期間"

* functionalAssessment 1..1  BackboneElement "功能評估" "個案功能相關評估"
  * adlAssessment 1..1  BackboneElement "ADL 失能項目評估" "個案基本日常活動能力評估"
    * bathing 1..1  string "洗澡能力" "個案洗澡能力的評估"
    * dressing 1..1  string "穿衣能力" "個案穿衣能力的評估"
    * toileting 1..1  string "如廁能力" "個案如廁能力的評估"
    * transferring 1..1  string "移位能力" "個案移位能力的評估"
    * continence 1..1  string "大小便控制能力" "個案大小便控制能力的評估"
    * feeding 1..1  string "進食能力" "個案進食能力的評估"
  
  * iadlAssessment 1..1  BackboneElement "IADL 失能項目評估" "個案工具性日常活動能力評估"
    * telephone 1..1  string "使用電話能力" "個案使用電話能力的評估"
    * shopping 1..1  string "購物能力" "個案購物能力的評估"
    * cooking 1..1  string "烹飪能力" "個案烹飪能力的評估"
    * housekeeping 1..1  string "家務能力" "個案家務能力的評估"
    * laundry 1..1  string "洗衣能力" "個案洗衣能力的評估"
    * transportation 1..1  string "交通能力" "個案交通能力的評估"
    * medication 1..1  string "服藥管理能力" "個案服藥管理能力的評估"
    * finances 1..1  string "財務管理能力" "個案財務管理能力的評估"
  
  * sofAssessment 1..1  BackboneElement "長者衰弱評估" "個案衰弱相關評估"
    * weightLoss 1..1  boolean "體重減輕" "個案是否有體重減輕"
    * exhaustion 1..1  boolean "疲憊感" "個案是否有疲憊感"
    * weakness 1..1  boolean "握力" "個案握力是否減弱"
    * slowWalking 1..1  boolean "行走速度" "個案行走速度是否變慢"
    * lowActivity 1..1  boolean "活動量" "個案活動量是否降低"
  
  * caregiverAssessment 1..1  BackboneElement "照顧者評估" "個案照顧者相關評估"
    * caregiverName 1..1  string "照顧者姓名" "照顧者的姓名"
    * caregiverRelationship 1..1  string "與個案關係" "照顧者與個案的關係"
    * caregiverAge 0..1  string "照顧者年齡" "照顧者的年齡"
    * caregiverHealth 1..1  string "照顧者健康狀況" "照顧者的健康狀況"
    * caregiverWorkStatus 1..1  string "照顧者工作狀況" "照顧者的工作狀況"
    * caregiverSupport 1..1  string "照顧者支持系統" "照顧者的支持系統"

* hospitalizationInfo 1..1  BackboneElement "出入院情形" "個案出入院相關資訊"
  * admissionStatus 1..1  string "住院狀態" "個案的住院狀態"
  * admissionDate 0..1  date "入院日期" "個案的入院日期"
  * dischargeDate 0..1  date "出院日期" "個案的出院日期"
  * hospitalName 0..1  string "醫院名稱" "個案就診的醫院名稱"
  * department 0..1  string "科別" "個案就診的科別"

* referralInfo 1..1  BackboneElement "轉介資訊" "轉介相關資訊"
  * referrerName 1..1  string "填表者/轉介者姓名" "填表者或轉介者的姓名"
  * referrerTitle 1..1  string "填表者/轉介者職稱" "填表者或轉介者的職稱"
  * referrerLicense 0..1  string "填表者/轉介者證照號碼" "填表者或轉介者的證照號碼"
  * referrerPhone 0..1  string "填表者/轉介者電話" "填表者或轉介者的電話"
  * referrerSignature 1..1  string "填表者/轉介者簽名" "填表者或轉介者的簽名"

* organizationInfo 1..1  BackboneElement "填表單位資訊" "填表單位相關資訊"
  * organizationName 1..1  string "填表單位名稱" "填表單位的名稱"
  * organizationAddress 1..1  string "填表單位地址" "填表單位的地址"
  * organizationPhone 1..1  string "填表單位電話" "填表單位的電話"
  * organizationContact 1..1  string "填表單位聯絡人" "填表單位的聯絡人"

* submissionDate 1..1  date "轉介單提交日期" "轉介單提交的日期"

// Example
Instance: ltc-referral-model-example
InstanceOf: LTCRferralModel
Title: "轉介單邏輯模型範例"
Description: "一個轉介單邏輯模型的範例，展示如何準備欄位資料"
Usage: #example

* patient.patientId = "A123456789"
* patient.name = "陳明慧"
* patient.birthDate = "1955-03-15"
* patient.gender = #female
* patient.address = "台北市大同區重慶北路三段22號"
* patient.phone = "0912-345-678"
* patient.emergencyContact.name = "陳大明"
* patient.emergencyContact.relationship = "配偶"
* patient.emergencyContact.phone = "0912-345-679"

* disability.hasDisabilityCard = true
* disability.disabilityType = "肢體障礙"
* disability.disabilityCode = "G81.9"
* disability.disabilityLevel = "中度"

* medicalConditions.tubeStatus.hasTube = true
* medicalConditions.tubeStatus.tubeType = "鼻胃管"
* medicalConditions.crushStatus.hasCrush = true
* medicalConditions.crushStatus.crushLocation = "薦骨"
* medicalConditions.crushStatus.crushStage = "第二期"
* medicalConditions.crushStatus.crushSize = "3x4公分"

* livingSituation.residenceType = "自宅"
* livingSituation.livingAlone = false
* livingSituation.housingCondition = "良好"
* livingSituation.accessibility = "部分無障礙"

* caregiverSituation.hasCaregiver = true
* caregiverSituation.caregiverType = "家屬"
* caregiverSituation.caregiverNationality = "本國籍"
* caregiverSituation.caregiverRelationship = "配偶"
* caregiverSituation.caregiverWorkStatus = "退休"

* medicalHistory.primaryDiseases.diseaseName = "糖尿病"
* medicalHistory.primaryDiseases.icd10Code = "E11.9"
* medicalHistory.primaryDiseases.diagnosisDate = "2020-01-15"
* medicalHistory.primaryDiseases.currentStatus = "控制良好"

* needsAndProblems.primaryProblems.problemDescription = "行動不便，需要協助日常生活"
* needsAndProblems.primaryProblems.problemCategory = "功能障礙"
* needsAndProblems.careNeeds.needDescription = "居家服務、復健服務"
* needsAndProblems.careNeeds.needPriority = "高"

* requestedServices.serviceType = "居家服務"
* requestedServices.serviceDescription = "日常生活協助"
* requestedServices.serviceFrequency = "每週3次"
* requestedServices.serviceDuration = "6個月"

* functionalAssessment.adlAssessment.bathing = "需要協助"
* functionalAssessment.adlAssessment.dressing = "需要協助"
* functionalAssessment.adlAssessment.toileting = "需要協助"
* functionalAssessment.adlAssessment.transferring = "完全依賴"
* functionalAssessment.adlAssessment.continence = "需要協助"
* functionalAssessment.adlAssessment.feeding = "需要協助"

* functionalAssessment.iadlAssessment.telephone = "完全依賴"
* functionalAssessment.iadlAssessment.shopping = "完全依賴"
* functionalAssessment.iadlAssessment.cooking = "完全依賴"
* functionalAssessment.iadlAssessment.housekeeping = "完全依賴"
* functionalAssessment.iadlAssessment.laundry = "完全依賴"
* functionalAssessment.iadlAssessment.transportation = "完全依賴"
* functionalAssessment.iadlAssessment.medication = "需要協助"
* functionalAssessment.iadlAssessment.finances = "完全依賴"

* functionalAssessment.sofAssessment.weightLoss = true
* functionalAssessment.sofAssessment.exhaustion = true
* functionalAssessment.sofAssessment.weakness = true
* functionalAssessment.sofAssessment.slowWalking = true
* functionalAssessment.sofAssessment.lowActivity = true

* functionalAssessment.caregiverAssessment.caregiverName = "陳大明"
* functionalAssessment.caregiverAssessment.caregiverRelationship = "配偶"
* functionalAssessment.caregiverAssessment.caregiverAge = "65歲"
* functionalAssessment.caregiverAssessment.caregiverHealth = "良好"
* functionalAssessment.caregiverAssessment.caregiverWorkStatus = "退休"
* functionalAssessment.caregiverAssessment.caregiverSupport = "有限"

* hospitalizationInfo.admissionStatus = "門診"
* hospitalizationInfo.hospitalName = "台北市立聯合醫院"
* hospitalizationInfo.department = "復健科"

* referralInfo.referrerName = "李護理師"
* referralInfo.referrerTitle = "護理師"
* referralInfo.referrerLicense = "N123456789"
* referralInfo.referrerPhone = "02-2555-3000"
* referralInfo.referrerSignature = "李護理師"

* organizationInfo.organizationName = "台北市立聯合醫院"
* organizationInfo.organizationAddress = "台北市大同區鄭州路145號"
* organizationInfo.organizationPhone = "02-2555-3000"
* organizationInfo.organizationContact = "李護理師"

* submissionDate = "2024-01-20"