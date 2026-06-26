# Amos::RenderTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **currency** | **String** |  | [optional] |
| **moto** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::RenderTemplate.new(
  id: null,
  organization_id: null,
  allowed_payment_methods: null,
  currency: null,
  moto: null
)
```

