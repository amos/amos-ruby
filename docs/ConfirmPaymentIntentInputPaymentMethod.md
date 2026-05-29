# Amos::ConfirmPaymentIntentInputPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **bank_account_profile_attributes** | [**BankAccountProfileInput**](BankAccountProfileInput.md) |  | [optional] |
| **billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfileInput**](CardProfileInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ConfirmPaymentIntentInputPaymentMethod.new(
  metadata: null,
  bank_account_profile_attributes: null,
  billing_address_attributes: null,
  card_profile_attributes: null
)
```
