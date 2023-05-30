# KubernetesClusterForPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **entities** | [**KubernetesClusterEntities**](KubernetesClusterEntities.md) |  | [optional] |

| **href** | **String** | The URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**KubernetesClusterPropertiesForPost**](KubernetesClusterPropertiesForPost.md) |  |  |

| **type** | **String** | The object type. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesClusterForPost.new(
  entities: null,

  href: https://api.ionos.com/cloudapi/v6/k8s/cc536834-b436-4b8e-b7d9-1e1473080057,

  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,

  metadata: null,

  properties: null,

  type: null
)
```

