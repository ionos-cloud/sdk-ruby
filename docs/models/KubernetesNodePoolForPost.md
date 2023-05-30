# KubernetesNodePoolForPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **href** | **String** | The URL to the object representation (absolute path). | [optional][readonly] |

| **id** | **String** | The resource&#39;s unique identifier. | [optional][readonly] |

| **metadata** | [**DatacenterElementMetadata**](DatacenterElementMetadata.md) |  | [optional] |

| **properties** | [**KubernetesNodePoolPropertiesForPost**](KubernetesNodePoolPropertiesForPost.md) |  |  |

| **type** | **String** | The object type. | [optional][readonly] |

## Example

```ruby
require 'ionoscloud'


instance = Ionoscloud::KubernetesNodePoolForPost.new(
  href: https://api.ionos.com/cloudapi/v6/k8s/30f8a4f6-6515-4c34-b49d-dea807453b90/nodepools/4735f530-4279-42f3-9562-386143098038,

  id: 1e072e52-2ed3-492f-b6b6-c6b116907527,

  metadata: null,

  properties: null,

  type: null
)
```

