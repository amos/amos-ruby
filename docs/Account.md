# Amos::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **merchant_id** | **String** |  | [optional] |
| **processor_id** | **String** |  | [optional] |
| **worldpay_mid** | **String** |  | [optional] |
| **ach_threshold** | **Integer** | ACH verification threshold in cents for this account, taken from the merchant. When the organization sets ach_threshold, that value is used instead. Amounts at or above this require Plaid verification when the render template enables it.  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Account.new(
  id: null,
  name: null,
  active: null,
  merchant_id: null,
  processor_id: null,
  worldpay_mid: null,
  ach_threshold: null,
  created_at: null,
  updated_at: null
)
```

