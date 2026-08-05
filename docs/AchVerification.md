# Amos::AchVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **link_token** | **String** | Short-lived Plaid Link token used to open Link in the embed client. |  |

## Example

```ruby
require 'amos'

instance = Amos::AchVerification.new(
  type: null,
  link_token: null
)
```

