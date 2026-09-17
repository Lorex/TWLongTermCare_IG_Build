本頁列出居家護理 V5.0.16 來源欄位、邏輯模型與 FHIR 表單的逐欄對應。


### 個案基本資料

來源：規範印刷頁 1–13。

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `CaseSource` | `caseSource` | `item.where(linkId='CaseSource')` | 1..1 |
| `CaseSource.Value` | `caseSource.value` | `item.where(linkId='CaseSource').item.where(linkId='CaseSource.Value')` | 1..1 |
| `CaseSource.Other` | `caseSource.other` | `item.where(linkId='CaseSource').item.where(linkId='CaseSource.Other')` | 0..1 |
| `CaseName` | `caseName` | `item.where(linkId='CaseName')` | 1..1 |
| `Sex` | `sex` | `item.where(linkId='Sex')` | 1..1 |
| `Sex.Value` | `sex.value` | `item.where(linkId='Sex').item.where(linkId='Sex.Value')` | 1..1 |
| `Sex.Other` | `sex.other` | `item.where(linkId='Sex').item.where(linkId='Sex.Other')` | 0..1 |
| `CaseType` | `caseType` | `item.where(linkId='CaseType')` | 1..1 |
| `Birthdate` | `birthdate` | `item.where(linkId='Birthdate')` | 1..1 |
| `PhoneNumber` | `phoneNumber` | `item.where(linkId='PhoneNumber')` | 1..1 |
| `Address` | `address` | `item.where(linkId='Address')` | 1..1 |
| `Address.City` | `address.city` | `item.where(linkId='Address').item.where(linkId='Address.City')` | 1..1 |
| `Address.Area` | `address.area` | `item.where(linkId='Address').item.where(linkId='Address.Area')` | 1..1 |
| `Address.Lane` | `address.lane` | `item.where(linkId='Address').item.where(linkId='Address.Lane')` | 1..1 |
| `Education` | `education` | `item.where(linkId='Education')` | 1..1 |
| `Education.Value` | `education.value` | `item.where(linkId='Education').item.where(linkId='Education.Value')` | 1..1 |
| `Education.Other` | `education.other` | `item.where(linkId='Education').item.where(linkId='Education.Other')` | 0..1 |
| `Marriage` | `marriage` | `item.where(linkId='Marriage')` | 1..1 |
| `Marriage.Value` | `marriage.value` | `item.where(linkId='Marriage').item.where(linkId='Marriage.Value')` | 1..1 |
| `Marriage.Other` | `marriage.other` | `item.where(linkId='Marriage').item.where(linkId='Marriage.Other')` | 0..1 |
| `Religion` | `religion` | `item.where(linkId='Religion')` | 1..1 |
| `Religion.Value` | `religion.value` | `item.where(linkId='Religion').item.where(linkId='Religion.Value')` | 1..1 |
| `Religion.Other` | `religion.other` | `item.where(linkId='Religion').item.where(linkId='Religion.Other')` | 0..1 |
| `ExJob` | `exJob` | `item.where(linkId='ExJob')` | 1..1 |
| `ExJob.Value` | `exJob.value` | `item.where(linkId='ExJob').item.where(linkId='ExJob.Value')` | 1..1 |
| `ExJob.Other` | `exJob.other` | `item.where(linkId='ExJob').item.where(linkId='ExJob.Other')` | 0..1 |
| `Economic` | `economic` | `item.where(linkId='Economic')` | 1..1 |
| `Economic.Value` | `economic.value` | `item.where(linkId='Economic').item.where(linkId='Economic.Value')` | 1..1 |
| `Economic.Other` | `economic.other` | `item.where(linkId='Economic').item.where(linkId='Economic.Other')` | 0..1 |
| `HasWelfare` | `hasWelfare` | `item.where(linkId='HasWelfare')` | 1..1 |
| `Welfare` | `welfare` | `item.where(linkId='Welfare')` | 0..1 |
| `Welfare.Values` | `welfare.values` | `item.where(linkId='Welfare').item.where(linkId='Welfare.Values')` | 0..* |
| `Welfare.Other` | `welfare.other` | `item.where(linkId='Welfare').item.where(linkId='Welfare.Other')` | 0..1 |
| `Welfare.DisabilityType` | `welfare.disabilityType` | `item.where(linkId='Welfare').item.where(linkId='Welfare.DisabilityType')` | 0..1 |
| `CaregiverID` | `caregiverID` | `item.where(linkId='CaregiverID')` | 1..1 |
| `CaregiverName` | `caregiverName` | `item.where(linkId='CaregiverName')` | 1..1 |
| `CaregiverAddress` | `caregiverAddress` | `item.where(linkId='CaregiverAddress')` | 1..1 |
| `CaregiverAddress.City` | `caregiverAddress.city` | `item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.City')` | 1..1 |
| `CaregiverAddress.Area` | `caregiverAddress.area` | `item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.Area')` | 1..1 |
| `CaregiverAddress.Lane` | `caregiverAddress.lane` | `item.where(linkId='CaregiverAddress').item.where(linkId='CaregiverAddress.Lane')` | 1..1 |
| `CaregiverTel` | `caregiverTel` | `item.where(linkId='CaregiverTel')` | 1..1 |
| `EgyContactRelation` | `egyContactRelation` | `item.where(linkId='EgyContactRelation')` | 1..1 |
| `EgyContactName` | `egyContactName` | `item.where(linkId='EgyContactName')` | 1..1 |
| `EgyContactTel1` | `egyContactTel1` | `item.where(linkId='EgyContactTel1')` | 1..1 |
| `EgyContactTel2` | `egyContactTel2` | `item.where(linkId='EgyContactTel2')` | 0..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `DecisionMakerRelation` | `decisionMakerRelation` | `item.where(linkId='DecisionMakerRelation')` | 1..1 |
| `DecisionMakerRelation.Value` | `decisionMakerRelation.value` | `item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value')` | 1..1 |
| `DecisionMakerRelation.Other` | `decisionMakerRelation.other` | `item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Other')` | 0..1 |
| `MEvent` | `mEvent` | `item.where(linkId='MEvent')` | 1..1 |
| `MEventItem` | `mEventItem` | `item.where(linkId='MEventItem')` | 0..1 |
| `MEventItem.Values` | `mEventItem.values` | `item.where(linkId='MEventItem').item.where(linkId='MEventItem.Values')` | 0..* |
| `MEventItem.Other` | `mEventItem.other` | `item.where(linkId='MEventItem').item.where(linkId='MEventItem.Other')` | 0..1 |
| `CaseDesc` | `caseDesc` | `item.where(linkId='CaseDesc')` | 0..1 |
| `CreateID` | `createID` | `item.where(linkId='CreateID')` | 1..1 |
| `Medicals` | `medicals` | `item.where(linkId='Medicals')` | 0..* |
| `Medicals.Name` | `medicals.name` | `item.where(linkId='Medicals').item.where(linkId='Medicals.Name')` | 1..1 |
| `Medicals.CareDate` | `medicals.careDate` | `item.where(linkId='Medicals').item.where(linkId='Medicals.CareDate')` | 0..1 |
| `Medicals.IdNo` | `medicals.idNo` | `item.where(linkId='Medicals').item.where(linkId='Medicals.IdNo')` | 0..1 |
| `Medicals.JobTitle` | `medicals.jobTitle` | `item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle')` | 1..1 |
| `Medicals.JobTitle.Value` | `medicals.jobTitle.value` | `item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').item.where(linkId='Medicals.JobTitle.Value')` | 1..1 |
| `Medicals.JobTitle.Other` | `medicals.jobTitle.other` | `item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').item.where(linkId='Medicals.JobTitle.Other')` | 0..1 |
| `Medicals.Tel` | `medicals.tel` | `item.where(linkId='Medicals').item.where(linkId='Medicals.Tel')` | 1..1 |
| `Medicals.CareRemark` | `medicals.careRemark` | `item.where(linkId='Medicals').item.where(linkId='Medicals.CareRemark')` | 0..1 |
| `Relatives` | `relatives` | `item.where(linkId='Relatives')` | 0..* |
| `Relatives.Name` | `relatives.name` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Name')` | 1..1 |
| `Relatives.Relationship` | `relatives.relationship` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship')` | 1..1 |
| `Relatives.Relationship.Value` | `relatives.relationship.value` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').item.where(linkId='Relatives.Relationship.Value')` | 1..1 |
| `Relatives.Relationship.Other` | `relatives.relationship.other` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').item.where(linkId='Relatives.Relationship.Other')` | 0..1 |
| `Relatives.CareTime` | `relatives.careTime` | `item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime')` | 1..1 |
| `Relatives.CareTime.Value` | `relatives.careTime.value` | `item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').item.where(linkId='Relatives.CareTime.Value')` | 1..1 |
| `Relatives.CareTime.Other` | `relatives.careTime.other` | `item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').item.where(linkId='Relatives.CareTime.Other')` | 0..1 |
| `Relatives.Tel1` | `relatives.tel1` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1')` | 1..1 |
| `Relatives.Tel1.Value` | `relatives.tel1.value` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1').item.where(linkId='Relatives.Tel1.Value')` | 1..1 |
| `Relatives.Tel1.Remark` | `relatives.tel1.remark` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel1').item.where(linkId='Relatives.Tel1.Remark')` | 0..1 |
| `Relatives.Tel2` | `relatives.tel2` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2')` | 0..1 |
| `Relatives.Tel2.Value` | `relatives.tel2.value` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2').item.where(linkId='Relatives.Tel2.Value')` | 1..1 |
| `Relatives.Tel2.Remark` | `relatives.tel2.remark` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel2').item.where(linkId='Relatives.Tel2.Remark')` | 0..1 |
| `Relatives.Tel3` | `relatives.tel3` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3')` | 0..1 |
| `Relatives.Tel3.Value` | `relatives.tel3.value` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3').item.where(linkId='Relatives.Tel3.Value')` | 1..1 |
| `Relatives.Tel3.Remark` | `relatives.tel3.remark` | `item.where(linkId='Relatives').item.where(linkId='Relatives.Tel3').item.where(linkId='Relatives.Tel3.Remark')` | 0..1 |
| `Relatives.CareRemark` | `relatives.careRemark` | `item.where(linkId='Relatives').item.where(linkId='Relatives.CareRemark')` | 0..1 |
{: .grid .rwd-table}

### 健康紀錄評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `IsSmoking` | `isSmoking` | `item.where(linkId='IsSmoking')` | 1..1 |
| `IsAlcohol` | `isAlcohol` | `item.where(linkId='IsAlcohol')` | 1..1 |
| `IsBetelNut` | `isBetelNut` | `item.where(linkId='IsBetelNut')` | 1..1 |
| `QuitSmoking` | `quitSmoking` | `item.where(linkId='QuitSmoking')` | 0..1 |
| `BeforeSmoking` | `beforeSmoking` | `item.where(linkId='BeforeSmoking')` | 0..1 |
| `SmokingYear` | `smokingYear` | `item.where(linkId='SmokingYear')` | 0..1 |
| `QuitAlcohol` | `quitAlcohol` | `item.where(linkId='QuitAlcohol')` | 0..1 |
| `BeforequitAlcohol` | `beforequitAlcohol` | `item.where(linkId='BeforequitAlcohol')` | 0..1 |
| `AlcoholYear` | `alcoholYear` | `item.where(linkId='AlcoholYear')` | 0..1 |
| `QuitBetelNut` | `quitBetelNut` | `item.where(linkId='QuitBetelNut')` | 0..1 |
| `BeforequitBetelNut` | `beforequitBetelNut` | `item.where(linkId='BeforequitBetelNut')` | 0..1 |
| `BetelNutYear` | `betelNutYear` | `item.where(linkId='BetelNutYear')` | 0..1 |
| `IsAllergy` | `isAllergy` | `item.where(linkId='IsAllergy')` | 1..1 |
| `Allergy_Desc` | `allergyDesc` | `item.where(linkId='Allergy_Desc')` | 0..1 |
| `IsAllergyDrug` | `isAllergyDrug` | `item.where(linkId='IsAllergyDrug')` | 1..1 |
| `AllergyDrug_Desc` | `allergyDrugDesc` | `item.where(linkId='AllergyDrug_Desc')` | 0..1 |
| `Vaccination` | `vaccination` | `item.where(linkId='Vaccination')` | 1..1 |
| `Vaccination.Answer` | `vaccination.answer` | `item.where(linkId='Vaccination').item.where(linkId='Vaccination.Answer')` | 1..1 |
| `Vaccination.MultipleAnswer` | `vaccination.multipleAnswer` | `item.where(linkId='Vaccination').item.where(linkId='Vaccination.MultipleAnswer')` | 0..1 |
| `Vaccination.Other` | `vaccination.other` | `item.where(linkId='Vaccination').item.where(linkId='Vaccination.Other')` | 0..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 疾病史評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `AnsOther_1` | `ansOther1` | `item.where(linkId='AnsOther_1')` | 1..1 |
| `AnsOther_2` | `ansOther2` | `item.where(linkId='AnsOther_2')` | 0..1 |
| `MedicalHistoryQuestions` | `medicalHistoryQuestions` | `item.where(linkId='MedicalHistoryQuestions')` | 1..1 |
| `MedicalHistoryQuestions[Question='心臟問題(只包含心臟)']` | `medicalHistoryQuestions.q32e5fad7` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7')` | 1..1 |
| `MedicalHistoryQuestions[Question='心臟問題(只包含心臟)'].Answer` | `medicalHistoryQuestions.q32e5fad7.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7').item.where(linkId='MedicalHistoryQuestions.q32e5fad7.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='心臟問題(只包含心臟)'].Statement` | `medicalHistoryQuestions.q32e5fad7.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q32e5fad7').item.where(linkId='MedicalHistoryQuestions.q32e5fad7.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)']` | `medicalHistoryQuestions.qbeda0dd8` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8')` | 1..1 |
| `MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)'].Answer` | `medicalHistoryQuestions.qbeda0dd8.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='周邊血管系統問題(包括高血壓)'].Statement` | `medicalHistoryQuestions.qbeda0dd8.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8').item.where(linkId='MedicalHistoryQuestions.qbeda0dd8.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)']` | `medicalHistoryQuestions.q628b2adc` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc')` | 1..1 |
| `MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)'].Answer` | `medicalHistoryQuestions.q628b2adc.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc').item.where(linkId='MedicalHistoryQuestions.q628b2adc.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)'].Statement` | `medicalHistoryQuestions.q628b2adc.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q628b2adc').item.where(linkId='MedicalHistoryQuestions.q628b2adc.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)']` | `medicalHistoryQuestions.q7e61f4f9` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9')` | 1..1 |
| `MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)'].Answer` | `medicalHistoryQuestions.q7e61f4f9.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)'].Statement` | `medicalHistoryQuestions.q7e61f4f9.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9').item.where(linkId='MedicalHistoryQuestions.q7e61f4f9.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='眼耳鼻喉問題']` | `medicalHistoryQuestions.q958e3479` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479')` | 1..1 |
| `MedicalHistoryQuestions[Question='眼耳鼻喉問題'].Answer` | `medicalHistoryQuestions.q958e3479.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479').item.where(linkId='MedicalHistoryQuestions.q958e3479.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='眼耳鼻喉問題'].Statement` | `medicalHistoryQuestions.q958e3479.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q958e3479').item.where(linkId='MedicalHistoryQuestions.q958e3479.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)']` | `medicalHistoryQuestions.q5713fd48` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48')` | 1..1 |
| `MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)'].Answer` | `medicalHistoryQuestions.q5713fd48.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48').item.where(linkId='MedicalHistoryQuestions.q5713fd48.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='上消化道問題(食道、胃、十二指腸)'].Statement` | `medicalHistoryQuestions.q5713fd48.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q5713fd48').item.where(linkId='MedicalHistoryQuestions.q5713fd48.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)']` | `medicalHistoryQuestions.q486b7939` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939')` | 1..1 |
| `MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)'].Answer` | `medicalHistoryQuestions.q486b7939.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939').item.where(linkId='MedicalHistoryQuestions.q486b7939.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='下消化道問題(小腸、大腸、直腸)'].Statement` | `medicalHistoryQuestions.q486b7939.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q486b7939').item.where(linkId='MedicalHistoryQuestions.q486b7939.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='肝膽胰臟問題']` | `medicalHistoryQuestions.qb7ad0283` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283')` | 1..1 |
| `MedicalHistoryQuestions[Question='肝膽胰臟問題'].Answer` | `medicalHistoryQuestions.qb7ad0283.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283').item.where(linkId='MedicalHistoryQuestions.qb7ad0283.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='肝膽胰臟問題'].Statement` | `medicalHistoryQuestions.qb7ad0283.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qb7ad0283').item.where(linkId='MedicalHistoryQuestions.qb7ad0283.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='腎臟問題']` | `medicalHistoryQuestions.qc62d7017` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017')` | 1..1 |
| `MedicalHistoryQuestions[Question='腎臟問題'].Answer` | `medicalHistoryQuestions.qc62d7017.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017').item.where(linkId='MedicalHistoryQuestions.qc62d7017.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='腎臟問題'].Statement` | `medicalHistoryQuestions.qc62d7017.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qc62d7017').item.where(linkId='MedicalHistoryQuestions.qc62d7017.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)']` | `medicalHistoryQuestions.qa92ba1d3` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3')` | 1..1 |
| `MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)'].Answer` | `medicalHistoryQuestions.qa92ba1d3.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)'].Statement` | `medicalHistoryQuestions.qa92ba1d3.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3').item.where(linkId='MedicalHistoryQuestions.qa92ba1d3.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題']` | `medicalHistoryQuestions.q48138ed7` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7')` | 1..1 |
| `MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題'].Answer` | `medicalHistoryQuestions.q48138ed7.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7').item.where(linkId='MedicalHistoryQuestions.q48138ed7.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='肌肉骨骼皮膚問題'].Statement` | `medicalHistoryQuestions.q48138ed7.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q48138ed7').item.where(linkId='MedicalHistoryQuestions.q48138ed7.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)']` | `medicalHistoryQuestions.q24f8809f` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f')` | 1..1 |
| `MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)'].Answer` | `medicalHistoryQuestions.q24f8809f.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f').item.where(linkId='MedicalHistoryQuestions.q24f8809f.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)'].Statement` | `medicalHistoryQuestions.q24f8809f.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q24f8809f').item.where(linkId='MedicalHistoryQuestions.q24f8809f.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)']` | `medicalHistoryQuestions.qe34cc85c` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c')` | 1..1 |
| `MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)'].Answer` | `medicalHistoryQuestions.qe34cc85c.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c').item.where(linkId='MedicalHistoryQuestions.qe34cc85c.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)'].Statement` | `medicalHistoryQuestions.qe34cc85c.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.qe34cc85c').item.where(linkId='MedicalHistoryQuestions.qe34cc85c.Statement')` | 0..1 |
| `MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)']` | `medicalHistoryQuestions.q2c808271` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271')` | 1..1 |
| `MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)'].Answer` | `medicalHistoryQuestions.q2c808271.answer` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271').item.where(linkId='MedicalHistoryQuestions.q2c808271.Answer')` | 1..1 |
| `MedicalHistoryQuestions[Question='情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)'].Statement` | `medicalHistoryQuestions.q2c808271.statement` | `item.where(linkId='MedicalHistoryQuestions').item.where(linkId='MedicalHistoryQuestions.q2c808271').item.where(linkId='MedicalHistoryQuestions.q2c808271.Statement')` | 0..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 藥物安全性評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 0..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 0..1 |
| `Questions[Question='是否有長期使用藥物']` | `questions.q1b200653` | `item.where(linkId='Questions').item.where(linkId='Questions.q1b200653')` | 0..1 |
| `Questions[Question='是否有長期使用藥物'].Answer` | `questions.q1b200653.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q1b200653').item.where(linkId='Questions.q1b200653.Answer')` | 1..1 |
| `Questions[Question='是否有長期使用藥物'].Statement1` | `questions.q1b200653.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.q1b200653').item.where(linkId='Questions.q1b200653.Statement1')` | 0..1 |
| `Questions[Question='目前使用中的藥物種類']` | `questions.qb5202c4c` | `item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c')` | 0..1 |
| `Questions[Question='目前使用中的藥物種類'].Answer` | `questions.qb5202c4c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c').item.where(linkId='Questions.qb5202c4c.Answer')` | 1..1 |
| `Questions[Question='目前使用中的藥物種類'].Statement1` | `questions.qb5202c4c.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.qb5202c4c').item.where(linkId='Questions.qb5202c4c.Statement1')` | 0..1 |
| `Questions[Question='使用精神用藥']` | `questions.q023931ae` | `item.where(linkId='Questions').item.where(linkId='Questions.q023931ae')` | 0..1 |
| `Questions[Question='使用精神用藥'].Answer` | `questions.q023931ae.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q023931ae').item.where(linkId='Questions.q023931ae.Answer')` | 1..1 |
| `Questions[Question='使用精神用藥'].Statement1` | `questions.q023931ae.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.q023931ae').item.where(linkId='Questions.q023931ae.Statement1')` | 0..1 |
| `Questions[Question='使用止痛用藥']` | `questions.qc7a63c2d` | `item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d')` | 0..1 |
| `Questions[Question='使用止痛用藥'].Answer` | `questions.qc7a63c2d.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d').item.where(linkId='Questions.qc7a63c2d.Answer')` | 1..1 |
| `Questions[Question='使用止痛用藥'].Statement1` | `questions.qc7a63c2d.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.qc7a63c2d').item.where(linkId='Questions.qc7a63c2d.Statement1')` | 0..1 |
| `Questions[Question='是否存在多重用藥問題']` | `questions.q0482b7eb` | `item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb')` | 0..1 |
| `Questions[Question='是否存在多重用藥問題'].Answer` | `questions.q0482b7eb.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb').item.where(linkId='Questions.q0482b7eb.Answer')` | 1..1 |
| `Questions[Question='是否存在多重用藥問題'].Statement1` | `questions.q0482b7eb.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.q0482b7eb').item.where(linkId='Questions.q0482b7eb.Statement1')` | 0..1 |
| `Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)']` | `questions.qc67400fe` | `item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe')` | 0..1 |
| `Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)'].Answer` | `questions.qc67400fe.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe').item.where(linkId='Questions.qc67400fe.Answer')` | 1..1 |
| `Questions[Question='目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)'].Statement1` | `questions.qc67400fe.statement1` | `item.where(linkId='Questions').item.where(linkId='Questions.qc67400fe').item.where(linkId='Questions.qc67400fe.Statement1')` | 0..1 |
| `DrugInUses` | `drugInUses` | `item.where(linkId='DrugInUses')` | 0..* |
| `DrugInUses.Name` | `drugInUses.name` | `item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Name')` | 1..1 |
| `DrugInUses.Volume` | `drugInUses.volume` | `item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Volume')` | 1..1 |
| `DrugInUses.Frequency` | `drugInUses.frequency` | `item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Frequency')` | 1..1 |
| `DrugInUses.Purpose` | `drugInUses.purpose` | `item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Purpose')` | 1..1 |
| `DrugInUses.Remark` | `drugInUses.remark` | `item.where(linkId='DrugInUses').item.where(linkId='DrugInUses.Remark')` | 0..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 身體評估評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `BodyQuestions` | `bodyQuestions` | `item.where(linkId='BodyQuestions')` | 1..1 |
| `BodyQuestions[Question='睜眼']` | `bodyQuestions.q3d5455cd` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd')` | 1..1 |
| `BodyQuestions[Question='睜眼'].Answer` | `bodyQuestions.q3d5455cd.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.Answer')` | 1..1 |
| `BodyQuestions[Question='睜眼'].MultipleAnswer` | `bodyQuestions.q3d5455cd.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='睜眼'].Other` | `bodyQuestions.q3d5455cd.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.Other')` | 0..1 |
| `BodyQuestions[Question='語言']` | `bodyQuestions.q78be3cfc` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc')` | 1..1 |
| `BodyQuestions[Question='語言'].Answer` | `bodyQuestions.q78be3cfc.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.Answer')` | 1..1 |
| `BodyQuestions[Question='語言'].MultipleAnswer` | `bodyQuestions.q78be3cfc.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='語言'].Other` | `bodyQuestions.q78be3cfc.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.Other')` | 0..1 |
| `BodyQuestions[Question='運動']` | `bodyQuestions.qd5d3ea28` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28')` | 1..1 |
| `BodyQuestions[Question='運動'].Answer` | `bodyQuestions.qd5d3ea28.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.Answer')` | 1..1 |
| `BodyQuestions[Question='運動'].MultipleAnswer` | `bodyQuestions.qd5d3ea28.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='運動'].Other` | `bodyQuestions.qd5d3ea28.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.Other')` | 0..1 |
| `BodyQuestions[Question='視力']` | `bodyQuestions.q9999e6f5` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5')` | 1..1 |
| `BodyQuestions[Question='視力'].Answer` | `bodyQuestions.q9999e6f5.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.Answer')` | 1..1 |
| `BodyQuestions[Question='視力'].MultipleAnswer` | `bodyQuestions.q9999e6f5.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='視力'].Other` | `bodyQuestions.q9999e6f5.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.Other')` | 0..1 |
| `BodyQuestions[Question='視力-部位']` | `bodyQuestions.qcd3cc2c1` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1')` | 1..1 |
| `BodyQuestions[Question='視力-部位'].Answer` | `bodyQuestions.qcd3cc2c1.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.Answer')` | 0..1 |
| `BodyQuestions[Question='視力-部位'].MultipleAnswer` | `bodyQuestions.qcd3cc2c1.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='視力-部位'].Other` | `bodyQuestions.qcd3cc2c1.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.Other')` | 0..1 |
| `BodyQuestions[Question='視力-影響日常活動']` | `bodyQuestions.q99290406` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406')` | 1..1 |
| `BodyQuestions[Question='視力-影響日常活動'].Answer` | `bodyQuestions.q99290406.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.Answer')` | 1..1 |
| `BodyQuestions[Question='視力-影響日常活動'].MultipleAnswer` | `bodyQuestions.q99290406.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='視力-影響日常活動'].Other` | `bodyQuestions.q99290406.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.Other')` | 0..1 |
| `BodyQuestions[Question='視力-輔具']` | `bodyQuestions.q24eedc1b` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b')` | 1..1 |
| `BodyQuestions[Question='視力-輔具'].Answer` | `bodyQuestions.q24eedc1b.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.Answer')` | 1..1 |
| `BodyQuestions[Question='視力-輔具'].MultipleAnswer` | `bodyQuestions.q24eedc1b.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='視力-輔具'].Other` | `bodyQuestions.q24eedc1b.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.Other')` | 0..1 |
| `BodyQuestions[Question='聽力']` | `bodyQuestions.q6215056f` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f')` | 1..1 |
| `BodyQuestions[Question='聽力'].Answer` | `bodyQuestions.q6215056f.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.Answer')` | 1..1 |
| `BodyQuestions[Question='聽力'].MultipleAnswer` | `bodyQuestions.q6215056f.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='聽力'].Other` | `bodyQuestions.q6215056f.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.Other')` | 0..1 |
| `BodyQuestions[Question='聽力-部位']` | `bodyQuestions.q1678a5f1` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1')` | 1..1 |
| `BodyQuestions[Question='聽力-部位'].Answer` | `bodyQuestions.q1678a5f1.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.Answer')` | 0..1 |
| `BodyQuestions[Question='聽力-部位'].MultipleAnswer` | `bodyQuestions.q1678a5f1.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='聽力-部位'].Other` | `bodyQuestions.q1678a5f1.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.Other')` | 0..1 |
| `BodyQuestions[Question='聽力-影響日常活動']` | `bodyQuestions.q93005aaa` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa')` | 1..1 |
| `BodyQuestions[Question='聽力-影響日常活動'].Answer` | `bodyQuestions.q93005aaa.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.Answer')` | 1..1 |
| `BodyQuestions[Question='聽力-影響日常活動'].MultipleAnswer` | `bodyQuestions.q93005aaa.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='聽力-影響日常活動'].Other` | `bodyQuestions.q93005aaa.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.Other')` | 0..1 |
| `BodyQuestions[Question='聽力-輔具']` | `bodyQuestions.q2386d883` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883')` | 1..1 |
| `BodyQuestions[Question='聽力-輔具'].Answer` | `bodyQuestions.q2386d883.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.Answer')` | 1..1 |
| `BodyQuestions[Question='聽力-輔具'].MultipleAnswer` | `bodyQuestions.q2386d883.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='聽力-輔具'].Other` | `bodyQuestions.q2386d883.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.Other')` | 0..1 |
| `BodyQuestions[Question='溝通']` | `bodyQuestions.q306e4676` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676')` | 1..1 |
| `BodyQuestions[Question='溝通'].Answer` | `bodyQuestions.q306e4676.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.Answer')` | 1..1 |
| `BodyQuestions[Question='溝通'].MultipleAnswer` | `bodyQuestions.q306e4676.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='溝通'].Other` | `bodyQuestions.q306e4676.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.Other')` | 0..1 |
| `BodyQuestions[Question='溝通-影響日常活動']` | `bodyQuestions.q63b2fbbe` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe')` | 1..1 |
| `BodyQuestions[Question='溝通-影響日常活動'].Answer` | `bodyQuestions.q63b2fbbe.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.Answer')` | 1..1 |
| `BodyQuestions[Question='溝通-影響日常活動'].MultipleAnswer` | `bodyQuestions.q63b2fbbe.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='溝通-影響日常活動'].Other` | `bodyQuestions.q63b2fbbe.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.Other')` | 0..1 |
| `BodyQuestions[Question='說話']` | `bodyQuestions.q3288f369` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369')` | 1..1 |
| `BodyQuestions[Question='說話'].Answer` | `bodyQuestions.q3288f369.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.Answer')` | 1..1 |
| `BodyQuestions[Question='說話'].MultipleAnswer` | `bodyQuestions.q3288f369.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='說話'].Other` | `bodyQuestions.q3288f369.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.Other')` | 0..1 |
| `BodyQuestions[Question='理解']` | `bodyQuestions.q14304745` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745')` | 1..1 |
| `BodyQuestions[Question='理解'].Answer` | `bodyQuestions.q14304745.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.Answer')` | 1..1 |
| `BodyQuestions[Question='理解'].MultipleAnswer` | `bodyQuestions.q14304745.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='理解'].Other` | `bodyQuestions.q14304745.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.Other')` | 0..1 |
| `BodyQuestions[Question='口腔外觀']` | `bodyQuestions.q7ca654d9` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9')` | 1..1 |
| `BodyQuestions[Question='口腔外觀'].Answer` | `bodyQuestions.q7ca654d9.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.Answer')` | 1..1 |
| `BodyQuestions[Question='口腔外觀'].MultipleAnswer` | `bodyQuestions.q7ca654d9.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='口腔外觀'].Other` | `bodyQuestions.q7ca654d9.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.Other')` | 0..1 |
| `BodyQuestions[Question='特殊進食']` | `bodyQuestions.q53fb7d09` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09')` | 1..1 |
| `BodyQuestions[Question='特殊進食'].Answer` | `bodyQuestions.q53fb7d09.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.Answer')` | 1..1 |
| `BodyQuestions[Question='特殊進食'].MultipleAnswer` | `bodyQuestions.q53fb7d09.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='特殊進食'].Other` | `bodyQuestions.q53fb7d09.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.Other')` | 0..1 |
| `BodyQuestions[Question='假牙狀況']` | `bodyQuestions.qfcd3bd60` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60')` | 1..1 |
| `BodyQuestions[Question='假牙狀況'].Answer` | `bodyQuestions.qfcd3bd60.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.Answer')` | 1..1 |
| `BodyQuestions[Question='假牙狀況'].MultipleAnswer` | `bodyQuestions.qfcd3bd60.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='假牙狀況'].Other` | `bodyQuestions.qfcd3bd60.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.Other')` | 0..1 |
| `BodyQuestions[Question='腹部狀態']` | `bodyQuestions.q7b3136eb` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb')` | 1..1 |
| `BodyQuestions[Question='腹部狀態'].Answer` | `bodyQuestions.q7b3136eb.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.Answer')` | 1..1 |
| `BodyQuestions[Question='腹部狀態'].MultipleAnswer` | `bodyQuestions.q7b3136eb.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='腹部狀態'].Other` | `bodyQuestions.q7b3136eb.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.Other')` | 0..1 |
| `BodyQuestions[Question='腸蠕動']` | `bodyQuestions.qc0a49d43` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43')` | 1..1 |
| `BodyQuestions[Question='腸蠕動'].Answer` | `bodyQuestions.qc0a49d43.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.Answer')` | 1..1 |
| `BodyQuestions[Question='腸蠕動'].MultipleAnswer` | `bodyQuestions.qc0a49d43.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='腸蠕動'].Other` | `bodyQuestions.qc0a49d43.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.Other')` | 0..1 |
| `BodyQuestions[Question='消化狀態']` | `bodyQuestions.qd49ab702` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702')` | 1..1 |
| `BodyQuestions[Question='消化狀態'].Answer` | `bodyQuestions.qd49ab702.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.Answer')` | 1..1 |
| `BodyQuestions[Question='消化狀態'].MultipleAnswer` | `bodyQuestions.qd49ab702.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='消化狀態'].Other` | `bodyQuestions.qd49ab702.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.Other')` | 0..1 |
| `BodyQuestions[Question='排便型態']` | `bodyQuestions.q1b2dc66c` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c')` | 1..1 |
| `BodyQuestions[Question='排便型態'].Answer` | `bodyQuestions.q1b2dc66c.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.Answer')` | 1..1 |
| `BodyQuestions[Question='排便型態'].MultipleAnswer` | `bodyQuestions.q1b2dc66c.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='排便型態'].Other` | `bodyQuestions.q1b2dc66c.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.Other')` | 0..1 |
| `BodyQuestions[Question='排便顏色']` | `bodyQuestions.qfaaaf47f` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f')` | 1..1 |
| `BodyQuestions[Question='排便顏色'].Answer` | `bodyQuestions.qfaaaf47f.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.Answer')` | 1..1 |
| `BodyQuestions[Question='排便顏色'].MultipleAnswer` | `bodyQuestions.qfaaaf47f.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='排便顏色'].Other` | `bodyQuestions.qfaaaf47f.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.Other')` | 0..1 |
| `BodyQuestions[Question='排便輔助']` | `bodyQuestions.qbfd21c82` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82')` | 1..1 |
| `BodyQuestions[Question='排便輔助'].Answer` | `bodyQuestions.qbfd21c82.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.Answer')` | 1..1 |
| `BodyQuestions[Question='排便輔助'].MultipleAnswer` | `bodyQuestions.qbfd21c82.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='排便輔助'].Other` | `bodyQuestions.qbfd21c82.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.Other')` | 0..1 |
| `BodyQuestions[Question='排尿型態']` | `bodyQuestions.q0cdace56` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56')` | 1..1 |
| `BodyQuestions[Question='排尿型態'].Answer` | `bodyQuestions.q0cdace56.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.Answer')` | 1..1 |
| `BodyQuestions[Question='排尿型態'].MultipleAnswer` | `bodyQuestions.q0cdace56.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='排尿型態'].Other` | `bodyQuestions.q0cdace56.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.Other')` | 0..1 |
| `BodyQuestions[Question='排尿顏色']` | `bodyQuestions.q3170f977` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977')` | 1..1 |
| `BodyQuestions[Question='排尿顏色'].Answer` | `bodyQuestions.q3170f977.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.Answer')` | 1..1 |
| `BodyQuestions[Question='排尿顏色'].MultipleAnswer` | `bodyQuestions.q3170f977.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='排尿顏色'].Other` | `bodyQuestions.q3170f977.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.Other')` | 0..1 |
| `BodyQuestions[Question='排尿輔助']` | `bodyQuestions.q1dddcc0f` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f')` | 1..1 |
| `BodyQuestions[Question='排尿輔助'].Answer` | `bodyQuestions.q1dddcc0f.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.Answer')` | 1..1 |
| `BodyQuestions[Question='排尿輔助'].MultipleAnswer` | `bodyQuestions.q1dddcc0f.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='排尿輔助'].Other` | `bodyQuestions.q1dddcc0f.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.Other')` | 0..1 |
| `BodyQuestions[Question='溫度']` | `bodyQuestions.q889a3f5d` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d')` | 1..1 |
| `BodyQuestions[Question='溫度'].Answer` | `bodyQuestions.q889a3f5d.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.Answer')` | 1..1 |
| `BodyQuestions[Question='溫度'].MultipleAnswer` | `bodyQuestions.q889a3f5d.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='溫度'].Other` | `bodyQuestions.q889a3f5d.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.Other')` | 0..1 |
| `BodyQuestions[Question='濕度']` | `bodyQuestions.qfbbbe51d` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d')` | 1..1 |
| `BodyQuestions[Question='濕度'].Answer` | `bodyQuestions.qfbbbe51d.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.Answer')` | 1..1 |
| `BodyQuestions[Question='濕度'].MultipleAnswer` | `bodyQuestions.qfbbbe51d.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='濕度'].Other` | `bodyQuestions.qfbbbe51d.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.Other')` | 0..1 |
| `BodyQuestions[Question='顏色']` | `bodyQuestions.q2edc1f98` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98')` | 1..1 |
| `BodyQuestions[Question='顏色'].Answer` | `bodyQuestions.q2edc1f98.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.Answer')` | 1..1 |
| `BodyQuestions[Question='顏色'].MultipleAnswer` | `bodyQuestions.q2edc1f98.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='顏色'].Other` | `bodyQuestions.q2edc1f98.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.Other')` | 0..1 |
| `BodyQuestions[Question='水腫級數']` | `bodyQuestions.q0aec089c` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c')` | 1..1 |
| `BodyQuestions[Question='水腫級數'].Answer` | `bodyQuestions.q0aec089c.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.Answer')` | 1..1 |
| `BodyQuestions[Question='水腫級數'].MultipleAnswer` | `bodyQuestions.q0aec089c.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='水腫級數'].Other` | `bodyQuestions.q0aec089c.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.Other')` | 0..1 |
| `BodyQuestions[Question='水腫等級']` | `bodyQuestions.q5b3534e0` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0')` | 1..1 |
| `BodyQuestions[Question='水腫等級'].Answer` | `bodyQuestions.q5b3534e0.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.Answer')` | 1..1 |
| `BodyQuestions[Question='水腫等級'].MultipleAnswer` | `bodyQuestions.q5b3534e0.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='水腫等級'].Other` | `bodyQuestions.q5b3534e0.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.Other')` | 0..1 |
| `BodyQuestions[Question='完整']` | `bodyQuestions.q6e6e5811` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811')` | 1..1 |
| `BodyQuestions[Question='完整'].Answer` | `bodyQuestions.q6e6e5811.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.Answer')` | 1..1 |
| `BodyQuestions[Question='完整'].MultipleAnswer` | `bodyQuestions.q6e6e5811.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='完整'].Other` | `bodyQuestions.q6e6e5811.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.Other')` | 0..1 |
| `BodyQuestions[Question='左上肢']` | `bodyQuestions.q4c713f60` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60')` | 1..1 |
| `BodyQuestions[Question='左上肢'].Answer` | `bodyQuestions.q4c713f60.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.Answer')` | 1..1 |
| `BodyQuestions[Question='左上肢'].MultipleAnswer` | `bodyQuestions.q4c713f60.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='左上肢'].Other` | `bodyQuestions.q4c713f60.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.Other')` | 0..1 |
| `BodyQuestions[Question='右上肢']` | `bodyQuestions.q43c26e48` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48')` | 1..1 |
| `BodyQuestions[Question='右上肢'].Answer` | `bodyQuestions.q43c26e48.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.Answer')` | 1..1 |
| `BodyQuestions[Question='右上肢'].MultipleAnswer` | `bodyQuestions.q43c26e48.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='右上肢'].Other` | `bodyQuestions.q43c26e48.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.Other')` | 0..1 |
| `BodyQuestions[Question='左下肢']` | `bodyQuestions.q9926c640` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640')` | 1..1 |
| `BodyQuestions[Question='左下肢'].Answer` | `bodyQuestions.q9926c640.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.Answer')` | 1..1 |
| `BodyQuestions[Question='左下肢'].MultipleAnswer` | `bodyQuestions.q9926c640.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='左下肢'].Other` | `bodyQuestions.q9926c640.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.Other')` | 0..1 |
| `BodyQuestions[Question='右下肢']` | `bodyQuestions.q3f44d138` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138')` | 1..1 |
| `BodyQuestions[Question='右下肢'].Answer` | `bodyQuestions.q3f44d138.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.Answer')` | 1..1 |
| `BodyQuestions[Question='右下肢'].MultipleAnswer` | `bodyQuestions.q3f44d138.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='右下肢'].Other` | `bodyQuestions.q3f44d138.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.Other')` | 0..1 |
| `BodyQuestions[Question='行動能力問題']` | `bodyQuestions.qcd675f81` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81')` | 1..1 |
| `BodyQuestions[Question='行動能力問題'].Answer` | `bodyQuestions.qcd675f81.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.Answer')` | 1..1 |
| `BodyQuestions[Question='行動能力問題'].MultipleAnswer` | `bodyQuestions.qcd675f81.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='行動能力問題'].Other` | `bodyQuestions.qcd675f81.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.Other')` | 0..1 |
| `BodyQuestions[Question='肌力-輔具']` | `bodyQuestions.q3adf788d` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d')` | 1..1 |
| `BodyQuestions[Question='肌力-輔具'].Answer` | `bodyQuestions.q3adf788d.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.Answer')` | 1..1 |
| `BodyQuestions[Question='肌力-輔具'].MultipleAnswer` | `bodyQuestions.q3adf788d.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='肌力-輔具'].Other` | `bodyQuestions.q3adf788d.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.Other')` | 0..1 |
| `BodyQuestions[Question='跌倒']` | `bodyQuestions.q4ce17519` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519')` | 1..1 |
| `BodyQuestions[Question='跌倒'].Answer` | `bodyQuestions.q4ce17519.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.Answer')` | 1..1 |
| `BodyQuestions[Question='跌倒'].MultipleAnswer` | `bodyQuestions.q4ce17519.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='跌倒'].Other` | `bodyQuestions.q4ce17519.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.Other')` | 0..1 |
| `BodyQuestions[Question='跌倒次數']` | `bodyQuestions.qcc99d785` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785')` | 1..1 |
| `BodyQuestions[Question='跌倒次數'].Answer` | `bodyQuestions.qcc99d785.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.Answer')` | 1..1 |
| `BodyQuestions[Question='跌倒次數'].MultipleAnswer` | `bodyQuestions.qcc99d785.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='跌倒次數'].Other` | `bodyQuestions.qcc99d785.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.Other')` | 0..1 |
| `BodyQuestions[Question='行為']` | `bodyQuestions.q1ea67d8d` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d')` | 1..1 |
| `BodyQuestions[Question='行為'].Answer` | `bodyQuestions.q1ea67d8d.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.Answer')` | 1..1 |
| `BodyQuestions[Question='行為'].MultipleAnswer` | `bodyQuestions.q1ea67d8d.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='行為'].Other` | `bodyQuestions.q1ea67d8d.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.Other')` | 0..1 |
| `BodyQuestions[Question='睡眠']` | `bodyQuestions.qca5f735b` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b')` | 1..1 |
| `BodyQuestions[Question='睡眠'].Answer` | `bodyQuestions.qca5f735b.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.Answer')` | 1..1 |
| `BodyQuestions[Question='睡眠'].MultipleAnswer` | `bodyQuestions.qca5f735b.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='睡眠'].Other` | `bodyQuestions.qca5f735b.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.Other')` | 0..1 |
| `BodyQuestions[Question='服用藥物']` | `bodyQuestions.qd8db9643` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643')` | 1..1 |
| `BodyQuestions[Question='服用藥物'].Answer` | `bodyQuestions.qd8db9643.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.Answer')` | 1..1 |
| `BodyQuestions[Question='服用藥物'].MultipleAnswer` | `bodyQuestions.qd8db9643.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='服用藥物'].Other` | `bodyQuestions.qd8db9643.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.Other')` | 0..1 |
| `BodyQuestions[Question='藥物類別']` | `bodyQuestions.q65b57fd8` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8')` | 1..1 |
| `BodyQuestions[Question='藥物類別'].Answer` | `bodyQuestions.q65b57fd8.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.Answer')` | 0..1 |
| `BodyQuestions[Question='藥物類別'].MultipleAnswer` | `bodyQuestions.q65b57fd8.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='藥物類別'].Other` | `bodyQuestions.q65b57fd8.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.Other')` | 0..1 |
| `BodyQuestions[Question='服用頻率']` | `bodyQuestions.q03fdb3f1` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1')` | 1..1 |
| `BodyQuestions[Question='服用頻率'].Answer` | `bodyQuestions.q03fdb3f1.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.Answer')` | 1..1 |
| `BodyQuestions[Question='服用頻率'].MultipleAnswer` | `bodyQuestions.q03fdb3f1.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='服用頻率'].Other` | `bodyQuestions.q03fdb3f1.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.Other')` | 0..1 |
| `BodyQuestions[Question='輔助器']` | `bodyQuestions.qd30f4212` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212')` | 1..1 |
| `BodyQuestions[Question='輔助器'].Answer` | `bodyQuestions.qd30f4212.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.Answer')` | 1..1 |
| `BodyQuestions[Question='輔助器'].MultipleAnswer` | `bodyQuestions.qd30f4212.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='輔助器'].Other` | `bodyQuestions.qd30f4212.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.Other')` | 0..1 |
| `BodyQuestions[Question='有輔助器']` | `bodyQuestions.q1355f181` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181')` | 1..1 |
| `BodyQuestions[Question='有輔助器'].Answer` | `bodyQuestions.q1355f181.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.Answer')` | 1..1 |
| `BodyQuestions[Question='有輔助器'].MultipleAnswer` | `bodyQuestions.q1355f181.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.MultipleAnswer')` | 0..* |
| `BodyQuestions[Question='有輔助器'].Other` | `bodyQuestions.q1355f181.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.Other')` | 0..1 |
| `BodyQuestions[Question='鼻導管']` | `bodyQuestions.q1c902f78` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78')` | 1..1 |
| `BodyQuestions[Question='鼻導管'].Answer` | `bodyQuestions.q1c902f78.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.Answer')` | 1..1 |
| `BodyQuestions[Question='鼻導管'].MultipleAnswer` | `bodyQuestions.q1c902f78.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='鼻導管'].Other` | `bodyQuestions.q1c902f78.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.Other')` | 0..1 |
| `BodyQuestions[Question='氧氣面罩']` | `bodyQuestions.q6772dc09` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09')` | 1..1 |
| `BodyQuestions[Question='氧氣面罩'].Answer` | `bodyQuestions.q6772dc09.answer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.Answer')` | 1..1 |
| `BodyQuestions[Question='氧氣面罩'].MultipleAnswer` | `bodyQuestions.q6772dc09.multipleAnswer` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.MultipleAnswer')` | 0..1 |
| `BodyQuestions[Question='氧氣面罩'].Other` | `bodyQuestions.q6772dc09.other` | `item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.Other')` | 0..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 壓力性損傷危險評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 1..1 |
| `Questions[Question='知覺感受']` | `questions.q77f132a8` | `item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8')` | 1..1 |
| `Questions[Question='知覺感受'].Answer` | `questions.q77f132a8.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8').item.where(linkId='Questions.q77f132a8.Answer')` | 1..1 |
| `Questions[Question='潮溼程度']` | `questions.qb093cea2` | `item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2')` | 1..1 |
| `Questions[Question='潮溼程度'].Answer` | `questions.qb093cea2.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2').item.where(linkId='Questions.qb093cea2.Answer')` | 1..1 |
| `Questions[Question='活動能力']` | `questions.qda68c82c` | `item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c')` | 1..1 |
| `Questions[Question='活動能力'].Answer` | `questions.qda68c82c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c').item.where(linkId='Questions.qda68c82c.Answer')` | 1..1 |
| `Questions[Question='移動能力']` | `questions.qb03d6393` | `item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393')` | 1..1 |
| `Questions[Question='移動能力'].Answer` | `questions.qb03d6393.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393').item.where(linkId='Questions.qb03d6393.Answer')` | 1..1 |
| `Questions[Question='營養攝取']` | `questions.q68dfbe5f` | `item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f')` | 1..1 |
| `Questions[Question='營養攝取'].Answer` | `questions.q68dfbe5f.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f').item.where(linkId='Questions.q68dfbe5f.Answer')` | 1..1 |
| `Questions[Question='摩擦力/剪力']` | `questions.q52107185` | `item.where(linkId='Questions').item.where(linkId='Questions.q52107185')` | 1..1 |
| `Questions[Question='摩擦力/剪力'].Answer` | `questions.q52107185.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q52107185').item.where(linkId='Questions.q52107185.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 跌倒危險性評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 1..1 |
| `Questions[Question='年紀65歲以上']` | `questions.q2f552b4a` | `item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a')` | 1..1 |
| `Questions[Question='年紀65歲以上'].Answer` | `questions.q2f552b4a.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Answer')` | 1..1 |
| `Questions[Question='年紀65歲以上'].Options` | `questions.q2f552b4a.options` | `item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Options')` | 0..1 |
| `Questions[Question='年紀65歲以上'].Other` | `questions.q2f552b4a.other` | `item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Other')` | 0..1 |
| `Questions[Question='過去一年內曾跌倒']` | `questions.q463dc41d` | `item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d')` | 1..1 |
| `Questions[Question='過去一年內曾跌倒'].Answer` | `questions.q463dc41d.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Answer')` | 1..1 |
| `Questions[Question='過去一年內曾跌倒'].Options` | `questions.q463dc41d.options` | `item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Options')` | 0..1 |
| `Questions[Question='過去一年內曾跌倒'].Other` | `questions.q463dc41d.other` | `item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Other')` | 0..1 |
| `Questions[Question='最近意識/認知出現異常']` | `questions.qd680c277` | `item.where(linkId='Questions').item.where(linkId='Questions.qd680c277')` | 1..1 |
| `Questions[Question='最近意識/認知出現異常'].Answer` | `questions.qd680c277.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Answer')` | 1..1 |
| `Questions[Question='最近意識/認知出現異常'].Options` | `questions.qd680c277.options` | `item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Options')` | 0..1 |
| `Questions[Question='最近意識/認知出現異常'].Other` | `questions.qd680c277.other` | `item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Other')` | 0..1 |
| `Questions[Question='活動功能異常']` | `questions.qc1c1fb2c` | `item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c')` | 1..1 |
| `Questions[Question='活動功能異常'].Answer` | `questions.qc1c1fb2c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Answer')` | 1..1 |
| `Questions[Question='活動功能異常'].Options` | `questions.qc1c1fb2c.options` | `item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Options')` | 0..1 |
| `Questions[Question='活動功能異常'].Other` | `questions.qc1c1fb2c.other` | `item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Other')` | 0..1 |
| `Questions[Question='體能虛弱']` | `questions.q603c2de9` | `item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9')` | 1..1 |
| `Questions[Question='體能虛弱'].Answer` | `questions.q603c2de9.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Answer')` | 1..1 |
| `Questions[Question='體能虛弱'].Options` | `questions.q603c2de9.options` | `item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Options')` | 0..1 |
| `Questions[Question='體能虛弱'].Other` | `questions.q603c2de9.other` | `item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Other')` | 0..1 |
| `Questions[Question='知覺障礙']` | `questions.qbf720dbc` | `item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc')` | 1..1 |
| `Questions[Question='知覺障礙'].Answer` | `questions.qbf720dbc.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Answer')` | 1..1 |
| `Questions[Question='知覺障礙'].Options` | `questions.qbf720dbc.options` | `item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Options')` | 0..1 |
| `Questions[Question='知覺障礙'].Other` | `questions.qbf720dbc.other` | `item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Other')` | 0..1 |
| `Questions[Question='暈眩/低血壓']` | `questions.q6fa60520` | `item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520')` | 1..1 |
| `Questions[Question='暈眩/低血壓'].Answer` | `questions.q6fa60520.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Answer')` | 1..1 |
| `Questions[Question='暈眩/低血壓'].Options` | `questions.q6fa60520.options` | `item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Options')` | 0..1 |
| `Questions[Question='暈眩/低血壓'].Other` | `questions.q6fa60520.other` | `item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Other')` | 0..1 |
| `Questions[Question='使用藥物']` | `questions.qe6e35ded` | `item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded')` | 1..1 |
| `Questions[Question='使用藥物'].Answer` | `questions.qe6e35ded.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Answer')` | 1..1 |
| `Questions[Question='使用藥物'].Options` | `questions.qe6e35ded.options` | `item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Options')` | 0..1 |
| `Questions[Question='使用藥物'].Other` | `questions.qe6e35ded.other` | `item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Other')` | 0..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 日常生活功能評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 1..1 |
| `Questions[Question='進食']` | `questions.q46787535` | `item.where(linkId='Questions').item.where(linkId='Questions.q46787535')` | 1..1 |
| `Questions[Question='進食'].Answer` | `questions.q46787535.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q46787535').item.where(linkId='Questions.q46787535.Answer')` | 1..1 |
| `Questions[Question='移位']` | `questions.q0bc7e44d` | `item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d')` | 1..1 |
| `Questions[Question='移位'].Answer` | `questions.q0bc7e44d.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d').item.where(linkId='Questions.q0bc7e44d.Answer')` | 1..1 |
| `Questions[Question='衛生']` | `questions.qb93b932f` | `item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f')` | 1..1 |
| `Questions[Question='衛生'].Answer` | `questions.qb93b932f.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f').item.where(linkId='Questions.qb93b932f.Answer')` | 1..1 |
| `Questions[Question='如廁']` | `questions.q96220a06` | `item.where(linkId='Questions').item.where(linkId='Questions.q96220a06')` | 1..1 |
| `Questions[Question='如廁'].Answer` | `questions.q96220a06.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q96220a06').item.where(linkId='Questions.q96220a06.Answer')` | 1..1 |
| `Questions[Question='洗澡']` | `questions.q92ee129c` | `item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c')` | 1..1 |
| `Questions[Question='洗澡'].Answer` | `questions.q92ee129c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c').item.where(linkId='Questions.q92ee129c.Answer')` | 1..1 |
| `Questions[Question='走動']` | `questions.qb8f96793` | `item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793')` | 1..1 |
| `Questions[Question='走動'].Answer` | `questions.qb8f96793.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793').item.where(linkId='Questions.qb8f96793.Answer')` | 1..1 |
| `Questions[Question='樓梯']` | `questions.q1cb17d5b` | `item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b')` | 1..1 |
| `Questions[Question='樓梯'].Answer` | `questions.q1cb17d5b.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b').item.where(linkId='Questions.q1cb17d5b.Answer')` | 1..1 |
| `Questions[Question='穿脫']` | `questions.qd949ce2d` | `item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d')` | 1..1 |
| `Questions[Question='穿脫'].Answer` | `questions.qd949ce2d.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d').item.where(linkId='Questions.qd949ce2d.Answer')` | 1..1 |
| `Questions[Question='大便']` | `questions.qfe7de24a` | `item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a')` | 1..1 |
| `Questions[Question='大便'].Answer` | `questions.qfe7de24a.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a').item.where(linkId='Questions.qfe7de24a.Answer')` | 1..1 |
| `Questions[Question='小便']` | `questions.q13cca4d4` | `item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4')` | 1..1 |
| `Questions[Question='小便'].Answer` | `questions.q13cca4d4.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4').item.where(linkId='Questions.q13cca4d4.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 工具性日常生活活動功能評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 1..1 |
| `Questions[Question='購物']` | `questions.q588e1a8f` | `item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f')` | 1..1 |
| `Questions[Question='購物'].Answer` | `questions.q588e1a8f.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f').item.where(linkId='Questions.q588e1a8f.Answer')` | 1..1 |
| `Questions[Question='家務']` | `questions.q1652b964` | `item.where(linkId='Questions').item.where(linkId='Questions.q1652b964')` | 1..1 |
| `Questions[Question='家務'].Answer` | `questions.q1652b964.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q1652b964').item.where(linkId='Questions.q1652b964.Answer')` | 1..1 |
| `Questions[Question='理財']` | `questions.qd5905863` | `item.where(linkId='Questions').item.where(linkId='Questions.qd5905863')` | 1..1 |
| `Questions[Question='理財'].Answer` | `questions.qd5905863.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qd5905863').item.where(linkId='Questions.qd5905863.Answer')` | 1..1 |
| `Questions[Question='備食']` | `questions.qdb0b2a30` | `item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30')` | 1..1 |
| `Questions[Question='備食'].Answer` | `questions.qdb0b2a30.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30').item.where(linkId='Questions.qdb0b2a30.Answer')` | 1..1 |
| `Questions[Question='交通']` | `questions.q578f5fe3` | `item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3')` | 1..1 |
| `Questions[Question='交通'].Answer` | `questions.q578f5fe3.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3').item.where(linkId='Questions.q578f5fe3.Answer')` | 1..1 |
| `Questions[Question='電話']` | `questions.q7177787c` | `item.where(linkId='Questions').item.where(linkId='Questions.q7177787c')` | 1..1 |
| `Questions[Question='電話'].Answer` | `questions.q7177787c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q7177787c').item.where(linkId='Questions.q7177787c.Answer')` | 1..1 |
| `Questions[Question='洗衣']` | `questions.qbd97434e` | `item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e')` | 1..1 |
| `Questions[Question='洗衣'].Answer` | `questions.qbd97434e.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e').item.where(linkId='Questions.qbd97434e.Answer')` | 1..1 |
| `Questions[Question='服藥']` | `questions.q62f790cc` | `item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc')` | 1..1 |
| `Questions[Question='服藥'].Answer` | `questions.q62f790cc.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc').item.where(linkId='Questions.q62f790cc.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 認知功能評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 0..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 0..1 |
| `Questions[Question='今天是幾年幾月幾日？__年__月__日']` | `questions.q48174716` | `item.where(linkId='Questions').item.where(linkId='Questions.q48174716')` | 0..1 |
| `Questions[Question='今天是幾年幾月幾日？__年__月__日'].Answer` | `questions.q48174716.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q48174716').item.where(linkId='Questions.q48174716.Answer')` | 1..1 |
| `Questions[Question='今天是星期幾？']` | `questions.qe97f506c` | `item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c')` | 0..1 |
| `Questions[Question='今天是星期幾？'].Answer` | `questions.qe97f506c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c').item.where(linkId='Questions.qe97f506c.Answer')` | 1..1 |
| `Questions[Question='這裡是什麼地方？']` | `questions.q6128d754` | `item.where(linkId='Questions').item.where(linkId='Questions.q6128d754')` | 0..1 |
| `Questions[Question='這裡是什麼地方？'].Answer` | `questions.q6128d754.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q6128d754').item.where(linkId='Questions.q6128d754.Answer')` | 1..1 |
| `Questions[Question='你的電話號碼是幾號？']` | `questions.qe0801d08` | `item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08')` | 0..1 |
| `Questions[Question='你的電話號碼是幾號？'].Answer` | `questions.qe0801d08.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08').item.where(linkId='Questions.qe0801d08.Answer')` | 1..1 |
| `Questions[Question='你住在什麼地方？']` | `questions.qd40595f2` | `item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2')` | 0..1 |
| `Questions[Question='你住在什麼地方？'].Answer` | `questions.qd40595f2.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2').item.where(linkId='Questions.qd40595f2.Answer')` | 1..1 |
| `Questions[Question='你幾歲了？']` | `questions.q1ddb5b1c` | `item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c')` | 0..1 |
| `Questions[Question='你幾歲了？'].Answer` | `questions.q1ddb5b1c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c').item.where(linkId='Questions.q1ddb5b1c.Answer')` | 1..1 |
| `Questions[Question='你的生日是哪一天？']` | `questions.q995c979b` | `item.where(linkId='Questions').item.where(linkId='Questions.q995c979b')` | 0..1 |
| `Questions[Question='你的生日是哪一天？'].Answer` | `questions.q995c979b.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q995c979b').item.where(linkId='Questions.q995c979b.Answer')` | 1..1 |
| `Questions[Question='現任總統是誰？']` | `questions.q6df0269a` | `item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a')` | 0..1 |
| `Questions[Question='現任總統是誰？'].Answer` | `questions.q6df0269a.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a').item.where(linkId='Questions.q6df0269a.Answer')` | 1..1 |
| `Questions[Question='前任總統是誰？']` | `questions.q8a8a8021` | `item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021')` | 0..1 |
| `Questions[Question='前任總統是誰？'].Answer` | `questions.q8a8a8021.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021').item.where(linkId='Questions.q8a8a8021.Answer')` | 1..1 |
| `Questions[Question='你媽媽叫什麼名字？']` | `questions.qb719d7b7` | `item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7')` | 0..1 |
| `Questions[Question='你媽媽叫什麼名字？'].Answer` | `questions.qb719d7b7.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7').item.where(linkId='Questions.qb719d7b7.Answer')` | 1..1 |
| `Questions[Question='從20 減3 開始算，一直減3 減下去。']` | `questions.q295d5a12` | `item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12')` | 0..1 |
| `Questions[Question='從20 減3 開始算，一直減3 減下去。'].Answer` | `questions.q295d5a12.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12').item.where(linkId='Questions.q295d5a12.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 情緒問題評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 0..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 0..1 |
| `Questions[Question='您對您的生活感到滿意嗎？']` | `questions.qb56906ac` | `item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac')` | 0..1 |
| `Questions[Question='您對您的生活感到滿意嗎？'].Answer` | `questions.qb56906ac.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac').item.where(linkId='Questions.qb56906ac.Answer')` | 1..1 |
| `Questions[Question='您是否常常感到厭煩？']` | `questions.qb6cee679` | `item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679')` | 0..1 |
| `Questions[Question='您是否常常感到厭煩？'].Answer` | `questions.qb6cee679.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679').item.where(linkId='Questions.qb6cee679.Answer')` | 1..1 |
| `Questions[Question='您是否常常感到無論做什麼都沒有用？']` | `questions.q887c5133` | `item.where(linkId='Questions').item.where(linkId='Questions.q887c5133')` | 0..1 |
| `Questions[Question='您是否常常感到無論做什麼都沒有用？'].Answer` | `questions.q887c5133.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q887c5133').item.where(linkId='Questions.q887c5133.Answer')` | 1..1 |
| `Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？']` | `questions.q4a2bd151` | `item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151')` | 0..1 |
| `Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？'].Answer` | `questions.q4a2bd151.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151').item.where(linkId='Questions.q4a2bd151.Answer')` | 1..1 |
| `Questions[Question='您是否感覺活得很沒有價值？']` | `questions.q14debc58` | `item.where(linkId='Questions').item.where(linkId='Questions.q14debc58')` | 0..1 |
| `Questions[Question='您是否感覺活得很沒有價值？'].Answer` | `questions.q14debc58.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q14debc58').item.where(linkId='Questions.q14debc58.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 簡易營養評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 1..1 |
| `Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？']` | `questions.q9eab1f0b` | `item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b')` | 1..1 |
| `Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？'].Answer` | `questions.q9eab1f0b.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b').item.where(linkId='Questions.q9eab1f0b.Answer')` | 1..1 |
| `Questions[Question='近三個月體重變化']` | `questions.qc9c61c04` | `item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04')` | 1..1 |
| `Questions[Question='近三個月體重變化'].Answer` | `questions.qc9c61c04.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04').item.where(linkId='Questions.qc9c61c04.Answer')` | 1..1 |
| `Questions[Question='行動力']` | `questions.qb3e55f55` | `item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55')` | 1..1 |
| `Questions[Question='行動力'].Answer` | `questions.qb3e55f55.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55').item.where(linkId='Questions.qb3e55f55.Answer')` | 1..1 |
| `Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？']` | `questions.q99f746cb` | `item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb')` | 1..1 |
| `Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？'].Answer` | `questions.q99f746cb.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb').item.where(linkId='Questions.q99f746cb.Answer')` | 1..1 |
| `Questions[Question='神經精神問題']` | `questions.qa4ab5839` | `item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839')` | 1..1 |
| `Questions[Question='神經精神問題'].Answer` | `questions.qa4ab5839.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839').item.where(linkId='Questions.qa4ab5839.Answer')` | 1..1 |
| `Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2']` | `questions.q6073598b` | `item.where(linkId='Questions').item.where(linkId='Questions.q6073598b')` | 1..1 |
| `Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2'].Answer` | `questions.q6073598b.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q6073598b').item.where(linkId='Questions.q6073598b.Answer')` | 1..1 |
| `Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)']` | `questions.qd38a556c` | `item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c')` | 1..1 |
| `Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)'].Answer` | `questions.qd38a556c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c').item.where(linkId='Questions.qd38a556c.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 疼痛評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 0..1 |
| `Scale` | `scale` | `item.where(linkId='Scale')` | 1..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 0..1 |
| `Questions[Question='部位']` | `questions.qc6065ee9` | `item.where(linkId='Questions').item.where(linkId='Questions.qc6065ee9')` | 0..1 |
| `Questions[Question='部位'].Answer` | `questions.qc6065ee9.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc6065ee9').item.where(linkId='Questions.qc6065ee9.Answer')` | 1..1 |
| `Questions[Question='分數']` | `questions.qabb84b45` | `item.where(linkId='Questions').item.where(linkId='Questions.qabb84b45')` | 0..1 |
| `Questions[Question='分數'].Answer` | `questions.qabb84b45.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qabb84b45').item.where(linkId='Questions.qabb84b45.Answer')` | 1..1 |
| `Questions[Question='時間']` | `questions.q09558b2c` | `item.where(linkId='Questions').item.where(linkId='Questions.q09558b2c')` | 0..1 |
| `Questions[Question='時間'].Answer` | `questions.q09558b2c.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q09558b2c').item.where(linkId='Questions.q09558b2c.Answer')` | 1..1 |
| `Questions[Question='性質']` | `questions.q62ecf378` | `item.where(linkId='Questions').item.where(linkId='Questions.q62ecf378')` | 0..1 |
| `Questions[Question='性質'].Answer` | `questions.q62ecf378.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q62ecf378').item.where(linkId='Questions.q62ecf378.Answer')` | 1..1 |
| `Questions[Question='備註']` | `questions.q3ae9ab7d` | `item.where(linkId='Questions').item.where(linkId='Questions.q3ae9ab7d')` | 0..1 |
| `Questions[Question='備註'].Answer` | `questions.q3ae9ab7d.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q3ae9ab7d').item.where(linkId='Questions.q3ae9ab7d.Answer')` | 1..1 |
| `QuestionsNot` | `questionsNot` | `item.where(linkId='QuestionsNot')` | 0..1 |
| `QuestionsNot[Question='呼吸型態']` | `questionsNot.qd14007fb` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qd14007fb')` | 0..1 |
| `QuestionsNot[Question='呼吸型態'].Answer` | `questionsNot.qd14007fb.answer` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qd14007fb').item.where(linkId='QuestionsNot.qd14007fb.Answer')` | 1..1 |
| `QuestionsNot[Question='不舒服、負向情緒的發聲']` | `questionsNot.qe42750dd` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qe42750dd')` | 0..1 |
| `QuestionsNot[Question='不舒服、負向情緒的發聲'].Answer` | `questionsNot.qe42750dd.answer` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qe42750dd').item.where(linkId='QuestionsNot.qe42750dd.Answer')` | 1..1 |
| `QuestionsNot[Question='臉部表情']` | `questionsNot.q3e683be4` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q3e683be4')` | 0..1 |
| `QuestionsNot[Question='臉部表情'].Answer` | `questionsNot.q3e683be4.answer` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q3e683be4').item.where(linkId='QuestionsNot.q3e683be4.Answer')` | 1..1 |
| `QuestionsNot[Question='肢體語言']` | `questionsNot.q463fccdc` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q463fccdc')` | 0..1 |
| `QuestionsNot[Question='肢體語言'].Answer` | `questionsNot.q463fccdc.answer` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q463fccdc').item.where(linkId='QuestionsNot.q463fccdc.Answer')` | 1..1 |
| `QuestionsNot[Question='可安撫程度']` | `questionsNot.q9f3bcfc5` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q9f3bcfc5')` | 0..1 |
| `QuestionsNot[Question='可安撫程度'].Answer` | `questionsNot.q9f3bcfc5.answer` | `item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q9f3bcfc5').item.where(linkId='QuestionsNot.q9f3bcfc5.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 衰弱評估

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 0..1 |
| `Questions` | `questions` | `item.where(linkId='Questions')` | 0..1 |
| `Questions[Question='體重減輕']` | `questions.q4e1023eb` | `item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb')` | 0..1 |
| `Questions[Question='體重減輕'].Answer` | `questions.q4e1023eb.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb').item.where(linkId='Questions.q4e1023eb.Answer')` | 1..1 |
| `Questions[Question='下肢功能']` | `questions.q7e60ea58` | `item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58')` | 0..1 |
| `Questions[Question='下肢功能'].Answer` | `questions.q7e60ea58.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58').item.where(linkId='Questions.q7e60ea58.Answer')` | 1..1 |
| `Questions[Question='活力降低']` | `questions.qc604ec89` | `item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89')` | 0..1 |
| `Questions[Question='活力降低'].Answer` | `questions.qc604ec89.answer` | `item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89').item.where(linkId='Questions.qc604ec89.Answer')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 需求摘要

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Summary` | `summary` | `item.where(linkId='Summary')` | 1..1 |
| `Summary.QuestionType` | `summary.questionType` | `item.where(linkId='Summary').item.where(linkId='Summary.QuestionType')` | 1..1 |
| `Summary.Question` | `summary.question` | `item.where(linkId='Summary').item.where(linkId='Summary.Question')` | 1..1 |
| `Summary.Answer` | `summary.answer` | `item.where(linkId='Summary').item.where(linkId='Summary.Answer')` | 1..1 |
{: .grid .rwd-table}

### 照護計畫目標

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `SummaryCreateDate` | `summaryCreateDate` | `item.where(linkId='SummaryCreateDate')` | 1..1 |
| `Summary` | `summary` | `item.where(linkId='Summary')` | 1..1 |
| `SummaryAnswer` | `summaryAnswer` | `item.where(linkId='SummaryAnswer')` | 1..1 |
| `TargetStatement` | `targetStatement` | `item.where(linkId='TargetStatement')` | 1..1 |
| `TargetCreateDate` | `targetCreateDate` | `item.where(linkId='TargetCreateDate')` | 1..1 |
| `TargetStatement2` | `targetStatement2` | `item.where(linkId='TargetStatement2')` | 0..1 |
| `EstimatedDate` | `estimatedDate` | `item.where(linkId='EstimatedDate')` | 1..1 |
| `IsMainTarget` | `isMainTarget` | `item.where(linkId='IsMainTarget')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
{: .grid .rwd-table}

### 照護計畫措施

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `SummaryCreateDate` | `summaryCreateDate` | `item.where(linkId='SummaryCreateDate')` | 1..1 |
| `Summary` | `summary` | `item.where(linkId='Summary')` | 1..1 |
| `SummaryAnswer` | `summaryAnswer` | `item.where(linkId='SummaryAnswer')` | 1..1 |
| `TargetStatement` | `targetStatement` | `item.where(linkId='TargetStatement')` | 1..1 |
| `MeasureCreateDate` | `measureCreateDate` | `item.where(linkId='MeasureCreateDate')` | 1..1 |
| `MeasureContent` | `measureContent` | `item.where(linkId='MeasureContent')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `MeasureStopDate` | `measureStopDate` | `item.where(linkId='MeasureStopDate')` | 0..1 |
| `MeasureStopContent` | `measureStopContent` | `item.where(linkId='MeasureStopContent')` | 0..1 |
| `MeasureStopNurseID` | `measureStopNurseID` | `item.where(linkId='MeasureStopNurseID')` | 0..1 |
{: .grid .rwd-table}

### 照護計畫評值紀錄

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `SummaryCreateDate` | `summaryCreateDate` | `item.where(linkId='SummaryCreateDate')` | 1..1 |
| `Summary` | `summary` | `item.where(linkId='Summary')` | 1..1 |
| `SummaryAnswer` | `summaryAnswer` | `item.where(linkId='SummaryAnswer')` | 1..1 |
| `TargetStatement` | `targetStatement` | `item.where(linkId='TargetStatement')` | 1..1 |
| `EvaluationDate` | `evaluationDate` | `item.where(linkId='EvaluationDate')` | 1..1 |
| `EvaluationContent` | `evaluationContent` | `item.where(linkId='EvaluationContent')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
{: .grid .rwd-table}

### 照護紀錄

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `NurseID` | `nurseID` | `item.where(linkId='NurseID')` | 1..1 |
| `Time` | `time` | `item.where(linkId='Time')` | 1..1 |
| `Time2` | `time2` | `item.where(linkId='Time2')` | 1..1 |
| `RecordSource` | `recordSource` | `item.where(linkId='RecordSource')` | 1..1 |
| `RecordSource.Value` | `recordSource.value` | `item.where(linkId='RecordSource').item.where(linkId='RecordSource.Value')` | 1..1 |
| `RecordSource.Other` | `recordSource.other` | `item.where(linkId='RecordSource').item.where(linkId='RecordSource.Other')` | 0..1 |
| `Height` | `height` | `item.where(linkId='Height')` | 0..1 |
| `Weight` | `weight` | `item.where(linkId='Weight')` | 0..1 |
| `BMI` | `bMI` | `item.where(linkId='BMI')` | 0..1 |
| `ArmW` | `armW` | `item.where(linkId='ArmW')` | 0..1 |
| `LegW` | `legW` | `item.where(linkId='LegW')` | 0..1 |
| `Live` | `live` | `item.where(linkId='Live')` | 1..1 |
| `Live.Value` | `live.value` | `item.where(linkId='Live').item.where(linkId='Live.Value')` | 1..1 |
| `Live.Other` | `live.other` | `item.where(linkId='Live').item.where(linkId='Live.Other')` | 0..1 |
| `LiveArea` | `liveArea` | `item.where(linkId='LiveArea')` | 1..1 |
| `LiveArea.City` | `liveArea.city` | `item.where(linkId='LiveArea').item.where(linkId='LiveArea.City')` | 1..1 |
| `LiveArea.Area` | `liveArea.area` | `item.where(linkId='LiveArea').item.where(linkId='LiveArea.Area')` | 1..1 |
| `UseResources` | `useResources` | `item.where(linkId='UseResources')` | 0..1 |
| `UseResources.Values` | `useResources.values` | `item.where(linkId='UseResources').item.where(linkId='UseResources.Values')` | 0..* |
| `UseResources.Other` | `useResources.other` | `item.where(linkId='UseResources').item.where(linkId='UseResources.Other')` | 0..1 |
| `ServiceItems` | `serviceItems` | `item.where(linkId='ServiceItems')` | 0..1 |
| `ServiceItems.Values` | `serviceItems.values` | `item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Values')` | 0..* |
| `ServiceItems.Other` | `serviceItems.other` | `item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Other')` | 0..1 |
| `IsUnplanned` | `isUnplanned` | `item.where(linkId='IsUnplanned')` | 1..1 |
| `Unplanned` | `unplanned` | `item.where(linkId='Unplanned')` | 0..1 |
| `Unplanned.Date` | `unplanned.date` | `item.where(linkId='Unplanned').item.where(linkId='Unplanned.Date')` | 1..1 |
| `Unplanned.Time` | `unplanned.time` | `item.where(linkId='Unplanned').item.where(linkId='Unplanned.Time')` | 1..1 |
| `Unplanned.Statement` | `unplanned.statement` | `item.where(linkId='Unplanned').item.where(linkId='Unplanned.Statement')` | 1..1 |
| `IsEmergency` | `isEmergency` | `item.where(linkId='IsEmergency')` | 1..1 |
| `Emergency` | `emergency` | `item.where(linkId='Emergency')` | 0..1 |
| `Emergency.Date` | `emergency.date` | `item.where(linkId='Emergency').item.where(linkId='Emergency.Date')` | 1..1 |
| `Emergency.Time` | `emergency.time` | `item.where(linkId='Emergency').item.where(linkId='Emergency.Time')` | 1..1 |
| `Emergency.Statement` | `emergency.statement` | `item.where(linkId='Emergency').item.where(linkId='Emergency.Statement')` | 1..1 |
| `IsSkinDamages` | `isSkinDamages` | `item.where(linkId='IsSkinDamages')` | 1..1 |
| `SkinDamages` | `skinDamages` | `item.where(linkId='SkinDamages')` | 0..* |
| `SkinDamages.Date` | `skinDamages.date` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Date')` | 1..1 |
| `SkinDamages.Time` | `skinDamages.time` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Time')` | 1..1 |
| `SkinDamages.Kind` | `skinDamages.kind` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind')` | 0..1 |
| `SkinDamages.Kind.Value` | `skinDamages.kind.value` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Value')` | 1..1 |
| `SkinDamages.Kind.Other` | `skinDamages.kind.other` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Other')` | 0..1 |
| `SkinDamages.Statement` | `skinDamages.statement` | `item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Statement')` | 1..1 |
| `IsEmergencyEvents` | `isEmergencyEvents` | `item.where(linkId='IsEmergencyEvents')` | 1..1 |
| `EmergencyEvents` | `emergencyEvents` | `item.where(linkId='EmergencyEvents')` | 0..* |
| `EmergencyEvents.EmergencyType` | `emergencyEvents.emergencyType` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType')` | 1..1 |
| `EmergencyEvents.EmergencyType.Value` | `emergencyEvents.emergencyType.value` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Value')` | 1..1 |
| `EmergencyEvents.EmergencyType.Other` | `emergencyEvents.emergencyType.other` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Other')` | 0..1 |
| `EmergencyEvents.Date` | `emergencyEvents.date` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Date')` | 1..1 |
| `EmergencyEvents.Time` | `emergencyEvents.time` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Time')` | 1..1 |
| `EmergencyEvents.Reason` | `emergencyEvents.reason` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Reason')` | 1..1 |
| `EmergencyEvents.Description` | `emergencyEvents.description` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Description')` | 1..1 |
| `EmergencyEvents.Process` | `emergencyEvents.process` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Process')` | 1..1 |
| `EmergencyEvents.Report` | `emergencyEvents.report` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Report')` | 1..1 |
| `EmergencyEvents.CreateID` | `emergencyEvents.createID` | `item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.CreateID')` | 1..1 |
| `VitalSign` | `vitalSign` | `item.where(linkId='VitalSign')` | 0..1 |
| `VitalSign.Date` | `vitalSign.date` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.Date')` | 1..1 |
| `VitalSign.Time` | `vitalSign.time` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.Time')` | 1..1 |
| `VitalSign.Temperature` | `vitalSign.temperature` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.Temperature')` | 1..1 |
| `VitalSign.Pulse` | `vitalSign.pulse` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.Pulse')` | 1..1 |
| `VitalSign.Respiration` | `vitalSign.respiration` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.Respiration')` | 1..1 |
| `VitalSign.BloodPressure1` | `vitalSign.bloodPressure1` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure1')` | 1..1 |
| `VitalSign.BloodPressure2` | `vitalSign.bloodPressure2` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure2')` | 1..1 |
| `VitalSign.BloodGlucose` | `vitalSign.bloodGlucose` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodGlucose')` | 0..1 |
| `VitalSign.BloodOxygen` | `vitalSign.bloodOxygen` | `item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodOxygen')` | 0..1 |
| `WoundRecords` | `woundRecords` | `item.where(linkId='WoundRecords')` | 0..* |
| `WoundRecords.Part` | `woundRecords.part` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Part')` | 1..1 |
| `WoundRecords.Length` | `woundRecords.length` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Length')` | 1..1 |
| `WoundRecords.Width` | `woundRecords.width` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Width')` | 1..1 |
| `WoundRecords.Depth` | `woundRecords.depth` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Depth')` | 1..1 |
| `WoundRecords.Category` | `woundRecords.category` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Category')` | 1..1 |
| `WoundRecords.Level` | `woundRecords.level` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Level')` | 1..1 |
| `WoundRecords.Statement` | `woundRecords.statement` | `item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Statement')` | 0..1 |
| `FJMEvaluation` | `fJMEvaluation` | `item.where(linkId='FJMEvaluation')` | 0..1 |
| `FJM` | `fJM` | `item.where(linkId='FJM')` | 0..* |
| `FJM.Item` | `fJM.item` | `item.where(linkId='FJM').item.where(linkId='FJM.Item')` | 1..1 |
| `FJM.Question` | `fJM.question` | `item.where(linkId='FJM').item.where(linkId='FJM.Question')` | 1..1 |
| `FJM.Answers` | `fJM.answers` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers')` | 1..1 |
| `FJM.Answers.Values` | `fJM.answers.values` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Values')` | 0..* |
| `FJM.Answers.Other` | `fJM.answers.other` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Other')` | 0..1 |
| `FJM.Answers.FJMList` | `fJM.answers.fJMList` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList')` | 0..* |
| `FJM.Answers.FJMList.SubQuestion` | `fJM.answers.fJMList.subQuestion` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubQuestion')` | 1..1 |
| `FJM.Answers.FJMList.SubAnswers` | `fJM.answers.fJMList.subAnswers` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubAnswers')` | 1..1 |
| `FJM.Answers.FJMList.SubStatement` | `fJM.answers.fJMList.subStatement` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubStatement')` | 1..1 |
| `FJM.Answers.FJMVas` | `fJM.answers.fJMVas` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas')` | 0..1 |
| `FJM.Answers.FJMVas.Part` | `fJM.answers.fJMVas.part` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Part')` | 1..1 |
| `FJM.Answers.FJMVas.Point` | `fJM.answers.fJMVas.point` | `item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Point')` | 1..1 |
| `FJM.Statement` | `fJM.statement` | `item.where(linkId='FJM').item.where(linkId='FJM.Statement')` | 1..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 1..1 |
| `IsTemporary` | `isTemporary` | `item.where(linkId='IsTemporary')` | 0..1 |
{: .grid .rwd-table}

### 共照紀錄

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `Time` | `time` | `item.where(linkId='Time')` | 1..1 |
| `Time2` | `time2` | `item.where(linkId='Time2')` | 1..1 |
| `MedicalName` | `medicalName` | `item.where(linkId='MedicalName')` | 1..1 |
| `Title` | `title` | `item.where(linkId='Title')` | 1..1 |
| `Title.Value` | `title.value` | `item.where(linkId='Title').item.where(linkId='Title.Value')` | 1..1 |
| `Title.Other` | `title.other` | `item.where(linkId='Title').item.where(linkId='Title.Other')` | 0..1 |
| `Statement` | `statement` | `item.where(linkId='Statement')` | 1..1 |
{: .grid .rwd-table}

### 人員緊急事件

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `Title` | `title` | `item.where(linkId='Title')` | 1..1 |
| `Title.Value` | `title.value` | `item.where(linkId='Title').item.where(linkId='Title.Value')` | 1..1 |
| `Title.Other` | `title.other` | `item.where(linkId='Title').item.where(linkId='Title.Other')` | 0..1 |
| `Name` | `name` | `item.where(linkId='Name')` | 1..1 |
| `IDNo` | `iDNo` | `item.where(linkId='IDNo')` | 1..1 |
| `EmergencyType` | `emergencyType` | `item.where(linkId='EmergencyType')` | 1..1 |
| `EmergencyType.Value` | `emergencyType.value` | `item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Value')` | 1..1 |
| `EmergencyType.Other` | `emergencyType.other` | `item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Other')` | 0..1 |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `Time` | `time` | `item.where(linkId='Time')` | 1..1 |
| `Reason` | `reason` | `item.where(linkId='Reason')` | 1..1 |
| `Description` | `description` | `item.where(linkId='Description')` | 1..1 |
| `Process` | `process` | `item.where(linkId='Process')` | 1..1 |
| `Report` | `report` | `item.where(linkId='Report')` | 1..1 |
| `CreateID` | `createID` | `item.where(linkId='CreateID')` | 1..1 |
{: .grid .rwd-table}

### 個案結案

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `Date` | `date` | `item.where(linkId='Date')` | 1..1 |
| `UserID` | `userID` | `item.where(linkId='UserID')` | 1..1 |
| `Reason` | `reason` | `item.where(linkId='Reason')` | 1..1 |
| `Reason.Value` | `reason.value` | `item.where(linkId='Reason').item.where(linkId='Reason.Value')` | 1..1 |
| `Reason.Other` | `reason.other` | `item.where(linkId='Reason').item.where(linkId='Reason.Other')` | 0..1 |
{: .grid .rwd-table}

### 照護計畫結案

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `SummaryCreateDate` | `summaryCreateDate` | `item.where(linkId='SummaryCreateDate')` | 1..1 |
| `Summary` | `summary` | `item.where(linkId='Summary')` | 1..1 |
| `SummaryAnswer` | `summaryAnswer` | `item.where(linkId='SummaryAnswer')` | 1..1 |
| `TargetStatement` | `targetStatement` | `item.where(linkId='TargetStatement')` | 1..1 |
| `TargetCreateDate` | `targetCreateDate` | `item.where(linkId='TargetCreateDate')` | 1..1 |
| `CloseDate` | `closeDate` | `item.where(linkId='CloseDate')` | 0..1 |
| `CloseID` | `closeID` | `item.where(linkId='CloseID')` | 0..1 |
{: .grid .rwd-table}

### 生命徵象

| 來源欄位 | Logical Model 元素 | FHIR 表單元素 | 基數 |
| --- | --- | --- | --- |
| `CaseID` | `caseID` | `item.where(linkId='CaseID')` | 1..1 |
| `EndDate` | `endDate` | `item.where(linkId='EndDate')` | 1..1 |
| `RecordDate` | `recordDate` | `item.where(linkId='RecordDate')` | 1..1 |
| `RecordTime` | `recordTime` | `item.where(linkId='RecordTime')` | 1..1 |
| `Temperature` | `temperature` | `item.where(linkId='Temperature')` | 1..1 |
| `Pulse` | `pulse` | `item.where(linkId='Pulse')` | 1..1 |
| `Respiration` | `respiration` | `item.where(linkId='Respiration')` | 1..1 |
| `BloodPressure1` | `bloodPressure1` | `item.where(linkId='BloodPressure1')` | 1..1 |
| `BloodPressure2` | `bloodPressure2` | `item.where(linkId='BloodPressure2')` | 1..1 |
| `BloodGlucose` | `bloodGlucose` | `item.where(linkId='BloodGlucose')` | 0..1 |
| `BloodOxygen` | `bloodOxygen` | `item.where(linkId='BloodOxygen')` | 0..1 |
| `CreateID` | `createID` | `item.where(linkId='CreateID')` | 1..1 |
{: .grid .rwd-table}
