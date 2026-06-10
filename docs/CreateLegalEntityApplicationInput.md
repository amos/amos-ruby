# Amos::CreateLegalEntityApplicationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_name** | **String** |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **ownership_type** | **String** |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **contact_email** | **String** |  | [optional] |
| **contact_phone** | **String** |  | [optional] |
| **business_address_line1** | **String** |  | [optional] |
| **business_address_line2** | **String** |  | [optional] |
| **business_city** | **String** |  | [optional] |
| **business_state** | **String** |  | [optional] |
| **business_postal_code** | **String** |  | [optional] |
| **business_country** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateLegalEntityApplicationInput.new(
  legal_name: null,
  entity_type: null,
  ownership_type: null,
  tax_id: null,
  contact_email: null,
  contact_phone: null,
  business_address_line1: null,
  business_address_line2: null,
  business_city: null,
  business_state: null,
  business_postal_code: null,
  business_country: null
)
```

