# Amos::CreateWebhookEndpointInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;WebhookEventType&gt;**](WebhookEventType.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **active** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateWebhookEndpointInput.new(
  events: null,
  metadata: null,
  active: null,
  url: null
)
```

