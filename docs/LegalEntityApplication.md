# Amos::LegalEntityApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **legal_entity_id** | **String** |  | [optional] |
| **entity_type** | [**LegalEntityEntityType**](LegalEntityEntityType.md) |  | [optional] |
| **ownership_type** | [**LegalEntityOwnershipType**](LegalEntityOwnershipType.md) |  | [optional] |
| **contact_email** | **String** |  | [optional] |
| **contact_phone** | **String** |  | [optional] |
| **business_address_line1** | **String** |  | [optional] |
| **business_address_line2** | **String** |  | [optional] |
| **business_city** | **String** |  | [optional] |
| **business_state** | **String** |  | [optional] |
| **business_postal_code** | **String** |  | [optional] |
| **business_country** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **tax_id_last4** | **String** |  | [optional] |
| **approved_at** | **Time** |  | [optional] |
| **denied_at** | **Time** |  | [optional] |
| **needs_information_at** | **Time** |  | [optional] |
| **decision_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **requirements** | [**Array&lt;LegalEntityApplicationRequirement&gt;**](LegalEntityApplicationRequirement.md) |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntityApplication.new(
  id: null,
  legal_name: null,
  legal_entity_id: null,
  entity_type: null,
  ownership_type: null,
  contact_email: null,
  contact_phone: null,
  business_address_line1: null,
  business_address_line2: null,
  business_city: null,
  business_state: null,
  business_postal_code: null,
  business_country: null,
  state: null,
  tax_id_last4: null,
  approved_at: null,
  denied_at: null,
  needs_information_at: null,
  decision_reason: null,
  created_at: null,
  updated_at: null,
  requirements: null
)
```

