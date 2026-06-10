# Amos::CreatePayoutInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_account_id** | **String** |  |  |
| **amount** | **Integer** |  |  |
| **currency** | **String** |  | [optional] |
| **direction** | **String** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePayoutInput.new(
  external_account_id: null,
  amount: null,
  currency: null,
  direction: null,
  metadata: null
)
```

