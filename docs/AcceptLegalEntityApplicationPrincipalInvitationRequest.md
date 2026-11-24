# Amos::AcceptLegalEntityApplicationPrincipalInvitationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The invitation token from the emailed link. The link carries it after &#x60;#token&#x3D;&#x60;, so the invite page reads it in the browser and sends it here.  |  |

## Example

```ruby
require 'amos'

instance = Amos::AcceptLegalEntityApplicationPrincipalInvitationRequest.new(
  token: null
)
```

