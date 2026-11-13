# Amos::LegalEntityApplicationPrincipalsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#create_embed_legal_entity_application_principal) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals | Create a principal for the embedded application |
| [**create_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#create_legal_entity_application_principal) | **POST** /legal_entity_application_principals | Create a legal entity application principal |
| [**get_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#get_embed_legal_entity_application_principal) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{id} | Retrieve a principal for the embedded application |
| [**get_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#get_legal_entity_application_principal) | **GET** /legal_entity_application_principals/{id} | Retrieve a legal entity application principal by ID |
| [**list_embed_legal_entity_application_principals**](LegalEntityApplicationPrincipalsApi.md#list_embed_legal_entity_application_principals) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/principals | List principals for the embedded application |
| [**update_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#update_embed_legal_entity_application_principal) | **PUT** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{id} | Update a principal for the embedded application |
| [**update_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#update_legal_entity_application_principal) | **PUT** /legal_entity_application_principals/{id} | Update a legal entity application principal |


## create_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> create_embed_legal_entity_application_principal(legal_entity_application_id, create_legal_entity_application_principal_request)

Create a principal for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
create_legal_entity_application_principal_request = Amos::CreateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::CreateLegalEntityApplicationPrincipalInput.new}) # CreateLegalEntityApplicationPrincipalRequest | 

begin
  # Create a principal for the embedded application
  result = api_instance.create_embed_legal_entity_application_principal(legal_entity_application_id, create_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the create_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> create_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, create_legal_entity_application_principal_request)

```ruby
begin
  # Create a principal for the embedded application
  data, status_code, headers = api_instance.create_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, create_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **create_legal_entity_application_principal_request** | [**CreateLegalEntityApplicationPrincipalRequest**](CreateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> create_legal_entity_application_principal(create_legal_entity_application_principal_request)

Create a legal entity application principal

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
create_legal_entity_application_principal_request = Amos::CreateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::CreateLegalEntityApplicationPrincipalInput.new}) # CreateLegalEntityApplicationPrincipalRequest | 

begin
  # Create a legal entity application principal
  result = api_instance.create_legal_entity_application_principal(create_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_legal_entity_application_principal: #{e}"
end
```

#### Using the create_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request)

```ruby
begin
  # Create a legal entity application principal
  data, status_code, headers = api_instance.create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_legal_entity_application_principal_request** | [**CreateLegalEntityApplicationPrincipalRequest**](CreateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> get_embed_legal_entity_application_principal(legal_entity_application_id, id)

Retrieve a principal for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a principal for the embedded application
  result = api_instance.get_embed_legal_entity_application_principal(legal_entity_application_id, id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the get_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> get_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)

```ruby
begin
  # Retrieve a principal for the embedded application
  data, status_code, headers = api_instance.get_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> get_legal_entity_application_principal(id)

Retrieve a legal entity application principal by ID

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a legal entity application principal by ID
  result = api_instance.get_legal_entity_application_principal(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_legal_entity_application_principal: #{e}"
end
```

#### Using the get_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> get_legal_entity_application_principal_with_http_info(id)

```ruby
begin
  # Retrieve a legal entity application principal by ID
  data, status_code, headers = api_instance.get_legal_entity_application_principal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_embed_legal_entity_application_principals

> <ListEmbedLegalEntityApplicationPrincipals> list_embed_legal_entity_application_principals(legal_entity_application_id, opts)

List principals for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List principals for the embedded application
  result = api_instance.list_embed_legal_entity_application_principals(legal_entity_application_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->list_embed_legal_entity_application_principals: #{e}"
end
```

#### Using the list_embed_legal_entity_application_principals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmbedLegalEntityApplicationPrincipals>, Integer, Hash)> list_embed_legal_entity_application_principals_with_http_info(legal_entity_application_id, opts)

```ruby
begin
  # List principals for the embedded application
  data, status_code, headers = api_instance.list_embed_legal_entity_application_principals_with_http_info(legal_entity_application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmbedLegalEntityApplicationPrincipals>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->list_embed_legal_entity_application_principals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListEmbedLegalEntityApplicationPrincipals**](ListEmbedLegalEntityApplicationPrincipals.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> update_embed_legal_entity_application_principal(legal_entity_application_id, id, update_legal_entity_application_principal_request)

Update a principal for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 
update_legal_entity_application_principal_request = Amos::UpdateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::UpdateLegalEntityApplicationPrincipalInput.new}) # UpdateLegalEntityApplicationPrincipalRequest | 

begin
  # Update a principal for the embedded application
  result = api_instance.update_embed_legal_entity_application_principal(legal_entity_application_id, id, update_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the update_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> update_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id, update_legal_entity_application_principal_request)

```ruby
begin
  # Update a principal for the embedded application
  data, status_code, headers = api_instance.update_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id, update_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |
| **update_legal_entity_application_principal_request** | [**UpdateLegalEntityApplicationPrincipalRequest**](UpdateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> update_legal_entity_application_principal(id, update_legal_entity_application_principal_request)

Update a legal entity application principal

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
id = 'id_example' # String | 
update_legal_entity_application_principal_request = Amos::UpdateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::UpdateLegalEntityApplicationPrincipalInput.new}) # UpdateLegalEntityApplicationPrincipalRequest | 

begin
  # Update a legal entity application principal
  result = api_instance.update_legal_entity_application_principal(id, update_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_legal_entity_application_principal: #{e}"
end
```

#### Using the update_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> update_legal_entity_application_principal_with_http_info(id, update_legal_entity_application_principal_request)

```ruby
begin
  # Update a legal entity application principal
  data, status_code, headers = api_instance.update_legal_entity_application_principal_with_http_info(id, update_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_legal_entity_application_principal_request** | [**UpdateLegalEntityApplicationPrincipalRequest**](UpdateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

