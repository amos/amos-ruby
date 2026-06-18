# Amos::UpdatePaymentIntentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **recurring_payment** | [**RecurringPayment**](RecurringPayment.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::UpdatePaymentIntentInput.new(
  payment_method_id: null,
  amount: null,
  metadata: null,
  recurring_payment: null
)
```

