# Amos::Meta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** |  | [optional] |
| **prev_page** | **Integer** |  | [optional] |
| **next_page** | **Integer** |  | [optional] |
| **first_page** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::Meta.new(
  current_page: null,
  prev_page: null,
  next_page: null,
  first_page: null
)
```
