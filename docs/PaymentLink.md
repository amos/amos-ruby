# Amos::PaymentLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **amount_type** | [**PaymentLinkAmountType**](PaymentLinkAmountType.md) |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **minimum_amount** | **Integer** |  | [optional] |
| **maximum_amount** | **Integer** |  | [optional] |
| **suggested_amounts** | **Array&lt;Integer&gt;** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **statement_descriptor** | **String** |  | [optional] |
| **success_url** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **cancel_url** | **String** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::PaymentLink.new(
  id: null,
  organization_id: null,
  account_id: null,
  slug: null,
  active: null,
  amount_type: null,
  amount: null,
  image_url: null,
  minimum_amount: null,
  maximum_amount: null,
  suggested_amounts: null,
  currency: null,
  description: null,
  statement_descriptor: null,
  success_url: null,
  title: null,
  cancel_url: null,
  allowed_payment_methods: null,
  metadata: null
)
```

