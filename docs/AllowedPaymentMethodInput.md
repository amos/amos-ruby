# Amos::AllowedPaymentMethodInput

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethodInput.openapi_one_of
# =>
# [
#   :'AllowedBankAccountPaymentMethodInput',
#   :'AllowedCardPaymentMethodInput',
#   :'AllowedGooglePayPaymentMethodInput'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethodInput.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethodInput.openapi_discriminator_mapping
# =>
# {
#   :'bank_account' => :'AllowedBankAccountPaymentMethodInput',
#   :'card' => :'AllowedCardPaymentMethodInput',
#   :'googlepay' => :'AllowedGooglePayPaymentMethodInput'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethodInput.build(data)
# => #<AllowedBankAccountPaymentMethodInput:0x00007fdd4aab02a0>

Amos::AllowedPaymentMethodInput.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AllowedBankAccountPaymentMethodInput`
- `AllowedCardPaymentMethodInput`
- `AllowedGooglePayPaymentMethodInput`
- `nil` (if no type matches)

