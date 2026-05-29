# Amos::WebhookRequestsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_webhook_requests**](WebhookRequestsApi.md#list_webhook_requests) | **GET** /webhook_requests | List all webhook requests |
| [**resend_webhook_request**](WebhookRequestsApi.md#resend_webhook_request) | **POST** /webhook_requests/{id}/resend | Resend webhook request by ID |
| [**retrieve_webhook_request**](WebhookRequestsApi.md#retrieve_webhook_request) | **GET** /webhook_requests/{id} | Get webhook request by ID |


## list_webhook_requests

> <ListWebhookRequests> list_webhook_requests(opts)

List all webhook requests

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

api_instance = Amos::WebhookRequestsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all webhook requests
  result = api_instance.list_webhook_requests(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->list_webhook_requests: #{e}"
end
```

#### Using the list_webhook_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookRequests>, Integer, Hash)> list_webhook_requests_with_http_info(opts)

```ruby
begin
  # List all webhook requests
  data, status_code, headers = api_instance.list_webhook_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookRequests>
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->list_webhook_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListWebhookRequests**](ListWebhookRequests.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_webhook_request

> resend_webhook_request(id)

Resend webhook request by ID

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

api_instance = Amos::WebhookRequestsApi.new
id = 'id_example' # String | The ID of the webhook request to resend

begin
  # Resend webhook request by ID
  api_instance.resend_webhook_request(id)
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->resend_webhook_request: #{e}"
end
```

#### Using the resend_webhook_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_webhook_request_with_http_info(id)

```ruby
begin
  # Resend webhook request by ID
  data, status_code, headers = api_instance.resend_webhook_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->resend_webhook_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook request to resend |  |

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_webhook_request

> <WebhookRequest> retrieve_webhook_request(id)

Get webhook request by ID

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

api_instance = Amos::WebhookRequestsApi.new
id = 'id_example' # String | The ID of the webhook request to retrieve

begin
  # Get webhook request by ID
  result = api_instance.retrieve_webhook_request(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->retrieve_webhook_request: #{e}"
end
```

#### Using the retrieve_webhook_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookRequest>, Integer, Hash)> retrieve_webhook_request_with_http_info(id)

```ruby
begin
  # Get webhook request by ID
  data, status_code, headers = api_instance.retrieve_webhook_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookRequest>
rescue Amos::ApiError => e
  puts "Error when calling WebhookRequestsApi->retrieve_webhook_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the webhook request to retrieve |  |

### Return type

[**WebhookRequest**](WebhookRequest.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

