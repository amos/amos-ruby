# Amos::PaymentMethodsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /payment_methods/{id} | Retrieve a payment method |
| [**list_payment_methods**](PaymentMethodsApi.md#list_payment_methods) | **GET** /payment_methods | List all payment methods |


## get_payment_method

> <PaymentMethod> get_payment_method(id)

Retrieve a payment method

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

api_instance = Amos::PaymentMethodsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a payment method
  result = api_instance.get_payment_method(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethod>, Integer, Hash)> get_payment_method_with_http_info(id)

```ruby
begin
  # Retrieve a payment method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethod>
rescue Amos::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_methods

> <ListPaymentMethods> list_payment_methods(customer_id, opts)

List all payment methods

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

api_instance = Amos::PaymentMethodsApi.new
customer_id = 'customer_id_example' # String | The ID of the customer to filter by
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all payment methods
  result = api_instance.list_payment_methods(customer_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_methods: #{e}"
end
```

#### Using the list_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentMethods>, Integer, Hash)> list_payment_methods_with_http_info(customer_id, opts)

```ruby
begin
  # List all payment methods
  data, status_code, headers = api_instance.list_payment_methods_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentMethods>
rescue Amos::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The ID of the customer to filter by |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListPaymentMethods**](ListPaymentMethods.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

