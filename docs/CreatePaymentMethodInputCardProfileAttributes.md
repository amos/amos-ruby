# Amos::CreatePaymentMethodInputCardProfileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** |  | [optional] |
| **card_holder_name** | **String** | Cardholder name. Letters, spaces, hyphens, apostrophes, and periods only.  | [optional] |
| **cvc** | **String** |  | [optional] |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |
| **first6** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **pan_type** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **wallet_payload** | **String** |  | [optional] |
| **wallet_provider** | [**WalletProviderType**](WalletProviderType.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreatePaymentMethodInputCardProfileAttributes.new(
  brand: null,
  card_holder_name: null,
  cvc: null,
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null,
  first6: null,
  last4: null,
  pan_type: null,
  token: null,
  wallet_payload: null,
  wallet_provider: null
)
```

