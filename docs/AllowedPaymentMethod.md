# Amos::AllowedPaymentMethod

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethod.openapi_one_of
# =>
# [
#   :'AllowedApplePayPaymentMethod',
#   :'AllowedBankAccountPaymentMethod',
#   :'AllowedCardPaymentMethod',
#   :'AllowedGooglePayPaymentMethod'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethod.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethod.openapi_discriminator_mapping
# =>
# {
#   :'applepay' => :'AllowedApplePayPaymentMethod',
#   :'bank_account' => :'AllowedBankAccountPaymentMethod',
#   :'card' => :'AllowedCardPaymentMethod',
#   :'googlepay' => :'AllowedGooglePayPaymentMethod'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'amos'

Amos::AllowedPaymentMethod.build(data)
# => #<AllowedApplePayPaymentMethod:0x00007fdd4aab02a0>

Amos::AllowedPaymentMethod.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AllowedApplePayPaymentMethod`
- `AllowedBankAccountPaymentMethod`
- `AllowedCardPaymentMethod`
- `AllowedGooglePayPaymentMethod`
- `nil` (if no type matches)

