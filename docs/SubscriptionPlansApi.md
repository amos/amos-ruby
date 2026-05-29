# Amos::SubscriptionPlansApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription_plan**](SubscriptionPlansApi.md#create_subscription_plan) | **POST** /subscription_plans | Create a new subscription plan |
| [**get_subscription_plan**](SubscriptionPlansApi.md#get_subscription_plan) | **GET** /subscription_plans/{id} | Retrieve a subscription plan by ID |
| [**list_subscription_plans**](SubscriptionPlansApi.md#list_subscription_plans) | **GET** /subscription_plans | List all subscription plans |


## create_subscription_plan

> <SubscriptionPlan> create_subscription_plan(create_subscription_plan_request)

Create a new subscription plan

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

api_instance = Amos::SubscriptionPlansApi.new
create_subscription_plan_request = Amos::CreateSubscriptionPlanRequest.new({subscription_plan: Amos::CreateSubscriptionPlanInput.new}) # CreateSubscriptionPlanRequest | 

begin
  # Create a new subscription plan
  result = api_instance.create_subscription_plan(create_subscription_plan_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->create_subscription_plan: #{e}"
end
```

#### Using the create_subscription_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionPlan>, Integer, Hash)> create_subscription_plan_with_http_info(create_subscription_plan_request)

```ruby
begin
  # Create a new subscription plan
  data, status_code, headers = api_instance.create_subscription_plan_with_http_info(create_subscription_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionPlan>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->create_subscription_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_subscription_plan_request** | [**CreateSubscriptionPlanRequest**](CreateSubscriptionPlanRequest.md) |  |  |

### Return type

[**SubscriptionPlan**](SubscriptionPlan.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_subscription_plan

> <SubscriptionPlan> get_subscription_plan(id)

Retrieve a subscription plan by ID

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

api_instance = Amos::SubscriptionPlansApi.new
id = 'id_example' # String | The ID of the subscription plan to retrieve

begin
  # Retrieve a subscription plan by ID
  result = api_instance.get_subscription_plan(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->get_subscription_plan: #{e}"
end
```

#### Using the get_subscription_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionPlan>, Integer, Hash)> get_subscription_plan_with_http_info(id)

```ruby
begin
  # Retrieve a subscription plan by ID
  data, status_code, headers = api_instance.get_subscription_plan_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionPlan>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->get_subscription_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the subscription plan to retrieve |  |

### Return type

[**SubscriptionPlan**](SubscriptionPlan.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_subscription_plans

> <ListSubscriptionPlans> list_subscription_plans(opts)

List all subscription plans

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

api_instance = Amos::SubscriptionPlansApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all subscription plans
  result = api_instance.list_subscription_plans(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->list_subscription_plans: #{e}"
end
```

#### Using the list_subscription_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSubscriptionPlans>, Integer, Hash)> list_subscription_plans_with_http_info(opts)

```ruby
begin
  # List all subscription plans
  data, status_code, headers = api_instance.list_subscription_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSubscriptionPlans>
rescue Amos::ApiError => e
  puts "Error when calling SubscriptionPlansApi->list_subscription_plans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListSubscriptionPlans**](ListSubscriptionPlans.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

