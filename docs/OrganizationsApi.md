# Amos::OrganizationsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_organization**](OrganizationsApi.md#get_organization) | **GET** /organization | Retrieve the current organization |
| [**update_organization**](OrganizationsApi.md#update_organization) | **PATCH** /organization | Update the current organization |


## get_organization

> <Organization> get_organization

Retrieve the current organization

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

api_instance = Amos::OrganizationsApi.new

begin
  # Retrieve the current organization
  result = api_instance.get_organization
  p result
rescue Amos::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization: #{e}"
end
```

#### Using the get_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> get_organization_with_http_info

```ruby
begin
  # Retrieve the current organization
  data, status_code, headers = api_instance.get_organization_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue Amos::ApiError => e
  puts "Error when calling OrganizationsApi->get_organization_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Organization**](Organization.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization

> <Organization> update_organization(update_organization_request)

Update the current organization

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

api_instance = Amos::OrganizationsApi.new
update_organization_request = Amos::UpdateOrganizationRequest.new({organization: Amos::UpdateOrganizationInput.new({slug: 'slug_example'})}) # UpdateOrganizationRequest | 

begin
  # Update the current organization
  result = api_instance.update_organization(update_organization_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> update_organization_with_http_info(update_organization_request)

```ruby
begin
  # Update the current organization
  data, status_code, headers = api_instance.update_organization_with_http_info(update_organization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue Amos::ApiError => e
  puts "Error when calling OrganizationsApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_organization_request** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md) |  |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

