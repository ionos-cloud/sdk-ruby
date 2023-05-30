# FlowLogProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **action** | **String** | Specifies the traffic action pattern. |  |

| **bucket** | **String** | The S3 bucket name of an existing IONOS Cloud S3 bucket. |  |

| **direction** | **String** | Specifies the traffic direction pattern. |  |

| **name** | **String** | The resource name. |  |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::FlowLogProperties.new(
  action: ACCEPTED,

  bucket: bucketName/key,

  direction: INGRESS,

  name: My resource
)
```

