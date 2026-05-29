# Amos::UpdateCustomerInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **phone** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::UpdateCustomerInput.new(
  account_id: null,
  name: null,
  email: null,
  metadata: null,
  phone: null,
  payment_method_id: null
)
```
