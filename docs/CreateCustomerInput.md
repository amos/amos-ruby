# Amos::CreateCustomerInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **mailing_address_attributes** | [**MailingAddressInput**](MailingAddressInput.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateCustomerInput.new(
  account_id: null,
  name: null,
  email: null,
  phone: null,
  mailing_address_attributes: null,
  metadata: null
)
```

