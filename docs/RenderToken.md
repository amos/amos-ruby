# Amos::RenderToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | JWT string used for render template initialization. When decoded, the JWT payload matches the RenderTokenJwt schema.  | [optional] |
| **ttl** | **Integer** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::RenderToken.new(
  token: null,
  ttl: null
)
```
