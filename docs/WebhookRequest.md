# Amos::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **eventable_id** | **String** |  | [optional] |
| **eventable_type** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **webhook_endpoint_id** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **request_body** | [**WebhookEventPayload**](WebhookEventPayload.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::WebhookRequest.new(
  id: null,
  eventable_id: null,
  eventable_type: null,
  organization_id: null,
  webhook_endpoint_id: null,
  expires_at: null,
  request_body: null,
  created_at: null,
  updated_at: null
)
```

