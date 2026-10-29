# Amos::PaymentFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Stable failure code, for example insufficient_funds, issuer_declined or incorrect_cvc. New codes may be added over time, so treat unknown values as generic_decline. |  |
| **type** | [**PaymentFailureType**](PaymentFailureType.md) |  |  |
| **message** | **String** | Human readable explanation. Safe to show to the merchant. |  |

## Example

```ruby
require 'amos'

instance = Amos::PaymentFailure.new(
  code: null,
  type: null,
  message: null
)
```

