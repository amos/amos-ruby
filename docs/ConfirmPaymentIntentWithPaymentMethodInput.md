# Amos::ConfirmPaymentIntentWithPaymentMethodInput

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'amos'

Amos::ConfirmPaymentIntentWithPaymentMethodInput.openapi_one_of
# =>
# [
#   :'ConfirmPaymentIntentWithEmbeddedPaymentMethodInput',
#   :'ConfirmPaymentIntentWithPaymentMethodIdInput'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'amos'

Amos::ConfirmPaymentIntentWithPaymentMethodInput.build(data)
# => #<ConfirmPaymentIntentWithEmbeddedPaymentMethodInput:0x00007fdd4aab02a0>

Amos::ConfirmPaymentIntentWithPaymentMethodInput.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ConfirmPaymentIntentWithEmbeddedPaymentMethodInput`
- `ConfirmPaymentIntentWithPaymentMethodIdInput`
- `nil` (if no type matches)

