# Amos::CreatePaymentIntentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **capture_method** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePaymentIntentInput.new(
  amount: null,
  capture_method: null,
  customer_id: null,
  description: null,
  statement_descriptor: null,
  metadata: null
)
```

