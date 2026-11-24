# Amos::EmbedTokenJwt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Present for payment intent embed tokens. Null for setup intents. | [optional] |
| **organization_id** | **String** | Present for organization-scoped embed tokens, including setup intents and legal entity applications. Null for payment intents.  | [optional] |
| **payment_intent_id** | **String** | Present for payment intent embed tokens. Null for setup intents. | [optional] |
| **setup_intent_id** | **String** | Present for setup intent embed tokens. Null for payment intents. | [optional] |
| **legal_entity_application_id** | **String** | Present for legal entity application embed tokens. Null for other embed tokens.  | [optional] |
| **legal_entity_application_principal_id** | **String** | Present for principal tokens, which can only retrieve and update this principal. Null for other embed tokens.  | [optional] |
| **legal_entity_application_principal_invitation_id** | **String** | Present for principal tokens. The token stops working when this invitation is revoked, for example when a new invitation is sent or the principal&#39;s email changes. Null for other embed tokens.  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::EmbedTokenJwt.new(
  account_id: null,
  organization_id: null,
  payment_intent_id: null,
  setup_intent_id: null,
  legal_entity_application_id: null,
  legal_entity_application_principal_id: null,
  legal_entity_application_principal_invitation_id: null
)
```

