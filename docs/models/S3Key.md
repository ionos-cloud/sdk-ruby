# S3Key

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**S3KeyMetadata**](S3KeyMetadata.md) |  | [optional] |

| **properties** | [**S3KeyProperties**](S3KeyProperties.md) |  |  |

| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::S3Key.new(
  href: https://<API_HOST>/cloudapi/v6/um/users/15f67991-0f51-4efc-a8ad-ef1fb31a480c/s3keys/78fa888e106456c1482d,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  metadata: null,

  properties: null,

  type: "group"
)
```

