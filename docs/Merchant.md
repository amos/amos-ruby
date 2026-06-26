# Amos::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **legal_entity_id** | **String** |  | [optional] |
| **annual_credit_card_sales_volume** | **Integer** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **has_accepted_credit_cards** | **Boolean** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **mcc** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Merchant.new(
  id: null,
  organization_id: null,
  legal_entity_id: null,
  annual_credit_card_sales_volume: null,
  allowed_payment_methods: null,
  has_accepted_credit_cards: null,
  dba_name: null,
  metadata: null,
  mcc: null,
  created_at: null,
  updated_at: null
)
```

