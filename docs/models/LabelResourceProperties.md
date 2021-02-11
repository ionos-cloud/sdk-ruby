# Ionoscloud::LabelResourceProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A Label Key | [optional] |
| **value** | **String** | A Label Value | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::LabelResourceProperties.new(
  key: environment,
  value: production
)
```

