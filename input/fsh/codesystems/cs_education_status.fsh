CodeSystem: EducationStatusCSTWLTC
Id: EducationStatusCS-TWLTC
Title: "教育程度代碼"
Description: "用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。"

//* ^url = "http://ltc-ig.fhir.tw/Codesystem-EducationStatusCS-TWLTC"
* ^status = #active
* ^experimental = false
* ^date = "2024-09-02"

// 不識字、識字，未受正規教育（含私塾）、國小、國中、高中（職）、特教班-國小、特教班-國中、特教班-高中職、五專、大學（二三專）、研究所以上、其他

* #illiterate "不識字" "個案教育程度為不識字。"
* #literate "識字" "個案教育程度為識字，但未受正規教育（含私塾）。"
* #elementary "國小" "個案教育程度為國小。"
* #junior "國中" "個案教育程度為國中。"
* #senior "高中（職）" "個案教育程度為高中（職）。"
* #special-elementary "特教班-國小" "個案教育程度為特教班-國小。"
* #special-junior "特教班-國中" "個案教育程度為特教班-國中。"
* #special-senior "特教班-高中職" "個案教育程度為特教班-高中職。"
* #vocational "五專" "個案教育程度為五專。"
* #college "大學（二三專）" "個案教育程度為大學（二三專）。"
* #postgraduate "研究所以上" "個案教育程度為研究所以上。"
* #other "其他" "個案教育程度為其他。"