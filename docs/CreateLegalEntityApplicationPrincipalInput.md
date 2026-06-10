# Amos::CreateLegalEntityApplicationPrincipalInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **date_of_birth** | **String** |  | [optional] |
| **address_line1** | **String** |  | [optional] |
| **address_line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **stake_percent** | **Integer** |  | [optional] |
| **contact_phone** | **String** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateLegalEntityApplicationPrincipalInput.new(
  legal_entity_application_id: null,
  title: null,
  first_name: null,
  last_name: null,
  email: null,
  tax_id: null,
  date_of_birth: null,
  address_line1: null,
  address_line2: null,
  city: null,
  state: null,
  country: null,
  postal_code: null,
  stake_percent: null,
  contact_phone: null
)
```

