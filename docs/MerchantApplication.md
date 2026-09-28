# Amos::MerchantApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **annual_credit_card_sales_volume** | **Integer** |  | [optional] |
| **business_category** | [**MerchantBusinessCategoryType**](MerchantBusinessCategoryType.md) |  | [optional] |
| **business_description** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **customer_service_number** | **String** |  | [optional] |
| **dba_name** | **String** |  | [optional] |
| **echeck_billing_descriptor** | **String** |  | [optional] |
| **echeck_company_name** | **String** |  | [optional] |
| **echeck_enabled** | **String** |  | [optional] |
| **hard_coded_billing_descriptor** | **String** |  | [optional] |
| **has_accepted_credit_cards** | **Boolean** |  | [optional] |
| **legal_entity_application_id** | **String** |  | [optional] |
| **max_daily_credits_amount** | **Integer** |  | [optional] |
| **max_daily_debits_amount** | **Integer** |  | [optional] |
| **max_monthly_credits_amount** | **Integer** |  | [optional] |
| **max_monthly_debits_amount** | **Integer** |  | [optional] |
| **max_single_debit_amount** | **Integer** |  | [optional] |
| **max_transaction_amount** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **primary_contact_email_address** | **String** |  | [optional] |
| **primary_contact_first_name** | **String** |  | [optional] |
| **primary_contact_last_name** | **String** |  | [optional] |
| **primary_contact_phone** | **String** |  | [optional] |
| **purchase_currency** | **String** |  | [optional] |
| **settlement_currency** | **String** |  | [optional] |
| **settlement_days** | **Integer** |  | [optional] |
| **state_province** | **String** |  | [optional] |
| **street_address1** | **String** |  | [optional] |
| **street_address2** | **String** |  | [optional] |
| **website_url** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::MerchantApplication.new(
  id: null,
  annual_credit_card_sales_volume: null,
  business_category: null,
  business_description: null,
  city: null,
  country_code: null,
  customer_service_number: null,
  dba_name: null,
  echeck_billing_descriptor: null,
  echeck_company_name: null,
  echeck_enabled: null,
  hard_coded_billing_descriptor: null,
  has_accepted_credit_cards: null,
  legal_entity_application_id: null,
  max_daily_credits_amount: null,
  max_daily_debits_amount: null,
  max_monthly_credits_amount: null,
  max_monthly_debits_amount: null,
  max_single_debit_amount: null,
  max_transaction_amount: null,
  mcc: null,
  postal_code: null,
  primary_contact_email_address: null,
  primary_contact_first_name: null,
  primary_contact_last_name: null,
  primary_contact_phone: null,
  purchase_currency: null,
  settlement_currency: null,
  settlement_days: null,
  state_province: null,
  street_address1: null,
  street_address2: null,
  website_url: null,
  created_at: null,
  updated_at: null
)
```

