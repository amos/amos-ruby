# Amos::Payout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **addenda** | **String** |  | [optional] |
| **external_account_id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **direction** | [**PayoutDirectionType**](PayoutDirectionType.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **prefix** | **String** |  | [optional] |
| **public_id** | **String** |  | [optional] |
| **state** | [**PayoutStateType**](PayoutStateType.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Payout.new(
  id: null,
  account_id: null,
  addenda: null,
  external_account_id: null,
  amount: null,
  currency: null,
  direction: null,
  metadata: null,
  prefix: null,
  public_id: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

