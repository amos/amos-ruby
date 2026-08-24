# Amos::AllowedCardPaymentMethodOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moto** | **Boolean** | When true, this surface supports MOTO card entry (cardholder not present). Only supported on render templates.  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::AllowedCardPaymentMethodOptions.new(
  moto: null
)
```

