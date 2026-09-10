# Amos::EmbedToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | JWT string used for embedded payment and setup intent flows. When decoded, the JWT payload matches the EmbedTokenJwt schema. Setup intent tokens are organization-scoped (&#x60;organization_id&#x60; + &#x60;setup_intent_id&#x60;). Payment intent tokens remain account-scoped (&#x60;account_id&#x60; + &#x60;payment_intent_id&#x60;).  | [optional] |
| **ttl** | **Integer** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::EmbedToken.new(
  token: null,
  ttl: null
)
```

