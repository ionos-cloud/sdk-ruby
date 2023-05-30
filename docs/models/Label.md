# Label

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | Label is identified using standard URN. | [optional][readonly] |

| **metadata** | [**NoStateMetaData**](NoStateMetaData.md) |  | [optional] |

| **properties** | [**LabelProperties**](LabelProperties.md) |  |  |

| **type** | **String** | The type of object that has been created. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::Label.new(
  href: <RESOURCE-URI>,

  id: urn:label:datacenter:700e1cab-99b2-4c30-ba8c-1d273ddba022:environment,

  metadata: null,

  properties: null,

  type: null
)
```

