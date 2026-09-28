# Amos::CreatePaymentMethodInputBankAccountProfileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last4** | **String** |  | [optional] |
| **account_holder_name** | **String** | Account holder name. Letters, spaces, hyphens, apostrophes, and periods only.  | [optional] |
| **account_holder_type** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **account_number** | **String** | Bank account number. Stored encrypted at rest and not returned in API responses.  | [optional] |
| **token** | **String** |  | [optional] |
| **routing_number** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePaymentMethodInputBankAccountProfileAttributes.new(
  last4: null,
  account_holder_name: null,
  account_holder_type: null,
  account_type: null,
  bank_name: null,
  currency: null,
  account_number: null,
  token: null,
  routing_number: null
)
```

