# Amos::EmbedConfirmBankAccountPaymentMethodInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **plaid** | [**PlaidCredentialsInput**](PlaidCredentialsInput.md) |  | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfileInput**](BankAccountProfileInput.md) |  |  |
| **billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::EmbedConfirmBankAccountPaymentMethodInput.new(
  type: null,
  metadata: null,
  plaid: null,
  bank_account_profile_attributes: null,
  billing_address_attributes: null
)
```

