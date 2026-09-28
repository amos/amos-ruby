# Amos::Subscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **cancel_at** | **Time** |  | [optional] |
| **cancel_at_period_end** | **Boolean** |  | [optional] |
| **cancelled_at** | **Time** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **cycles** | **Integer** |  | [optional] |
| **subscription_plan_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **interval** | [**SubscriptionIntervalType**](SubscriptionIntervalType.md) |  | [optional] |
| **interval_count** | **Integer** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **start_at** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **cycles_completed** | **Integer** |  | [optional] |
| **skip_billing_periods_remaining** | **Integer** |  | [optional] |
| **skipped_billing_periods_count** | **Integer** |  | [optional] |
| **current_billing_period_start** | **Time** |  | [optional] |
| **current_billing_period_end** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Subscription.new(
  id: null,
  amount: null,
  cancel_at: null,
  cancel_at_period_end: null,
  cancelled_at: null,
  currency: null,
  cycles: null,
  subscription_plan_id: null,
  customer_id: null,
  payment_method_id: null,
  interval: null,
  interval_count: null,
  metadata: null,
  start_at: null,
  state: null,
  cycles_completed: null,
  skip_billing_periods_remaining: null,
  skipped_billing_periods_count: null,
  current_billing_period_start: null,
  current_billing_period_end: null,
  created_at: null,
  updated_at: null
)
```

