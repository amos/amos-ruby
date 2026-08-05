# Amos::RenderTemplatesApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_render_template**](RenderTemplatesApi.md#create_render_template) | **POST** /render_templates | Create a new render template |
| [**create_render_token**](RenderTemplatesApi.md#create_render_token) | **POST** /render_templates/{id}/token | Create a render token for render template |
| [**get_render_template**](RenderTemplatesApi.md#get_render_template) | **GET** /render_templates/{id} | Retrieve a render template by ID |
| [**list_render_templates**](RenderTemplatesApi.md#list_render_templates) | **GET** /render_templates | List all render templates |


## create_render_template

> <RenderTemplate> create_render_template(create_render_template_request)

Create a new render template

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

api_instance = Amos::RenderTemplatesApi.new
create_render_template_request = Amos::CreateRenderTemplateRequest.new({render_template: Amos::CreateRenderTemplateInput.new({billing_address_options: Amos::InternationalBillingAddressOptions.new({mode: 'international', allowed_countries: ['allowed_countries_example']})})}) # CreateRenderTemplateRequest | 

begin
  # Create a new render template
  result = api_instance.create_render_template(create_render_template_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_template: #{e}"
end
```

#### Using the create_render_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderTemplate>, Integer, Hash)> create_render_template_with_http_info(create_render_template_request)

```ruby
begin
  # Create a new render template
  data, status_code, headers = api_instance.create_render_template_with_http_info(create_render_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderTemplate>
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_render_template_request** | [**CreateRenderTemplateRequest**](CreateRenderTemplateRequest.md) |  |  |

### Return type

[**RenderTemplate**](RenderTemplate.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_render_token

> <RenderToken> create_render_token(id)

Create a render token for render template

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

api_instance = Amos::RenderTemplatesApi.new
id = 'id_example' # String | 

begin
  # Create a render token for render template
  result = api_instance.create_render_token(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_token: #{e}"
end
```

#### Using the create_render_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderToken>, Integer, Hash)> create_render_token_with_http_info(id)

```ruby
begin
  # Create a render token for render template
  data, status_code, headers = api_instance.create_render_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderToken>
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->create_render_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**RenderToken**](RenderToken.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_render_template

> <RenderTemplate> get_render_template(id)

Retrieve a render template by ID

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

api_instance = Amos::RenderTemplatesApi.new
id = 'id_example' # String | 

begin
  # Retrieve a render template by ID
  result = api_instance.get_render_template(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->get_render_template: #{e}"
end
```

#### Using the get_render_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RenderTemplate>, Integer, Hash)> get_render_template_with_http_info(id)

```ruby
begin
  # Retrieve a render template by ID
  data, status_code, headers = api_instance.get_render_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RenderTemplate>
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->get_render_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**RenderTemplate**](RenderTemplate.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_render_templates

> <ListRenderTemplates> list_render_templates(opts)

List all render templates

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

api_instance = Amos::RenderTemplatesApi.new
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56, # Integer | Number of results per page.
  account_id: 'account_id_example' # String | 
}

begin
  # List all render templates
  result = api_instance.list_render_templates(opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->list_render_templates: #{e}"
end
```

#### Using the list_render_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRenderTemplates>, Integer, Hash)> list_render_templates_with_http_info(opts)

```ruby
begin
  # List all render templates
  data, status_code, headers = api_instance.list_render_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRenderTemplates>
rescue Amos::ApiError => e
  puts "Error when calling RenderTemplatesApi->list_render_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |
| **account_id** | **String** |  | [optional] |

### Return type

[**ListRenderTemplates**](ListRenderTemplates.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

