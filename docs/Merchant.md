# Amos::Merchant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **legal_entity_id** | **String** |  | [optional] |
| **annual_credit_card_sales_volume** | **Integer** |  | [optional] |
| **allowed_payment_methods** | [**Array&lt;AllowedPaymentMethod&gt;**](AllowedPaymentMethod.md) |  | [optional] |
| **business_category** | [**MerchantBusinessCategoryType**](MerchantBusinessCategoryType.md) |  | [optional] |
| **business_description** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **customer_service_number** | **String** |  | [optional] |
| **has_accepted_credit_cards** | **Boolean** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **echeck_billing_descriptor** | **String** |  | [optional] |
| **echeck_company_name** | **String** |  | [optional] |
| **echeck_enabled** | **Boolean** |  | [optional] |
| **hard_coded_billing_descriptor** | **String** |  | [optional] |
| **max_transaction_amount** | **Integer** |  | [optional] |
| **merchant_application_id** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **naics_code** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **primary_contact_email_address** | **String** |  | [optional] |
| **primary_contact_first_name** | **String** |  | [optional] |
| **primary_contact_last_name** | **String** |  | [optional] |
| **primary_contact_phone** | **String** |  | [optional] |
| **purchase_currency** | **String** |  | [optional] |
| **settlement_currency** | **String** |  | [optional] |
| **street_address1** | **String** |  | [optional] |
| **street_address2** | **String** |  | [optional] |
| **sub_merchant_id** | **String** |  | [optional] |
| **website_url** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Merchant.new(
  id: null,
  active: null,
  organization_id: null,
  legal_entity_id: null,
  annual_credit_card_sales_volume: null,
  allowed_payment_methods: null,
  business_category: null,
  business_description: null,
  city: null,
  country_code: null,
  customer_service_number: null,
  has_accepted_credit_cards: null,
  dba_name: null,
  echeck_billing_descriptor: null,
  echeck_company_name: null,
  echeck_enabled: null,
  hard_coded_billing_descriptor: null,
  max_transaction_amount: null,
  merchant_application_id: null,
  mcc: null,
  naics_code: null,
  postal_code: null,
  primary_contact_email_address: null,
  primary_contact_first_name: null,
  primary_contact_last_name: null,
  primary_contact_phone: null,
  purchase_currency: null,
  settlement_currency: null,
  street_address1: null,
  street_address2: null,
  sub_merchant_id: null,
  website_url: null,
  created_at: null,
  updated_at: null
)
```

