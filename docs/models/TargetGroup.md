# TargetGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**TargetGroupProperties**](TargetGroupProperties.md) |  |  |

| **type** | [**Type**](Type.md) | The type of object that has been created. | [optional] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::TargetGroup.new(
  href: <RESOURCE-URI>,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  metadata: null,

  properties: null,

  type: "target-group"
)
```

