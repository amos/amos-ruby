# Amos::CustomersApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a new customer |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{id} | Retrieve a customer by ID |
| [**list_customers**](CustomersApi.md#list_customers) | **GET** /customers | List all customers |
| [**update_customer**](CustomersApi.md#update_customer) | **PUT** /customers/{id} | Update a customer by ID |


## create_customer

> <Customer> create_customer(create_customer_request)

Create a new customer

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

api_instance = Amos::CustomersApi.new
create_customer_request = Amos::CreateCustomerRequest.new({customer: Amos::CreateCustomerInput.new}) # CreateCustomerRequest | 

begin
  # Create a new customer
  result = api_instance.create_customer(create_customer_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> create_customer_with_http_info(create_customer_request)

```ruby
begin
  # Create a new customer
  data, status_code, headers = api_instance.create_customer_with_http_info(create_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_customer_request** | [**CreateCustomerRequest**](CreateCustomerRequest.md) |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <Customer> get_customer(id)

Retrieve a customer by ID

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

api_instance = Amos::CustomersApi.new
id = 'id_example' # String | 

begin
  # Retrieve a customer by ID
  result = api_instance.get_customer(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(id)

```ruby
begin
  # Retrieve a customer by ID
  data, status_code, headers = api_instance.get_customer_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_customers

> <ListCustomers> list_customers(opts)

List all customers

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

api_instance = Amos::CustomersApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  email: 'email_example', # String | The email to filter by
  phone: 'phone_example', # String | The phone to filter by
  account_id: 'account_id_example' # String | 
}

begin
  # List all customers
  result = api_instance.list_customers(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->list_customers: #{e}"
end
```

#### Using the list_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomers>, Integer, Hash)> list_customers_with_http_info(opts)

```ruby
begin
  # List all customers
  data, status_code, headers = api_instance.list_customers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomers>
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->list_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **email** | **String** | The email to filter by | [optional] |
| **phone** | **String** | The phone to filter by | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**ListCustomers**](ListCustomers.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(id, update_customer_request)

Update a customer by ID

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

api_instance = Amos::CustomersApi.new
id = 'id_example' # String | 
update_customer_request = Amos::UpdateCustomerRequest.new({customer: Amos::UpdateCustomerInput.new}) # UpdateCustomerRequest | 

begin
  # Update a customer by ID
  result = api_instance.update_customer(id, update_customer_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(id, update_customer_request)

```ruby
begin
  # Update a customer by ID
  data, status_code, headers = api_instance.update_customer_with_http_info(id, update_customer_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue Amos::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_customer_request** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md) |  |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

