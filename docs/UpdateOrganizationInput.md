# Amos::UpdateOrganizationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** | Globally unique public slug used in payment link URLs. Changing this breaks existing &#x60;/payment_links/{organization_slug}/...&#x60; links.  |  |

## Example

```ruby
require 'amos'

instance = Amos::UpdateOrganizationInput.new(
  slug: null
)
```

