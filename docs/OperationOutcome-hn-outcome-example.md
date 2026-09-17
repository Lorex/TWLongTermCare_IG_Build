# 居家護理接收訊息範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理接收訊息範例**

## Example OperationOutcome: 居家護理接收訊息範例

Profile: [居家護理－介接訊息](StructureDefinition-HNOperationOutcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Information | Informational Note | Success. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "hn-outcome-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNOperationOutcome"]
  },
  "issue" : [{
    "severity" : "information",
    "code" : "informational",
    "details" : {
      "text" : "Success."
    }
  }]
}

```
