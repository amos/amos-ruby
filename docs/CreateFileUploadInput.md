# Amos::CreateFileUploadInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** |  |  |
| **file_name** | **String** |  |  |
| **purpose** | **String** |  |  |
| **checksum** | **String** | SHA-256 hex digest of the file contents. Completion rejects the upload when the stored object checksum does not match. | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateFileUploadInput.new(
  content_type: null,
  file_name: null,
  purpose: null,
  checksum: null
)
```

