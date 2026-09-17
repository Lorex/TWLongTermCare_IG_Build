CodeSystem: HAHActivityCS
Id: hah-activity
Title: "在宅急症－照護活動代碼"
Description: "本 IG 用於區分在宅急症照護、服務與工作類型的本地代碼。不是健保支付項目或收案資格。"
* ^status = #draft
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.226771134342697356085489259848258675935"
* ^caseSensitive = true
* ^content = #complete
* #acute-home "在宅急症照護" "於個案居住地提供的一次急症照護療程。"
* #visit "訪視" "排定或提供一次照護訪視。"
* #consultation "專科照會" "請求其他專業人員評估並回覆。"
* #referral "轉介" "請求另一個機構接續照護。"
* #laboratory "檢驗" "請求檢體檢驗或現場檢測。"
* #nursing "護理處置" "請求或執行護理處置。"
* #medicine-delivery "送藥" "配送或代領藥物，不代表完成給藥。"
* #handover "交班" "傳遞照護重點與待辦事項。"
* #education "衛教" "提供個案或照顧者照護指導。"
* #care-goal "個別照護目標" "無適切標準概念時，以完整文字敘述個別照護目標。"

CodeSystem: HAHOutcomeCS
Id: hah-outcome
Title: "在宅急症－療程結束原因代碼"
Description: "區分療程結束的結果。暫停照護應使用 EpisodeOfCare.status=onhold，不以結束原因取代狀態。"
* ^status = #draft
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.232613967783434232836732114074399874838"
* ^caseSensitive = true
* ^content = #complete
* #completed-treatment "完成治療" "已完成本次急症治療或病情改善而結束療程。"
* #hospital-transfer "轉急診或住院" "因需院內照護而結束本次在宅急症療程。"
* #provider-transfer "轉其他團隊" "由其他照護團隊接續服務。"
* #withdrawn "退出照護" "個案或代理人決定退出本次照護。"
* #death "死亡" "因個案死亡而結束療程；另於 Patient 記錄死亡資訊。"
* #other "其他" "須以文字補充結束原因。"

CodeSystem: HAHVisitModeCS
Id: hah-visit-mode
Title: "在宅急症－訪視方式代碼"
Description: "記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。"
* ^status = #draft
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.305901572975225053840476976811050706474"
* ^caseSensitive = true
* ^content = #complete
* #in-person "實地訪視" "人員到個案照護地點提供服務。"
* #video "視訊診療" "以同步視訊進行診療或評估。"
* #telephone "電話評估" "以電話進行有臨床內容的評估。"

CodeSystem: HAHDocumentCS
Id: hah-document
Title: "在宅急症－摘要種類與章節代碼"
Description: "本 IG 的結案與轉銜摘要種類及章節。各欄位使用對應值集。"
* ^status = #draft
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.316425093395220320418460769744745327297"
* ^caseSensitive = true
* ^content = #complete
* #discharge-summary "結案摘要" "整理完成或結束本次療程的照護經過。"
* #transfer-summary "轉銜摘要" "提供接續照護所需的臨床資訊。"
* #course "照護經過" "收案原因、療程、訪視與評估摘要。"
* #problems "診斷與問題" "本次診斷與仍需處理的問題。"
* #allergies "過敏資訊" "已知過敏、已確認無過敏或資料缺少的情況。"
* #medications "用藥" "處方、實際給藥與接續用藥資訊。"
* #results "檢驗與量測" "與交接有關的檢驗與生命徵象。"
* #care "照護與處置" "照護計畫、目標、管路及已執行處置。"
* #follow-up "後續照護" "未完成事項、轉介與聯絡窗口。"

CodeSystem: HAHEligibilityCS
Id: hah-eligibility
Title: "在宅急症－收案評估結果代碼"
Description: "評估人員的收案建議；不代表已符合任何特定健保計畫的給付條件。"
* ^status = #draft
* ^experimental = false
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.55635949670226470396102935457099983267"
* ^caseSensitive = true
* ^content = #complete
* #eligible "建議收案" "評估人員建議開始本次在宅急症照護。"
* #ineligible "不建議收案" "評估人員不建議開始本次照護，須填寫原因。"
* #pending "待確認" "仍有待取得的資訊或待確認的條件。"
