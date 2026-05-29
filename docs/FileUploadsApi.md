# Amos::FileUploadsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**complete_file_upload**](FileUploadsApi.md#complete_file_upload) | **POST** /file_uploads/{id}/complete | Complete a file upload |
| [**create_file_upload**](FileUploadsApi.md#create_file_upload) | **POST** /file_uploads | Create a file upload |
| [**get_file_upload**](FileUploadsApi.md#get_file_upload) | **GET** /file_uploads/{id} | Retrieve a file upload by ID |


## complete_file_upload

> <FileDownload> complete_file_upload(id)

Complete a file upload

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

api_instance = Amos::FileUploadsApi.new
id = 'id_example' # String | 

begin
  # Complete a file upload
  result = api_instance.complete_file_upload(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->complete_file_upload: #{e}"
end
```

#### Using the complete_file_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownload>, Integer, Hash)> complete_file_upload_with_http_info(id)

```ruby
begin
  # Complete a file upload
  data, status_code, headers = api_instance.complete_file_upload_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownload>
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->complete_file_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**FileDownload**](FileDownload.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_file_upload

> <FileUpload> create_file_upload(create_file_upload_request)

Create a file upload

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

api_instance = Amos::FileUploadsApi.new
create_file_upload_request = Amos::CreateFileUploadRequest.new({file: Amos::CreateFileUploadInput.new({content_type: 'content_type_example', file_name: 'file_name_example', purpose: 'purpose_example'})}) # CreateFileUploadRequest | 

begin
  # Create a file upload
  result = api_instance.create_file_upload(create_file_upload_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->create_file_upload: #{e}"
end
```

#### Using the create_file_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUpload>, Integer, Hash)> create_file_upload_with_http_info(create_file_upload_request)

```ruby
begin
  # Create a file upload
  data, status_code, headers = api_instance.create_file_upload_with_http_info(create_file_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUpload>
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->create_file_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_upload_request** | [**CreateFileUploadRequest**](CreateFileUploadRequest.md) |  |  |

### Return type

[**FileUpload**](FileUpload.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_file_upload

> <FileDownload> get_file_upload(id)

Retrieve a file upload by ID

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

api_instance = Amos::FileUploadsApi.new
id = 'id_example' # String | 

begin
  # Retrieve a file upload by ID
  result = api_instance.get_file_upload(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->get_file_upload: #{e}"
end
```

#### Using the get_file_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownload>, Integer, Hash)> get_file_upload_with_http_info(id)

```ruby
begin
  # Retrieve a file upload by ID
  data, status_code, headers = api_instance.get_file_upload_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownload>
rescue Amos::ApiError => e
  puts "Error when calling FileUploadsApi->get_file_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**FileDownload**](FileDownload.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

