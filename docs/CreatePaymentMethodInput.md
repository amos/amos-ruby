# Amos::CreatePaymentMethodInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |
| **card_profile_attributes** | [**CreatePaymentMethodInputCardProfileAttributes**](CreatePaymentMethodInputCardProfileAttributes.md) |  | [optional] |
| **bank_account_profile_attributes** | [**CreatePaymentMethodInputBankAccountProfileAttributes**](CreatePaymentMethodInputBankAccountProfileAttributes.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePaymentMethodInput.new(
  customer_id: null,
  metadata: null,
  billing_address_attributes: null,
  card_profile_attributes: null,
  bank_account_profile_attributes: null
)
```

