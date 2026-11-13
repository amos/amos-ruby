# Amos::LegalEntityApplicationDocumentsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_embed_legal_entity_application_document**](LegalEntityApplicationDocumentsApi.md#create_embed_legal_entity_application_document) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/documents | Create a document for the embedded application |
| [**create_legal_entity_application_document**](LegalEntityApplicationDocumentsApi.md#create_legal_entity_application_document) | **POST** /legal_entity_application_documents | Create a legal entity application document |
| [**list_embed_legal_entity_application_documents**](LegalEntityApplicationDocumentsApi.md#list_embed_legal_entity_application_documents) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/documents | List documents for the embedded application |
| [**list_legal_entity_application_documents**](LegalEntityApplicationDocumentsApi.md#list_legal_entity_application_documents) | **GET** /legal_entity_application_documents | List all legal entity application documents |


## create_embed_legal_entity_application_document

> <LegalEntityApplicationDocument> create_embed_legal_entity_application_document(legal_entity_application_id, create_legal_entity_application_document_request)

Create a document for the embedded application

Attaches an available file upload with purpose `identity` or `business` to the application. Dispute evidence cannot be attached with an onboarding token. 

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: Embed
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Amos::LegalEntityApplicationDocumentsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
create_legal_entity_application_document_request = Amos::CreateLegalEntityApplicationDocumentRequest.new({legal_entity_application_document: Amos::CreateLegalEntityApplicationDocumentInput.new}) # CreateLegalEntityApplicationDocumentRequest | 

begin
  # Create a document for the embedded application
  result = api_instance.create_embed_legal_entity_application_document(legal_entity_application_id, create_legal_entity_application_document_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->create_embed_legal_entity_application_document: #{e}"
end
```

#### Using the create_embed_legal_entity_application_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationDocument>, Integer, Hash)> create_embed_legal_entity_application_document_with_http_info(legal_entity_application_id, create_legal_entity_application_document_request)

```ruby
begin
  # Create a document for the embedded application
  data, status_code, headers = api_instance.create_embed_legal_entity_application_document_with_http_info(legal_entity_application_id, create_legal_entity_application_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationDocument>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->create_embed_legal_entity_application_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **create_legal_entity_application_document_request** | [**CreateLegalEntityApplicationDocumentRequest**](CreateLegalEntityApplicationDocumentRequest.md) |  |  |

### Return type

[**LegalEntityApplicationDocument**](LegalEntityApplicationDocument.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_legal_entity_application_document

> <LegalEntityApplicationDocument> create_legal_entity_application_document(create_legal_entity_application_document_request)

Create a legal entity application document

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Amos::LegalEntityApplicationDocumentsApi.new
create_legal_entity_application_document_request = Amos::CreateLegalEntityApplicationDocumentRequest.new({legal_entity_application_document: Amos::CreateLegalEntityApplicationDocumentInput.new}) # CreateLegalEntityApplicationDocumentRequest | 

begin
  # Create a legal entity application document
  result = api_instance.create_legal_entity_application_document(create_legal_entity_application_document_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->create_legal_entity_application_document: #{e}"
end
```

#### Using the create_legal_entity_application_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationDocument>, Integer, Hash)> create_legal_entity_application_document_with_http_info(create_legal_entity_application_document_request)

```ruby
begin
  # Create a legal entity application document
  data, status_code, headers = api_instance.create_legal_entity_application_document_with_http_info(create_legal_entity_application_document_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationDocument>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->create_legal_entity_application_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_legal_entity_application_document_request** | [**CreateLegalEntityApplicationDocumentRequest**](CreateLegalEntityApplicationDocumentRequest.md) |  |  |

### Return type

[**LegalEntityApplicationDocument**](LegalEntityApplicationDocument.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_embed_legal_entity_application_documents

> <ListEmbedLegalEntityApplicationDocuments> list_embed_legal_entity_application_documents(legal_entity_application_id, opts)

List documents for the embedded application

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: Embed
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Amos::LegalEntityApplicationDocumentsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List documents for the embedded application
  result = api_instance.list_embed_legal_entity_application_documents(legal_entity_application_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->list_embed_legal_entity_application_documents: #{e}"
end
```

#### Using the list_embed_legal_entity_application_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmbedLegalEntityApplicationDocuments>, Integer, Hash)> list_embed_legal_entity_application_documents_with_http_info(legal_entity_application_id, opts)

```ruby
begin
  # List documents for the embedded application
  data, status_code, headers = api_instance.list_embed_legal_entity_application_documents_with_http_info(legal_entity_application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmbedLegalEntityApplicationDocuments>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->list_embed_legal_entity_application_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListEmbedLegalEntityApplicationDocuments**](ListEmbedLegalEntityApplicationDocuments.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_legal_entity_application_documents

> <ListLegalEntityApplicationDocuments> list_legal_entity_application_documents(legal_entity_application_id, opts)

List all legal entity application documents

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: X-Api-Key
  config.api_key['X-Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Api-Key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Amos::LegalEntityApplicationDocumentsApi.new
legal_entity_application_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all legal entity application documents
  result = api_instance.list_legal_entity_application_documents(legal_entity_application_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->list_legal_entity_application_documents: #{e}"
end
```

#### Using the list_legal_entity_application_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLegalEntityApplicationDocuments>, Integer, Hash)> list_legal_entity_application_documents_with_http_info(legal_entity_application_id, opts)

```ruby
begin
  # List all legal entity application documents
  data, status_code, headers = api_instance.list_legal_entity_application_documents_with_http_info(legal_entity_application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLegalEntityApplicationDocuments>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationDocumentsApi->list_legal_entity_application_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListLegalEntityApplicationDocuments**](ListLegalEntityApplicationDocuments.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

