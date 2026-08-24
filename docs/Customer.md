# Amos::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional metadata key-value pairs | [optional] |
| **name** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **payment_method_id** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **mailing_address** | [**MailingAddress**](MailingAddress.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Customer.new(
  id: null,
  account_id: null,
  email: null,
  metadata: null,
  name: null,
  organization_id: null,
  payment_method_id: null,
  phone: null,
  type: null,
  mailing_address: null,
  created_at: null,
  updated_at: null
)
```

