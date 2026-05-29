# Amos::LegalEntitiesApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_legal_entity**](LegalEntitiesApi.md#get_legal_entity) | **GET** /legal_entities/{id} | Retrieve a legal entity by ID |
| [**list_legal_entities**](LegalEntitiesApi.md#list_legal_entities) | **GET** /legal_entities | List all legal entities |


## get_legal_entity

> <LegalEntity> get_legal_entity(id)

Retrieve a legal entity by ID

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

api_instance = Amos::LegalEntitiesApi.new
id = 'id_example' # String | 

begin
  # Retrieve a legal entity by ID
  result = api_instance.get_legal_entity(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntitiesApi->get_legal_entity: #{e}"
end
```

#### Using the get_legal_entity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntity>, Integer, Hash)> get_legal_entity_with_http_info(id)

```ruby
begin
  # Retrieve a legal entity by ID
  data, status_code, headers = api_instance.get_legal_entity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntity>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntitiesApi->get_legal_entity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntity**](LegalEntity.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_legal_entities

> <ListLegalEntities> list_legal_entities(opts)

List all legal entities

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

api_instance = Amos::LegalEntitiesApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all legal entities
  result = api_instance.list_legal_entities(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntitiesApi->list_legal_entities: #{e}"
end
```

#### Using the list_legal_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLegalEntities>, Integer, Hash)> list_legal_entities_with_http_info(opts)

```ruby
begin
  # List all legal entities
  data, status_code, headers = api_instance.list_legal_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLegalEntities>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntitiesApi->list_legal_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListLegalEntities**](ListLegalEntities.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

