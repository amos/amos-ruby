# Amos::GooglePayCardProfileInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_brand** | **String** |  | [optional] |
| **wallet_last4** | **String** |  | [optional] |
| **wallet_payload** | **String** |  | [optional] |
| **wallet_provider** | [**WalletProviderType**](WalletProviderType.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::GooglePayCardProfileInput.new(
  wallet_brand: null,
  wallet_last4: null,
  wallet_payload: null,
  wallet_provider: null
)
```

