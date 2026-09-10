# Amos::EmbedTokenJwt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Present for payment intent embed tokens. Null for setup intents. | [optional] |
| **organization_id** | **String** | Present for setup intent embed tokens. Null for payment intents. | [optional] |
| **payment_intent_id** | **String** | Present for payment intent embed tokens. Null for setup intents. | [optional] |
| **setup_intent_id** | **String** | Present for setup intent embed tokens. Null for payment intents. | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::EmbedTokenJwt.new(
  account_id: null,
  organization_id: null,
  payment_intent_id: null,
  setup_intent_id: null
)
```

