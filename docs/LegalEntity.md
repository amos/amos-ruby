# Amos::LegalEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_name** | **String** |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **ownership_type** | **String** |  | [optional] |
| **contact_email** | **String** |  | [optional] |
| **contact_phone** | **String** |  | [optional] |
| **business_address_line1** | **String** |  | [optional] |
| **business_address_line2** | **String** |  | [optional] |
| **business_city** | **String** |  | [optional] |
| **business_state** | **String** |  | [optional] |
| **business_postal_code** | **String** |  | [optional] |
| **business_country** | **String** |  | [optional] |
| **tax_id_last4** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntity.new(
  id: null,
  legal_name: null,
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
  tax_id_last4: null
)
```

