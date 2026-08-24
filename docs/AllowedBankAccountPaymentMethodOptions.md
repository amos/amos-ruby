# Amos::AllowedBankAccountPaymentMethodOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification** | **Boolean** | When true, this surface collects bank account verification (Plaid) for ACH at or above the merchant ACH threshold. When omitted or false, verification is off. Only supported on render templates.  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::AllowedBankAccountPaymentMethodOptions.new(
  verification: null
)
```

