# Amos::PayoutsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_create_payouts**](PayoutsApi.md#bulk_create_payouts) | **POST** /payouts/bulk_create | Bulk create payouts |
| [**create_payout**](PayoutsApi.md#create_payout) | **POST** /payouts | Create a payout |
| [**get_payout**](PayoutsApi.md#get_payout) | **GET** /payouts/{id} | Retrieve a payout by ID |
| [**list_payouts**](PayoutsApi.md#list_payouts) | **GET** /payouts | List all payouts |


## bulk_create_payouts

> <BulkCreatePayouts> bulk_create_payouts(create_bulk_payouts_request)

Bulk create payouts

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

api_instance = Amos::PayoutsApi.new
create_bulk_payouts_request = Amos::CreateBulkPayoutsRequest.new({payouts: [Amos::CreateBulkPayoutInput.new({account_id: 'account_id_example', external_account_id: 'external_account_id_example', amount: 37})]}) # CreateBulkPayoutsRequest | 

begin
  # Bulk create payouts
  result = api_instance.bulk_create_payouts(create_bulk_payouts_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->bulk_create_payouts: #{e}"
end
```

#### Using the bulk_create_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkCreatePayouts>, Integer, Hash)> bulk_create_payouts_with_http_info(create_bulk_payouts_request)

```ruby
begin
  # Bulk create payouts
  data, status_code, headers = api_instance.bulk_create_payouts_with_http_info(create_bulk_payouts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkCreatePayouts>
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->bulk_create_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_bulk_payouts_request** | [**CreateBulkPayoutsRequest**](CreateBulkPayoutsRequest.md) |  |  |

### Return type

[**BulkCreatePayouts**](BulkCreatePayouts.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payout

> <Payout> create_payout(create_payout_request, opts)

Create a payout

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

api_instance = Amos::PayoutsApi.new
create_payout_request = Amos::CreatePayoutRequest.new({payout: Amos::CreatePayoutInput.new({external_account_id: 'external_account_id_example', amount: 37})}) # CreatePayoutRequest | 
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a payout
  result = api_instance.create_payout(create_payout_request, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->create_payout: #{e}"
end
```

#### Using the create_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payout>, Integer, Hash)> create_payout_with_http_info(create_payout_request, opts)

```ruby
begin
  # Create a payout
  data, status_code, headers = api_instance.create_payout_with_http_info(create_payout_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payout>
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->create_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payout_request** | [**CreatePayoutRequest**](CreatePayoutRequest.md) |  |  |
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**Payout**](Payout.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payout

> <Payout> get_payout(id)

Retrieve a payout by ID

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

api_instance = Amos::PayoutsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a payout by ID
  result = api_instance.get_payout(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->get_payout: #{e}"
end
```

#### Using the get_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payout>, Integer, Hash)> get_payout_with_http_info(id)

```ruby
begin
  # Retrieve a payout by ID
  data, status_code, headers = api_instance.get_payout_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payout>
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->get_payout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Payout**](Payout.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payouts

> <ListPayouts> list_payouts(opts)

List all payouts

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

api_instance = Amos::PayoutsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  external_account_id: 'external_account_id_example', # String | The external account ID to filter by
  state: 'pending' # String | The payout state to filter by
}

begin
  # List all payouts
  result = api_instance.list_payouts(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts: #{e}"
end
```

#### Using the list_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPayouts>, Integer, Hash)> list_payouts_with_http_info(opts)

```ruby
begin
  # List all payouts
  data, status_code, headers = api_instance.list_payouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPayouts>
rescue Amos::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **external_account_id** | **String** | The external account ID to filter by | [optional] |
| **state** | **String** | The payout state to filter by | [optional] |

### Return type

[**ListPayouts**](ListPayouts.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

