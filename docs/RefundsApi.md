# Amos::RefundsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_refund**](RefundsApi.md#cancel_refund) | **PUT** /refunds/{id}/cancel | Cancel a refund |
| [**create_refund**](RefundsApi.md#create_refund) | **POST** /refunds | Create a refund |
| [**get_refund**](RefundsApi.md#get_refund) | **GET** /refunds/{id} | Retrieve a refund by ID |
| [**list_refunds**](RefundsApi.md#list_refunds) | **GET** /refunds | List all refunds |
| [**update_refund**](RefundsApi.md#update_refund) | **PUT** /refunds/{id} | Update a refund |


## cancel_refund

> <Refund> cancel_refund(id)

Cancel a refund

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

api_instance = Amos::RefundsApi.new
id = 'id_example' # String | The ID of the refund to cancel.

begin
  # Cancel a refund
  result = api_instance.cancel_refund(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund: #{e}"
end
```

#### Using the cancel_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> cancel_refund_with_http_info(id)

```ruby
begin
  # Cancel a refund
  data, status_code, headers = api_instance.cancel_refund_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->cancel_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the refund to cancel. |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_refund

> <Refund> create_refund(create_refund_request, opts)

Create a refund

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

api_instance = Amos::RefundsApi.new
create_refund_request = Amos::CreateRefundRequest.new({refund: Amos::CreateRefundInput.new({parent_transaction_id: 'parent_transaction_id_example'})}) # CreateRefundRequest | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a refund
  result = api_instance.create_refund(create_refund_request, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->create_refund: #{e}"
end
```

#### Using the create_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> create_refund_with_http_info(create_refund_request, opts)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_refund_with_http_info(create_refund_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->create_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_refund_request** | [**CreateRefundRequest**](CreateRefundRequest.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**Refund**](Refund.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_refund

> <Refund> get_refund(id)

Retrieve a refund by ID

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

api_instance = Amos::RefundsApi.new
id = 'id_example' # String | The ID of the refund to retrieve

begin
  # Retrieve a refund by ID
  result = api_instance.get_refund(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->get_refund: #{e}"
end
```

#### Using the get_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> get_refund_with_http_info(id)

```ruby
begin
  # Retrieve a refund by ID
  data, status_code, headers = api_instance.get_refund_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->get_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the refund to retrieve |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_refunds

> <ListRefunds> list_refunds(customer_id, opts)

List all refunds

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

api_instance = Amos::RefundsApi.new
customer_id = 'customer_id_example' # String | The ID of the customer to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  parent_transaction_id: 'parent_transaction_id_example' # String | The ID of the original transaction to filter by
}

begin
  # List all refunds
  result = api_instance.list_refunds(customer_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->list_refunds: #{e}"
end
```

#### Using the list_refunds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRefunds>, Integer, Hash)> list_refunds_with_http_info(customer_id, opts)

```ruby
begin
  # List all refunds
  data, status_code, headers = api_instance.list_refunds_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRefunds>
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->list_refunds_with_http_info: #{e}"
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

[**ListRefunds**](ListRefunds.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_refund

> <Refund> update_refund(id, update_refund_request)

Update a refund

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

api_instance = Amos::RefundsApi.new
id = 'id_example' # String | The ID of the refund to update
update_refund_request = Amos::UpdateRefundRequest.new({refund: Amos::UpdateRefundInput.new}) # UpdateRefundRequest | 

begin
  # Update a refund
  result = api_instance.update_refund(id, update_refund_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->update_refund: #{e}"
end
```

#### Using the update_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Refund>, Integer, Hash)> update_refund_with_http_info(id, update_refund_request)

```ruby
begin
  # Update a refund
  data, status_code, headers = api_instance.update_refund_with_http_info(id, update_refund_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Refund>
rescue Amos::ApiError => e
  puts "Error when calling RefundsApi->update_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the refund to update |  |
| **update_refund_request** | [**UpdateRefundRequest**](UpdateRefundRequest.md) |  |  |

### Return type

[**Refund**](Refund.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

