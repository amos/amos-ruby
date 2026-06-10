# Amos::CreateRefundInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **adjustment_reason** | **String** |  | [optional] |
| **parent_transaction_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateRefundInput.new(
  amount: null,
  adjustment_reason: null,
  parent_transaction_id: null,
  description: null,
  metadata: null
)
```

