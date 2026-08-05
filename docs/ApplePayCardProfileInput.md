# Amos::ApplePayCardProfileInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_brand** | **String** |  | [optional] |
| **wallet_last4** | **String** | Display last4 from the Apple Pay payment method. | [optional] |
| **wallet_payload** | **String** | The unmodified JSON-encoded PKPaymentToken. |  |
| **wallet_provider** | [**WalletProviderType**](WalletProviderType.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ApplePayCardProfileInput.new(
  wallet_brand: null,
  wallet_last4: null,
  wallet_payload: null,
  wallet_provider: null
)
```

