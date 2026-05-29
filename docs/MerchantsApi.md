# Amos::MerchantsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_merchant**](MerchantsApi.md#get_merchant) | **GET** /merchants/{id} | Retrieve a merchant by ID |
| [**list_merchants**](MerchantsApi.md#list_merchants) | **GET** /merchants | List all merchants |


## get_merchant

> <Merchant> get_merchant(id)

Retrieve a merchant by ID

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

api_instance = Amos::MerchantsApi.new
id = 'id_example' # String | The ID of the merchant to retrieve

begin
  # Retrieve a merchant by ID
  result = api_instance.get_merchant(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantsApi->get_merchant: #{e}"
end
```

#### Using the get_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Merchant>, Integer, Hash)> get_merchant_with_http_info(id)

```ruby
begin
  # Retrieve a merchant by ID
  data, status_code, headers = api_instance.get_merchant_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Merchant>
rescue Amos::ApiError => e
  puts "Error when calling MerchantsApi->get_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the merchant to retrieve |  |

### Return type

[**Merchant**](Merchant.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_merchants

> <ListMerchants> list_merchants(opts)

List all merchants

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

api_instance = Amos::MerchantsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all merchants
  result = api_instance.list_merchants(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants: #{e}"
end
```

#### Using the list_merchants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMerchants>, Integer, Hash)> list_merchants_with_http_info(opts)

```ruby
begin
  # List all merchants
  data, status_code, headers = api_instance.list_merchants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMerchants>
rescue Amos::ApiError => e
  puts "Error when calling MerchantsApi->list_merchants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListMerchants**](ListMerchants.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

