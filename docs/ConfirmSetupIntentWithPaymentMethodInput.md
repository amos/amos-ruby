# Amos::ConfirmSetupIntentWithPaymentMethodInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** |  | [optional] |
| **payment_method** | [**EmbedConfirmPaymentMethodInput**](EmbedConfirmPaymentMethodInput.md) |  |  |

## Example

```ruby
require 'amos'

instance = Amos::ConfirmSetupIntentWithPaymentMethodInput.new(
  moto: null,
  payment_method: null
)
```

