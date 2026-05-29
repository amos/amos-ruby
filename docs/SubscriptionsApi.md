# Amos::SubscriptionsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_subscription**](SubscriptionsApi.md#cancel_subscription) | **PUT** /subscriptions/{id}/cancel | Cancel a subscription by ID |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | Retrieve a subscription by ID |
| [**list_subscriptions**](SubscriptionsApi.md#list_subscriptions) | **GET** /subscriptions | List all subscriptions |


## cancel_subscription

> <Subscription> cancel_subscription(id)

Cancel a subscription by ID

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

api_instance = Amos::SubscriptionsApi.new
id = 'id_example' # String | The ID of the subscription to cancel

begin
  # Cancel a subscription by ID
  result = api_instance.cancel_subscription(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription: #{e}"
end
```

#### Using the cancel_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> cancel_subscription_with_http_info(id)

```ruby
begin
  # Cancel a subscription by ID
  data, status_code, headers = api_instance.cancel_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the subscription to cancel |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_subscription

> <Subscription> create_subscription(create_subscription_request)

Create a new subscription

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

api_instance = Amos::SubscriptionsApi.new
create_subscription_request = Amos::CreateSubscriptionRequest.new({subscription: Amos::CreateSubscriptionInput.new}) # CreateSubscriptionRequest | 

begin
  # Create a new subscription
  result = api_instance.create_subscription(create_subscription_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> create_subscription_with_http_info(create_subscription_request)

```ruby
begin
  # Create a new subscription
  data, status_code, headers = api_instance.create_subscription_with_http_info(create_subscription_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_subscription_request** | [**CreateSubscriptionRequest**](CreateSubscriptionRequest.md) |  |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_subscription

> <Subscription> get_subscription(id)

Retrieve a subscription by ID

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

api_instance = Amos::SubscriptionsApi.new
id = 'id_example' # String | The ID of the subscription to retrieve

begin
  # Retrieve a subscription by ID
  result = api_instance.get_subscription(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subscription>, Integer, Hash)> get_subscription_with_http_info(id)

```ruby
begin
  # Retrieve a subscription by ID
  data, status_code, headers = api_instance.get_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subscription>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the subscription to retrieve |  |

### Return type

[**Subscription**](Subscription.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subscriptions

> <ListSubscriptions> list_subscriptions(opts)

List all subscriptions

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

api_instance = Amos::SubscriptionsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all subscriptions
  result = api_instance.list_subscriptions(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->list_subscriptions: #{e}"
end
```

#### Using the list_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSubscriptions>, Integer, Hash)> list_subscriptions_with_http_info(opts)

```ruby
begin
  # List all subscriptions
  data, status_code, headers = api_instance.list_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSubscriptions>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionsApi->list_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListSubscriptions**](ListSubscriptions.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

