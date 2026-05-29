# Amos::LegalEntityApplicationRequirement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **requirement_type** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **reason_code** | **String** |  | [optional] |
| **satisfied_at** | **Time** |  | [optional] |
| **waived_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntityApplicationRequirement.new(
  id: null,
  requirement_type: null,
  state: null,
  message: null,
  reason_code: null,
  satisfied_at: null,
  waived_at: null
)
```
