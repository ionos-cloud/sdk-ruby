# S3KeyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_key** | **String** | secret of the s3 key | [optional][readonly] |
| **active** | **Boolean** | denotes if the s3 key is active or not | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::S3KeyProperties.new(
  secret_key: tFVkUARsoeCdntQs2jVSyGG6TMPfPZ+ghnsWj/gG,
  active: null
)
```

