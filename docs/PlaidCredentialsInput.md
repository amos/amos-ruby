# Amos::PlaidCredentialsInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_token** | **String** | Temporary public_token returned by Plaid Link onSuccess. |  |
| **account_id** | **String** | Selected Plaid account_id from Link metadata. |  |

## Example

```ruby
require 'amos'

instance = Amos::PlaidCredentialsInput.new(
  public_token: null,
  account_id: null
)
```

