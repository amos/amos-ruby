# Amos::CreateExternalAccountInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_application_id** | **String** | When creating a bank account, links it as this merchant application&#39;s settlement account. The account is not verified. Ignored verification fields cannot be set by the client.  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **external_billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |
| **external_bank_account_profile_attributes** | [**BankAccountProfileInput**](BankAccountProfileInput.md) |  | [optional] |
| **external_card_profile_attributes** | [**CardProfileInput**](CardProfileInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateExternalAccountInput.new(
  merchant_application_id: null,
  metadata: null,
  external_billing_address_attributes: null,
  external_bank_account_profile_attributes: null,
  external_card_profile_attributes: null
)
```

