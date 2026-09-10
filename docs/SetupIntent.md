# Amos::SetupIntent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** | Legacy account association. Null for organization-scoped setup intents. | [optional] |
| **organization_id** | **String** | Organization that owns the setup intent. | [optional] |
| **customer_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **source** | [**TransactionSourceType**](TransactionSourceType.md) |  | [optional] |
| **state** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::SetupIntent.new(
  id: null,
  account_id: null,
  organization_id: null,
  customer_id: null,
  metadata: null,
  payment_method_id: null,
  source: null,
  state: null,
  created_at: null,
  updated_at: null
)
```

