# Amos::CreateDunningConfigurationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retry_days** | **Array&lt;Integer&gt;** | Days after a failed collection to retry, in ascending order.  |  |
| **enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateDunningConfigurationInput.new(
  retry_days: null,
  enabled: null
)
```

