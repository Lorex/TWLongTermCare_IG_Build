# 2026 長照 FHIR 聯測賽道調整提案

本提案整理於 2026-09-29，依據使用者最新要求全面為 Track 1 各情境加入 Creator（LTC_MANAGEMENT）建立交易，並將 Track 2 擴充為四個情境（SC1 個案基本資料管理必測，SC2 全人評估管理、SC3 照護計畫管理、SC4 共照記錄管理選測），Track 4 擴充為在宅急症三段臨床流程（SC1 初次訪視與收案、SC2 持續訪視與治療、SC3 後續照護安排與交班共 20 筆交易），全年度共 50 筆交易與 18 組情境；並同步更新全體賽道之規格、資源操作定義、核對項目、測資準備與選測分工。

## 一、核心規劃方向

配合現場一日半的測試日程，本提案依循以下原則進行規劃：

1. **聚焦單一資源建立與查讀**：Track 1 定位為跨居家照護、住宿機構、日間照護與在宅醫療共用的基礎資料層，一個情境（Scenario）只操作一個 Resource 類型，各情境包含資料維護端（LTC_MANAGEMENT）之建立（HTTP POST）與資料查詢端（LTC_CONSUMER）之條件查詢與單筆讀取（HTTP GET）。
2. **核心基礎全數必測**：Track 1 明確訂定病人基本資料（SC1）、機構基本資料（SC2）、生理量測（SC3）與用藥紀錄（SC4）四項為核心必測情境，其餘五項情境（健康問題、目標、計畫、服務請求、活動紀錄）列為選測。
3. **情境化業務驗證**：跨資源關聯與業務流程由 Track 2（居家照護個案基本資料、全人評估、照護計畫與共照記錄）、Track 3（支付申報審核）與 Track 4（在宅急症三段臨床流程）依實際照護情境進行驗證。
4. **會前標準測資準備**：大會事前備妥基準測試資料、必要參照與識別碼清單，受測主要資源由 Creator 當次建立，Reference 欄位於當前情境核對識別碼即可，不強制追讀被參照之資源。各情境獨立測試無跨情境建立依賴。
5. **模組化選測架構**：規劃清晰的 50 筆交易與 18 組情境目錄，各廠商依產品定位完成必測與選測組合，兼顧測試深度與執行效率。

## 二、四大賽道架構與角色分工

本次連通測試維持四條業務賽道名稱，並納入 Track 0 存取認證機制。各賽道定位與分工如下表所示：

| 賽道編號 | 賽道名稱 | 核心目標 | 操作模式 | 角色責任 |
| :--- | :--- | :--- | :--- | :--- |
| Track 0 | OAuth2 存取認證 | 驗證系統授權與存取權限 | OAuth 2.0 | 由參測用戶端取得權杖，LTC_REPOSITORY 驗證權杖 |
| Track 1 | 長照共通資料交換 | 驗證跨場域共用資源之建立、查詢、讀取與欄位呈現 | FHIR Create（POST）、Search、Read（GET） | LTC_MANAGEMENT 發起建立，LTC_CONSUMER 發起查讀，LTC_REPOSITORY 接收儲存並供應標準資源 |
| Track 2 | 居家照護資料交換 | 驗證居護個案基本資料、全人評估、照護計畫與共照記錄之建立與查讀 | FHIR Create（POST）、Search、Read（GET） | LTC_MANAGEMENT 發起新增，LTC_CONSUMER 發起查讀，LTC_REPOSITORY 接收儲存並提供檢核 |
| Track 3 | 長照服務費用支付審核 | 驗證單筆服務申報與模擬審核結果取得 | FHIR Create（POST）、Search、Read（GET） | LTC_MANAGEMENT 送出申報，LTC_CONSUMER 查詢與讀取審核結果，LTC_REPOSITORY 接收儲存並銜接模擬審核 |
| Track 4 | 在宅急症照護資料交換 | 驗證在宅急症初訪收案、持續治療與照護交班三段臨床流程 | FHIR Create（POST）、Search、Read（GET） | LTC_MANAGEMENT 發起建立，LTC_CONSUMER 發起查讀，LTC_REPOSITORY 接收儲存並供應標準資源 |

### 參與角色定義

* **LTC_CONSUMER（資料查詢端／接續照護端）**：負責發起 HTTP GET 條件查詢與單筆讀取請求，解析伺服端回應並正確呈現指定欄位內容。
* **LTC_MANAGEMENT（資料維護端／在宅醫療端）**：負責在長照共通資料交換與各業務賽道中發起單筆 HTTP POST 新增請求，建立長照共通核心資源、日常照護處置與費用申報資料。
* **LTC_REPOSITORY（資料儲存端／長照資料交換中心）**：負責維護符合 Profile 規範之測試資料庫，處理各項查詢、讀取與儲存請求，並回傳標準格式之回應。

## 三、建立、查詢與讀取共通機制

Track 1 的各情境採用 Creator 建立與 Consumer 查讀之標準設計：

1. **Create（單筆建立）**：LTC_MANAGEMENT 發送 `POST [base]/{ResourceType}` 一筆符合對應 Profile 的 JSON 資源，LTC_REPOSITORY 建立成功後回應 HTTP 201 Created，並於 `Location` 標頭回傳伺服器實際資源 ID 供配對端。
2. **Query（條件查詢）**：LTC_CONSUMER 發送 `GET [base]/{ResourceType}?{parameters}`，LTC_REPOSITORY 回應 HTTP 200 與標準 `Bundle.type = searchset`。
3. **Retrieve（單筆讀取）**：LTC_CONSUMER 從查詢清單中選取 LTC_MANAGEMENT 當次建立之目標資源 ID，發送 `GET [base]/{ResourceType}/{id}`，LTC_REPOSITORY 回應 HTTP 200 與單筆 Resource。

### 標準回應格式與規範說明

* **Create 回應格式**：標準回應為 HTTP 201 Created，並由 Location 標頭提供實際建立之資源 ID。
* **Query 回應格式**：標準回應為 `Bundle.type = searchset`，此為合法之檢索回應格式。
* **Retrieve 回應格式**：標準回應為單筆指定之 Resource 物件。
* **欄位與參照核對原則**：消費端依據規格核對欄位名稱、資料型別、代碼系統、代碼值、UCUM 計量單位。資源內含之 Reference 欄位，由主辦單位事前預載目標資源，消費端以大會提供之 ID 清單比對參照值，聚焦於單一資源內部欄位之正確性，不要求追讀其他資源。

## 四、Track 1 長照共通資料交換詳細規格

Track 1 包含 9 個業務情境（Scenario）共 18 筆交易，每情境對應單一資源類型，依序為 Creator 建立在前、Consumer 查讀在後。

| 情境編號與主題 | 交易 ID | 交易主題 | 操作角色與型態 | 資源型別與 Profile | 操作路徑或查詢參數 | 指定核對與填寫內容 | 類別 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| SC1 病人基本資料 | LTC-111 | 建立病人基本資料 | POST<br>LTC_MANAGEMENT | Patient<br>LTCPatient | `POST [base]/Patient` | 填寫大會指派之本輪唯一識別碼 identifier[member]（PRN）、姓名、birthDate、telecom、address、contact 及 managingOrganization 參照 | 必測 |
| SC1 病人基本資料 | LTC-112 | 病人基本資料查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Patient<br>LTCPatient | `Patient?identifier={system}\|{value}` | 以大會指派之唯一識別碼查詢，單筆讀取當次建立資源，核對 identifier[member]（PRN）、姓名、birthDate、telecom、address、contact | 必測 |
| SC2 機構基本資料 | LTC-121 | 建立機構基本資料 | POST<br>LTC_MANAGEMENT | Organization<br>LTCOrganization | `POST [base]/Organization` | 填寫大會指派之本輪唯一機構代碼 identifier、active、type、name、telecom、address、contact | 必測 |
| SC2 機構基本資料 | LTC-122 | 機構基本資料查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Organization<br>LTCOrganization | `Organization?identifier={system}\|{value}` | 以大會指派之機構代碼查詢，單筆讀取當次建立資源，核對 identifier、active、type、name、telecom、address、contact | 必測 |
| SC3 生理量測 | LTC-131 | 上傳生理量測 | POST<br>LTC_MANAGEMENT | Observation<br>LTCObservationVitalSigns | `POST [base]/Observation` | 填寫血壓量測紀錄，包含 status、category（vital-signs）、code（LOINC 85354-9）、subject、effectiveDateTime、performer 及 component 收縮壓 8480-6 與舒張壓 8462-4 之數值與 UCUM mm[Hg] | 必測 |
| SC3 生理量測 | LTC-132 | 生理量測查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Observation<br>LTCObservationVitalSigns | `Observation?subject=Patient/{id}&code=http://loinc.org\|85354-9` | 查詢並讀取當次建立之血壓 Observation，核對 status、category、code、subject、effectiveDateTime、component 收縮壓與舒張壓數值與 UCUM mm[Hg] | 必測 |
| SC4 用藥紀錄 | LTC-141 | 上傳用藥紀錄 | POST<br>LTC_MANAGEMENT | MedicationAdministration<br>LTCMedicationAdministration | `POST [base]/MedicationAdministration` | 填寫給藥紀錄，包含 status、subject、medicationCodeableConcept（依測資填寫）、effectiveDateTime、dosage.route、dosage.dose 數值/單位及預載之 performer.actor 參照 | 必測 |
| SC4 用藥紀錄 | LTC-142 | 用藥紀錄查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | MedicationAdministration<br>LTCMedicationAdministration | `MedicationAdministration?subject=Patient/{id}` | 查詢並讀取當次建立之用藥紀錄，核對 status、subject、medicationCodeableConcept、effectiveDateTime、dosage.route、dosage.dose 及 performer.actor 參照 | 必測 |
| SC5 健康問題 | LTC-151 | 建立健康問題 | POST<br>LTC_MANAGEMENT | Condition<br>LTCCondition | `POST [base]/Condition` | 填寫高血壓健康問題，包含 subject、code、clinicalStatus、verificationStatus、onset[x]、recorder 參照及 note | 選測 |
| SC5 健康問題 | LTC-152 | 健康問題查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Condition<br>LTCCondition | `Condition?subject=Patient/{id}` | 查詢並讀取當次建立之健康問題，核對 subject、code、clinicalStatus、verificationStatus、onset[x] 及 note | 選測 |
| SC6 照護目標 | LTC-161 | 建立照護目標 | POST<br>LTC_MANAGEMENT | Goal<br>LTCGoal | `POST [base]/Goal` | 填寫照護目標，包含 subject、lifecycleStatus、description、startDate、target.measure、target.detailString、target.dueDate及 expressedBy 參照 | 選測 |
| SC6 照護目標 | LTC-162 | 照護目標查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Goal<br>LTCGoal | `Goal?subject=Patient/{id}` | 查詢並讀取當次建立之照護目標，核對 subject、lifecycleStatus、description、startDate、target.measure、target.detailString 及 target.dueDate | 選測 |
| SC7 照護計畫 | LTC-171 | 建立照護計畫 | POST<br>LTC_MANAGEMENT | CarePlan<br>LTCCarePlan | `POST [base]/CarePlan` | 填寫照護計畫，包含 subject、status、intent、category、period、author 參照、activity.detail 及 addresses/goal 參照 | 選測 |
| SC7 照護計畫 | LTC-172 | 照護計畫查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | CarePlan<br>LTCCarePlan | `CarePlan?subject=Patient/{id}` | 查詢並讀取當次建立之照護計畫，核對 subject、status、intent、category、period、activity.detail 及 addresses/goal 參照 | 選測 |
| SC8 服務請求 | LTC-181 | 建立服務請求 | POST<br>LTC_MANAGEMENT | ServiceRequest<br>LTCServiceRequest | `POST [base]/ServiceRequest` | 填寫照護服務請求，包含 subject、status、intent、code（長照服務項目代碼）、occurrence[x]、authoredOn 及 requester/performer 參照 | 選測 |
| SC8 服務請求 | LTC-182 | 服務請求查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | ServiceRequest<br>LTCServiceRequest | `ServiceRequest?patient=Patient/{id}` | 查詢並讀取當次建立之服務請求，核對 subject、status、intent、code、occurrence[x]、authoredOn、requester/performer 參照及 note | 選測 |
| SC9 照護執行紀錄 | LTC-191 | 上傳照護執行紀錄 | POST<br>LTC_MANAGEMENT | Procedure<br>LTCProcedureCareActivity | `POST [base]/Procedure` | 填寫照護處置紀錄，包含 subject、status、code（長照服務項目代碼）、performed[x]、performer.actor 參照、outcome 及 note | 選測 |
| SC9 照護執行紀錄 | LTC-192 | 照護執行紀錄查詢與讀取 | Query / Retrieve<br>LTC_CONSUMER | Procedure<br>LTCProcedureCareActivity | `Procedure?subject=Patient/{id}` | 查詢並讀取當次建立之照護處置紀錄，核對 subject、status、code、performed[x]、performer.actor 參照、outcome 及 note | 選測 |

## 五、Track 2 居家照護資料交換詳細規格

Track 2 檢驗居家照護場域之個案管理資料交換，涵蓋個案基本資料、全人評估（健康紀錄評估）、照護計畫與共照記錄等四項情境。查詢與讀取沿用單一資源模式，資料寫入為單筆 HTTP POST 操作。可銜接 Track 1 病人基本資料查讀能力（LTC-112）與共通資料定位，依專用 Profile 進行獨立業務測試。

本賽道包含 4 個業務情境共 8 筆交易，SC1 居護個案基本資料管理為必測，SC2 全人評估管理、SC3 照護計畫管理與 SC4 共照記錄管理為選測。完成 SC1 加上任一選測情境即認定通過。

| 情境編號與主題 | 交易 ID | 操作型態與角色 | 資源型別與 Profile | 操作路徑與參數 | 核對重點與前置相依規劃 | 類別 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| SC1 居護個案基本資料管理 | LTC-211 | POST<br>LTC_MANAGEMENT | QuestionnaireResponse<br>HNBaseDataResponse | `POST [base]/QuestionnaireResponse` | 依完整合成 JSON 範本寫入個案基本資料，包含 CaseID、EndDate、CaseName、Sex、CaseType、Birthdate、PhoneNumber、Address、Education、Marriage、Religion、ExJob、Economic、HasWelfare、CaseSource、CaregiverID、CaregiverName、CaregiverAddress、CaregiverTel、EgyContactRelation、EgyContactName、EgyContactTel1、DecisionMakerRelation、MEvent、NurseID、CreateID 等欄位，以及 status（completed）、authored、subject、questionnaire（http://ltc-ig.fhir.tw/Questionnaire/hn-basedata）與 episode Extension。成功建立取得 Location 實際資源 ID。大會事前預載 HNPatient、HNEpisodeOfCare、Questionnaire 及範例資料 | 必測 |
| SC1 居護個案基本資料管理 | LTC-212 | Query / Retrieve<br>LTC_CONSUMER | QuestionnaireResponse<br>HNBaseDataResponse | Query：`GET [base]/QuestionnaireResponse?subject=Patient/{id}&questionnaire=http://ltc-ig.fhir.tw/Questionnaire/hn-basedata`<br>Retrieve：`GET [base]/QuestionnaireResponse/{id}` | 查詢並讀取個案基本資料表單，確認讀取為 LTC-211 當次建立之資源。核對 subject、episode Extension，確認個案身分、收案日期、收案來源、家庭社會背景、主要照顧者與緊急聯絡人資料一致性 | 必測 |
| SC2 居護全人評估管理 | LTC-221 | POST<br>LTC_MANAGEMENT | QuestionnaireResponse<br>HNHealthyHabitsResponse | `POST [base]/QuestionnaireResponse` | 依範本寫入健康紀錄評估表單，填寫 Date、NurseID、IsSmoking（代碼 ce7db7791df8d）、IsAlcohol（ca7ee52d8897f）、IsBetelNut（c9ff7aa9a2829）、IsAllergy（cda5930e53d54）、IsAllergyDrug（cda5930e53d54）、Vaccination（子項 Vaccination.Answer 代碼 cda5930e53d54），以及 status（completed）、authored、subject、questionnaire（http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits）與 episode Extension。成功建立取得 Location 實際資源 ID。大會事前預載 HNPatient、HNEpisodeOfCare、Questionnaire 及範例資料 | 選測 |
| SC2 居護全人評估管理 | LTC-222 | Query / Retrieve<br>LTC_CONSUMER | QuestionnaireResponse<br>HNHealthyHabitsResponse | Query：`GET [base]/QuestionnaireResponse?subject=Patient/{id}&questionnaire=http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits`<br>Retrieve：`GET [base]/QuestionnaireResponse/{id}` | 查詢並讀取全人評估表單，確認讀取為 LTC-221 當次建立之資源。核對 subject、episode Extension、評估日期、護理人員識別、生活習慣狀態、過敏紀錄與疫苗接種內容一致性 | 選測 |
| SC3 居護照護計畫管理 | LTC-231 | POST<br>LTC_MANAGEMENT | CarePlan<br>HNCarePlan | `POST [base]/CarePlan` | 寫入單筆居護照護計畫，填寫 status（active）、intent（plan）、category（assess-plan）、subject、period、author、goal 參照預載 HNGoal、extension[episode] 參照預載 HNEpisodeOfCare、extension[sourceForm] 參照預載來源表單，以及 activity.detail（status 為 in-progress、description 為措施文字、goal 指向預載 HNGoal）。成功建立取得 Location 實際資源 ID。大會事前預載 HNPatient、HNEpisodeOfCare、HNGoal、來源表單及範例資料 | 選測 |
| SC3 居護照護計畫管理 | LTC-232 | Query / Retrieve<br>LTC_CONSUMER | CarePlan<br>HNCarePlan | Query：`GET [base]/CarePlan?subject=Patient/{id}`<br>Retrieve：`GET [base]/CarePlan/{id}` | 查詢並讀取照護計畫，確認讀取為 LTC-231 當次建立之資源。核對 subject、author、episode Extension、sourceForm Extension、goal 參照識別碼與措施明細文字（activity.detail.description）一致性 | 選測 |
| SC4 居護共照記錄管理 | LTC-241 | POST<br>LTC_MANAGEMENT | QuestionnaireResponse<br>HNCaseDescResponse | `POST [base]/QuestionnaireResponse` | 寫入單筆共照記錄，填寫單一護理師一次居家照護（09:00:00–09:30:00），記錄「已向家屬說明翻身及日常照護注意事項」。核對 CaseID、EndDate、Date、Time、Time2、MedicalName、Title（Title.Value 護理師代碼 cdbb50d002e8b）、Statement 八項欄位，以及 status（completed）、authored、subject、questionnaire（http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc）與 episode Extension。成功建立取得 Location 實際資源 ID。大會事前預載 HNPatient、HNEpisodeOfCare、Questionnaire 及範例資料 | 選測 |
| SC4 居護共照記錄管理 | LTC-242 | Query / Retrieve<br>LTC_CONSUMER | QuestionnaireResponse<br>HNCaseDescResponse | Query：`GET [base]/QuestionnaireResponse?subject=Patient/{id}&questionnaire=http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc`<br>Retrieve：`GET [base]/QuestionnaireResponse/{id}` | 查詢並讀取共照記錄，確認讀取為 LTC-241 當次建立之資源。核對 subject、episode Extension、個案身分、收案日期、照護日期、起訖時間、共照人員姓名、職類及照護紀錄內容一致性 | 選測 |

## 六、Track 3 長照服務費用支付審核詳細規格

Track 3 聚焦長照服務費用申報與審核結果查詢流程，由單一情境 SC1（單筆服務申報與審核結果查詢）構成，包含 2 筆交易。可銜接 Track 1 病人基本資料（LTC-112）與機構基本資料（LTC-122）查讀能力及其共通資料定位，依專用 Profile 進行獨立業務測試。

| 交易 ID | 操作型態與角色 | 資源型別與 Profile | 操作路徑與參數 | 核對重點與相依安排 |
| :--- | :--- | :--- | :--- | :--- |
| LTC-311 | POST<br>LTC_MANAGEMENT | Claim<br>LTCClaimFeeApply | `POST [base]/Claim` | 送出單筆長照服務費用申報。測試案例為一位個案、一筆 BA07 服務、一位照顧服務員、數量 1 次，補助類別為補助（item.category.coding.code = 1）。填寫 status（active）、type（professional）、use（claim）、created、priority（normal）、patient、provider、insurance（sequence/focal/coverage）、identifier（objid/transNo/yyyymm）、careTeam（sequence/provider）、item（sequence/productOrService/category/quantity/servicedPeriod/unitPrice/net）及 total（幣別 TWD）。成功建立由 Location 標頭取得實際 Claim ID。大會事前預載 Patient、Organization、Practitioner、Coverage |
| LTC-312 | Query / Retrieve<br>LTC_CONSUMER | ClaimResponse<br>LTCClaimResponseFeeAudit | Query：`GET [base]/ClaimResponse?request=Claim/{id}`<br>Retrieve：`GET [base]/ClaimResponse/{id}` | 查詢並讀取審核結果。核對 ClaimResponse.request 指向實際當次 Claim，recordRef Extension 的 objid 與 Claim.identifier[objid].value 一致，patient 一致。核對主管機關分案案號（identifier[caseNo]）、處理狀態（outcome = complete，處理完成）、核定金額（total 中 category 為 approveFee 的 amount）、部分負擔（item.adjudication 中 category 為 copayment 的 amount）及審核意見（disposition） |

## 七、Track 4 在宅急症照護資料交換詳細規格

Track 4 依據健保署在宅急症照護試辦計畫之住院替代服務（HAH）模式，劃分為初次訪視與收案（SC1）、持續訪視與治療（SC2）、後續照護安排與交班（SC3）三段臨床流程，共 3 個情境、20 筆交易。建立端送出單筆 Resource POST 請求，由 Location 取得實際 ID；消費端以指定參數 Search 取得 searchset Bundle，再以本輪實際 ID 發起單筆 Read。

| 情境編號與主題 | 交易 ID | 操作型態與角色 | 資源型別與 Profile | 操作路徑與參數 | 核對重點與資料約定 | 類別 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| SC1 初次訪視與收案 | LTC-411 | POST<br>LTC_MANAGEMENT | EpisodeOfCare<br>HAHEpisodeOfCare<br><br>Encounter<br>HAHAdmissionEncounter | `POST [base]/EpisodeOfCare`<br><br>`POST [base]/Encounter` | 依序建立 active 療程（type 為 acute-home，填寫 identifier 與 period.start，參照預載 Patient 與 Organization）及 in-progress 之 IMP 整段照護（參照該 EpisodeOfCare、相同 Patient、機構與人員，填寫 period.start）。取得實際 ID | 必測 |
| SC1 初次訪視與收案 | LTC-412 | Query / Retrieve<br>LTC_CONSUMER | EpisodeOfCare<br>HAHEpisodeOfCare<br><br>Encounter<br>HAHAdmissionEncounter | Query：`GET [base]/EpisodeOfCare?patient=Patient/{id}`<br>Retrieve：`GET [base]/EpisodeOfCare/{id}`<br><br>Query：`GET [base]/Encounter?subject=Patient/{id}&class=IMP`<br>Retrieve：`GET [base]/Encounter/{id}` | 查詢並單筆讀取 LTC-411 建立之療程與整段照護，核對 active 狀態、管理機構、收案開始時間；核對整段照護之 in-progress 狀態、IMP 分類以及 episodeOfCare 參照與當次療程 ID 一致性 | 必測 |
| SC1 初次訪視與收案 | LTC-413 | POST<br>LTC_MANAGEMENT | Encounter<br>HAHVisitEncounter | `POST [base]/Encounter` | 建立 finished 初訪紀錄，class 設 HH，type 為 visit，mode 為 in-person，填入到宅實際起訖時間（period.start 與 period.end）、主責醫師與服務機構，episodeOfCare 與 partOf 分別參照 LTC-411 之實際 ID。取得實際初訪 ID | 必測 |
| SC1 初次訪視與收案 | LTC-414 | Query / Retrieve<br>LTC_CONSUMER | Encounter<br>HAHVisitEncounter | Query：`GET [base]/Encounter?subject=Patient/{id}&part-of=Encounter/{admission_id}`<br>Retrieve：`GET [base]/Encounter/{id}` | 查詢並單筆讀取初次訪視紀錄，核對實際訪視起訖時間、醫師、機構、就診方式（HH / in-person）以及 episodeOfCare 與 partOf 參照 | 必測 |
| SC1 初次訪視與收案 | LTC-415 | POST<br>LTC_MANAGEMENT | Condition<br>HAHCondition<br><br>ClinicalImpression<br>HAHClinicalImpression | `POST [base]/Condition`<br><br>`POST [base]/ClinicalImpression` | 建立急症診斷（填寫代碼、clinicalStatus、recordedDate，encounter 指向初訪 ID）與初訪整體臨床評估（completed，填寫 assessor、effectiveDateTime/Period、summary，encounter 指向初訪 ID，problem 指向當次診斷）。取得實際 ID | 選測 |
| SC1 初次訪視與收案 | LTC-416 | Query / Retrieve<br>LTC_CONSUMER | Condition<br>HAHCondition<br><br>ClinicalImpression<br>HAHClinicalImpression | Query：`GET [base]/Condition?subject=Patient/{id}`<br>Retrieve：`GET [base]/Condition/{id}`<br><br>Query：`GET [base]/ClinicalImpression?subject=Patient/{id}`<br>Retrieve：`GET [base]/ClinicalImpression/{id}` | 查詢並讀取診斷與初次評估，核對疾病代碼、評估摘要、評估人員與初訪關聯，確認 problem 正確指向當次診斷 | 選測 |
| SC2 持續訪視與治療 | LTC-421 | POST<br>LTC_MANAGEMENT | Encounter<br>HAHVisitEncounter<br><br>Observation<br>LTCObservationVitalSigns | `POST [base]/Encounter`<br><br>`POST [base]/Observation` | 建立本次訪視紀錄（finished，class 為 HH，mode 為 in-person，partOf 指向整段照護），並建立體溫 Observation（final，LOINC 8310-5，UCUM Cel，encounter 指向本次訪視 ID）。取得實際 ID | 必測 |
| SC2 持續訪視與治療 | LTC-422 | Query / Retrieve<br>LTC_CONSUMER | Encounter<br>HAHVisitEncounter<br><br>Observation<br>LTCObservationVitalSigns | Query：`GET [base]/Encounter?subject=Patient/{id}&part-of=Encounter/{admission_id}`<br>Retrieve：`GET [base]/Encounter/{id}`<br><br>Query：`GET [base]/Observation?subject=Patient/{id}&code=http://loinc.org\|8310-5`<br>Retrieve：`GET [base]/Observation/{id}` | 查詢並讀取本次訪視與體溫紀錄，核對到訪起訖時間、醫事人員、整段照護關聯；核對體溫數值、計量單位（Cel）與本次訪視參照 | 必測 |
| SC2 持續訪視與治療 | LTC-423 | POST<br>LTC_MANAGEMENT | MedicationRequest<br>HAHMedicationRequest<br><br>MedicationAdministration<br>HAHMedicationAdministration | `POST [base]/MedicationRequest`<br><br>`POST [base]/MedicationAdministration` | 建立給藥處方（active，order，填寫藥品、用法、途徑、劑量、authoredOn、requester，encounter 指向訪視）與給藥紀錄（completed，performer.actor 指向護理師，request 指向當次處方，context 指向執行護理訪視，填寫途徑與劑量或流速）。取得實際 ID | 必測組別 |
| SC2 持續訪視與治療 | LTC-424 | Query / Retrieve<br>LTC_CONSUMER | MedicationRequest<br>HAHMedicationRequest<br><br>MedicationAdministration<br>HAHMedicationAdministration | Query：`GET [base]/MedicationRequest?subject=Patient/{id}`<br>Retrieve：`GET [base]/MedicationRequest/{id}`<br><br>Query：`GET [base]/MedicationAdministration?subject=Patient/{id}`<br>Retrieve：`GET [base]/MedicationAdministration/{id}` | 查詢並讀取處方與給藥紀錄，核對藥品品項、用法用量、執行時間或輸注期間、執行護理師，確認 request 指向當次處方且各自關聯對應訪視 | 必測組別 |
| SC2 持續訪視與治療 | LTC-425 | POST<br>LTC_MANAGEMENT | Observation<br>HAHObservationLab<br><br>DiagnosticReport<br>HAHDiagnosticReport | `POST [base]/Observation`<br><br>`POST [base]/DiagnosticReport` | 建立單項檢驗 Observation（encounter 指向當次訪視），並建立檢驗報告 DiagnosticReport（final，effectiveDateTime，issued，performer，encounter 指向當次訪視，result 指向當次檢驗 ID）。取得實際 ID | 選測 |
| SC2 持續訪視與治療 | LTC-426 | Query / Retrieve<br>LTC_CONSUMER | Observation<br>HAHObservationLab<br><br>DiagnosticReport<br>HAHDiagnosticReport | Query：`GET [base]/DiagnosticReport?subject=Patient/{id}`<br>Retrieve：`GET [base]/DiagnosticReport/{id}`<br><br>Query：`GET [base]/Observation?subject=Patient/{id}`<br>Retrieve：`GET [base]/Observation/{id}` | 查詢並讀取檢驗與報告，核對檢驗項目名稱、數值、單位、簽發時間，確認 DiagnosticReport.result 準確連結至該筆 Observation | 選測 |
| SC2 持續訪視與治療 | LTC-427 | POST<br>LTC_MANAGEMENT | Procedure<br>HAHProcedure | `POST [base]/Procedure` | 建立在宅醫療處置紀錄（completed，抽痰等處置代碼，performed[x]，performer.actor 參照醫事人員，encounter 指向當次訪視）。取得實際 ID | 必測組別 |
| SC2 持續訪視與治療 | LTC-428 | Query / Retrieve<br>LTC_CONSUMER | Procedure<br>HAHProcedure | Query：`GET [base]/Procedure?subject=Patient/{id}`<br>Retrieve：`GET [base]/Procedure/{id}` | 查詢並單筆讀取處置紀錄，核對處置項目名稱、執行時間、執行醫事人員與當次訪視參照 | 必測組別 |
| SC3 後續照護安排與交班 | LTC-431 | POST<br>LTC_MANAGEMENT | CarePlan<br>HAHCarePlan | `POST [base]/CarePlan` | 建立後續照護計畫（active，plan，category，period，extension[episode] 參照療程，encounter 指向當次訪視，activity.detail 填寫下次到訪時間 scheduledPeriod、事項 description、執行人員 performer；若需目標可參照預載 HAHGoal）。取得實際 ID | 必測 |
| SC3 後續照護安排與交班 | LTC-432 | Query / Retrieve<br>LTC_CONSUMER | CarePlan<br>HAHCarePlan | Query：`GET [base]/CarePlan?subject=Patient/{id}`<br>Retrieve：`GET [base]/CarePlan/{id}` | 查詢並單筆讀取照護計畫，核對計畫期間、類別、療程關聯、訪視關聯，以及 activity.detail 之下次到訪時間、預定事項與負責人員 | 必測 |
| SC3 後續照護安排與交班 | LTC-433 | POST<br>LTC_MANAGEMENT | Task<br>HAHVisitTask | `POST [base]/Task` | 指派下一次訪視工作（requested，order，code 為訪視代碼，for 指向個案，authoredOn，requester，owner，encounter 指向當次訪視，focus 指向 LTC-431 計畫，restriction.period 填入預定執行區間）。取得實際 ID | 選測 |
| SC3 後續照護安排與交班 | LTC-434 | Query / Retrieve<br>LTC_CONSUMER | Task<br>HAHVisitTask | Query：`GET [base]/Task?patient=Patient/{id}&status=requested`<br>Retrieve：`GET [base]/Task/{id}` | 查詢並單筆讀取待執行訪視任務，核對指派對象、指派者、預定到宅執行時間、當次訪視關聯與 focus 照護計畫參照 | 選測 |
| SC3 後續照護安排與交班 | LTC-435 | POST<br>LTC_MANAGEMENT | Communication<br>HAHCommunication | `POST [base]/Communication` | 建立照護交班紀錄（completed，category 為 handover，subject，sender，recipient，sent，encounter 指向當次訪視，basedOn 指向 LTC-431 計畫，payload.contentString 填寫交班文字）。取得實際 ID | 必測 |
| SC3 後續照護安排與交班 | LTC-436 | Query / Retrieve<br>LTC_CONSUMER | Communication<br>HAHCommunication | Query：`GET [base]/Communication?subject=Patient/{id}&category=handover`<br>Retrieve：`GET [base]/Communication/{id}` | 查詢並單筆讀取照護交班紀錄，核對發送者、接收者、交班時間、文字內容、當次訪視關聯與計畫關聯 | 必測 |

## 八、2025 年交易規格複用對照

本架構保留 2025 年 Track 1 的建立與查讀機制、代碼與欄位定義對今年賽道之適用項目，對照如下：

| 2025 年交易項目與主題 | 2026 年對應交易項目 | 複用內容與驗證重點說明 |
| :--- | :--- | :--- |
| 2025 LTC-111 生理量測上傳 | LTC-131、LTC-421 | 複用建立機制，2026 LTC-131 上傳血壓量測，2026 LTC-421 於在宅急症情境中上傳訪視體溫 |
| 2025 LTC-112 生理量測查詢 | LTC-132、LTC-422 | 複用生理量測代碼、數值與單位之查詢與比對邏輯；2026 LTC-132 查讀血壓 Observation，2026 LTC-422 查讀訪視體溫 |
| 2025 LTC-121 照護活動上傳 | LTC-191 | 恢復複用建立機制，2026 LTC-191 上傳單次照護處置紀錄 |
| 2025 LTC-122 照護活動查詢 | LTC-192 | 複用照護執行紀錄之查詢、狀態核對與服務項目判定 |
| 2025 LTC-131 用藥紀錄上傳 | LTC-141、LTC-423 | 複用建立機制，2026 LTC-141 上傳共通給藥紀錄，2026 LTC-423 增加訪視與處方關聯 |
| 2025 LTC-132 用藥紀錄查詢 | LTC-142、LTC-424 | 複用給藥紀錄之查詢、狀態、藥品代碼與劑量比對；2026 LTC-142 查讀共通給藥紀錄，2026 LTC-424 查讀訪視給藥 |

## 九、賽道整體交易與情境收斂

整體架構共規劃 50 筆交易與 18 組情境：
- Track 0：1 組情境、2 筆交易（LTC-011、LTC-012）
- Track 1：9 組情境、18 筆交易（LTC-111 至 LTC-192）
- Track 2：4 組情境、8 筆交易（LTC-211 至 LTC-242）
- Track 3：1 組情境、2 筆交易（LTC-311、LTC-312）
- Track 4：3 組情境、20 筆交易（SC1 共 6 筆、SC2 共 8 筆、SC3 共 6 筆）

總計：1 + 9 + 4 + 1 + 3 = 18 組情境；2 + 18 + 8 + 2 + 20 = 50 筆交易。

## 十、會前測資準備與時程安排

### 現場時程安排

依據官方活動時程（2026/10/29 13:30–16:30、2026/10/30 10:00–16:30），現場工作分配如下：

| 測試時段 | 建議工作進度 | 通過查驗項目 |
| :--- | :--- | :--- |
| 第一天下午（13:30 至 16:30） | Track 0 認證連通<br>Track 1 共通資料建立與查讀實測<br>跨廠商業務情境配對 | LTC-011、LTC-012 權杖取得驗證<br>LTC-111 至 LTC-142 必測項目完成<br>確認第二天業務賽道合作夥伴 |
| 第二天上午（10:00 至 12:00） | Track 2 居家照護實測<br>Track 3 支付申報審核實測<br>Track 4 在宅急症跨域實測 | 完成居護所選情境新增與查讀核對<br>完成單筆 BA07 申報與審核結果取得<br>完成在宅急症初訪收案、持續治療與照護交班實測 |
| 第二天下午（13:00 至 16:30） | 異常修正與重新測試<br>整體成果查驗與紀錄簽核 | 針對未通過項目進行微調並完成重測<br>由大會核定受測結果清冊 |

### 廠商選測規則與驗收方式

* **Track 0**：參與認證測試之系統完成 LTC-011 與 LTC-012 認證流程。
* **Track 1**：參測單位必須完成 SC1 至 SC4（病人基本資料 LTC-111/112、機構基本資料 LTC-121/122、生理量測 LTC-131/132、用藥紀錄 LTC-141/142）四項必測情境，依報名角色完成 POST 建立或 Query+Retrieve 查讀。SC5 至 SC9（LTC-151 至 LTC-192）為選測項目，依報名角色完成對應交易與指定欄位核對即認定通過。
* **Track 2**：參測單位必須完成 SC1（居護個案基本資料 LTC-211/212，必測），並自 SC2（全人評估 LTC-221/222）、SC3（照護計畫 LTC-231/232）或 SC4（共照記錄 LTC-241/242）中至少選測一項。LTC_MANAGEMENT 角色最低完成 LTC-211 加上任一選測上傳交易；LTC_CONSUMER 角色最低完成 LTC-212 加上任一選測查讀交易；LTC_REPOSITORY 角色對應兩個情境皆支援成對交易。由配對系統共同完成情境流程。
* **Track 3**：申報端承接 LTC_MANAGEMENT 與 LTC_CONSUMER，完成 SC1 內 LTC-311 送出申報與 LTC-312 審核結果查詢。
* **Track 4**：參測單位依報名角色與臨床職責配對共同完成流程，必測 SC1（LTC-411 至 LTC-414）、SC2（LTC-421/422 加 LTC-423/424 或 LTC-427/428）與 SC3（LTC-431/432 及 LTC-435/436）；LTC-415/416、LTC-425/426 與 LTC-433/434 為選測。大會逐交易與逐 Resource 記錄實作能力。
