# Amos::LegalEntityPrincipalsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_legal_entity_principal**](LegalEntityPrincipalsApi.md#get_legal_entity_principal) | **GET** /legal_entity_principals/{id} | Retrieve a legal entity principal by ID |
| [**list_legal_entity_principals**](LegalEntityPrincipalsApi.md#list_legal_entity_principals) | **GET** /legal_entity_principals | List all legal entity principals |


## get_legal_entity_principal

> <LegalEntityPrincipal> get_legal_entity_principal(id)

Retrieve a legal entity principal by ID

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

api_instance = Amos::LegalEntityPrincipalsApi.new
id = 'id_example' # String | The ID of the legal entity principal to retrieve

begin
  # Retrieve a legal entity principal by ID
  result = api_instance.get_legal_entity_principal(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityPrincipalsApi->get_legal_entity_principal: #{e}"
end
```

#### Using the get_legal_entity_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityPrincipal>, Integer, Hash)> get_legal_entity_principal_with_http_info(id)

```ruby
begin
  # Retrieve a legal entity principal by ID
  data, status_code, headers = api_instance.get_legal_entity_principal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityPrincipalsApi->get_legal_entity_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the legal entity principal to retrieve |  |

### Return type

[**LegalEntityPrincipal**](LegalEntityPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_legal_entity_principals

> <ListLegalEntityPrincipals> list_legal_entity_principals(legal_entity_id, opts)

List all legal entity principals

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

api_instance = Amos::LegalEntityPrincipalsApi.new
legal_entity_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the legal_entity
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all legal entity principals
  result = api_instance.list_legal_entity_principals(legal_entity_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityPrincipalsApi->list_legal_entity_principals: #{e}"
end
```

#### Using the list_legal_entity_principals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLegalEntityPrincipals>, Integer, Hash)> list_legal_entity_principals_with_http_info(legal_entity_id, opts)

```ruby
begin
  # List all legal entity principals
  data, status_code, headers = api_instance.list_legal_entity_principals_with_http_info(legal_entity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLegalEntityPrincipals>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityPrincipalsApi->list_legal_entity_principals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_id** | **String** | The ID of the legal_entity |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListLegalEntityPrincipals**](ListLegalEntityPrincipals.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

