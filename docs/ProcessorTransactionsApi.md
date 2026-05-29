# Amos::ProcessorTransactionsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_processor_transactions**](ProcessorTransactionsApi.md#list_processor_transactions) | **GET** /processor_transactions | List all processor transactions |


## list_processor_transactions

> <ListProcessorTransactions> list_processor_transactions(opts)

List all processor transactions

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
  payment_intent_id: 'payment_intent_id_example', # String | The ID of the payment intent to filter by
  payment_method_id: 'payment_method_id_example', # String | The ID of the payment method to filter by
  payment_transaction_id: 'payment_transaction_id_example' # String | The ID of the payment transaction to filter by
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
| **payment_intent_id** | **String** | The ID of the payment intent to filter by | [optional] |
| **payment_method_id** | **String** | The ID of the payment method to filter by | [optional] |
| **payment_transaction_id** | **String** | The ID of the payment transaction to filter by | [optional] |

### Return type

[**ListProcessorTransactions**](ListProcessorTransactions.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

