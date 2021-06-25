# S3KeyProperties

## Properties

| Name | Type | Description | Notes |
| :--- | :--- | :--- | :--- |
| **secret\_key** | **String** | secret of the S3 key | \[optional\]\[readonly\] |
| **active** | **Boolean** | denotes if the S3 key is active or not | \[optional\] |

## Example

```ruby
require 'ionoscloud'

instance = Ionoscloud::S3KeyProperties.new(
  secret_key: tFVkUARsoeCdntQs2jVSyGG6TMPfPZ+ghnsWj/gG,
  active: null
)
```

