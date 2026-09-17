### 居家護理照護管理系統

本主題依《居家護理－測試區系統介接規範 V5.0.16》（2025 年 12 月 8 日）建立。原 PDF 共 155 頁；以下頁碼採文件內印刷頁碼，PDF 頁碼須加 4。灰底刪除內容不列入有效欄位。

本 IG 提供十二支 API 的請求 Logical Model、二十四種結構化表單、臨床資源 Profile、術語與範例。這些定義是 FHIR 交換設計，原系統仍接收規範中的 JSON。FHIR Resource 不可直接當作原 API 的 `Jsonfile` 上傳。

[逐欄對應表](home-nursing-mapping.html) 列出來源欄位、評估題目、Logical Model 與 QuestionnaireResponse 路徑。表單定義及原生臨床資源均可由 [規範文件](artifacts.html) 下載。

#### API 盤點

測試區基底網址為 `http://114.34.167.172:49154/HomeNursing/API/hncApi/`。十二支 API 均為 `POST`，標頭包含 `SecretKey` 及 `AGENCY_ID`。`SecretKey` 屬傳輸憑證，不放入 FHIR Resource、範例或稽核紀錄。

| API | 用途與相依資料 | 請求 Logical Model | 印刷頁 |
| --- | --- | --- | --- |
| `BaseData` | 收案、個案背景、主要照顧者、共照團隊 | [基本資料](StructureDefinition-HNBaseDataAPIModel.html) | 1–13 |
| `Evaluation` | 同一個案及收案日期下的十三類評估，可各自上傳多個日期 | [全人評估](StructureDefinition-HNEvaluationAPIModel.html) | 14–70 |
| `CaseSummary` | 評估後的需求項目與摘要備註 | [需求摘要](StructureDefinition-HNCaseSummaryAPIModel.html) | 71–74 |
| `CarePlan` | 需求摘要下的目標、措施及評值紀錄 | [照護計畫](StructureDefinition-HNCarePlanAPIModel.html) | 75–80 |
| `CareRecord` | 照護紀錄、資源、服務、事件、生命徵象、多筆傷口與足部護理 | [照護紀錄](StructureDefinition-HNCareRecordAPIModel.html) | 81–121 |
| `CaseDesc` | 共照成員的照護時段與文字紀錄 | [共照紀錄](StructureDefinition-HNCaseDescAPIModel.html) | 122–125 |
| `StaffEgy` | 工作人員緊急事件，不要求個案識別或收案日期 | [人員緊急事件](StructureDefinition-HNStaffEgyAPIModel.html) | 126–129 |
| `CaseClose` | 個案結案日期、人員與原因 | [個案結案](StructureDefinition-HNCaseCloseAPIModel.html) | 130–132 |
| `CarePlanClose` | 指定目標的結案日期及結案人員 | [計畫結案](StructureDefinition-HNCarePlanCloseAPIModel.html) | 133–135 |
| `VitalSign` | 獨立上傳生命徵象 | [生命徵象](StructureDefinition-HNVitalSignAPIModel.html) | 136–138 |
| `GetLog` | 以 `start_date` 及選填的 `end_date` 查詢處理結果 | [日期查詢](StructureDefinition-HNGetLogAPIModel.html) | 139 |
| `GetLogByTicket` | 以八位數字 `ticket` 查詢處理結果 | [追蹤碼查詢](StructureDefinition-HNGetLogByTicketAPIModel.html) | 139 |

前十支 API 上傳 JSON 檔案。一般使用 `DataList` 陣列；`CarePlan.DataList` 是包含 `Targets`、`Measures`、`Evaluations` 陣列的物件。每一類計畫資料最多 100 筆。PDF 限制檔案大小為「1000kb 以下」，未定義精確位元組換算；介接端應依來源服務實際限制控制大小。

文件同時標示 `Content Type: application/json` 及 `Jsonfile: File`，未完整描述檔案包裝方式。本 IG 不自行指定 multipart 邊界或改寫來源協定。

#### 資料流程與識別

先上傳基本資料，再上傳評估、需求摘要及照護計畫。照護紀錄與共照紀錄持續累積，個案結案與照護計畫結案分別更新其狀態。

| 識別層次 | 來源比對條件 | FHIR 表達 |
| --- | --- | --- |
| 個案 | `CaseID` | `Patient.identifier[idCardNumber]` |
| 一次收案 | `AGENCY_ID`、`CaseID`、`EndDate` | `EpisodeOfCare.managingOrganization`、`patient`、`period.start` |
| 需求摘要 | 收案識別、摘要日期、項目及摘要備註 | `HNCaseSummaryResponse` 的固定 Slice |
| 照護目標 | 需求摘要比對條件、目標敘述及適用的建立日期 | `Goal` 及 `HNTargetsResponse` |
| 照護措施、評值 | 來源表格列出的摘要與目標比對條件 | `CarePlan.activity` 及對應的措施／評值表單 |
| 原 API 處理工作 | API 名稱及來源提供的追蹤碼 | `HNAPITask.code`、`identifier`；查詢碼置於 `input[ticket]` |

`EndDate` 的意思是「收案日期」，不可映射為 `EpisodeOfCare.period.end`。摘要備註及目標敘述參與來源系統比對，回寫時不得擅自改寫、截短或以近義詞代替。日期與項目相同仍不保證是同一筆目標。

`Patient.identifier[member]` 是沿用 LTCPatient 的機構識別碼要求。機構應配發穩定識別碼，或依其明確規則建立；不宣稱原 API 有傳送住民代號。不同次收案使用不同 EpisodeOfCare，仍參照同一 Patient。

#### 重用與繼承

FHIR 衍生 Profile 只能縮緊父層限制，不能取消父層必填或放寬型態。[FHIR R4 Profiling](https://hl7.org/fhir/R4/profiling.html) 說明此規則。本主題保留既有資源的 canonical，另建居護衍生 Profile。

| 居護定義 | 重用基礎 | 用途與差異 |
| --- | --- | --- |
| [HNPatient](StructureDefinition-HNPatient.html) | LTCPatient | 沿用識別、中文姓名、地址及緊急聯絡人，新增來源表單關聯 |
| [HNEpisodeOfCare](StructureDefinition-HNEpisodeOfCare.html) | LTCEpisodeOfCareBase | 區分多次收案及結案，新增識別與來源表單 |
| 二十三種個案表單 Response | LTCQuestionnaireResponse | 繼承問卷、個案及填寫時間，新增固定問卷、Slice、型態與選項繫結 |
| [HNStaffEgyResponse](StructureDefinition-HNStaffEgyResponse.html) | FHIR QuestionnaireResponse | 既有表單主體限 LTCPatient；工作人員改以 Practitioner 為主體，建立者為 Organization |
| 二十四張 Questionnaire | LTCQuestionnaire | 定義所有表單欄位、題目、重複結構及可選答案 |
| [HNCarePlan](StructureDefinition-HNCarePlan.html) | LTCCarePlan | 串聯目標、措施、評值及停止資訊 |
| [HNGoal](StructureDefinition-HNGoal.html) | LTCGoal | 保留文字敘述，新增主要目標旗標及來源表單 |
| [HNCommunication](StructureDefinition-HNCommunication.html) | LTCCommunicationServiceA | 共照紀錄、提供者及完整來源表單 |
| [HNVitalSigns](StructureDefinition-HNVitalSigns.html) | FHIR R4 vitalspanel | 以 hasMember 重用既有體溫、心率、呼吸、血壓及血氧 Profile；血糖與量測組使用共同來源表單 |
| 血糖 | 直接重用 PASportObservationGlucose | 沿用 LOINC 2339-0 及 UCUM mg/dL |
| [HNWound](StructureDefinition-HNWound.html) | TW Core Observation-simple | 既有壓傷 Condition 的語意無法涵蓋其他傷口；每個傷口建立一筆 Observation |
| [HNAPITask](StructureDefinition-HNAPITask.html) | LTCTask | 十二種作業、查詢輸入、接收訊息及共照名單更新指示 |
| [HNOperationOutcome](StructureDefinition-HNOperationOutcome.html) | FHIR OperationOutcome | 既有 Outcome 為其他來源系統專用，因此另定義居護訊息 |

量測組直接沿用 FHIR R4 vitalspanel，因 LTCObservationVitalSigns 繼承的 TW Core hasMember 限制無法接受現有血壓 Profile。體溫、心率、呼吸、血壓、血氧及血糖均直接重用既有 PASportObservation Profile。

ADL、IADL、認知與衰弱表單共用長照 QuestionnaireResponse 基礎。居護 ADL 有十題，且傳送文字選項；既有 ADL Profile 固定十一題與整數答案，不能直接繼承為這十題。認知表單也不能當成 MMSE 或 CDR 直接交換。此處保留各表單的原始題意，不自行計算或上傳已刪除的總分。

#### 全人評估表單

每一個評估陣列元素建立一筆 QuestionnaireResponse。透過 `ExtHNEpisode` 參照收案，`Date`、`NurseID` 保留在結構化表單；`authored` 是 FHIR 表單製作時間，不以臆測的時刻補足只有日期的評估資料。

| 原 API 陣列 | 問卷及 Profile | 主要內容 |
| --- | --- | --- |
| `HealthyHabits` | [健康紀錄](StructureDefinition-HNHealthyHabitsResponse.html) | 菸酒檳榔狀態及年數、過敏、疫苗 |
| `MedicalHistories` | [疾病史](StructureDefinition-HNMedicalHistoriesResponse.html) | 主次診斷、十四類疾病史 |
| `DrugSafeties` | [藥物安全性](StructureDefinition-HNDrugSafetiesResponse.html) | 長期用藥、多重用藥、自行購藥及使用中藥物 |
| `BodyEvaluations` | [身體評估](StructureDefinition-HNBodyEvaluationsResponse.html) | 意識、視聽力、溝通、進食、排泄、皮膚、肌力、行動及呼吸輔助 |
| `PressureInjuries` | [壓力性損傷危險](StructureDefinition-HNPressureInjuriesResponse.html) | 六項危險評估 |
| `FallRisks` | [跌倒危險性](StructureDefinition-HNFallRisksResponse.html) | 八項危險因素及多選說明 |
| `ADLs` | [日常生活功能](StructureDefinition-HNADLsResponse.html) | 十項日常生活活動 |
| `IADLs` | [工具性日常生活活動](StructureDefinition-HNIADLsResponse.html) | 八項工具性活動 |
| `Dementias` | [認知功能](StructureDefinition-HNDementiasResponse.html) | 日期、地點、個人資訊等題目；電話及住址依來源續答規則處理 |
| `GeriatricDepressionScales` | [情緒問題](StructureDefinition-HNGeriatricDepressionScalesResponse.html) | 五項情緒問題 |
| `MNASFs` | [簡易營養](StructureDefinition-HNMNASFsResponse.html) | 營養評估；BMI 無法取得時使用圍度替代題 |
| `PainEvaluations` | [疼痛](StructureDefinition-HNPainEvaluationsResponse.html) | 可言語、無法言語及其他情形，分別保留 Questions 與 QuestionsNot |
| `SOFs` | [衰弱](StructureDefinition-HNSOFsResponse.html) | 體重減輕、下肢功能及活力降低 |

來源要求一般評估表單的題目不得缺少，但答案可以空白。因此 Profile 區分必備 `item` 與選填 `answer`，不把空白轉成「否」、零分或未知的虛構答案。藥物、認知、情緒、疼痛與衰弱依來源允許的情況省略題目，無法評估時填寫原因。是否須續答仍依來源的條件判斷；型態與 Slice 驗證不能取代所有跨題業務檢查。

`IsTemporary` 是選填的原始旗標。明確填「是」時，FHIR 狀態使用 `in-progress`；明確填「否」時使用 `completed` 或 `amended`。原欄位未提供時，保留未提供的事實，FHIR 狀態依實際文件狀態設定。

#### 臨床資源對應

FHIR 表單完整保留來源內容。需要以一般 FHIR 查詢交換的核心內容，再表達為原生臨床資源，並以 `ExtHNSourceForm` 參照來源表單。表單及臨床資源有共同的收案參照。

| 來源欄位 | FHIR 路徑與處理 |
| --- | --- |
| `CaseName`、`Sex.Value`、`Birthdate` | Patient.name、gender、birthDate；男／女／其他依序為 male／female／other，補述保留於來源表單 |
| `PhoneNumber`、`Address` | Patient.telecom、address；City 為 state，Area 為 city，Lane 為 line |
| 緊急聯絡人姓名、關係、電話 | Patient.contact；主要照顧者與共照名單保留於基本資料表單 |
| 教育、婚姻、宗教、職業、經濟、福利、重大事件 | 基本資料表單的各自 Slice；原文字選項不強行等同既有 CMS 或轉介代碼 |
| `TargetStatement`、`TargetStatement2` | Goal.description.text、note；來源完整敘述保留於目標表單 |
| `TargetCreateDate`、`EstimatedDate` | Goal.startDate、target.dueDate |
| `IsMainTarget` | ExtHNMainTarget.valueBoolean |
| `MeasureContent`、`MeasureCreateDate` | CarePlan.activity.detail.description、scheduledPeriod.start |
| `MeasureStopDate`、`MeasureStopContent`、`MeasureStopNurseID` | ExtHNMeasureStop 的 date、reason、nurse；活動狀態設 stopped |
| `EvaluationContent`、`EvaluationDate` | HNEvaluationsResponse；CarePlan.activity.outcomeReference 參照該表單 |
| 共照 `Statement`、`MedicalName`、`Title` | Communication.payload.contentString、sender；成員無身分證字號時不得建立假的識別碼 |
| `CaseClose.Date` | EpisodeOfCare.period.end；處理成功後才更新為 finished，原因及人員保留於結案表單 |
| `CarePlanClose.CloseDate`、`CloseID` | 指定目標的 Goal.lifecycleStatus 及來源結案表單；只關閉指定目標，不直接結束其他目標或整個收案 |
| `Temperature`、`Pulse`、`Respiration` | HNVitalSigns.hasMember 的 temperature、pulse、respiration，分別參照既有量測 Profile |
| `BloodPressure1`、`BloodPressure2`、`BloodOxygen` | 血壓沿用 PASportObservationBloodPressure 的 SystolicBP、DiastolicBP component；血氧沿用 PASportObservationPeripheralOxygenSaturation |
| `BloodGlucose` | PASportObservationGlucose.valueQuantity；與 HNVitalSigns 共同放入交換 Bundle，參照同一來源表單 |
| `WoundRecords[]` | 每個傷口一筆 HNWound，保留多個部位與各自的尺寸／分期 |
| `FJM` | CareRecord 表單的巢狀 FJM、Answers、FJMList、FJMVas；每筆操作保留項目、有無反應與觀察 |
| 人員緊急事件 | HNStaffEgyResponse.subject 參照工作人員；Name、IDNo、Title、事件、通報、處理及檢討分別填入 Slice |

`HNGoal` 沿用父層必填的 description.coding。若已有適切標準代碼，應先使用標準代碼；只有無適切概念時才使用本 IG 的 `care-goal` 並提供完整 description.text。此本地代碼不宣稱與特定標準概念等價。

#### 生命徵象與傷口

原 API 的生命徵象數值多為字串；FHIR 改用 decimal／integer 或 Quantity。體溫採 UCUM `Cel`，脈搏與呼吸採 `/min`，血壓採 `mm[Hg]`，血糖採 `mg/dL`，血氧採 `%`。獨立 API 使用 `RecordDate`／`RecordTime`，內嵌生命徵象使用 `Date`／`Time`。建立 Observation.effectiveDateTime 時使用實際時區，範例採 `+08:00`。

原規範未明訂傷口長寬深的單位。本 IG 保留數值，不默認公分。若交換雙方另有明確量測單位，應一併傳送並記錄其依據。

| V5.0.16 傷口分類 | 有效等級 | 特別規則 |
| --- | --- | --- |
| 壓傷 | 第一期、第二期、第三期、第四期、無法分期、深層組織壓力性損傷 | 只有無法分期時，長寬深可空白；Observation 以 dataAbsentReason 表達缺值 |
| 失禁性皮膚炎 | 1A、1B、2A、2B | 不使用舊的 1級／2級／3級 |
| 其他 | 空白 | 必須填寫 Statement；Observation 省略 level component |

舊版急性／慢性傷口分類、一度至四度、壓傷 1級至4級及不可分級(分類)均已被灰底刪除。`Level` 表格仍寫 String(3)，卻新增較長名稱；本 IG 採有效選項，不把新分期截成三字。

#### 空值、刪除及處理結果

FHIR JSON 不傳送空字串、null 物件或空陣列。來源題目有空答案時，保留該 item 並省略 answer。可重複的原始群組以重複 group item 表達；多選欄位以重複 answer 表達。這與 [FHIR R4 QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html) 的題目及答案結構一致。

`Medicals` 與 `Relatives` 的更新各自處理：

| 原始輸入 | 更新意圖 | Task.extension[collectionUpdate] |
| --- | --- | --- |
| 未填或 null | 保留既有資料 | action = preserve |
| 非空陣列 | 取代指定名單 | action = replace，內容由來源表單提供 |
| 空陣列 | 清空指定名單 | action = clear |

不能只從省略的 QuestionnaireResponse.item 判斷是否清空。因此有更新動作時，必須附帶名單種類與更新指示。此設計描述來源操作，不改變一般 FHIR PUT 的替換語意。

[上傳接收回覆模型](StructureDefinition-HNUploadAcknowledgementModel.html) 記錄每支上傳 API 的 `{ "code": 200, "message": "Success." }` 只代表檔案接收成功，系統另以排程匯入。範例 Task 使用 `received` 及 `uploaded`。後續確認匯入成功才設為 completed；若處理失敗則記錄失敗訊息。規範沒有列出 GetLog／GetLogByTicket 的回傳 schema、完整錯誤碼或追蹤碼配發欄位，因此本 IG 不虛構這些內容。

`GetLog` 日期採 `yyyy/MM/dd`，不同於其他資料欄位的 `yyyy-MM-dd`。未填結束日時，來源採起始日的隔天；本 IG 不推定查詢區間的包含／排除邊界。`ticket` 使用字串保留八位數字及前導零。

`CarePlan` 一份檔案中任何一筆資料錯誤，整份都不匯入。FHIR 端若以 transaction 提交對應資源，也應保持整份操作的原子性；各資源通過 Profile 驗證仍不代表摘要與目標的跨筆比對已成功。

#### 來源文件差異的處理

| 差異 | 本 IG 的處理 |
| --- | --- |
| 灰底仍保留 AssessmentNo、targetNo、measureNo、Record_No、recordNo、RecordNo、EvaluationTime、OpID 等舊文字 | 不建立這些已刪除欄位；來源對照時須查看頁面，不能只依抽出的文字 |
| Medicals 的 `IdNo` 與 JSON 範例 `IDNo`；Relatives 的 `Relationship` 與範例 `RelationShip` | 模型依有效參數表使用 IdNo、Relationship；來源轉接器須處理這項大小寫差異 |
| 參數表把 `Unplanned`／`Emergency` 寫成 object，JSON 範例使用 array | 模型依參數表採單一物件；原 API 若實際接受多筆，須先確認服務行為再放寬，不宣稱多筆已受本版模型支援 |
| FJM.Answers 表格寫 array，但 JSON 範例為含 Values／FJMList／FJMVas 的物件 | 採範例的結構化答案物件；FJMVas 巢狀於 Answers，不攤平到 FJM |
| Birthdate 等拒答包裝、疫苗舊欄位及部分親友電話欄位仍出現在刪除區 | 採現行基本日期、電話及健康紀錄疫苗結構 |
| 疫苗 Other 可填「不記得」；事件 Time 有班別選項 | 保留文字或班別，不捏造 Immunization 日期或精確事件時間 |
| CarePlanClose 的 CloseDate／CloseID 為選填 | 保留選填；未提供結案日期時不自行設定完成日期 |
| `Temperature ` 在範例帶尾端空白 | 採有效參數表的 Temperature，轉接時不得將空白視為新欄位 |
| 疼痛無法言語分支提供範例，但未完整列出所有答案選項表 | 保留五項題目及文字答案，不以單一範例值建立不完整的 required 值集 |

身障類別重用既有 ConditionDisabilityTypeCSTWLTC 的 01–08 代碼，值集只取居護使用的八類，不複製既有 CodeSystem。其完整名稱由欄位清單對應回原 API。

縣市與鄉鎮市區使用印刷頁 140–151 的名稱表。FHIR Address 採文字，不重建一套與現有臺灣行政區代碼競爭的 CodeSystem；轉接端仍須檢查來源版本允許的縣市與區域配對。

#### 範例與維護

| 情境 | 範例 |
| --- | --- |
| 收案 | [Patient](Patient-hn-patient-example.html)、[EpisodeOfCare](EpisodeOfCare-hn-episode-example.html)、[基本資料表單](QuestionnaireResponse-hn-basedata-example.html) |
| 評估 | [身體評估](QuestionnaireResponse-hn-bodyevaluations-example.html)、[ADL](QuestionnaireResponse-hn-adls-example.html)、[疼痛](QuestionnaireResponse-hn-painevaluations-example.html)、[可言語](QuestionnaireResponse-hn-pain-verbal-example.html)、[無法言語](QuestionnaireResponse-hn-pain-nonverbal-example.html) |
| 計畫 | [交易 Bundle](Bundle-hn-careplan-transaction-example.html)、[Goal](Goal-hn-goal-example.html)、[CarePlan](CarePlan-hn-careplan-example.html) |
| 足部護理 | [十七組評估與九十二項操作](QuestionnaireResponse-hn-foot-record-example.html) |
| 多筆傷口 | [完整表單](QuestionnaireResponse-hn-carerecord-wounds-example.html)、[無法分期壓傷](Observation-hn-wound-pressure-example.html)、[失禁性皮膚炎](Observation-hn-wound-iad-example.html)、[其他傷口](Observation-hn-wound-other-example.html) |
| 生命徵象 | [交換 Bundle](Bundle-hn-vital-bundle-example.html)、[量測組](Observation-hn-vital-signs-example.html)、[血糖](Observation-hn-glucose-example.html) |
| 共照與人員事件 | [Communication](Communication-hn-communication-example.html)、[人員事件表單](QuestionnaireResponse-hn-staffegy-example.html) |
| 接收及查詢 | [上傳已接收](Task-hn-upload-task-example.html)、[日期查詢](Task-hn-getlog-task-example.html)、[追蹤碼查詢](Task-hn-ticket-task-example.html) |

每張表單另附一筆 FSH 範例。基本範例示範必備結構，部分評估保留未作答項目，不能當成已完成的臨床評估。

欄位清單維護於 `scripts/home_nursing/schema.json`。執行 `python3 scripts/home_nursing/generate.py` 產生表單、Logical Model、選項 CS／VS 與逐欄 Mapping。臨床 Profile、Extension 及情境範例另行維護，產生器不覆寫。產生器不呼叫原始居護 API。

驗證時先執行 `sushi .`，再執行 `./_genonce.sh`，使用 `https://tx.fhir.org` 線上術語驗證並檢查 QA。格式、型態、繫結及已定義的 invariant 可由 FHIR 驗證器檢查；跨資源身分比對、所有續答條件、足部護理逐項完整性、名單操作及排程結果仍需介接端依來源規範檢查。

## 在宅急症照護子主題

[在宅急症照護](hah.html)擴充急症收案、實地／遠距訪視、檢驗、給藥及結案轉銜。此子主題重用共同的 LTC 定義；具體資料集與逐欄對照請見[在宅急症 Logical Model](StructureDefinition-HAHCareDataset.html)及[資料對照表](hah-mapping.html)。
