# Amos::RenderTokenJwt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **env** | **String** |  | [optional] |
| **origins** | **Array&lt;String&gt;** |  | [optional] |
| **render_template_id** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::RenderTokenJwt.new(
  allowed_payment_methods: null,
  env: null,
  origins: null,
  render_template_id: null
)
```

