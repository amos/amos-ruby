# Amos::CreatePayoutInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_account_id** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | **String** |  | [optional] |
| **direction** | [**PayoutDirectionType**](PayoutDirectionType.md) |  |  |
| **prefix** | **String** |  | [optional] |
| **addenda** | **String** |  | [optional] |
| **same_day** | **Boolean** | Request same-day ACH settlement. Allowed before 2:00 PM Central on a Federal Reserve banking day. Defaults to false.  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePayoutInput.new(
  external_account_id: null,
  amount: null,
  currency: null,
  direction: null,
  prefix: null,
  addenda: null,
  same_day: null,
  metadata: null
)
```

