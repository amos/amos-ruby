# Amos::LegalEntityApplicationPrincipalsApi

All URIs are relative to *https://pay-sandbox.amos.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_embed_principal_invitation**](LegalEntityApplicationPrincipalsApi.md#accept_embed_principal_invitation) | **POST** /embed/principal_invitations/accept | Accept a principal invitation |
| [**confirm_embed_legal_entity_application_principal_email_verification**](LegalEntityApplicationPrincipalsApi.md#confirm_embed_legal_entity_application_principal_email_verification) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{principal_id}/email_verification/confirm | Confirm a principal&#39;s email with the emailed code |
| [**create_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#create_embed_legal_entity_application_principal) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals | Create a principal for the embedded application |
| [**create_embed_legal_entity_application_principal_identity_verification_link_token**](LegalEntityApplicationPrincipalsApi.md#create_embed_legal_entity_application_principal_identity_verification_link_token) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{principal_id}/identity_verification/link_token | Create a Plaid Identity Verification Link token |
| [**create_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#create_legal_entity_application_principal) | **POST** /legal_entity_application_principals | Create a legal entity application principal |
| [**delete_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#delete_embed_legal_entity_application_principal) | **DELETE** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{id} | Delete a principal for the embedded application |
| [**delete_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#delete_legal_entity_application_principal) | **DELETE** /legal_entity_application_principals/{id} | Delete a legal entity application principal |
| [**get_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#get_embed_legal_entity_application_principal) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{id} | Retrieve a principal for the embedded application |
| [**get_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#get_legal_entity_application_principal) | **GET** /legal_entity_application_principals/{id} | Retrieve a legal entity application principal by ID |
| [**list_embed_legal_entity_application_principals**](LegalEntityApplicationPrincipalsApi.md#list_embed_legal_entity_application_principals) | **GET** /embed/legal_entity_applications/{legal_entity_application_id}/principals | List principals for the embedded application |
| [**record_embed_legal_entity_application_principal_identity_verification**](LegalEntityApplicationPrincipalsApi.md#record_embed_legal_entity_application_principal_identity_verification) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{principal_id}/identity_verification | Record a completed Plaid Identity Verification Link session |
| [**send_embed_legal_entity_application_principal_email_verification**](LegalEntityApplicationPrincipalsApi.md#send_embed_legal_entity_application_principal_email_verification) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{principal_id}/email_verification | Email a verification code to a principal |
| [**send_embed_legal_entity_application_principal_invitation**](LegalEntityApplicationPrincipalsApi.md#send_embed_legal_entity_application_principal_invitation) | **POST** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{principal_id}/invitation | Email an invitation link to a principal |
| [**submit_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#submit_legal_entity_application_principal) | **POST** /legal_entity_application_principals/{id}/submit | Submit an independent principal application |
| [**update_embed_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#update_embed_legal_entity_application_principal) | **PUT** /embed/legal_entity_applications/{legal_entity_application_id}/principals/{id} | Update a principal for the embedded application |
| [**update_legal_entity_application_principal**](LegalEntityApplicationPrincipalsApi.md#update_legal_entity_application_principal) | **PUT** /legal_entity_application_principals/{id} | Update a legal entity application principal |


## accept_embed_principal_invitation

> <LegalEntityApplicationPrincipalInvitationAcceptance> accept_embed_principal_invitation(accept_legal_entity_application_principal_invitation_request)

Accept a principal invitation

Called by the invite page with the token from the emailed link. No authentication: the invitation token is the credential. Accepting verifies the principal's email, uses up the link, and returns a principal token for filling in that principal's details. Limited to 10 requests a minute per IP address. 

### Examples

```ruby
require 'time'
require 'amos'

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
accept_legal_entity_application_principal_invitation_request = Amos::AcceptLegalEntityApplicationPrincipalInvitationRequest.new({token: 'token_example'}) # AcceptLegalEntityApplicationPrincipalInvitationRequest | 

begin
  # Accept a principal invitation
  result = api_instance.accept_embed_principal_invitation(accept_legal_entity_application_principal_invitation_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->accept_embed_principal_invitation: #{e}"
end
```

#### Using the accept_embed_principal_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipalInvitationAcceptance>, Integer, Hash)> accept_embed_principal_invitation_with_http_info(accept_legal_entity_application_principal_invitation_request)

```ruby
begin
  # Accept a principal invitation
  data, status_code, headers = api_instance.accept_embed_principal_invitation_with_http_info(accept_legal_entity_application_principal_invitation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipalInvitationAcceptance>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->accept_embed_principal_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_legal_entity_application_principal_invitation_request** | [**AcceptLegalEntityApplicationPrincipalInvitationRequest**](AcceptLegalEntityApplicationPrincipalInvitationRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipalInvitationAcceptance**](LegalEntityApplicationPrincipalInvitationAcceptance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## confirm_embed_legal_entity_application_principal_email_verification

> <LegalEntityApplicationPrincipal> confirm_embed_legal_entity_application_principal_email_verification(legal_entity_application_id, principal_id, confirm_legal_entity_application_principal_email_verification_request)

Confirm a principal's email with the emailed code

Sets `email_verified_at` when the code matches. Responds 422 when the code is wrong or expired, the email is already verified, 5 wrong codes have been entered (request a new code to try again), or the application is no longer pending or needs information. 

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
principal_id = 'principal_id_example' # String | 
confirm_legal_entity_application_principal_email_verification_request = Amos::ConfirmLegalEntityApplicationPrincipalEmailVerificationRequest.new({code: 'code_example'}) # ConfirmLegalEntityApplicationPrincipalEmailVerificationRequest | 

begin
  # Confirm a principal's email with the emailed code
  result = api_instance.confirm_embed_legal_entity_application_principal_email_verification(legal_entity_application_id, principal_id, confirm_legal_entity_application_principal_email_verification_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->confirm_embed_legal_entity_application_principal_email_verification: #{e}"
end
```

#### Using the confirm_embed_legal_entity_application_principal_email_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> confirm_embed_legal_entity_application_principal_email_verification_with_http_info(legal_entity_application_id, principal_id, confirm_legal_entity_application_principal_email_verification_request)

```ruby
begin
  # Confirm a principal's email with the emailed code
  data, status_code, headers = api_instance.confirm_embed_legal_entity_application_principal_email_verification_with_http_info(legal_entity_application_id, principal_id, confirm_legal_entity_application_principal_email_verification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->confirm_embed_legal_entity_application_principal_email_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **principal_id** | **String** |  |  |
| **confirm_legal_entity_application_principal_email_verification_request** | [**ConfirmLegalEntityApplicationPrincipalEmailVerificationRequest**](ConfirmLegalEntityApplicationPrincipalEmailVerificationRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> create_embed_legal_entity_application_principal(legal_entity_application_id, create_legal_entity_application_principal_request)

Create a principal for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
create_legal_entity_application_principal_request = Amos::CreateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::CreateLegalEntityApplicationPrincipalInput.new}) # CreateLegalEntityApplicationPrincipalRequest | 

begin
  # Create a principal for the embedded application
  result = api_instance.create_embed_legal_entity_application_principal(legal_entity_application_id, create_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the create_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> create_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, create_legal_entity_application_principal_request)

```ruby
begin
  # Create a principal for the embedded application
  data, status_code, headers = api_instance.create_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, create_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **create_legal_entity_application_principal_request** | [**CreateLegalEntityApplicationPrincipalRequest**](CreateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_embed_legal_entity_application_principal_identity_verification_link_token

> <IdentityVerificationLinkToken> create_embed_legal_entity_application_principal_identity_verification_link_token(legal_entity_application_id, principal_id)

Create a Plaid Identity Verification Link token

Returns a link token the embed opens in Plaid Link. The template decides the steps. When it includes Selfie Check, Link captures a live face with the camera and compares it to the ID photo when Documentary Verification is also on. Known principal data is prefilled so Link can skip those screens. Responds 422 when the application is no longer pending or needs information, the template is not configured, or Plaid rejects the request. Limited to 10 link tokens and recorded sessions an hour per principal. An invited principal's token can start a session only for that principal.

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
principal_id = 'principal_id_example' # String | 

begin
  # Create a Plaid Identity Verification Link token
  result = api_instance.create_embed_legal_entity_application_principal_identity_verification_link_token(legal_entity_application_id, principal_id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal_identity_verification_link_token: #{e}"
end
```

#### Using the create_embed_legal_entity_application_principal_identity_verification_link_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdentityVerificationLinkToken>, Integer, Hash)> create_embed_legal_entity_application_principal_identity_verification_link_token_with_http_info(legal_entity_application_id, principal_id)

```ruby
begin
  # Create a Plaid Identity Verification Link token
  data, status_code, headers = api_instance.create_embed_legal_entity_application_principal_identity_verification_link_token_with_http_info(legal_entity_application_id, principal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdentityVerificationLinkToken>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_embed_legal_entity_application_principal_identity_verification_link_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **principal_id** | **String** |  |  |

### Return type

[**IdentityVerificationLinkToken**](IdentityVerificationLinkToken.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> create_legal_entity_application_principal(create_legal_entity_application_principal_request, opts)

Create a legal entity application principal

Adds a principal to an application. For an approved application, the principal is approved immediately and an active legal entity membership is created. For a pending application, the principal remains part of the parent application's legacy approval flow. 

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
opts = {
  x_idempotency_key: 'x_idempotency_key_example' # String | 
}

begin
  # Create a legal entity application principal
  result = api_instance.create_legal_entity_application_principal(create_legal_entity_application_principal_request, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->create_legal_entity_application_principal: #{e}"
end
```

#### Using the create_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request, opts)

```ruby
begin
  # Create a legal entity application principal
  data, status_code, headers = api_instance.create_legal_entity_application_principal_with_http_info(create_legal_entity_application_principal_request, opts)
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
| **x_idempotency_key** | **String** |  | [optional] |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_embed_legal_entity_application_principal

> delete_embed_legal_entity_application_principal(legal_entity_application_id, id)

Delete a principal for the embedded application

Deletes the principal while the application is pending or needs information. A principal token cannot delete a principal. Removing the last principal reopens the principal requirement.

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 

begin
  # Delete a principal for the embedded application
  api_instance.delete_embed_legal_entity_application_principal(legal_entity_application_id, id)
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->delete_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the delete_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)

```ruby
begin
  # Delete a principal for the embedded application
  data, status_code, headers = api_instance.delete_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->delete_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_legal_entity_application_principal

> delete_legal_entity_application_principal(id)

Delete a legal entity application principal

Deletes the principal while the legal entity application is pending. Responds 422 once the application has left pending, including when it needs information. Removing the last principal reopens the principal requirement.

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
  # Delete a legal entity application principal
  api_instance.delete_legal_entity_application_principal(id)
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->delete_legal_entity_application_principal: #{e}"
end
```

#### Using the delete_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_legal_entity_application_principal_with_http_info(id)

```ruby
begin
  # Delete a legal entity application principal
  data, status_code, headers = api_instance.delete_legal_entity_application_principal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->delete_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> get_embed_legal_entity_application_principal(legal_entity_application_id, id)

Retrieve a principal for the embedded application

Accepts a principal token for its own principal; any other principal responds 403. 

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 

begin
  # Retrieve a principal for the embedded application
  result = api_instance.get_embed_legal_entity_application_principal(legal_entity_application_id, id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the get_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> get_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)

```ruby
begin
  # Retrieve a principal for the embedded application
  data, status_code, headers = api_instance.get_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->get_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
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


## list_embed_legal_entity_application_principals

> <ListEmbedLegalEntityApplicationPrincipals> list_embed_legal_entity_application_principals(legal_entity_application_id, opts)

List principals for the embedded application

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
opts = {
  page: 56, # Integer | The page of results to retrieve.
  per_page: 56 # Integer | Number of results per page.
}

begin
  # List principals for the embedded application
  result = api_instance.list_embed_legal_entity_application_principals(legal_entity_application_id, opts)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->list_embed_legal_entity_application_principals: #{e}"
end
```

#### Using the list_embed_legal_entity_application_principals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmbedLegalEntityApplicationPrincipals>, Integer, Hash)> list_embed_legal_entity_application_principals_with_http_info(legal_entity_application_id, opts)

```ruby
begin
  # List principals for the embedded application
  data, status_code, headers = api_instance.list_embed_legal_entity_application_principals_with_http_info(legal_entity_application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmbedLegalEntityApplicationPrincipals>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->list_embed_legal_entity_application_principals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **page** | **Integer** | The page of results to retrieve. | [optional] |
| **per_page** | **Integer** | Number of results per page. | [optional] |

### Return type

[**ListEmbedLegalEntityApplicationPrincipals**](ListEmbedLegalEntityApplicationPrincipals.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## record_embed_legal_entity_application_principal_identity_verification

> <LegalEntityApplicationPrincipal> record_embed_legal_entity_application_principal_identity_verification(legal_entity_application_id, principal_id, record_legal_entity_application_principal_identity_verification_request)

Record a completed Plaid Identity Verification Link session

Call this from Plaid Link's onSuccess callback with `metadata.link_session_id` as `session_id`. The session is fetched from Plaid and stored for underwriting. The response is the principal, including `identity_verification_status`. It does not include captured document or selfie media. Completing Link means the applicant submitted the requested steps; check the status for the outcome. Responds 422 when `session_id` is missing, the session belongs to another principal, or the application is no longer pending or needs information. Shares the hourly limit with the link token route.

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
principal_id = 'principal_id_example' # String | 
record_legal_entity_application_principal_identity_verification_request = Amos::RecordLegalEntityApplicationPrincipalIdentityVerificationRequest.new({session_id: 'session_id_example'}) # RecordLegalEntityApplicationPrincipalIdentityVerificationRequest | 

begin
  # Record a completed Plaid Identity Verification Link session
  result = api_instance.record_embed_legal_entity_application_principal_identity_verification(legal_entity_application_id, principal_id, record_legal_entity_application_principal_identity_verification_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->record_embed_legal_entity_application_principal_identity_verification: #{e}"
end
```

#### Using the record_embed_legal_entity_application_principal_identity_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> record_embed_legal_entity_application_principal_identity_verification_with_http_info(legal_entity_application_id, principal_id, record_legal_entity_application_principal_identity_verification_request)

```ruby
begin
  # Record a completed Plaid Identity Verification Link session
  data, status_code, headers = api_instance.record_embed_legal_entity_application_principal_identity_verification_with_http_info(legal_entity_application_id, principal_id, record_legal_entity_application_principal_identity_verification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->record_embed_legal_entity_application_principal_identity_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **principal_id** | **String** |  |  |
| **record_legal_entity_application_principal_identity_verification_request** | [**RecordLegalEntityApplicationPrincipalIdentityVerificationRequest**](RecordLegalEntityApplicationPrincipalIdentityVerificationRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_embed_legal_entity_application_principal_email_verification

> <LegalEntityApplicationPrincipal> send_embed_legal_entity_application_principal_email_verification(legal_entity_application_id, principal_id)

Email a verification code to a principal

For the person filling in the embed. Emails a six-digit code to the principal's email; confirm it with the confirm route. The code expires after 10 minutes, and sending a new one replaces it. Another code can't be sent for 60 seconds. Sends are limited to 5 a day per principal and 20 an hour per application. Responds 422 when the email is missing, invalid, or already verified, or the application is no longer pending or needs information. 

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
principal_id = 'principal_id_example' # String | 

begin
  # Email a verification code to a principal
  result = api_instance.send_embed_legal_entity_application_principal_email_verification(legal_entity_application_id, principal_id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->send_embed_legal_entity_application_principal_email_verification: #{e}"
end
```

#### Using the send_embed_legal_entity_application_principal_email_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> send_embed_legal_entity_application_principal_email_verification_with_http_info(legal_entity_application_id, principal_id)

```ruby
begin
  # Email a verification code to a principal
  data, status_code, headers = api_instance.send_embed_legal_entity_application_principal_email_verification_with_http_info(legal_entity_application_id, principal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->send_embed_legal_entity_application_principal_email_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **principal_id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_embed_legal_entity_application_principal_invitation

> <LegalEntityApplicationPrincipal> send_embed_legal_entity_application_principal_invitation(legal_entity_application_id, principal_id)

Email an invitation link to a principal

For principals other than the person filling in the embed. Emails a link that lets the principal confirm their email and fill in their own details; see `AcceptEmbedPrincipalInvitation`. The link works once and expires after 72 hours. Sending again replaces the earlier link and ends any session it started. Sends are limited to 5 a day per principal and 20 an hour per application. Responds 422 when the email is missing, invalid, or already verified, or the application is no longer pending or needs information. 

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
principal_id = 'principal_id_example' # String | 

begin
  # Email an invitation link to a principal
  result = api_instance.send_embed_legal_entity_application_principal_invitation(legal_entity_application_id, principal_id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->send_embed_legal_entity_application_principal_invitation: #{e}"
end
```

#### Using the send_embed_legal_entity_application_principal_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> send_embed_legal_entity_application_principal_invitation_with_http_info(legal_entity_application_id, principal_id)

```ruby
begin
  # Email an invitation link to a principal
  data, status_code, headers = api_instance.send_embed_legal_entity_application_principal_invitation_with_http_info(legal_entity_application_id, principal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->send_embed_legal_entity_application_principal_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **principal_id** | **String** |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> submit_legal_entity_application_principal(id)

Submit an independent principal application

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Submit an independent principal application
  result = api_instance.submit_legal_entity_application_principal(id)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->submit_legal_entity_application_principal: #{e}"
end
```

#### Using the submit_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> submit_legal_entity_application_principal_with_http_info(id)

```ruby
begin
  # Submit an independent principal application
  data, status_code, headers = api_instance.submit_legal_entity_application_principal_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->submit_legal_entity_application_principal_with_http_info: #{e}"
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


## update_embed_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> update_embed_legal_entity_application_principal(legal_entity_application_id, id, update_legal_entity_application_principal_request)

Update a principal for the embedded application

Accepts a principal token for its own principal; any other principal responds 403. A principal token can't change `email` (422), since the email is what the invitation verified. Changing the email with an application token resets `email_verified_at` and revokes the principal's invitation. 

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

api_instance = Amos::LegalEntityApplicationPrincipalsApi.new
legal_entity_application_id = 'legal_entity_application_id_example' # String | 
id = 'id_example' # String | 
update_legal_entity_application_principal_request = Amos::UpdateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::UpdateLegalEntityApplicationPrincipalInput.new}) # UpdateLegalEntityApplicationPrincipalRequest | 

begin
  # Update a principal for the embedded application
  result = api_instance.update_embed_legal_entity_application_principal(legal_entity_application_id, id, update_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_embed_legal_entity_application_principal: #{e}"
end
```

#### Using the update_embed_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> update_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id, update_legal_entity_application_principal_request)

```ruby
begin
  # Update a principal for the embedded application
  data, status_code, headers = api_instance.update_embed_legal_entity_application_principal_with_http_info(legal_entity_application_id, id, update_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_embed_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **id** | **String** |  |  |
| **update_legal_entity_application_principal_request** | [**UpdateLegalEntityApplicationPrincipalRequest**](UpdateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[Embed](../README.md#Embed)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_legal_entity_application_principal

> <LegalEntityApplicationPrincipal> update_legal_entity_application_principal(id, update_legal_entity_application_principal_request)

Update a legal entity application principal

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
update_legal_entity_application_principal_request = Amos::UpdateLegalEntityApplicationPrincipalRequest.new({legal_entity_application_principal: Amos::UpdateLegalEntityApplicationPrincipalInput.new}) # UpdateLegalEntityApplicationPrincipalRequest | 

begin
  # Update a legal entity application principal
  result = api_instance.update_legal_entity_application_principal(id, update_legal_entity_application_principal_request)
  p result
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_legal_entity_application_principal: #{e}"
end
```

#### Using the update_legal_entity_application_principal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LegalEntityApplicationPrincipal>, Integer, Hash)> update_legal_entity_application_principal_with_http_info(id, update_legal_entity_application_principal_request)

```ruby
begin
  # Update a legal entity application principal
  data, status_code, headers = api_instance.update_legal_entity_application_principal_with_http_info(id, update_legal_entity_application_principal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LegalEntityApplicationPrincipal>
rescue Amos::ApiError => e
  puts "Error when calling LegalEntityApplicationPrincipalsApi->update_legal_entity_application_principal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_legal_entity_application_principal_request** | [**UpdateLegalEntityApplicationPrincipalRequest**](UpdateLegalEntityApplicationPrincipalRequest.md) |  |  |

### Return type

[**LegalEntityApplicationPrincipal**](LegalEntityApplicationPrincipal.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

