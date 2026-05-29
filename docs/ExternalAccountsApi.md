# Amos::ExternalAccountsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_account**](ExternalAccountsApi.md#create_external_account) | **POST** /external_accounts | Create an external account |
| [**get_external_account**](ExternalAccountsApi.md#get_external_account) | **GET** /external_accounts/{id} | Retrieve an external account by ID |
| [**list_external_accounts**](ExternalAccountsApi.md#list_external_accounts) | **GET** /external_accounts | List all external accounts |


## create_external_account

> <ExternalAccount> create_external_account(create_external_account_request)

Create an external account

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

api_instance = Amos::ExternalAccountsApi.new
create_external_account_request = Amos::CreateExternalAccountRequest.new({external_account: Amos::CreateExternalAccountInput.new}) # CreateExternalAccountRequest | 

begin
  # Create an external account
  result = api_instance.create_external_account(create_external_account_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->create_external_account: #{e}"
end
```

#### Using the create_external_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalAccount>, Integer, Hash)> create_external_account_with_http_info(create_external_account_request)

```ruby
begin
  # Create an external account
  data, status_code, headers = api_instance.create_external_account_with_http_info(create_external_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalAccount>
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->create_external_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_external_account_request** | [**CreateExternalAccountRequest**](CreateExternalAccountRequest.md) |  |  |

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_account

> <ExternalAccount> get_external_account(id)

Retrieve an external account by ID

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

api_instance = Amos::ExternalAccountsApi.new
id = 'id_example' # String | 

begin
  # Retrieve an external account by ID
  result = api_instance.get_external_account(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->get_external_account: #{e}"
end
```

#### Using the get_external_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalAccount>, Integer, Hash)> get_external_account_with_http_info(id)

```ruby
begin
  # Retrieve an external account by ID
  data, status_code, headers = api_instance.get_external_account_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalAccount>
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->get_external_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ExternalAccount**](ExternalAccount.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_external_accounts

> <ListExternalAccounts> list_external_accounts(opts)

List all external accounts

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

api_instance = Amos::ExternalAccountsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List all external accounts
  result = api_instance.list_external_accounts(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->list_external_accounts: #{e}"
end
```

#### Using the list_external_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListExternalAccounts>, Integer, Hash)> list_external_accounts_with_http_info(opts)

```ruby
begin
  # List all external accounts
  data, status_code, headers = api_instance.list_external_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListExternalAccounts>
rescue Amos::ApiError => e
  puts "Error when calling ExternalAccountsApi->list_external_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListExternalAccounts**](ListExternalAccounts.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

