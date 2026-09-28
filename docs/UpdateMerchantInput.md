# Amos::UpdateMerchantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **business_category** | [**MerchantBusinessCategoryType**](MerchantBusinessCategoryType.md) |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethodInput&gt;**](AllowedPaymentMethodInput.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::UpdateMerchantInput.new(
  active: null,
  business_category: null,
  dba_name: null,
  allowed_payment_methods: null
)
```

