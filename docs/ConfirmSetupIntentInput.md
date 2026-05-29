# Amos::ConfirmSetupIntentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** |  | [optional] |
| **payment_method** | [**ConfirmPaymentIntentInputPaymentMethod**](ConfirmPaymentIntentInputPaymentMethod.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ConfirmSetupIntentInput.new(
  moto: null,
  payment_method: null
)
```
