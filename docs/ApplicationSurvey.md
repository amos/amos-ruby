# Amos::ApplicationSurvey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **legal_entity_application_id** | **String** |  | [optional] |
| **previous_platform** | **String** |  | [optional] |
| **previous_processor** | **String** |  | [optional] |
| **referral_source** | **String** | Free-text referral source. Current options are Advertisement, A customer, A team member, Capterra, Consultant, Existing user / used previously, Friend, G2, Google Search, AI tool (e.g., ChatGPT, Grok, Gemini), Podcast, Social media, Software Advice, YouTube, and Other.  | [optional] |
| **referral_name** | **String** | Required when referral_source is A customer, A team member, Consultant, Friend, or Other. | [optional] |
| **channels** | [**Array&lt;ApplicationSurveyChannel&gt;**](ApplicationSurveyChannel.md) |  | [optional] |
| **website_status** | [**ApplicationSurveyWebsiteStatus**](ApplicationSurveyWebsiteStatus.md) | Required when channels includes website. | [optional] |
| **website_url** | **String** | Required when channels includes website. | [optional] |
| **religious_affiliation** | **Boolean** |  | [optional][default to false] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'amos'

instance = Amos::ApplicationSurvey.new(
  id: null,
  legal_entity_application_id: null,
  previous_platform: null,
  previous_processor: null,
  referral_source: null,
  referral_name: null,
  channels: null,
  website_status: null,
  website_url: null,
  religious_affiliation: null,
  created_at: null,
  updated_at: null
)
```

