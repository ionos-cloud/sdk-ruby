# S3Keys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **items** | [**Array&lt;S3Key&gt;**](S3Key.md) | Array of items in the collection. | [optional][readonly] |

| **type** | [**Type**](Type.md) | The type of the resource. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::S3Keys.new(
  href: https://<API_HOST>/cloudapi/v6/um/users/9b1b4c62-1466-11e7-87d3-d7bb7dac0087/s3keys,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  items: null,

  type: "collection"
)
```

