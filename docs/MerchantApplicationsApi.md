# Amos::MerchantApplicationsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_merchant_application**](MerchantApplicationsApi.md#create_merchant_application) | **POST** /merchant_applications | Create a merchant application |
| [**get_merchant_application**](MerchantApplicationsApi.md#get_merchant_application) | **GET** /merchant_applications/{id} | Retrieve a merchant application by ID |


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

