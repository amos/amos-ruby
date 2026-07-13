# Amos::LegalEntityApplicationDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_entity_application_id** | **String** |  | [optional] |
| **document_type** | [**LegalEntityDocumentType**](LegalEntityDocumentType.md) |  | [optional] |
| **file_upload_id** | **String** |  | [optional] |
| **file_name** | **String** |  | [optional] |
| **byte_size** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::LegalEntityApplicationDocument.new(
  id: null,
  legal_entity_application_id: null,
  document_type: null,
  file_upload_id: null,
  file_name: null,
  byte_size: null,
  created_at: null
)
```

