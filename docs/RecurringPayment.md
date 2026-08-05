# Amos::RecurringPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **initial** | **Boolean** | When true, marks the first payment in a recurring series so the processor can treat it as an initial recurring / credential-on-file setup transaction.  | [optional] |
| **network_transaction_id** | **String** | Network transaction id from the initial recurring charge, used for subsequent merchant-initiated payments.  | [optional] |
| **transaction_link_id** | **String** | Processor transaction link id for subsequent recurring payments where supported.  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::RecurringPayment.new(
  initial: null,
  network_transaction_id: null,
  transaction_link_id: null
)
```

