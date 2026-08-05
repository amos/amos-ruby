# Amos::CreateRenderTemplateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethodInput&gt;**](AllowedPaymentMethodInput.md) |  | [optional] |
| **billing_address_options** | [**BillingAddressOptions**](BillingAddressOptions.md) |  |  |
| **currency** | **String** |  | [optional] |
| **origin_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateRenderTemplateInput.new(
  allowed_payment_methods: null,
  billing_address_options: null,
  currency: null,
  origin_ids: null
)
```

