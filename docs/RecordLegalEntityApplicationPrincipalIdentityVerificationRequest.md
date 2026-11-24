# Amos::RecordLegalEntityApplicationPrincipalIdentityVerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | Link session id from Plaid Link&#39;s onSuccess metadata (&#x60;metadata.link_session_id&#x60;). Plaid uses that value as the identity verification id. |  |

## Example

```ruby
require 'amos'

instance = Amos::RecordLegalEntityApplicationPrincipalIdentityVerificationRequest.new(
  session_id: null
)
```

