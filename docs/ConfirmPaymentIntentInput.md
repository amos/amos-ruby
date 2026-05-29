# Amos::ConfirmPaymentIntentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **payment_method** | [**ConfirmPaymentIntentInputPaymentMethod**](ConfirmPaymentIntentInputPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ConfirmPaymentIntentInput.new(
  moto: null,
  payment_method_id: null,
  payment_method: null
)
```
