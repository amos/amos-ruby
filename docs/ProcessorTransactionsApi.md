# Amos::ProcessorTransactionsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_processor_transaction**](ProcessorTransactionsApi.md#get_processor_transaction) | **GET** /processor_transactions/{id} | Retrieve a processor transaction by ID |
| [**list_processor_transactions**](ProcessorTransactionsApi.md#list_processor_transactions) | **GET** /processor_transactions | List all processor transactions |


## get_processor_transaction

> <ProcessorTransaction> get_processor_transaction(id)

Retrieve a processor transaction by ID

Retrieves an organization-scoped processor transaction. X-Account-Id is ignored if sent. Returns 404 if the transaction belongs to another organization. 

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

api_instance = Amos::ProcessorTransactionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Retrieve a processor transaction by ID
  result = api_instance.get_processor_transaction(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ProcessorTransactionsApi->get_processor_transaction: #{e}"
end
```

#### Using the get_processor_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcessorTransaction>, Integer, Hash)> get_processor_transaction_with_http_info(id)

```ruby
begin
  # Retrieve a processor transaction by ID
  data, status_code, headers = api_instance.get_processor_transaction_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcessorTransaction>
rescue Amos::ApiError => e
  puts "Error when calling ProcessorTransactionsApi->get_processor_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ProcessorTransaction**](ProcessorTransaction.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_processor_transactions

> <ListProcessorTransactions> list_processor_transactions(opts)

List all processor transactions

Lists organization-scoped processor transactions across all accounts in the organization. X-Account-Id is ignored if sent; use the account_id query parameter to filter to a single account. 

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

api_instance = Amos::ProcessorTransactionsApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  account_id: 'account_id_example', # String | The ID of the account to filter by
  payment_intent_id: 'payment_intent_id_example', # String | The ID of the payment intent to filter by
  payment_method_id: 'payment_method_id_example', # String | The ID of the payment method to filter by
  payment_transaction_id: 'payment_transaction_id_example', # String | The ID of the payment transaction to filter by
  original_transaction_id: 'original_transaction_id_example' # String | 
}

begin
  # List all processor transactions
  result = api_instance.list_processor_transactions(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ProcessorTransactionsApi->list_processor_transactions: #{e}"
end
```

#### Using the list_processor_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProcessorTransactions>, Integer, Hash)> list_processor_transactions_with_http_info(opts)

```ruby
begin
  # List all processor transactions
  data, status_code, headers = api_instance.list_processor_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProcessorTransactions>
rescue Amos::ApiError => e
  puts "Error when calling ProcessorTransactionsApi->list_processor_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **account_id** | **String** | The ID of the account to filter by | [optional] |
| **payment_intent_id** | **String** | The ID of the payment intent to filter by | [optional] |
| **payment_method_id** | **String** | The ID of the payment method to filter by | [optional] |
| **payment_transaction_id** | **String** | The ID of the payment transaction to filter by | [optional] |
| **original_transaction_id** | **String** |  | [optional] |

### Return type

[**ListProcessorTransactions**](ListProcessorTransactions.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

