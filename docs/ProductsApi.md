# Amos::ProductsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_product**](ProductsApi.md#create_product) | **POST** /products | Create a new product |
| [**list_products**](ProductsApi.md#list_products) | **GET** /products | List all products |
| [**update_product**](ProductsApi.md#update_product) | **PATCH** /products/{id} | Update a product by ID |


## create_product

> <Product> create_product(create_product_request)

Create a new product

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

api_instance = Amos::ProductsApi.new
create_product_request = Amos::CreateProductRequest.new({product: Amos::CreateProductInput.new({name: 'name_example', description: 'description_example'})}) # CreateProductRequest | 

begin
  # Create a new product
  result = api_instance.create_product(create_product_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> create_product_with_http_info(create_product_request)

```ruby
begin
  # Create a new product
  data, status_code, headers = api_instance.create_product_with_http_info(create_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_product_request** | [**CreateProductRequest**](CreateProductRequest.md) |  |  |

### Return type

[**Product**](Product.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_products

> <ListProducts> list_products(opts)

List all products

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

api_instance = Amos::ProductsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all products
  result = api_instance.list_products(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProducts>, Integer, Hash)> list_products_with_http_info(opts)

```ruby
begin
  # List all products
  data, status_code, headers = api_instance.list_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProducts>
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListProducts**](ListProducts.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <Product> update_product(id, update_product_request)

Update a product by ID

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

api_instance = Amos::ProductsApi.new
id = 'id_example' # String | The ID of the product to update
update_product_request = Amos::UpdateProductRequest.new({product: Amos::UpdateProductInput.new}) # UpdateProductRequest | 

begin
  # Update a product by ID
  result = api_instance.update_product(id, update_product_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> update_product_with_http_info(id, update_product_request)

```ruby
begin
  # Update a product by ID
  data, status_code, headers = api_instance.update_product_with_http_info(id, update_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue Amos::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the product to update |  |
| **update_product_request** | [**UpdateProductRequest**](UpdateProductRequest.md) |  |  |

### Return type

[**Product**](Product.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

