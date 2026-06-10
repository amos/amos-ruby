# Amos::WebhookAttempt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **webhook_request_id** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **response_body** | **Object** |  | [optional] |
| **status_code** | **Integer** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::WebhookAttempt.new(
  id: null,
  webhook_request_id: null,
  error_message: null,
  response_body: null,
  status_code: null,
  success: null,
  created_at: null,
  updated_at: null
)
```
