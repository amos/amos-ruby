# Amos::CreateRenderTemplateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_method_types** | **Array&lt;String&gt;** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **origin_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateRenderTemplateInput.new(
  allowed_payment_method_types: null,
  currency: null,
  origin_ids: null
)
```
