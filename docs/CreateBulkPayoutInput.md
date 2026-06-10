# Amos::CreateBulkPayoutInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **external_account_id** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | **String** |  | [optional] |
| **direction** | **String** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateBulkPayoutInput.new(
  account_id: null,
  external_account_id: null,
  amount: null,
  currency: null,
  direction: null,
  metadata: null
)
```

