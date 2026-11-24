# Amos::LegalEntityApplicationPrincipal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_entity_application_id** | **String** |  | [optional] |
| **legal_entity_id** | **String** |  | [optional] |
| **application_state** | **String** |  | [optional] |
| **checks** | [**LegalEntityApplicationPrincipalChecks**](LegalEntityApplicationPrincipalChecks.md) |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **date_of_birth** | **String** |  | [optional] |
| **address_line1** | **String** |  | [optional] |
| **address_line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **stake_percent** | **Integer** |  | [optional] |
| **contact_phone** | **String** |  | [optional] |
| **tax_id_last4** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **email_verified_at** | **Time** | When the principal confirmed their email, by entering an emailed code or accepting an invitation. Reset to null when the email changes. The embedded application moves to submitted only once at least one principal has verified both email and identity. Admin approval requires every principal to have verified their email and identity, unless the underwriter skips that check. The API-key approve route does not.  | [optional] |
| **invitation_sent_at** | **Time** | When the principal&#39;s open invitation was sent. Null when there is none. | [optional] |
| **invitation_expires_at** | **Time** | When the principal&#39;s open invitation expires. Null when there is none. | [optional] |
| **invitation_accepted_at** | **Time** | When the principal accepted the invitation that still backs their embed session. Null when there is no live session. Revoking the invitation clears it. The email can stay verified. | [optional] |
| **identity_verification_status** | **String** | Status of the principal&#39;s latest Plaid Identity Verification. Null until a Link session is recorded. Completing Link means the applicant submitted the steps the template asked for, including a camera selfie when the template includes Selfie Check. &#x60;success&#x60; means those checks passed. | [optional] |
| **identity_manually_verified_at** | **Time** | When an admin marked the principal&#39;s identity verified after a check done outside Plaid. Null otherwise. | [optional] |
| **identity_verified** | **Boolean** | True when Plaid identity verification is &#x60;success&#x60; or &#x60;pending_review&#x60;, or an admin verified the identity. Email is tracked separately in &#x60;email_verified_at&#x60;. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntityApplicationPrincipal.new(
  id: null,
  legal_entity_application_id: null,
  legal_entity_id: null,
  application_state: null,
  checks: null,
  first_name: null,
  last_name: null,
  email: null,
  date_of_birth: null,
  address_line1: null,
  address_line2: null,
  city: null,
  state: null,
  country: null,
  postal_code: null,
  stake_percent: null,
  contact_phone: null,
  tax_id_last4: null,
  title: null,
  email_verified_at: null,
  invitation_sent_at: null,
  invitation_expires_at: null,
  invitation_accepted_at: null,
  identity_verification_status: null,
  identity_manually_verified_at: null,
  identity_verified: null,
  created_at: null,
  updated_at: null
)
```

