# Amos::CreateVoidInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_reason** | **String** |  | [optional] |
| **parent_transaction_id** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateVoidInput.new(
  adjustment_reason: null,
  parent_transaction_id: null,
  description: null,
  metadata: null
)
```
