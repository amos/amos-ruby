# Amos::LegalEntityApplicationPrincipalsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#create_legal_entity_application_principal) | **POST** /legal_entity_application_principals | Create a legal entity application principal |
| [**get_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#get_legal_entity_application_principal) | **GET** /legal_entity_application_principals/{id} | Retrieve a legal entity application principal by ID |


## create_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> create_legal_entity_application_principal(create_legal_entity_application_principal_request)

Create a legal entity application principal

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
create_legal_entity_application_principal_request = Amos::CreateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::CreateLegalEntityApplicationPrincipalInput.new}) # CreateLegalEntityApplicationPrincipalRequest | 

begin
  # Create a legal entity application principal
  result = api_instance.create_legal_entity_application_principal(create_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_legal_entity_application_principal: #{e}"
end
```

#### Using the create_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request)

```ruby
begin
  # Create a legal entity application principal
  data, status_code, headers = api_instance.create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_legal_entity_application_principal_request** | [**CreateLegalEntityApplicationPrincipalRequest**](CreateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> get_legal_entity_application_principal(id)

Retrieve a legal entity application principal by ID

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a legal entity application principal by ID
  result = api_instance.get_legal_entity_application_principal(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_legal_entity_application_principal: #{e}"
end
```

#### Using the get_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> get_legal_entity_application_principal_with_http_info(id)

```ruby
begin
  # Retrieve a legal entity application principal by ID
  data, status_code, headers = api_instance.get_legal_entity_application_principal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

