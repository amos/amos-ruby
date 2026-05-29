# Amos::ChargesApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_charge**](ChargesApi.md#get_charge) | **GET** /charges/{id} | Retrieve a charge |
| [**list_charges**](ChargesApi.md#list_charges) | **GET** /charges | List all charges |
| [**update_charge**](ChargesApi.md#update_charge) | **PUT** /charges/{id} | Update a charge |


## get_charge

> <Charge> get_charge(id)

Retrieve a charge

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

api_instance = Amos::ChargesApi.new
id = 'id_example' # String | 

begin
  # Retrieve a charge
  result = api_instance.get_charge(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->get_charge: #{e}"
end
```

#### Using the get_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Charge>, Integer, Hash)> get_charge_with_http_info(id)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_charge_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Charge>
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->get_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Charge**](Charge.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_charges

> <ListCharges> list_charges(opts)

List all charges

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

api_instance = Amos::ChargesApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  payment_intent_id: 'payment_intent_id_example' # String | The ID of the payment intent to filter by
}

begin
  # List all charges
  result = api_instance.list_charges(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->list_charges: #{e}"
end
```

#### Using the list_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCharges>, Integer, Hash)> list_charges_with_http_info(opts)

```ruby
begin
  # List all charges
  data, status_code, headers = api_instance.list_charges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCharges>
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->list_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **payment_intent_id** | **String** | The ID of the payment intent to filter by | [optional] |

### Return type

[**ListCharges**](ListCharges.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_charge

> <Charge> update_charge(id, update_charge_request)

Update a charge

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

api_instance = Amos::ChargesApi.new
id = 'id_example' # String | 
update_charge_request = Amos::UpdateChargeRequest.new({charge: Amos::UpdateChargeInput.new}) # UpdateChargeRequest | 

begin
  # Update a charge
  result = api_instance.update_charge(id, update_charge_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->update_charge: #{e}"
end
```

#### Using the update_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Charge>, Integer, Hash)> update_charge_with_http_info(id, update_charge_request)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_charge_with_http_info(id, update_charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Charge>
rescue Amos::ApiError => e
  puts "Error when calling ChargesApi->update_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_charge_request** | [**UpdateChargeRequest**](UpdateChargeRequest.md) |  |  |

### Return type

[**Charge**](Charge.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

