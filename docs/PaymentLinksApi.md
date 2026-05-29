# Amos::PaymentLinksApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_link**](PaymentLinksApi.md#create_payment_link) | **POST** /payment_links | Create a new payment link |
| [**list_payment_links**](PaymentLinksApi.md#list_payment_links) | **GET** /payment_links | List payment links |


## create_payment_link

> <PaymentLink> create_payment_link(create_payment_link_request)

Create a new payment link

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

api_instance = Amos::PaymentLinksApi.new
create_payment_link_request = Amos::CreatePaymentLinkRequest.new({payment_link: Amos::CreatePaymentLinkInput.new}) # CreatePaymentLinkRequest | 

begin
  # Create a new payment link
  result = api_instance.create_payment_link(create_payment_link_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentLinksApi->create_payment_link: #{e}"
end
```

#### Using the create_payment_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentLink>, Integer, Hash)> create_payment_link_with_http_info(create_payment_link_request)

```ruby
begin
  # Create a new payment link
  data, status_code, headers = api_instance.create_payment_link_with_http_info(create_payment_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentLink>
rescue Amos::ApiError => e
  puts "Error when calling PaymentLinksApi->create_payment_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payment_link_request** | [**CreatePaymentLinkRequest**](CreatePaymentLinkRequest.md) |  |  |

### Return type

[**PaymentLink**](PaymentLink.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_payment_links

> <ListPaymentLinks> list_payment_links(opts)

List payment links

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

api_instance = Amos::PaymentLinksApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List payment links
  result = api_instance.list_payment_links(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentLinksApi->list_payment_links: #{e}"
end
```

#### Using the list_payment_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentLinks>, Integer, Hash)> list_payment_links_with_http_info(opts)

```ruby
begin
  # List payment links
  data, status_code, headers = api_instance.list_payment_links_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentLinks>
rescue Amos::ApiError => e
  puts "Error when calling PaymentLinksApi->list_payment_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListPaymentLinks**](ListPaymentLinks.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

