# Amos::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **type** | **String** |  | [optional] |
| **bank_account_profile** | [**BankAccountProfile**](BankAccountProfile.md) |  | [optional] |
| **billing_address** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_profile** | [**CardProfile**](CardProfile.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::PaymentMethod.new(
  id: null,
  customer_id: null,
  metadata: null,
  type: null,
  bank_account_profile: null,
  billing_address: null,
  card_profile: null,
  created_at: null,
  updated_at: null
)
```

