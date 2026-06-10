# Amos::CreateExternalAccountInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **external_billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |
| **external_bank_account_profile_attributes** | [**BankAccountProfileInput**](BankAccountProfileInput.md) |  | [optional] |
| **external_card_profile_attributes** | [**CardProfileInput**](CardProfileInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateExternalAccountInput.new(
  metadata: null,
  external_billing_address_attributes: null,
  external_bank_account_profile_attributes: null,
  external_card_profile_attributes: null
)
```

