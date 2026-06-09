# Amos::UpdateCustomerInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::UpdateCustomerInput.new(
  email: null,
  name: null,
  payment_method_id: null,
  phone: null,
  metadata: null
)
```
