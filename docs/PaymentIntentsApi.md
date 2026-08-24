# Amos::PaymentIntentsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payment_intent**](PaymentIntentsApi.md#cancel_payment_intent) | **POST** /payment_intents/{id}/cancel | Cancel a payment intent |
| [**capture_payment_intent**](PaymentIntentsApi.md#capture_payment_intent) | **POST** /payment_intents/{id}/capture | Capture a payment intent |
| [**confirm_embed_payment_intent**](PaymentIntentsApi.md#confirm_embed_payment_intent) | **POST** /embed/payment_intents/{id}/confirm | Confirm a payment intent and wait for processor authorization or sale |
| [**confirm_embed_payment_intent_with_payment_method**](PaymentIntentsApi.md#confirm_embed_payment_intent_with_payment_method) | **POST** /embed/payment_intents/{id}/confirm_with_payment_method | Confirm a payment intent with a new payment method (async) |
| [**create_payment_intent**](PaymentIntentsApi.md#create_payment_intent) | **POST** /payment_intents | Create a new payment intent |
| [**get_embed_payment_intent**](PaymentIntentsApi.md#get_embed_payment_intent) | **GET** /embed/payment_intents/{id} | Retrieve a payment intent by ID |
| [**get_payment_intent**](PaymentIntentsApi.md#get_payment_intent) | **GET** /payment_intents/{id} | Retrieve a payment intent by ID |
| [**list_payment_intents**](PaymentIntentsApi.md#list_payment_intents) | **GET** /payment_intents | List payment intents |


## cancel_payment_intent

> <PaymentIntent> cancel_payment_intent(id)

Cancel a payment intent

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

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to cancel

begin
  # Cancel a payment intent
  result = api_instance.cancel_payment_intent(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent: #{e}"
end
```

#### Using the cancel_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> cancel_payment_intent_with_http_info(id)

```ruby
begin
  # Cancel a payment intent
  data, status_code, headers = api_instance.cancel_payment_intent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->cancel_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to cancel |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## capture_payment_intent

> <PaymentIntent> capture_payment_intent(id)

Capture a payment intent

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

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to capture

begin
  # Capture a payment intent
  result = api_instance.capture_payment_intent(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent: #{e}"
end
```

#### Using the capture_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> capture_payment_intent_with_http_info(id)

```ruby
begin
  # Capture a payment intent
  data, status_code, headers = api_instance.capture_payment_intent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->capture_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to capture |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirm_embed_payment_intent

> <PaymentIntent> confirm_embed_payment_intent(id, confirm_payment_intent_with_payment_method_request)

Confirm a payment intent and wait for processor authorization or sale

Confirms the payment intent and blocks until the processor approves or declines the authorization or sale. Returns 200 with the post-processor state (for example succeeded, requires_payment_method, or requires_capture). Capture for automatic_async intents may still complete asynchronously after authorization. 

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: Embed
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to confirm
confirm_payment_intent_with_payment_method_request = Amos::ConfirmPaymentIntentWithPaymentMethodRequest.new({payment_intent: Amos::ConfirmPaymentIntentWithEmbeddedPaymentMethodInput.new({payment_method: Amos::EmbedConfirmApplePayPaymentMethodInput.new({type: 'applepay', card_profile_attributes: Amos::ApplePayCardProfileInput.new({wallet_payload: 'wallet_payload_example'})})})}) # ConfirmPaymentIntentWithPaymentMethodRequest | 

begin
  # Confirm a payment intent and wait for processor authorization or sale
  result = api_instance.confirm_embed_payment_intent(id, confirm_payment_intent_with_payment_method_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_embed_payment_intent: #{e}"
end
```

#### Using the confirm_embed_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> confirm_embed_payment_intent_with_http_info(id, confirm_payment_intent_with_payment_method_request)

```ruby
begin
  # Confirm a payment intent and wait for processor authorization or sale
  data, status_code, headers = api_instance.confirm_embed_payment_intent_with_http_info(id, confirm_payment_intent_with_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_embed_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to confirm |  |
| **confirm_payment_intent_with_payment_method_request** | [**ConfirmPaymentIntentWithPaymentMethodRequest**](ConfirmPaymentIntentWithPaymentMethodRequest.md) |  |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## confirm_embed_payment_intent_with_payment_method

> <PaymentIntent> confirm_embed_payment_intent_with_payment_method(id, confirm_payment_intent_with_payment_method_request)

Confirm a payment intent with a new payment method (async)

Legacy async confirmation for migration. Accepts a payment method, enqueues authorization or sale work, and returns 202 with processing_authorization or processing_sale. Prefer POST /embed/payment_intents/{id}/confirm for synchronous processor confirmation. 

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: Embed
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to confirm
confirm_payment_intent_with_payment_method_request = Amos::ConfirmPaymentIntentWithPaymentMethodRequest.new({payment_intent: Amos::ConfirmPaymentIntentWithEmbeddedPaymentMethodInput.new({payment_method: Amos::EmbedConfirmApplePayPaymentMethodInput.new({type: 'applepay', card_profile_attributes: Amos::ApplePayCardProfileInput.new({wallet_payload: 'wallet_payload_example'})})})}) # ConfirmPaymentIntentWithPaymentMethodRequest | 

begin
  # Confirm a payment intent with a new payment method (async)
  result = api_instance.confirm_embed_payment_intent_with_payment_method(id, confirm_payment_intent_with_payment_method_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_embed_payment_intent_with_payment_method: #{e}"
end
```

#### Using the confirm_embed_payment_intent_with_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> confirm_embed_payment_intent_with_payment_method_with_http_info(id, confirm_payment_intent_with_payment_method_request)

```ruby
begin
  # Confirm a payment intent with a new payment method (async)
  data, status_code, headers = api_instance.confirm_embed_payment_intent_with_payment_method_with_http_info(id, confirm_payment_intent_with_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->confirm_embed_payment_intent_with_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to confirm |  |
| **confirm_payment_intent_with_payment_method_request** | [**ConfirmPaymentIntentWithPaymentMethodRequest**](ConfirmPaymentIntentWithPaymentMethodRequest.md) |  |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment_intent

> <EmbedToken> create_payment_intent(create_payment_intent_request)

Create a new payment intent

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

api_instance = Amos::PaymentIntentsApi.new
create_payment_intent_request = Amos::CreatePaymentIntentRequest.new({payment_intent: Amos::CreatePaymentIntentInput.new({amount: 37})}) # CreatePaymentIntentRequest | 

begin
  # Create a new payment intent
  result = api_instance.create_payment_intent(create_payment_intent_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent: #{e}"
end
```

#### Using the create_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmbedToken>, Integer, Hash)> create_payment_intent_with_http_info(create_payment_intent_request)

```ruby
begin
  # Create a new payment intent
  data, status_code, headers = api_instance.create_payment_intent_with_http_info(create_payment_intent_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmbedToken>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->create_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payment_intent_request** | [**CreatePaymentIntentRequest**](CreatePaymentIntentRequest.md) |  |  |

### Return type

[**EmbedToken**](EmbedToken.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_embed_payment_intent

> <PaymentIntent> get_embed_payment_intent(id)

Retrieve a payment intent by ID

### Examples

```ruby
require 'time'
require 'amos'
# setup authorization
Amos.configure do |config|
  # Configure API key authorization: Embed
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to retrieve

begin
  # Retrieve a payment intent by ID
  result = api_instance.get_embed_payment_intent(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_embed_payment_intent: #{e}"
end
```

#### Using the get_embed_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> get_embed_payment_intent_with_http_info(id)

```ruby
begin
  # Retrieve a payment intent by ID
  data, status_code, headers = api_instance.get_embed_payment_intent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_embed_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to retrieve |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_intent

> <PaymentIntent> get_payment_intent(id)

Retrieve a payment intent by ID

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

api_instance = Amos::PaymentIntentsApi.new
id = 'id_example' # String | The ID of the payment intent to retrieve

begin
  # Retrieve a payment intent by ID
  result = api_instance.get_payment_intent(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent: #{e}"
end
```

#### Using the get_payment_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIntent>, Integer, Hash)> get_payment_intent_with_http_info(id)

```ruby
begin
  # Retrieve a payment intent by ID
  data, status_code, headers = api_instance.get_payment_intent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIntent>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->get_payment_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the payment intent to retrieve |  |

### Return type

[**PaymentIntent**](PaymentIntent.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_intents

> <ListPaymentIntents> list_payment_intents(opts)

List payment intents

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

api_instance = Amos::PaymentIntentsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List payment intents
  result = api_instance.list_payment_intents(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents: #{e}"
end
```

#### Using the list_payment_intents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPaymentIntents>, Integer, Hash)> list_payment_intents_with_http_info(opts)

```ruby
begin
  # List payment intents
  data, status_code, headers = api_instance.list_payment_intents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPaymentIntents>
rescue Amos::ApiError => e
  puts "Error when calling PaymentIntentsApi->list_payment_intents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListPaymentIntents**](ListPaymentIntents.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

