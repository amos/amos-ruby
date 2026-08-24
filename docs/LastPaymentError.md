# Amos::LastPaymentError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **code** | **String** |  |  |
| **message** | **String** | Localized, payer-facing explanation of the failure. |  |

## Example

```ruby
require 'amos'

instance = Amos::LastPaymentError.new(
  type: null,
  code: null,
  message: null
)
```

