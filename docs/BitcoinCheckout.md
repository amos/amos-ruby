# Amos::BitcoinCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_id** | **String** | OpenNode charge id. |  |
| **uri** | **String** | BIP21 URI containing the on-chain address, bitcoin amount, and BOLT11 invoice. Use this value as the checkout QR code.  |  |
| **expires_at** | **Time** |  |  |

## Example

```ruby
require 'amos'

instance = Amos::BitcoinCheckout.new(
  charge_id: null,
  uri: null,
  expires_at: null
)
```

