# Amos::VoidsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_void**](VoidsApi.md#create_void) | **POST** /voids | Create a void |
| [**get_void**](VoidsApi.md#get_void) | **GET** /voids/{id} | Retrieve a void by ID |
| [**list_voids**](VoidsApi.md#list_voids) | **GET** /voids | List all voids |
| [**update_void**](VoidsApi.md#update_void) | **PUT** /voids/{id} | Update a void |


## create_void

> <Void> create_void(create_void_request, opts)

Create a void

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

api_instance = Amos::VoidsApi.new
create_void_request = Amos::CreateVoidRequest.new({void: Amos::CreateVoidInput.new({parent_transaction_id: 'parent_transaction_id_example'})}) # CreateVoidRequest | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a void
  result = api_instance.create_void(create_void_request, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->create_void: #{e}"
end
```

#### Using the create_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Void>, Integer, Hash)> create_void_with_http_info(create_void_request, opts)

```ruby
begin
  # Create a void
  data, status_code, headers = api_instance.create_void_with_http_info(create_void_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Void>
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->create_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_void_request** | [**CreateVoidRequest**](CreateVoidRequest.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**Void**](Void.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_void

> <Void> get_void(id)

Retrieve a void by ID

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

api_instance = Amos::VoidsApi.new
id = 'id_example' # String | The ID of the void to retrieve

begin
  # Retrieve a void by ID
  result = api_instance.get_void(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->get_void: #{e}"
end
```

#### Using the get_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Void>, Integer, Hash)> get_void_with_http_info(id)

```ruby
begin
  # Retrieve a void by ID
  data, status_code, headers = api_instance.get_void_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Void>
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->get_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the void to retrieve |  |

### Return type

[**Void**](Void.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_voids

> <ListVoids> list_voids(customer_id, opts)

List all voids

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

api_instance = Amos::VoidsApi.new
customer_id = 'customer_id_example' # String | The ID of the customer to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  parent_transaction_id: 'parent_transaction_id_example' # String | The ID of the original transaction to filter by
}

begin
  # List all voids
  result = api_instance.list_voids(customer_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->list_voids: #{e}"
end
```

#### Using the list_voids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListVoids>, Integer, Hash)> list_voids_with_http_info(customer_id, opts)

```ruby
begin
  # List all voids
  data, status_code, headers = api_instance.list_voids_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListVoids>
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->list_voids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The ID of the customer to filter by |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **parent_transaction_id** | **String** | The ID of the original transaction to filter by | [optional] |

### Return type

[**ListVoids**](ListVoids.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_void

> <Void> update_void(id, update_void_request)

Update a void

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

api_instance = Amos::VoidsApi.new
id = 'id_example' # String | The ID of the void to update
update_void_request = Amos::UpdateVoidRequest.new({void: Amos::UpdateVoidInput.new}) # UpdateVoidRequest | 

begin
  # Update a void
  result = api_instance.update_void(id, update_void_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->update_void: #{e}"
end
```

#### Using the update_void_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Void>, Integer, Hash)> update_void_with_http_info(id, update_void_request)

```ruby
begin
  # Update a void
  data, status_code, headers = api_instance.update_void_with_http_info(id, update_void_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Void>
rescue Amos::ApiError => e
  puts "Error when calling VoidsApi->update_void_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the void to update |  |
| **update_void_request** | [**UpdateVoidRequest**](UpdateVoidRequest.md) |  |  |

### Return type

[**Void**](Void.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

