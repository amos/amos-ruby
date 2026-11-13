# Amos::ApplicationSurveysApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_application_survey**](ApplicationSurveysApi.md#create_application_survey) | **POST** /application_surveys | Create an application survey |
| [**create_embed_application_survey**](ApplicationSurveysApi.md#create_embed_application_survey) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/application_survey | Create a survey for the embedded application |
| [**get_application_survey**](ApplicationSurveysApi.md#get_application_survey) | **GET** /application_surveys/{id} | Retrieve an application survey by ID |
| [**get_embed_application_survey**](ApplicationSurveysApi.md#get_embed_application_survey) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/application_survey | Retrieve the survey for the embedded application |
| [**update_application_survey**](ApplicationSurveysApi.md#update_application_survey) | **PUT** /application_surveys/{id} | Update an application survey |
| [**update_embed_application_survey**](ApplicationSurveysApi.md#update_embed_application_survey) | **PUT** /embed/legal_entity_applications/{legal_entity_application_id}/application_survey | Update the survey for the embedded application |


## create_application_survey

> <ApplicationSurvey> create_application_survey(create_application_survey_request)

Create an application survey

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

api_instance = Amos::ApplicationSurveysApi.new
create_application_survey_request = Amos::CreateApplicationSurveyRequest.new({application_survey: Amos::CreateApplicationSurveyInput.new({legal_entity_application_id: 'legal_entity_application_id_example', referral_source: 'referral_source_example'})}) # CreateApplicationSurveyRequest | 

begin
  # Create an application survey
  result = api_instance.create_application_survey(create_application_survey_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->create_application_survey: #{e}"
end
```

#### Using the create_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> create_application_survey_with_http_info(create_application_survey_request)

```ruby
begin
  # Create an application survey
  data, status_code, headers = api_instance.create_application_survey_with_http_info(create_application_survey_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->create_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_application_survey_request** | [**CreateApplicationSurveyRequest**](CreateApplicationSurveyRequest.md) |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_embed_application_survey

> <ApplicationSurvey> create_embed_application_survey(legal_entity_application_id, update_application_survey_request)

Create a survey for the embedded application

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

api_instance = Amos::ApplicationSurveysApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
update_application_survey_request = Amos::UpdateApplicationSurveyRequest.new({application_survey: Amos::UpdateApplicationSurveyInput.new}) # UpdateApplicationSurveyRequest | 

begin
  # Create a survey for the embedded application
  result = api_instance.create_embed_application_survey(legal_entity_application_id, update_application_survey_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->create_embed_application_survey: #{e}"
end
```

#### Using the create_embed_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> create_embed_application_survey_with_http_info(legal_entity_application_id, update_application_survey_request)

```ruby
begin
  # Create a survey for the embedded application
  data, status_code, headers = api_instance.create_embed_application_survey_with_http_info(legal_entity_application_id, update_application_survey_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->create_embed_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **update_application_survey_request** | [**UpdateApplicationSurveyRequest**](UpdateApplicationSurveyRequest.md) |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_application_survey

> <ApplicationSurvey> get_application_survey(id)

Retrieve an application survey by ID

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

api_instance = Amos::ApplicationSurveysApi.new
id = 'id_example' # String | 

begin
  # Retrieve an application survey by ID
  result = api_instance.get_application_survey(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->get_application_survey: #{e}"
end
```

#### Using the get_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> get_application_survey_with_http_info(id)

```ruby
begin
  # Retrieve an application survey by ID
  data, status_code, headers = api_instance.get_application_survey_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->get_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_embed_application_survey

> <ApplicationSurvey> get_embed_application_survey(legal_entity_application_id)

Retrieve the survey for the embedded application

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

api_instance = Amos::ApplicationSurveysApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 

begin
  # Retrieve the survey for the embedded application
  result = api_instance.get_embed_application_survey(legal_entity_application_id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->get_embed_application_survey: #{e}"
end
```

#### Using the get_embed_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> get_embed_application_survey_with_http_info(legal_entity_application_id)

```ruby
begin
  # Retrieve the survey for the embedded application
  data, status_code, headers = api_instance.get_embed_application_survey_with_http_info(legal_entity_application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->get_embed_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_application_survey

> <ApplicationSurvey> update_application_survey(id, update_application_survey_request)

Update an application survey

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

api_instance = Amos::ApplicationSurveysApi.new
id = 'id_example' # String | 
update_application_survey_request = Amos::UpdateApplicationSurveyRequest.new({application_survey: Amos::UpdateApplicationSurveyInput.new}) # UpdateApplicationSurveyRequest | 

begin
  # Update an application survey
  result = api_instance.update_application_survey(id, update_application_survey_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->update_application_survey: #{e}"
end
```

#### Using the update_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> update_application_survey_with_http_info(id, update_application_survey_request)

```ruby
begin
  # Update an application survey
  data, status_code, headers = api_instance.update_application_survey_with_http_info(id, update_application_survey_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->update_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_application_survey_request** | [**UpdateApplicationSurveyRequest**](UpdateApplicationSurveyRequest.md) |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_embed_application_survey

> <ApplicationSurvey> update_embed_application_survey(legal_entity_application_id, update_application_survey_request)

Update the survey for the embedded application

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

api_instance = Amos::ApplicationSurveysApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
update_application_survey_request = Amos::UpdateApplicationSurveyRequest.new({application_survey: Amos::UpdateApplicationSurveyInput.new}) # UpdateApplicationSurveyRequest | 

begin
  # Update the survey for the embedded application
  result = api_instance.update_embed_application_survey(legal_entity_application_id, update_application_survey_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->update_embed_application_survey: #{e}"
end
```

#### Using the update_embed_application_survey_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSurvey>, Integer, Hash)> update_embed_application_survey_with_http_info(legal_entity_application_id, update_application_survey_request)

```ruby
begin
  # Update the survey for the embedded application
  data, status_code, headers = api_instance.update_embed_application_survey_with_http_info(legal_entity_application_id, update_application_survey_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSurvey>
rescue Amos::ApiError => e
  puts "Error when calling ApplicationSurveysApi->update_embed_application_survey_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **update_application_survey_request** | [**UpdateApplicationSurveyRequest**](UpdateApplicationSurveyRequest.md) |  |  |

### Return type

[**ApplicationSurvey**](ApplicationSurvey.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

