# Amos::CreateSubscriptionPlanInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **interval** | [**SubscriptionIntervalType**](SubscriptionIntervalType.md) |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **name** | **String** |  | [optional] |
| **plan_type** | [**SubscriptionPlanType**](SubscriptionPlanType.md) |  | [optional] |
| **trial_period_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateSubscriptionPlanInput.new(
  active: null,
  amount: null,
  currency: null,
  cycles: null,
  product_id: null,
  description: null,
  interval: null,
  interval_count: null,
  metadata: null,
  name: null,
  plan_type: null,
  trial_period_days: null
)
```

