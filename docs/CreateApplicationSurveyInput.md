# Amos::CreateApplicationSurveyInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_entity_application_id** | **String** |  |  |
| **previous_platform** | **String** |  | [optional] |
| **previous_processor** | **String** |  | [optional] |
| **referral_source** | **String** |  |  |
| **referral_name** | **String** |  | [optional] |
| **channels** | [**Array&lt;ApplicationSurveyChannel&gt;**](ApplicationSurveyChannel.md) |  | [optional] |
| **website_status** | [**ApplicationSurveyWebsiteStatus**](ApplicationSurveyWebsiteStatus.md) |  | [optional] |
| **website_url** | **String** |  | [optional] |
| **religious_affiliation** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::CreateApplicationSurveyInput.new(
  legal_entity_application_id: null,
  previous_platform: null,
  previous_processor: null,
  referral_source: null,
  referral_name: null,
  channels: null,
  website_status: null,
  website_url: null,
  religious_affiliation: null
)
```

