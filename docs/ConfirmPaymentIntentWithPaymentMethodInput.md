# Amos::ConfirmPaymentIntentWithPaymentMethodInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  | [optional] |
| **payment_method** | [**EmbedConfirmPaymentMethodInput**](EmbedConfirmPaymentMethodInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ConfirmPaymentIntentWithPaymentMethodInput.new(
  payment_method_id: null,
  payment_method: null
)
```

