# BackupUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**BackupUnitProperties**](BackupUnitProperties.md) |  |  |

| **type** | **String** | The type of object that has been created. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::BackupUnit.new(
  href: <RESOURCE-URI>,

  id: 15f67991-0f51-4efc-a8ad-ef1fb31a480c,

  metadata: null,

  properties: null,

  type: null
)
```

