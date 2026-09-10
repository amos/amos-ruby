# Amos::Origin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |
| **applepay_registration_state** | [**OriginApplepayRegistrationStateType**](OriginApplepayRegistrationStateType.md) | Apple Pay merchant-domain registration status for this origin host. Null until registration is enabled. | [optional] |
| **applepay_registration_error** | **String** | Last Apple Pay registration or unregistration error, if any | [optional] |
| **applepay_registered_at** | **Time** | When this origin host was last registered with Apple Pay | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Origin.new(
  id: null,
  value: null,
  applepay_registration_state: null,
  applepay_registration_error: null,
  applepay_registered_at: null,
  created_at: null,
  updated_at: null
)
```

