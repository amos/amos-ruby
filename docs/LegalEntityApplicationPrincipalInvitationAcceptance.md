# Amos::LegalEntityApplicationPrincipalInvitationAcceptance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Principal-scoped embed token. Send it as &#x60;Authorization: Embed &lt;token&gt;&#x60; to retrieve or update that principal, and to start or record their Plaid Identity Verification. Every other embed route responds 403. It lasts &#x60;ttl&#x60; seconds unless the invitation is revoked first.  |  |
| **ttl** | **Integer** | Seconds until the token expires (one week). |  |
| **legal_entity_application_id** | **String** |  |  |
| **legal_entity_application_principal_id** | **String** |  |  |
| **organization_name** | **String** | Name of the organization that invited the principal, for display. |  |
| **business_name** | **String** | Legal name of the business on the application, for display. Null until it&#39;s entered. |  |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntityApplicationPrincipalInvitationAcceptance.new(
  token: null,
  ttl: null,
  legal_entity_application_id: null,
  legal_entity_application_principal_id: null,
  organization_name: null,
  business_name: null
)
```

