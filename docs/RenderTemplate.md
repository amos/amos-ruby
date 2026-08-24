# Amos::RenderTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **billing_address_options** | [**BillingAddressOptions**](BillingAddressOptions.md) |  |  |
| **currency** | **String** |  | [optional] |
| **last_used_at** | **Time** |  | [optional] |
| **origins** | [**Array&lt;Origin&gt;**](Origin.md) |  |  |

## Example

```ruby
require 'amos'

instance = Amos::RenderTemplate.new(
  id: null,
  organization_id: null,
  allowed_payment_methods: null,
  billing_address_options: null,
  currency: null,
  last_used_at: null,
  origins: null
)
```

