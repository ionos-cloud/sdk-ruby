# LabelResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | Label on a resource is identified using label key. | [optional][readonly] |

| **metadata** | [**NoStateMetaData**](NoStateMetaData.md) |  | [optional] |

| **properties** | [**LabelResourceProperties**](LabelResourceProperties.md) |  |  |

| **type** | **String** | The type of object that has been created. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::LabelResource.new(
  href: <RESOURCE-URI>,

  id: environment,

  metadata: null,

  properties: null,

  type: null
)
```

