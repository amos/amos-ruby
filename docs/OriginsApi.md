# Amos::OriginsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_origin**](OriginsApi.md#create_origin) | **POST** /origins | Create a new origin |
| [**delete_origin**](OriginsApi.md#delete_origin) | **DELETE** /origins/{id} | Delete an origin by ID |
| [**list_origins**](OriginsApi.md#list_origins) | **GET** /origins | List all origins |


## create_origin

> <Origin> create_origin(create_origin_request)

Create a new origin

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

api_instance = Amos::OriginsApi.new
create_origin_request = Amos::CreateOriginRequest.new({origin: Amos::CreateOriginInput.new}) # CreateOriginRequest | 

begin
  # Create a new origin
  result = api_instance.create_origin(create_origin_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->create_origin: #{e}"
end
```

#### Using the create_origin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Origin>, Integer, Hash)> create_origin_with_http_info(create_origin_request)

```ruby
begin
  # Create a new origin
  data, status_code, headers = api_instance.create_origin_with_http_info(create_origin_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Origin>
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->create_origin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_origin_request** | [**CreateOriginRequest**](CreateOriginRequest.md) |  |  |

### Return type

[**Origin**](Origin.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_origin

> delete_origin(id)

Delete an origin by ID

Unregisters the origin host with Apple Pay when it is registered, then deletes the origin. Returns 409 if a render template still uses it. Does not delete the origin if Apple Pay unregistration fails.

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

api_instance = Amos::OriginsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the origin to delete

begin
  # Delete an origin by ID
  api_instance.delete_origin(id)
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->delete_origin: #{e}"
end
```

#### Using the delete_origin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_origin_with_http_info(id)

```ruby
begin
  # Delete an origin by ID
  data, status_code, headers = api_instance.delete_origin_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->delete_origin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the origin to delete |  |

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_origins

> <ListOrigins> list_origins(opts)

List all origins

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

api_instance = Amos::OriginsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  q: 'q_example' # String | Substring search across origin value (case-insensitive).
}

begin
  # List all origins
  result = api_instance.list_origins(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->list_origins: #{e}"
end
```

#### Using the list_origins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrigins>, Integer, Hash)> list_origins_with_http_info(opts)

```ruby
begin
  # List all origins
  data, status_code, headers = api_instance.list_origins_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrigins>
rescue Amos::ApiError => e
  puts "Error when calling OriginsApi->list_origins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **q** | **String** | Substring search across origin value (case-insensitive). | [optional] |

### Return type

[**ListOrigins**](ListOrigins.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

