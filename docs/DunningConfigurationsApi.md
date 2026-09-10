# Amos::DunningConfigurationsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_dunning_configuration**](DunningConfigurationsApi.md#create_dunning_configuration) | **POST** /dunning_configuration | Create the current organization&#39;s dunning configuration |
| [**get_dunning_configuration**](DunningConfigurationsApi.md#get_dunning_configuration) | **GET** /dunning_configuration | Retrieve the current organization&#39;s dunning configuration |
| [**update_dunning_configuration**](DunningConfigurationsApi.md#update_dunning_configuration) | **PATCH** /dunning_configuration | Update the current organization&#39;s dunning configuration |


## create_dunning_configuration

> <DunningConfiguration> create_dunning_configuration(create_dunning_configuration_request)

Create the current organization's dunning configuration

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

api_instance = Amos::DunningConfigurationsApi.new
create_dunning_configuration_request = Amos::CreateDunningConfigurationRequest.new({dunning_configuration: Amos::CreateDunningConfigurationInput.new({retry_days: [37]})}) # CreateDunningConfigurationRequest | 

begin
  # Create the current organization's dunning configuration
  result = api_instance.create_dunning_configuration(create_dunning_configuration_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->create_dunning_configuration: #{e}"
end
```

#### Using the create_dunning_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DunningConfiguration>, Integer, Hash)> create_dunning_configuration_with_http_info(create_dunning_configuration_request)

```ruby
begin
  # Create the current organization's dunning configuration
  data, status_code, headers = api_instance.create_dunning_configuration_with_http_info(create_dunning_configuration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DunningConfiguration>
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->create_dunning_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_dunning_configuration_request** | [**CreateDunningConfigurationRequest**](CreateDunningConfigurationRequest.md) |  |  |

### Return type

[**DunningConfiguration**](DunningConfiguration.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_dunning_configuration

> <DunningConfiguration> get_dunning_configuration

Retrieve the current organization's dunning configuration

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

api_instance = Amos::DunningConfigurationsApi.new

begin
  # Retrieve the current organization's dunning configuration
  result = api_instance.get_dunning_configuration
  p result
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->get_dunning_configuration: #{e}"
end
```

#### Using the get_dunning_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DunningConfiguration>, Integer, Hash)> get_dunning_configuration_with_http_info

```ruby
begin
  # Retrieve the current organization's dunning configuration
  data, status_code, headers = api_instance.get_dunning_configuration_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DunningConfiguration>
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->get_dunning_configuration_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DunningConfiguration**](DunningConfiguration.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dunning_configuration

> <DunningConfiguration> update_dunning_configuration(update_dunning_configuration_request)

Update the current organization's dunning configuration

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

api_instance = Amos::DunningConfigurationsApi.new
update_dunning_configuration_request = Amos::UpdateDunningConfigurationRequest.new({dunning_configuration: Amos::UpdateDunningConfigurationInput.new}) # UpdateDunningConfigurationRequest | 

begin
  # Update the current organization's dunning configuration
  result = api_instance.update_dunning_configuration(update_dunning_configuration_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->update_dunning_configuration: #{e}"
end
```

#### Using the update_dunning_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DunningConfiguration>, Integer, Hash)> update_dunning_configuration_with_http_info(update_dunning_configuration_request)

```ruby
begin
  # Update the current organization's dunning configuration
  data, status_code, headers = api_instance.update_dunning_configuration_with_http_info(update_dunning_configuration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DunningConfiguration>
rescue Amos::ApiError => e
  puts "Error when calling DunningConfigurationsApi->update_dunning_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_dunning_configuration_request** | [**UpdateDunningConfigurationRequest**](UpdateDunningConfigurationRequest.md) |  |  |

### Return type

[**DunningConfiguration**](DunningConfiguration.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

