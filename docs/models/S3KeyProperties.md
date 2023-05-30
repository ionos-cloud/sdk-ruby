# S3KeyProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **active** | **Boolean** | Denotes weather the S3 key is active. | [optional] |

| **secret_key** | **String** | Secret of the S3 key. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::S3KeyProperties.new(
  active: null,

  secret_key: tFVkUARsoeCdntQs2jVSyGG6TMPfPZ+ghnsWj/gG
)
```

