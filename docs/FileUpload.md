# Amos::FileUpload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **content_type** | **String** |  |  |
| **file_name** | **String** |  |  |
| **purpose** | **String** |  |  |
| **state** | **String** |  |  |
| **upload** | [**FileUploadConfiguration**](FileUploadConfiguration.md) |  |  |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::FileUpload.new(
  id: null,
  content_type: null,
  file_name: null,
  purpose: null,
  state: null,
  upload: null,
  created_at: null,
  updated_at: null
)
```

