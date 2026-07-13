# Amos::LegalEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **parent_legal_entity_id** | **String** |  | [optional] |
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
| **tax_id_last4** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntity.new(
  id: null,
  organization_id: null,
  legal_name: null,
  parent_legal_entity_id: null,
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
  tax_id_last4: null,
  created_at: null
)
```

