# Amos::WebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **events** | [**Array&lt;WebhookEventType&gt;**](WebhookEventType.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **secret** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::WebhookEndpoint.new(
  id: null,
  events: null,
  metadata: null,
  secret: null,
  url: null,
  active: null,
  created_at: null,
  updated_at: null
)
```

