# Amos::LegalEntityApplicationsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_legal_entity_application**](LegalEntityApplicationsApi.md#approve_legal_entity_application) | **POST** /legal_entity_applications/{id}/approve | Approve a legal entity application |
| [**create_legal_entity_application**](LegalEntityApplicationsApi.md#create_legal_entity_application) | **POST** /legal_entity_applications | Create a legal entity application |
| [**create_legal_entity_application_embed_token**](LegalEntityApplicationsApi.md#create_legal_entity_application_embed_token) | **POST** /legal_entity_applications/{id}/embed_token | Mint an embed token for a legal entity application |
| [**get_embed_legal_entity_application**](LegalEntityApplicationsApi.md#get_embed_legal_entity_application) | **GET** /embed/legal_entity_applications/{id} | Retrieve the legal entity application for an embed token |
| [**get_legal_entity_application**](LegalEntityApplicationsApi.md#get_legal_entity_application) | **GET** /legal_entity_applications/{id} | Retrieve a legal entity application by ID |
| [**submit_legal_entity_application**](LegalEntityApplicationsApi.md#submit_legal_entity_application) | **POST** /legal_entity_applications/{id}/submit | Submit a legal entity application |
| [**update_embed_legal_entity_application**](LegalEntityApplicationsApi.md#update_embed_legal_entity_application) | **PUT** /embed/legal_entity_applications/{id} | Update a pending or needs-information legal entity application |
| [**update_legal_entity_application**](LegalEntityApplicationsApi.md#update_legal_entity_application) | **PUT** /legal_entity_applications/{id} | Update a pending legal entity application |


## approve_legal_entity_application

> <LegalEntityApplication> approve_legal_entity_application(id)

Approve a legal entity application

Approves a submitted application and creates the legal entity, merchants, accounts, and principals. This legacy route does not require verified principal emails. 

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 

begin
  # Approve a legal entity application
  result = api_instance.approve_legal_entity_application(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->approve_legal_entity_application: #{e}"
end
```

#### Using the approve_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> approve_legal_entity_application_with_http_info(id)

```ruby
begin
  # Approve a legal entity application
  data, status_code, headers = api_instance.approve_legal_entity_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->approve_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_legal_entity_application

> <LegalEntityApplication> create_legal_entity_application(create_legal_entity_application_request)

Create a legal entity application

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

api_instance = Amos::LegalEntityApplicationsApi.new
create_legal_entity_application_request = Amos::CreateLegalEntityApplicationRequest.new({legal_entity_application: Amos::CreateLegalEntityApplicationInput.new}) # CreateLegalEntityApplicationRequest | 

begin
  # Create a legal entity application
  result = api_instance.create_legal_entity_application(create_legal_entity_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->create_legal_entity_application: #{e}"
end
```

#### Using the create_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> create_legal_entity_application_with_http_info(create_legal_entity_application_request)

```ruby
begin
  # Create a legal entity application
  data, status_code, headers = api_instance.create_legal_entity_application_with_http_info(create_legal_entity_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->create_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_legal_entity_application_request** | [**CreateLegalEntityApplicationRequest**](CreateLegalEntityApplicationRequest.md) |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_legal_entity_application_embed_token

> <EmbedToken> create_legal_entity_application_embed_token(id)

Mint an embed token for a legal entity application

Mints an embed token scoped to this application. Create the application with the API key first. The iframe then uses only this token on the embed routes to read and update the application, add principals, merchant applications, and documents. No request body. Embed tokens are short-lived, so call this again for each iframe request, including when an application that needs information is resumed. 

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 

begin
  # Mint an embed token for a legal entity application
  result = api_instance.create_legal_entity_application_embed_token(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->create_legal_entity_application_embed_token: #{e}"
end
```

#### Using the create_legal_entity_application_embed_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmbedToken>, Integer, Hash)> create_legal_entity_application_embed_token_with_http_info(id)

```ruby
begin
  # Mint an embed token for a legal entity application
  data, status_code, headers = api_instance.create_legal_entity_application_embed_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmbedToken>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->create_legal_entity_application_embed_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**EmbedToken**](EmbedToken.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_embed_legal_entity_application

> <LegalEntityApplication> get_embed_legal_entity_application(id)

Retrieve the legal entity application for an embed token

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 

begin
  # Retrieve the legal entity application for an embed token
  result = api_instance.get_embed_legal_entity_application(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->get_embed_legal_entity_application: #{e}"
end
```

#### Using the get_embed_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> get_embed_legal_entity_application_with_http_info(id)

```ruby
begin
  # Retrieve the legal entity application for an embed token
  data, status_code, headers = api_instance.get_embed_legal_entity_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->get_embed_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_legal_entity_application

> <LegalEntityApplication> get_legal_entity_application(id)

Retrieve a legal entity application by ID

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a legal entity application by ID
  result = api_instance.get_legal_entity_application(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->get_legal_entity_application: #{e}"
end
```

#### Using the get_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> get_legal_entity_application_with_http_info(id)

```ruby
begin
  # Retrieve a legal entity application by ID
  data, status_code, headers = api_instance.get_legal_entity_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->get_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_legal_entity_application

> <LegalEntityApplication> submit_legal_entity_application(id)

Submit a legal entity application

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 

begin
  # Submit a legal entity application
  result = api_instance.submit_legal_entity_application(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->submit_legal_entity_application: #{e}"
end
```

#### Using the submit_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> submit_legal_entity_application_with_http_info(id)

```ruby
begin
  # Submit a legal entity application
  data, status_code, headers = api_instance.submit_legal_entity_application_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->submit_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_embed_legal_entity_application

> <LegalEntityApplication> update_embed_legal_entity_application(id, update_legal_entity_application_request)

Update a pending or needs-information legal entity application

Saves the application. When its requirements and principals are ready and at least one principal has verified their email and identity, the application moves to submitted. Otherwise it stays where it is.

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 
update_legal_entity_application_request = Amos::UpdateLegalEntityApplicationRequest.new({legal_entity_application: Amos::UpdateLegalEntityApplicationInput.new}) # UpdateLegalEntityApplicationRequest | 

begin
  # Update a pending or needs-information legal entity application
  result = api_instance.update_embed_legal_entity_application(id, update_legal_entity_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->update_embed_legal_entity_application: #{e}"
end
```

#### Using the update_embed_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> update_embed_legal_entity_application_with_http_info(id, update_legal_entity_application_request)

```ruby
begin
  # Update a pending or needs-information legal entity application
  data, status_code, headers = api_instance.update_embed_legal_entity_application_with_http_info(id, update_legal_entity_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->update_embed_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_legal_entity_application_request** | [**UpdateLegalEntityApplicationRequest**](UpdateLegalEntityApplicationRequest.md) |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_legal_entity_application

> <LegalEntityApplication> update_legal_entity_application(id, update_legal_entity_application_request)

Update a pending legal entity application

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

api_instance = Amos::LegalEntityApplicationsApi.new
id = 'id_example' # String | 
update_legal_entity_application_request = Amos::UpdateLegalEntityApplicationRequest.new({legal_entity_application: Amos::UpdateLegalEntityApplicationInput.new}) # UpdateLegalEntityApplicationRequest | 

begin
  # Update a pending legal entity application
  result = api_instance.update_legal_entity_application(id, update_legal_entity_application_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->update_legal_entity_application: #{e}"
end
```

#### Using the update_legal_entity_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplication>, Integer, Hash)> update_legal_entity_application_with_http_info(id, update_legal_entity_application_request)

```ruby
begin
  # Update a pending legal entity application
  data, status_code, headers = api_instance.update_legal_entity_application_with_http_info(id, update_legal_entity_application_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplication>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationsApi->update_legal_entity_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_legal_entity_application_request** | [**UpdateLegalEntityApplicationRequest**](UpdateLegalEntityApplicationRequest.md) |  |  |

### Return type

[**LegalEntityApplication**](LegalEntityApplication.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

