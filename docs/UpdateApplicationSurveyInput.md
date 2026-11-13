# Amos::UpdateApplicationSurveyInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous_platform** | **String** |  | [optional] |
| **previous_processor** | **String** |  | [optional] |
| **referral_source** | **String** |  | [optional] |
| **referral_name** | **String** |  | [optional] |
| **channels** | [**Array&lt;ApplicationSurveyChannel&gt;**](ApplicationSurveyChannel.md) |  | [optional] |
| **website_status** | [**ApplicationSurveyWebsiteStatus**](ApplicationSurveyWebsiteStatus.md) |  | [optional] |
| **website_url** | **String** |  | [optional] |
| **religious_affiliation** | **Boolean** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::UpdateApplicationSurveyInput.new(
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

