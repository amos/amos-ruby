# Amos::BankAccountProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_holder_name** | **String** |  | [optional] |
| **account_holder_type** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **bank_name** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **fingerprint** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **routing_number** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **token** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::BankAccountProfile.new(
  account_holder_name: null,
  account_holder_type: null,
  account_type: null,
  bank_name: null,
  failure_reason: null,
  fingerprint: null,
  last4: null,
  routing_number: null,
  state: null,
  token: null,
  created_at: null,
  updated_at: null
)
```

