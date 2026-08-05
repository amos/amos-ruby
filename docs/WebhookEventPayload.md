# Amos::WebhookEventPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable event id for this delivery. Identical across retries of the same event; use for idempotent handling.  |  |
| **webhook_id** | **String** | Id of the webhook endpoint that received this delivery. |  |
| **event** | [**WebhookEventType**](WebhookEventType.md) |  |  |
| **data** | **Hash&lt;String, Object&gt;** | Event-specific payload keyed by resource descriptor. |  |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::WebhookEventPayload.new(
  id: null,
  webhook_id: null,
  event: null,
  data: null,
  metadata: null
)
```

