# Amos::PaymentIntent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **capture_method** | [**PaymentIntentCaptureMethodType**](PaymentIntentCaptureMethodType.md) |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **last_payment_error** | [**LastPaymentError**](LastPaymentError.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **recurring_payment** | [**RecurringPayment**](RecurringPayment.md) |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **source** | [**TransactionSourceType**](TransactionSourceType.md) |  | [optional] |
| **state** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::PaymentIntent.new(
  id: null,
  account_id: null,
  amount: null,
  capture_method: null,
  charge_id: null,
  currency: null,
  customer_id: null,
  description: null,
  last_payment_error: null,
  metadata: null,
  recurring_payment: null,
  payment_method_id: null,
  source: null,
  state: null,
  statement_descriptor: null,
  created_at: null,
  updated_at: null
)
```

