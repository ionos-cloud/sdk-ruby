# Ionoscloud::Info

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **href** | **String** | API entry point | [optional][readonly] |
| **name** | **String** | Name of the API | [optional][readonly] |
| **version** | **String** | Version of the API | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::Info.new(
  href: null,
  name: CLOUD API,
  version: 1.0
)
```

