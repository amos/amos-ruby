# Amos::CardProfileInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_holder_name** | **String** | Cardholder name as stored on the card. 2-26 characters. Letters, numbers, spaces, periods, commas, apostrophes, hyphens, slashes, and ampersands.  | [optional] |
| **cvc** | **String** |  | [optional] |
| **encrypted_card_number** | **String** |  | [optional] |
| **exp_month** | **Integer** |  | [optional] |
| **exp_year** | **Integer** |  | [optional] |
| **moto** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CardProfileInput.new(
  card_holder_name: null,
  cvc: null,
  encrypted_card_number: null,
  exp_month: null,
  exp_year: null,
  moto: null
)
```

