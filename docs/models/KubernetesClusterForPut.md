# KubernetesClusterForPut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **entities** | [**KubernetesClusterEntities**](KubernetesClusterEntities.md) |  | [optional] |

| **href** | **String** | URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**KubernetesClusterPropertiesForPut**](KubernetesClusterPropertiesForPut.md) |  |  |

| **type** | **String** | The type of object. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesClusterForPut.new(
  entities: null,

  href: <RESOURCE-URI>,

  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,

  metadata: null,

  properties: null,

  type: null
)
```

