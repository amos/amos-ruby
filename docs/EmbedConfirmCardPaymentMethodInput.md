# Amos::EmbedConfirmCardPaymentMethodInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **billing_address_attributes** | [**BillingAddressInput**](BillingAddressInput.md) |  | [optional] |
| **card_profile_attributes** | [**CardProfileInput**](CardProfileInput.md) |  |  |

## Example

```ruby
require 'amos'

instance = Amos::EmbedConfirmCardPaymentMethodInput.new(
  type: null,
  metadata: null,
  billing_address_attributes: null,
  card_profile_attributes: null
)
```

