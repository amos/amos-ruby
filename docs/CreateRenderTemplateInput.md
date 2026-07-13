# Amos::CreateRenderTemplateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethodInput&gt;**](AllowedPaymentMethodInput.md) |  | [optional] |
| **currency** | **String** |  | [optional] |
| **origin_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateRenderTemplateInput.new(
  allowed_payment_methods: null,
  currency: null,
  origin_ids: null
)
```

