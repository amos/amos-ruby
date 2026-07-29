# Amos::SetupIntentsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**confirm_setup_intent_with_payment_method**](SetupIntentsApi.md#confirm_setup_intent_with_payment_method) | **POST** /embed/setup_intents/{id}/confirm_with_payment_method | Confirm a setup intent with a new payment method |
| [**create_setup_intent**](SetupIntentsApi.md#create_setup_intent) | **POST** /setup_intents | Create a new setup intent |
| [**get_setup_intent**](SetupIntentsApi.md#get_setup_intent) | **GET** /embed/setup_intents/{id} | Retrieve a setup intent by ID |


## confirm_setup_intent_with_payment_method

> <SetupIntent> confirm_setup_intent_with_payment_method(id, confirm_setup_intent_with_payment_method_request)

Confirm a setup intent with a new payment method

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

api_instance = Amos::SetupIntentsApi.new
id = 'id_example' # String | The ID of the setup intent to confirm
confirm_setup_intent_with_payment_method_request = Amos::ConfirmSetupIntentWithPaymentMethodRequest.new({setup_intent: Amos::ConfirmSetupIntentWithEmbeddedPaymentMethodInput.new({payment_method: Amos::EmbedConfirmApplePayPaymentMethodInput.new({type: 'applepay', card_profile_attributes: Amos::CardProfileInput.new})})}) # ConfirmSetupIntentWithPaymentMethodRequest | 

begin
  # Confirm a setup intent with a new payment method
  result = api_instance.confirm_setup_intent_with_payment_method(id, confirm_setup_intent_with_payment_method_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent_with_payment_method: #{e}"
end
```

#### Using the confirm_setup_intent_with_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntent>, Integer, Hash)> confirm_setup_intent_with_payment_method_with_http_info(id, confirm_setup_intent_with_payment_method_request)

```ruby
begin
  # Confirm a setup intent with a new payment method
  data, status_code, headers = api_instance.confirm_setup_intent_with_payment_method_with_http_info(id, confirm_setup_intent_with_payment_method_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntent>
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->confirm_setup_intent_with_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the setup intent to confirm |  |
| **confirm_setup_intent_with_payment_method_request** | [**ConfirmSetupIntentWithPaymentMethodRequest**](ConfirmSetupIntentWithPaymentMethodRequest.md) |  |  |

### Return type

[**SetupIntent**](SetupIntent.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_setup_intent

> <EmbedToken> create_setup_intent(create_setup_intent_request)

Create a new setup intent

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

api_instance = Amos::SetupIntentsApi.new
create_setup_intent_request = Amos::CreateSetupIntentRequest.new({setup_intent: Amos::CreateSetupIntentInput.new}) # CreateSetupIntentRequest | 

begin
  # Create a new setup intent
  result = api_instance.create_setup_intent(create_setup_intent_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent: #{e}"
end
```

#### Using the create_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmbedToken>, Integer, Hash)> create_setup_intent_with_http_info(create_setup_intent_request)

```ruby
begin
  # Create a new setup intent
  data, status_code, headers = api_instance.create_setup_intent_with_http_info(create_setup_intent_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmbedToken>
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->create_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_setup_intent_request** | [**CreateSetupIntentRequest**](CreateSetupIntentRequest.md) |  |  |

### Return type

[**EmbedToken**](EmbedToken.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_setup_intent

> <SetupIntent> get_setup_intent(id)

Retrieve a setup intent by ID

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

api_instance = Amos::SetupIntentsApi.new
id = 'id_example' # String | The ID of the setup intent to retrieve

begin
  # Retrieve a setup intent by ID
  result = api_instance.get_setup_intent(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->get_setup_intent: #{e}"
end
```

#### Using the get_setup_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupIntent>, Integer, Hash)> get_setup_intent_with_http_info(id)

```ruby
begin
  # Retrieve a setup intent by ID
  data, status_code, headers = api_instance.get_setup_intent_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupIntent>
rescue Amos::ApiError => e
  puts "Error when calling SetupIntentsApi->get_setup_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the setup intent to retrieve |  |

### Return type

[**SetupIntent**](SetupIntent.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

