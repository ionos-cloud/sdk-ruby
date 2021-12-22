# LabelResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A label key | [optional] |
| **value** | **String** | A label value | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelResourceProperties.new(
  key: environment,
  value: production
)
```

