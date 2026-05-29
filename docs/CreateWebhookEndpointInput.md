# Amos::CreateWebhookEndpointInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **active** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateWebhookEndpointInput.new(
  event: null,
  metadata: null,
  active: null,
  url: null
)
```
