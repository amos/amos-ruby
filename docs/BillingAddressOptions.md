# Amos::BillingAddressOptions

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'amos'

Amos::BillingAddressOptions.openapi_one_of
# =>
# [
#   :'InternationalBillingAddressOptions',
#   :'UsOnlyBillingAddressOptions'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'amos'

Amos::BillingAddressOptions.openapi_discriminator_name
# => :'mode'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'amos'

Amos::BillingAddressOptions.openapi_discriminator_mapping
# =>
# {
#   :'international' => :'InternationalBillingAddressOptions',
#   :'us_only' => :'UsOnlyBillingAddressOptions'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'amos'

Amos::BillingAddressOptions.build(data)
# => #<InternationalBillingAddressOptions:0x00007fdd4aab02a0>

Amos::BillingAddressOptions.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `InternationalBillingAddressOptions`
- `UsOnlyBillingAddressOptions`
- `nil` (if no type matches)

