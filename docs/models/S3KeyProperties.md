# S3KeyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret_key** | **String** | Secret of the S3 key. | [optional][readonly] |
| **active** | **Boolean** | Denotes weather the S3 key is active. | [optional] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::S3KeyProperties.new(
  secret_key: tFVkUARsoeCdntQs2jVSyGG6TMPfPZ+ghnsWj/gG,
  active: null
)
```

