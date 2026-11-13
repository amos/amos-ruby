# Amos::MerchantApplicationsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_embed_merchant_application**](MerchantApplicationsApi.md#create_embed_merchant_application) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/merchant_applications | Create a merchant application for the embedded application |
| [**create_merchant_application**](MerchantApplicationsApi.md#create_merchant_application) | **POST** /merchant_applications | Create a merchant application |
| [**get_embed_merchant_application**](MerchantApplicationsApi.md#get_embed_merchant_application) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/merchant_applications/{id} | Retrieve a merchant application for the embedded application |
| [**get_merchant_application**](MerchantApplicationsApi.md#get_merchant_application) | **GET** /merchant_applications/{id} | Retrieve a merchant application by ID |
| [**list_embed_merchant_applications**](MerchantApplicationsApi.md#list_embed_merchant_applications) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/merchant_applications | List merchant applications for the embedded application |
| [**update_embed_merchant_application**](MerchantApplicationsApi.md#update_embed_merchant_application) | **PUT** /embed/legal_entity_applications/{legal_entity_application_id}/merchant_applications/{id} | Update a merchant application for the embedded application |
| [**update_merchant_application**](MerchantApplicationsApi.md#update_merchant_application) | **PUT** /merchant_applications/{id} | Update a pending merchant application |


## create_embed_merchant_application

> <MerchantApplication> create_embed_merchant_application(legal_entity_application_id, create_merchant_application_request)

Create a merchant application for the embedded application

Creates the merchant profile on the application in the embed token. Does not open an additional merchant on an already approved legal entity. 

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

api_instance = Amos::MerchantApplicationsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
create_merchant_application_request = Amos::CreateMerchantApplicationRequest.new({merchant_application: Amos::CreateMerchantApplicationInput.new}) # CreateMerchantApplicationRequest | 

begin
  # Create a merchant application for the embedded application
  result = api_instance.create_embed_merchant_application(legal_entity_application_id, create_merchant_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->create_embed_merchant_application: #{e}"
end
```

#### Using the create_embed_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> create_embed_merchant_application_with_http_info(legal_entity_application_id, create_merchant_application_request)

```ruby
begin
  # Create a merchant application for the embedded application
  data, status_code, headers = api_instance.create_embed_merchant_application_with_http_info(legal_entity_application_id, create_merchant_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->create_embed_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **create_merchant_application_request** | [**CreateMerchantApplicationRequest**](CreateMerchantApplicationRequest.md) |  |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_merchant_application

> <MerchantApplication> create_merchant_application(create_merchant_application_request)

Create a merchant application

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

api_instance = Amos::MerchantApplicationsApi.new
create_merchant_application_request = Amos::CreateMerchantApplicationRequest.new({merchant_application: Amos::CreateMerchantApplicationInput.new}) # CreateMerchantApplicationRequest | 

begin
  # Create a merchant application
  result = api_instance.create_merchant_application(create_merchant_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->create_merchant_application: #{e}"
end
```

#### Using the create_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> create_merchant_application_with_http_info(create_merchant_application_request)

```ruby
begin
  # Create a merchant application
  data, status_code, headers = api_instance.create_merchant_application_with_http_info(create_merchant_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->create_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_merchant_application_request** | [**CreateMerchantApplicationRequest**](CreateMerchantApplicationRequest.md) |  |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_embed_merchant_application

> <MerchantApplication> get_embed_merchant_application(legal_entity_application_id, id)

Retrieve a merchant application for the embedded application

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

api_instance = Amos::MerchantApplicationsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a merchant application for the embedded application
  result = api_instance.get_embed_merchant_application(legal_entity_application_id, id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->get_embed_merchant_application: #{e}"
end
```

#### Using the get_embed_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> get_embed_merchant_application_with_http_info(legal_entity_application_id, id)

```ruby
begin
  # Retrieve a merchant application for the embedded application
  data, status_code, headers = api_instance.get_embed_merchant_application_with_http_info(legal_entity_application_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->get_embed_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_merchant_application

> <MerchantApplication> get_merchant_application(id)

Retrieve a merchant application by ID

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

api_instance = Amos::MerchantApplicationsApi.new
id = 'id_example' # String | The ID of the merchant application to retrieve

begin
  # Retrieve a merchant application by ID
  result = api_instance.get_merchant_application(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->get_merchant_application: #{e}"
end
```

#### Using the get_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> get_merchant_application_with_http_info(id)

```ruby
begin
  # Retrieve a merchant application by ID
  data, status_code, headers = api_instance.get_merchant_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->get_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the merchant application to retrieve |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_embed_merchant_applications

> <ListEmbedMerchantApplications> list_embed_merchant_applications(legal_entity_application_id, opts)

List merchant applications for the embedded application

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

api_instance = Amos::MerchantApplicationsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List merchant applications for the embedded application
  result = api_instance.list_embed_merchant_applications(legal_entity_application_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->list_embed_merchant_applications: #{e}"
end
```

#### Using the list_embed_merchant_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmbedMerchantApplications>, Integer, Hash)> list_embed_merchant_applications_with_http_info(legal_entity_application_id, opts)

```ruby
begin
  # List merchant applications for the embedded application
  data, status_code, headers = api_instance.list_embed_merchant_applications_with_http_info(legal_entity_application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmbedMerchantApplications>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->list_embed_merchant_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListEmbedMerchantApplications**](ListEmbedMerchantApplications.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_embed_merchant_application

> <MerchantApplication> update_embed_merchant_application(legal_entity_application_id, id, update_merchant_application_request)

Update a merchant application for the embedded application

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

api_instance = Amos::MerchantApplicationsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 
update_merchant_application_request = Amos::UpdateMerchantApplicationRequest.new({merchant_application: Amos::UpdateMerchantApplicationInput.new}) # UpdateMerchantApplicationRequest | 

begin
  # Update a merchant application for the embedded application
  result = api_instance.update_embed_merchant_application(legal_entity_application_id, id, update_merchant_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->update_embed_merchant_application: #{e}"
end
```

#### Using the update_embed_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> update_embed_merchant_application_with_http_info(legal_entity_application_id, id, update_merchant_application_request)

```ruby
begin
  # Update a merchant application for the embedded application
  data, status_code, headers = api_instance.update_embed_merchant_application_with_http_info(legal_entity_application_id, id, update_merchant_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->update_embed_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |
| **update_merchant_application_request** | [**UpdateMerchantApplicationRequest**](UpdateMerchantApplicationRequest.md) |  |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_merchant_application

> <MerchantApplication> update_merchant_application(id, update_merchant_application_request)

Update a pending merchant application

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

api_instance = Amos::MerchantApplicationsApi.new
id = 'id_example' # String | The ID of the merchant application to update
update_merchant_application_request = Amos::UpdateMerchantApplicationRequest.new({merchant_application: Amos::UpdateMerchantApplicationInput.new}) # UpdateMerchantApplicationRequest | 

begin
  # Update a pending merchant application
  result = api_instance.update_merchant_application(id, update_merchant_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->update_merchant_application: #{e}"
end
```

#### Using the update_merchant_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantApplication>, Integer, Hash)> update_merchant_application_with_http_info(id, update_merchant_application_request)

```ruby
begin
  # Update a pending merchant application
  data, status_code, headers = api_instance.update_merchant_application_with_http_info(id, update_merchant_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantApplication>
rescue Amos::ApiError => e
  puts "Error when calling MerchantApplicationsApi->update_merchant_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the merchant application to update |  |
| **update_merchant_application_request** | [**UpdateMerchantApplicationRequest**](UpdateMerchantApplicationRequest.md) |  |  |

### Return type

[**MerchantApplication**](MerchantApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

