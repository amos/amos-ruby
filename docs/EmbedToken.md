# Amos::EmbedToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | JWT string used for embedded payment and setup intent flows. When decoded, the JWT payload matches the EmbedTokenJwt schema.  | [optional] |
| **ttl** | **Integer** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::EmbedToken.new(
  token: null,
  ttl: null
)
```

